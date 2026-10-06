# fold: C vs Rust

## 1. Loops (tool + project code)

### C: 6 tool + 3 project loops

| file | line | code | function | kind | depth | back edges | source |
|---|---|---|---|---|---|---|---|
| fold.c | 187 | tool | fold_file | while | 1 | 3 | `while ((g = mbbuf_get_char (&mbbuf)).ch != MBBUF_EOF)` |
| fold.c | 198 | tool | fold_file | goto | 2 | 2 | `if (column > width)` |
| fold.c | 210 | tool | fold_file | for | 3 | 1 | `for (mcel_t g2; logical_p < logical_lim; logical_p += g2.len)` |
| fold.c | 233 | tool | fold_file | for | 3 | 1 | `for (mcel_t g2; printed_p < printed_lim;` |
| fold.c | 303 | tool | main | while | 1 | 1 | `while ((optc = getopt_long (argc, argv, shortopts, longopts, NULL)) != -1)` |
| fold.c | 352 | tool | main | for | 1 | 1 | `for (int i = optind; i < argc; i++)` |
| system.h | 629 | project | oputs_ | while | 1 | 1 | `while (s < option_text && spaces < 2)` |
| system.h | 645 | project | oputs_ | while | 1 | 1 | `while (*desc_text && *desc_text != '\n')` |
| system.h | 870 | project | emit_ancillary_info | while | 1 | 1 | `while (map_prog->program && ! streq (program, map_prog->program))` |

### Rust: 15 tool + 0 project loops

| file | line | code | function | kind | depth | back edges | source |
|---|---|---|---|---|---|---|---|
| fold.rs | 147 | tool | uu_fold::handle_obsolete | for | 1 | 2 | `for (i, arg) in args.iter().enumerate() {` |
| fold.rs | 167 | tool | uu_fold::fold | for | 1 | 2 | `for filename in filenames {` |
| fold.rs | 226 | tool | uu_fold::fold_file_bytewise | loop | 1 | 3 | `while line.len() <= width {` |
| fold.rs | 288 | tool | uu_fold::compute_col_count | for | 1 | 4 | `for ch in s.chars() {` |
| fold.rs | 304 | tool | uu_fold::compute_col_count | for | 1 | 4 | `for &byte in buffer {` |
| fold.rs | 390 | tool | uu_fold::process_ascii_line | while | 1 | 6 | `while idx < len {` |
| fold.rs | 410 | tool | uu_fold::process_ascii_line | loop | 2 | 1 | `if next_stop > ctx.width && !ctx.output.is_empty() {` |
| fold.rs | 443 | tool | uu_fold::process_ascii_line | while | 2 | 1 | `while idx < len` |
| fold.rs | 466 | tool | uu_fold::push_ascii_segment | while | 1 | 2 | `while !remaining.is_empty() {` |
| fold.rs | 508 | tool | uu_fold::process_utf8_chars | while-let | 1 | 5 | `while let Some((byte_idx, ch)) = iter.next() {` |
| fold.rs | 515 | tool | uu_fold::process_utf8_chars | while-let | 2 | 1 | `while let Some(&(_, next_ch)) = iter.peek() {` |
| fold.rs | 551 | tool | uu_fold::process_utf8_chars | loop | 2 | 1 | `if next_stop > ctx.width && !ctx.output.is_empty() {` |
| fold.rs | 592 | tool | uu_fold::process_non_utf8_line | for | 1 | 3 | `for &byte in line {` |
| fold.rs | 642 | tool | uu_fold::process_pending_chunk | while | 1 | 1 | `while !pending.is_empty() {` |
| fold.rs | 706 | tool | uu_fold::fold_file | loop | 1 | 1 | `.fill_buf()` |

## 2. Rust standard-library loops, by std function

15 loops (C has none: libc code is not in the IR).

| std function | loops |
|---|---|
| <slice::iter::Iter<u8> as Iterator>::all | 2 |
| <slice::iter::Iter<u8> as Iterator>::rposition | 2 |
| <vec::Vec<string::String>>::extend_desugared | 1 |
| <vec::into_iter::IntoIter<string::String> as Iterator>::try_fold | 1 |
| <slice::iter::Iter<ffi::os_str::OsString> as Iterator>::fold | 1 |
| <slice::iter::Iter<clap_builder::util::any_value::AnyValueId> as Iterator>::try_fold | 1 |
| io::default_read_exact | 1 |
| io::default_read_buf_exact | 1 |
| <io::buffered::bufwriter::BufWriter<io::stdio::Stdout>>::flush_buf | 1 |
| <string::String as <[_]>::to_vec_in::ConvertVec>::to_vec | 1 |
| <slice::iter::Iter<u8> as Iterator>::position | 1 |
| slice::ascii::is_ascii::runtime | 1 |
| slice::ascii::is_ascii_sse2 | 1 |

## 3. Buffer accesses in the tool's own code

### C: 20 accesses (1 variable index, 19 constant index)

| origin | inside loop | outside loop | total |
|---|---|---|---|
| alloca | 13 | 5 | 18 |
| param | 1 | 1 | 2 |

Variable-index accesses:

| file | line | function | access | origin | in loop | source |
|---|---|---|---|---|---|---|
| fold.c | 353 | main | load | param | yes | `ok &= fold_file (argv[i], width);` |

Constant-index accesses per function (mostly struct fields):

| function | accesses |
|---|---|
| fold_file | 11 |
| adjust_column | 5 |
| main | 3 |

### Rust: 427 accesses (16 variable index, 411 constant index)

| origin | inside loop | outside loop | total |
|---|---|---|---|
| alloca | 93 | 210 | 303 |
| param | 96 | 28 | 124 |

Variable-index accesses:

| file | line | function | access | origin | in loop | source |
|---|---|---|---|---|---|---|
| fold.rs | 391 | uu_fold::process_ascii_line | load | param | yes | `match line[idx] {` |
| fold.rs | 425 | uu_fold::process_ascii_line | load | param | yes | `0x00..=0x07 \| 0x0B..=0x0C \| 0x0E..=0x1F \| 0x7F => {` |
| fold.rs | 426 | uu_fold::process_ascii_line | load | param | yes | `push_byte(ctx, line[idx])?;` |
| fold.rs | 427 | uu_fold::process_ascii_line | load | param | yes | `if ctx.spaces && line[idx].is_ascii_whitespace() && line[idx] != CR {` |
| fold.rs | 444 | uu_fold::process_ascii_line | load | param | yes | `&& !matches!(` |
| fold.rs | 446 | uu_fold::process_ascii_line | load | param | yes | `NL \| CR \| TAB \| 0x08 \| 0x00..=0x07 \| 0x0B..=0x0C \| 0x0E..=0x1F \| 0x7F` |

Constant-index accesses per function (mostly struct fields):

| function | accesses |
|---|---|
| uu_fold::process_utf8_chars | 61 |
| uu_fold::process_ascii_line | 57 |
| uu_fold::process_non_utf8_line | 45 |
| uu_fold::uumain::uumain | 37 |
| uu_fold::fold_file | 35 |
| uu_fold::push_ascii_segment | 31 |
| uu_fold::fold | 27 |
| uu_fold::emit_output | 24 |
| uu_fold::process_pending_chunk | 20 |
| uu_fold::fold_file_bytewise | 18 |
| uu_fold::uu_app | 15 |
| uu_fold::uumain | 14 |
| uu_fold::handle_obsolete | 7 |
| uu_fold::maybe_flush_unbroken_output | 7 |
| uu_fold::compute_col_count | 4 |

