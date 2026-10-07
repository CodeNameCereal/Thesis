// loop_ast_rs: lists the loops in a Rust source file, one JSON line per loop:
//   {"kind":"for","start":[line,col],"end":[line,col],"depth":n}
// Lines and columns start at 1, as in the LLVM debug info.
//
// depth is counted like LLVM's LoopInfo does, i.e. only loops of the same
// function. Closures, async blocks and nested fns become separate functions in
// the IR, so depth starts again from 0 inside them. Otherwise a loop in a
// closure inside another loop would get depth 2 here but 1 in the IR, and
// label_loops.py would match it to the wrong loop.
use syn::{spanned::Spanned, visit::{self, Visit}};

#[derive(Default)]
struct V {
    depth: usize, // number of loops around the current point (same function)
}

fn emit(kind: &str, span: proc_macro2::Span, depth: usize) {
    let (s, e) = (span.start(), span.end());
    println!(
        r#"{{"kind":"{kind}","start":[{},{}],"end":[{},{}],"depth":{depth}}}"#,
        s.line, s.column + 1, e.line, e.column + 1
    );
}

// true for `while let`, also inside a let chain like `while let A = b && c`
fn has_let(e: &syn::Expr) -> bool {
    match e {
        syn::Expr::Let(_) => true,
        syn::Expr::Binary(b) if matches!(b.op, syn::BinOp::And(_)) => has_let(&b.left) || has_let(&b.right),
        syn::Expr::Paren(p) => has_let(&p.expr),
        _ => false,
    }
}

impl V {
    // visit with depth reset to 0, then put the old depth back
    fn fresh(&mut self, f: impl FnOnce(&mut Self)) {
        let saved = std::mem::take(&mut self.depth);
        f(self);
        self.depth = saved;
    }
    // print the loop, then visit its body with depth + 1
    fn looped(&mut self, kind: &str, span: proc_macro2::Span, f: impl FnOnce(&mut Self)) {
        self.depth += 1;
        emit(kind, span, self.depth);
        f(self);
        self.depth -= 1;
    }
}

impl<'a> Visit<'a> for V {
    fn visit_expr_for_loop(&mut self, e: &'a syn::ExprForLoop) {
        self.looped("for", e.span(), |v| visit::visit_expr_for_loop(v, e));
    }
    fn visit_expr_while(&mut self, e: &'a syn::ExprWhile) {
        let kind = if has_let(&e.cond) { "while-let" } else { "while" };
        self.looped(kind, e.span(), |v| visit::visit_expr_while(v, e));
    }
    fn visit_expr_loop(&mut self, e: &'a syn::ExprLoop) {
        self.looped("loop", e.span(), |v| visit::visit_expr_loop(v, e));
    }
    // these become their own functions, so depth starts again
    fn visit_expr_closure(&mut self, e: &'a syn::ExprClosure) {
        self.fresh(|v| visit::visit_expr_closure(v, e));
    }
    fn visit_expr_async(&mut self, e: &'a syn::ExprAsync) {
        self.fresh(|v| visit::visit_expr_async(v, e));
    }
    fn visit_item_fn(&mut self, i: &'a syn::ItemFn) {
        self.fresh(|v| visit::visit_item_fn(v, i));
    }
    fn visit_impl_item_fn(&mut self, i: &'a syn::ImplItemFn) {
        self.fresh(|v| visit::visit_impl_item_fn(v, i));
    }
}

fn main() {
    let path = std::env::args().nth(1).expect("usage: loop_ast_rs FILE.rs");
    let file = syn::parse_file(&std::fs::read_to_string(path).unwrap()).unwrap();
    V::default().visit_file(&file);
}