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
| comm | 31 | 0 | 78 | 175 |
| echo | 2 | 0 | 8 | 114 |
| expand | 0 | 9 | 11 | 180 |
| fold | 1 | 16 | 19 | 411 |
| mkdir | 0 | 0 | 36 | 169 |
| nl | 2 | 0 | 6 | 290 |
| paste | 27 | 3 | 6 | 188 |
| shuf | 11 | 4 | 16 | 420 |
| sum | 4 | 0 | 0 | 104 |
| tee | 20 | 0 | 5 | 150 |
| **total** | **98** | **32** | **185** | **2201** |

## 4. Buffer accesses by code origin (all tools, all index kinds)

| language | tool | project | library | unknown |
|---|---|---|---|---|
| c_cpp | 283 | 94 | 0 | 0 |
| rust | 2233 | 377 | 9181 | 0 |

