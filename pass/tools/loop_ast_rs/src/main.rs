// Prints every loop in a Rust file, one JSON line each:
//   {"kind":"for","start":[line,col],"end":[line,col],"depth":n}
// line/col are 1-based, like LLVM debug info.
//
// depth = nesting depth counted the way LLVM's LoopInfo counts it: only loops
// in the SAME function. Closures, async blocks and nested fn items compile to
// their own functions, so the depth restarts at 0 inside them. (Counting
// across them gave a loop inside a closure inside a loop source depth 2 but IR
// depth 1, and label_loops.py then picked the outer loop's kind.)
use syn::{spanned::Spanned, visit::{self, Visit}};

#[derive(Default)]
struct V {
    depth: usize, // loops enclosing the current position, in the current function
}

fn emit(kind: &str, span: proc_macro2::Span, depth: usize) {
    let (s, e) = (span.start(), span.end());
    println!(
        r#"{{"kind":"{kind}","start":[{},{}],"end":[{},{}],"depth":{depth}}}"#,
        s.line, s.column + 1, e.line, e.column + 1
    );
}

// `while let` -- also as part of a Rust 2024 let chain: `while let A = b && c`
fn has_let(e: &syn::Expr) -> bool {
    match e {
        syn::Expr::Let(_) => true,
        syn::Expr::Binary(b) if matches!(b.op, syn::BinOp::And(_)) => has_let(&b.left) || has_let(&b.right),
        syn::Expr::Paren(p) => has_let(&p.expr),
        _ => false,
    }
}

impl V {
    // run `f` with the depth restarted at 0 (code that becomes its own function)
    fn fresh(&mut self, f: impl FnOnce(&mut Self)) {
        let saved = std::mem::take(&mut self.depth);
        f(self);
        self.depth = saved;
    }
    // record a loop, then visit its body one level deeper
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
    // separate functions in the IR -> depth restarts
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