# C vs Rust -- summary (-O0)

## 1. Loops by where their code lives

tool = the tool's own source; project = shared project code (C: system.h / gnulib headers; Rust: uucore); library = std & dependencies.

| tool | C tool | C project | Rust tool | Rust project | Rust library |
|---|---|---|---|---|---|
| comm | 6 | 3 | 2 | 2 | 7 |
| echo | 6 | 3 | 5 | 0 | 6 |
| expand | 5 | 3 | 7 | 0 | 19 |
| fold | 6 | 3 | 15 | 0 | 15 |
| mkdir | 1 | 3 | 3 | 0 | 2 |
| nl | 4 | 3 | 9 | 0 | 14 |
| paste | 8 | 3 | 7 | 0 | 10 |
| shuf | 13 | 3 | 12 | 0 | 35 |
| sum | 8 | 0 | 3 | 0 | 5 |
| tee | 6 | 3 | 3 | 1 | 21 |
| **total** | **63** | **27** | **66** | **3** | **134** |

## 2. Loop kinds (tool code only, all tools)

| kind | C | Rust |
|---|---|---|
| do-while | 3 | 0 |
| for | 31 | 35 |
| goto | 1 | 0 |
| loop | 0 | 11 |
| while | 28 | 13 |
| while-let | 0 | 7 |

## 3. Buffer accesses in the tool's own code

variable index = real buffer indexing; constant = mostly struct field accesses.

| tool | C variable | Rust variable | C constant | Rust constant |
|---|---|---|---|---|
| comm | 31 | 0 | 78 | 177 |
| echo | 2 | 0 | 8 | 114 |
| expand | 0 | 9 | 11 | 180 |
| fold | 1 | 16 | 19 | 411 |
| mkdir | 0 | 0 | 36 | 169 |
| nl | 2 | 0 | 6 | 290 |
| paste | 27 | 5 | 6 | 188 |
| shuf | 11 | 4 | 16 | 420 |
| sum | 4 | 0 | 0 | 105 |
| tee | 20 | 0 | 5 | 151 |
| **total** | **98** | **34** | **185** | **2205** |

## 4. Buffer accesses by code origin (all tools, all index kinds)

| language | tool | project | library | unknown |
|---|---|---|---|---|
| c_cpp | 283 | 94 | 0 | 0 |
| rust | 2239 | 377 | 9208 | 0 |

## 5. Extra Rust projects (non-Unix)

Same passes and labels; tool = the project's own code, library = std & dependencies, driver = our small program that calls a library-only project (not counted).

### 5a. Per project

compiler-generated = rustc's loops for array initializers `[x; N]` in the project's code (no source line; not in tool loops).

| project | tool loops | compiler-generated loops | library loops | tool variable | tool constant | library accesses | driver loops | driver accesses |
|---|---|---|---|---|---|---|---|---|
| base64 | 16 | 0 | 4 | 102 | 369 | 306 | 0 | 14 |
| csv-core | 10 | 0 | 10 | 39 | 577 | 226 | 3 | 20 |
| httparse | 21 | 0 | 4 | 6 | 496 | 160 | 2 | 19 |
| lz4_flex | 24 | 0 | 34 | 15 | 1079 | 1660 | 0 | 0 |
| miniz_oxide | 96 | 6 | 18 | 207 | 1684 | 908 | 0 | 14 |
| pulldown-cmark | 94 | 0 | 185 | 85 | 2558 | 5422 | 0 | 0 |
| qoi | 12 | 6 | 6 | 12 | 593 | 236 | 0 | 24 |
| ruzstd | 91 | 0 | 154 | 74 | 2289 | 4244 | 0 | 0 |
| ryu | 13 | 0 | 5 | 30 | 39 | 167 | 1 | 22 |
| sha2 | 19 | 5 | 11 | 28 | 1541 | 568 | 1 | 12 |
| **total** | **396** | **17** | **431** | **598** | **11225** | **13897** | **7** | **125** |

### 5b. uutils Rust tools (10) vs extra Rust projects (10)

Totals and mean per program. The programs differ a lot in size, so compare the shape (variable vs constant, tool vs library) more than the totals.

|  | uutils total | uutils mean | extra total | extra mean |
|---|---|---|---|---|
| tool loops | 66 | 6.6 | 396 | 39.6 |
| library loops | 134 | 13.4 | 431 | 43.1 |
| tool variable-index accesses | 34 | 3.4 | 598 | 59.8 |
| tool constant-index accesses | 2205 | 220.5 | 11225 | 1122.5 |
| library accesses | 9208 | 920.8 | 13897 | 1389.7 |

Size-independent ratios (tool loops as a rough size measure):

|  | uutils Rust | extra Rust |
|---|---|---|
| variable index, % of tool accesses | 1.5% | 5.1% |
| library, % of all accesses | 80.4% | 54.0% |
| tool variable-index accesses per tool loop | 0.5 | 1.5 |
| tool constant-index accesses per tool loop | 33.4 | 28.3 |
| library accesses per tool loop | 139.5 | 35.1 |

### 5c. Loop kinds (tool code only)

unmatched = kind not named (loop in a macro_rules! or in an inlined #[inline(always)] function); counted as tool code by its file.

| kind | uutils Rust | extra Rust |
|---|---|---|
| for | 35 | 149 |
| loop | 11 | 64 |
| unmatched | 0 | 39 |
| while | 13 | 117 |
| while-let | 7 | 27 |

