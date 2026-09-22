// Prints every loop in a Rust file, one JSON line each:
//   {"kind":"for","start":[line,col],"end":[line,col]}   (1-based, like LLVM debug info)
use syn::{spanned::Spanned, visit::{self, Visit}};

struct V;
fn emit(kind: &str, span: proc_macro2::Span) {
    let (s, e) = (span.start(), span.end());
    println!(r#"{{"kind":"{kind}","start":[{},{}],"end":[{},{}]}}"#, s.line, s.column + 1, e.line, e.column + 1);
}

impl<'a> Visit<'a> for V {
    fn visit_expr_for_loop(&mut self, e: &'a syn::ExprForLoop) {
        emit("for", e.span());
        visit::visit_expr_for_loop(self, e);
    }
    fn visit_expr_while(&mut self, e: &'a syn::ExprWhile) {
        emit(if matches!(*e.cond, syn::Expr::Let(_)) { "while-let" } else { "while" }, e.span());
        visit::visit_expr_while(self, e);
    }
    fn visit_expr_loop(&mut self, e: &'a syn::ExprLoop) {
        emit("loop", e.span());
        visit::visit_expr_loop(self, e);
    }
}

fn main() {
    let path = std::env::args().nth(1).expect("usage: loop_ast_rs FILE.rs");
    V.visit_file(&syn::parse_file(&std::fs::read_to_string(path).unwrap()).unwrap());
}
