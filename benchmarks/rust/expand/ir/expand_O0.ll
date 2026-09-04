; ModuleID = '9cvvjut5a0c01nrcvc1qbq451'
source_filename = "9cvvjut5a0c01nrcvc1qbq451"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"std::sync::reentrant_lock::ReentrantLock<core::cell::RefCell<std::io::stdio::StderrRaw>>" = type { %"std::sync::reentrant_lock::Tid", %"std::sys::sync::mutex::futex::Mutex", i32, i64 }
%"std::sync::reentrant_lock::Tid" = type { %"core::sync::atomic::Atomic<u64>" }
%"core::sync::atomic::Atomic<u64>" = type { %"core::cell::UnsafeCell<core::sync::atomic::private::Align8<u64>>" }
%"core::cell::UnsafeCell<core::sync::atomic::private::Align8<u64>>" = type { %"core::sync::atomic::private::Align8<u64>" }
%"core::sync::atomic::private::Align8<u64>" = type { i64 }
%"std::sys::sync::mutex::futex::Mutex" = type { %"core::sync::atomic::Atomic<u32>" }
%"core::sync::atomic::Atomic<u32>" = type { %"core::cell::UnsafeCell<core::sync::atomic::private::Align4<u32>>" }
%"core::cell::UnsafeCell<core::sync::atomic::private::Align4<u32>>" = type { %"core::sync::atomic::private::Align4<u32>" }
%"core::sync::atomic::private::Align4<u32>" = type { i32 }
%"core::fmt::rt::Argument<'_>" = type { %"core::fmt::rt::ArgumentType<'_>" }
%"core::fmt::rt::ArgumentType<'_>" = type { ptr, [1 x i64] }
%"std::ffi::os_str::OsString" = type { %"std::sys::os_str::bytes::Buf" }
%"std::sys::os_str::bytes::Buf" = type { %"alloc::vec::Vec<u8>" }
%"alloc::vec::Vec<u8>" = type { %"alloc::raw_vec::RawVec<u8>", i64 }
%"alloc::raw_vec::RawVec<u8>" = type { %"alloc::raw_vec::RawVecInner", %"core::marker::PhantomData<u8>" }
%"alloc::raw_vec::RawVecInner" = type { i64, ptr, %"alloc::alloc::Global" }
%"alloc::alloc::Global" = type {}
%"core::marker::PhantomData<u8>" = type {}

@alloc_3925254e669243da7d0fee6e04f5e571 = private unnamed_addr constant [37 x i8] c"Disabling rust signal handlers failed", align 1
@alloc_ba462693f535346e18b5f6f309ac08a1 = private unnamed_addr constant [28 x i8] c"src/uu/expand/src/expand.rs\00", align 1
@alloc_9aa292692518873d06e529b26e61e841 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_ba462693f535346e18b5f6f309ac08a1, [16 x i8] c"\1B\00\00\00\00\00\00\00\D1\00\00\00\01\00\00\00" }>, align 8
@alloc_0c812808379efded5a4fb82d2790b556 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@alloc_eab5d04767146d7d9b93b60d28ef530a = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr inttoptr (i64 1 to ptr), [8 x i8] zeroinitializer }>, align 8
@alloc_874ad33e48b268f97acaace8e58fd638 = private unnamed_addr constant [8 x i8] c"\C0\02: \C0\01\0A\00", align 1
@alloc_f75aa74870c61552fa45b7b9864e4640 = private unnamed_addr constant [40 x i8] c"\05Try '\C0\1F --help' for more information.\0A\00", align 1
@alloc_31365cfefba383c4d2bf6b6a04cc10aa = private unnamed_addr constant [17 x i8] c"capacity overflow", align 1
@alloc_4e39a43422a43c55d429b88459b41264 = private unnamed_addr constant [77 x i8] c"/rustc/48a229ceaefd4985c50990b14116b6d856af0985/library/alloc/src/vec/mod.rs\00", align 1
@alloc_f9113280143601d93e6ec2a1bdcb047c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_4e39a43422a43c55d429b88459b41264, [16 x i8] c"L\00\00\00\00\00\00\00\FB\0F\00\00\0D\00\00\00" }>, align 8
@vtable.0 = private constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvNtCs9k3SxhrAWiO_3std2rt10lang_startuE0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceuE9call_once6vtableCscBbfQkuq0VR_6expand, ptr @_RNCINvNtCs9k3SxhrAWiO_3std2rt10lang_startuE0CscBbfQkuq0VR_6expand, ptr @_RNCINvNtCs9k3SxhrAWiO_3std2rt10lang_startuE0CscBbfQkuq0VR_6expand }>, align 8, !dbg !0
@alloc_8549335741ed65fb2dee4784c85bbf84 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_ba462693f535346e18b5f6f309ac08a1, [16 x i8] c"\1B\00\00\00\00\00\00\00\D6\00\00\00\0D\00\00\00" }>, align 8
@alloc_678b3387e405f879dfb1885b8e2d9e38 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_ba462693f535346e18b5f6f309ac08a1, [16 x i8] c"\1B\00\00\00\00\00\00\00\D4\00\00\00\09\00\00\00" }>, align 8
@alloc_82d64ee6effdb18c789fde112cdb0eb8 = private unnamed_addr constant [81 x i8] c"/rustc/48a229ceaefd4985c50990b14116b6d856af0985/library/core/src/ptr/non_null.rs\00", align 1
@alloc_88eb5942245017736a2fc7d6bc551fe4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_82d64ee6effdb18c789fde112cdb0eb8, [16 x i8] c"P\00\00\00\00\00\00\00v\03\00\00 \00\00\00" }>, align 8
@alloc_ec595fc0e82ef92fc59bd74f68296eae = private unnamed_addr constant [73 x i8] c"assertion failed: 0 < pointee_size && pointee_size <= isize::MAX as usize", align 1
@alloc_886a733d9b11275db524fd6de9728e96 = private unnamed_addr constant [79 x i8] c"/rustc/48a229ceaefd4985c50990b14116b6d856af0985/library/core/src/slice/iter.rs\00", align 1
@alloc_10df88950271cb30709e41e2dbbafd7f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_886a733d9b11275db524fd6de9728e96, [16 x i8] c"N\00\00\00\00\00\00\00\8C\00\00\00\01\00\00\00" }>, align 8
@alloc_f106c4231033c3d7995ff328d807a10f = private unnamed_addr constant [37 x i8] c"\1CLocalization parse error at \C0\02: \C0\01\0A\00", align 1
@alloc_69a76e502786c0bd533af778432437ec = private unnamed_addr constant [45 x i8] c"(Could not init the localization system: \C0\01\0A\00", align 1
@alloc_154ed4bd466cc2fedce3bb5c837646cd = private unnamed_addr constant [9 x i8] c"uu_expand", align 1
@alloc_9ced0e998d54124913112b53a1e6f138 = private unnamed_addr constant [26 x i8] c"src/uu/expand/src/main.rs\00", align 1
@alloc_f4d02967e7babc2d4d01789394a79678 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_9ced0e998d54124913112b53a1e6f138, [16 x i8] c"\19\00\00\00\00\00\00\00\06\00\00\00\01\00\00\00" }>, align 8
@alloc_d29ebfd320b2670088d7a403fcb10477 = private unnamed_addr constant [28 x i8] c"\17Error flushing stdout: \C0\01\0A\00", align 1
@alloc_97aa5310bc4fb328fbd078331362374a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_82d64ee6effdb18c789fde112cdb0eb8, [16 x i8] c"P\00\00\00\00\00\00\00g\05\00\00\12\00\00\00" }>, align 8
@anon.81badeeee7240c06f676740fb2a52a16.0 = private unnamed_addr constant <{ [8 x i8], [8 x i8] }> <{ [8 x i8] zeroinitializer, [8 x i8] undef }>, align 8
@alloc_c20790a6582a2546f7f296b502b7345e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_82d64ee6effdb18c789fde112cdb0eb8, [16 x i8] c"P\00\00\00\00\00\00\00\0D\01\00\00\1B\00\00\00" }>, align 8
@vtable.1 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXs2_NtNtCsbRzQFPXpg46_3nix5errno6constsNtB5_5ErrnoNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmtCscBbfQkuq0VR_6expand }>, align 8, !dbg !24
@alloc_a6436a515e06d8e7811d9c0f3aca3af2 = private unnamed_addr constant [76 x i8] c"/rustc/48a229ceaefd4985c50990b14116b6d856af0985/library/core/src/fmt/mod.rs\00", align 1
@alloc_94ae9b27ea16a535f8a4faeb5174fc5c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_a6436a515e06d8e7811d9c0f3aca3af2, [16 x i8] c"K\00\00\00\00\00\00\00q\03\00\00*\00\00\00" }>, align 8
@_RNvNvNtNtCs9k3SxhrAWiO_3std2io5stdio6stderr8INSTANCE = external global %"std::sync::reentrant_lock::ReentrantLock<core::cell::RefCell<std::io::stdio::StderrRaw>>"
@alloc_de4e626d456b04760e72bc785ed7e52a = private unnamed_addr constant [201 x i8] c"unsafe precondition(s) violated: ptr::offset_from_unsigned requires `self >= origin`\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_560a59ed819b9d9a5841f6e731c4c8e5 = private unnamed_addr constant [210 x i8] c"unsafe precondition(s) violated: NonNull::new_unchecked requires that the pointer is non-null\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_3e1ebac14318b612ab4efabc52799932 = private unnamed_addr constant [186 x i8] c"unsafe precondition(s) violated: usize::unchecked_add cannot overflow\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_a28e8c8fd5088943a8b5d44af697ff83 = private unnamed_addr constant [279 x i8] c"unsafe precondition(s) violated: slice::from_raw_parts requires the pointer to be aligned and non-null, and the total size of the slice not to exceed `isize::MAX`\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_643f139a9dd48631bb045851ec034914 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtCs9xOv1NcnHfv_9uu_expand10ParseErrorECscBbfQkuq0VR_6expand, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs4_Cs9xOv1NcnHfv_9uu_expandNtB5_10ParseErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt }>, align 8
@vtable.2 = private constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtCs9xOv1NcnHfv_9uu_expand10ParseErrorECscBbfQkuq0VR_6expand, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs2_Cs9xOv1NcnHfv_9uu_expandNtB5_10ParseErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmtCscBbfQkuq0VR_6expand, ptr @_RNvXs4_Cs9xOv1NcnHfv_9uu_expandNtB5_10ParseErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt, ptr @alloc_643f139a9dd48631bb045851ec034914, ptr @_RNvYNtCs9xOv1NcnHfv_9uu_expand10ParseErrorNtNtCsgxBkk5gSRhY_4core5error5Error6sourceCscBbfQkuq0VR_6expand, ptr @_RNvYNtCs9xOv1NcnHfv_9uu_expand10ParseErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idCscBbfQkuq0VR_6expand, ptr @_RNvYNtCs9xOv1NcnHfv_9uu_expand10ParseErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCscBbfQkuq0VR_6expand, ptr @_RNvYNtCs9xOv1NcnHfv_9uu_expand10ParseErrorNtNtCsgxBkk5gSRhY_4core5error5Error5causeCscBbfQkuq0VR_6expand, ptr @_RNvYNtCs9xOv1NcnHfv_9uu_expand10ParseErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideCscBbfQkuq0VR_6expand, ptr @_RNvYNtCs9xOv1NcnHfv_9uu_expand10ParseErrorNtNtNtCs1iFJFqccjfm_6uucore4mods5error6UError4codeCscBbfQkuq0VR_6expand, ptr @_RNvYNtCs9xOv1NcnHfv_9uu_expand10ParseErrorNtNtNtCs1iFJFqccjfm_6uucore4mods5error6UError5usageCscBbfQkuq0VR_6expand }>, align 8, !dbg !170
@alloc_4b4b31f3f45b1a1bfb697ffca2985c68 = private unnamed_addr constant [16 x i8] c"InvalidCharacter", align 1
@vtable.3 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtCs6i54tJFfzR_5alloc6string6StringNtB6_5Debug3fmtCs4VqSFjx4n5U_12clap_builder }>, align 8, !dbg !262
@alloc_b7fa16675416cacb6c230f129add8fa4 = private unnamed_addr constant [27 x i8] c"SpecifierNotAtStartOfNumber", align 1
@vtable.4 = private constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs69bkQDvJnHM_16unic_langid_impl, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmtCscBbfQkuq0VR_6expand }>, align 8, !dbg !271
@alloc_e0578d500f7af93167d5448a9f507f8f = private unnamed_addr constant [33 x i8] c"SpecifierOnlyAllowedWithLastValue", align 1
@alloc_adca0d13b5f42284e114fbb7ea336f76 = private unnamed_addr constant [19 x i8] c"TabSizeCannotBeZero", align 1
@alloc_72d812b6f325737802a7961f8d9537d3 = private unnamed_addr constant [15 x i8] c"TabSizeTooLarge", align 1
@alloc_89fb148d0719d1279214ac396d0d232b = private unnamed_addr constant [23 x i8] c"TabSizesMustBeAscending", align 1
@alloc_94de12363f3ad82eb88f17c146010918 = private unnamed_addr constant [12 x i8] c"UnknownErrno", align 1
@alloc_c0277d8038a6c64e72887cbcc884c3bb = private unnamed_addr constant [5 x i8] c"EPERM", align 1
@alloc_56041ca6eaaf7e3ef282582e48dffd90 = private unnamed_addr constant [6 x i8] c"ENOENT", align 1
@alloc_efa918ca8fd350104162f4b89715815c = private unnamed_addr constant [5 x i8] c"ESRCH", align 1
@alloc_ad0a99e246003c87ceb7d0f323ff2580 = private unnamed_addr constant [5 x i8] c"EINTR", align 1
@alloc_1ad3c9658acad47760e4c473a34c7d3b = private unnamed_addr constant [3 x i8] c"EIO", align 1
@alloc_6dedd2160d6d8f97ec4f1623b4302f7c = private unnamed_addr constant [5 x i8] c"ENXIO", align 1
@alloc_42a580698ba93a37df51119b31cd88c1 = private unnamed_addr constant [5 x i8] c"E2BIG", align 1
@alloc_bd057cb34460f661ef182ff156fc819e = private unnamed_addr constant [7 x i8] c"ENOEXEC", align 1
@alloc_00ea1e26a59b8dc57996c8f8bd4a3717 = private unnamed_addr constant [5 x i8] c"EBADF", align 1
@alloc_98538349a2cd2820ed22bd9f0b9dc802 = private unnamed_addr constant [6 x i8] c"ECHILD", align 1
@alloc_82a96ddff67c3ec277e473895a80dd1e = private unnamed_addr constant [6 x i8] c"EAGAIN", align 1
@alloc_f7b6042e65e87cd23a945053af86f2ef = private unnamed_addr constant [6 x i8] c"ENOMEM", align 1
@alloc_3b2624a9f6c83698379a8f772e74bb38 = private unnamed_addr constant [6 x i8] c"EACCES", align 1
@alloc_8a8d12330b0edcc0ff37327ed998255f = private unnamed_addr constant [6 x i8] c"EFAULT", align 1
@alloc_f54eb14543977fe5fc802f49b30ccdca = private unnamed_addr constant [7 x i8] c"ENOTBLK", align 1
@alloc_ff8994d9eba3e5343a9b53228010da31 = private unnamed_addr constant [5 x i8] c"EBUSY", align 1
@alloc_2dfe18e858cf93870a4cff1370e9c9b0 = private unnamed_addr constant [6 x i8] c"EEXIST", align 1
@alloc_bc821d93424984e9dcc8d410acb3401b = private unnamed_addr constant [5 x i8] c"EXDEV", align 1
@alloc_f1e9fdc6bc423e1edfbbcdf54c955cc1 = private unnamed_addr constant [6 x i8] c"ENODEV", align 1
@alloc_e8207917a07ca92b599995c6bf68fdda = private unnamed_addr constant [7 x i8] c"ENOTDIR", align 1
@alloc_8a55676c016656c683fd58df6cbbfcc8 = private unnamed_addr constant [6 x i8] c"EISDIR", align 1
@alloc_31bae0bbf06c82dc196d425d3504b50d = private unnamed_addr constant [6 x i8] c"EINVAL", align 1
@alloc_3b6bceff34f14ce8e4c2f343be15df26 = private unnamed_addr constant [6 x i8] c"ENFILE", align 1
@alloc_b00570ec474102351a8977332fa64d30 = private unnamed_addr constant [6 x i8] c"EMFILE", align 1
@alloc_c3301bc6520ccc9163bce47dddbff6b8 = private unnamed_addr constant [6 x i8] c"ENOTTY", align 1
@alloc_351946230f087e85e556fe3b968b1981 = private unnamed_addr constant [7 x i8] c"ETXTBSY", align 1
@alloc_3705aa602755f3be9a0919f381aa127f = private unnamed_addr constant [5 x i8] c"EFBIG", align 1
@alloc_28d4f003a3a8ed43710568c95fe9351a = private unnamed_addr constant [6 x i8] c"ENOSPC", align 1
@alloc_5b80a9cc4738a62be9f7d95c8d597dc7 = private unnamed_addr constant [6 x i8] c"ESPIPE", align 1
@alloc_8563ec224e7b49c3c4502731d867c128 = private unnamed_addr constant [5 x i8] c"EROFS", align 1
@alloc_0c664ef1627eefa7120e5cb745bcf752 = private unnamed_addr constant [6 x i8] c"EMLINK", align 1
@alloc_2881bd0c21bd06bd22ebf60a0f3a2028 = private unnamed_addr constant [5 x i8] c"EPIPE", align 1
@alloc_da0b686a5e1dc859499cae16431f96ae = private unnamed_addr constant [4 x i8] c"EDOM", align 1
@alloc_eb59d2b23a3d7b405fe7b10c3a0c3e5a = private unnamed_addr constant [6 x i8] c"ERANGE", align 1
@alloc_dcb34ae2af2ce66e0e5dcfa999e3beb7 = private unnamed_addr constant [7 x i8] c"EDEADLK", align 1
@alloc_de098db79b872822198968bbc383469f = private unnamed_addr constant [12 x i8] c"ENAMETOOLONG", align 1
@alloc_721e060f8ee21ebd020f01daad5f2975 = private unnamed_addr constant [6 x i8] c"ENOLCK", align 1
@alloc_01c4584c71d29ab89453b0c1dfa9f5c8 = private unnamed_addr constant [6 x i8] c"ENOSYS", align 1
@alloc_2603dd6381b9af60034e46608f8f66fc = private unnamed_addr constant [9 x i8] c"ENOTEMPTY", align 1
@alloc_a82e52c8c91e88d90ecebbbba2dd9f9e = private unnamed_addr constant [5 x i8] c"ELOOP", align 1
@alloc_0526207bb0c9401b11586abdea37a0ec = private unnamed_addr constant [6 x i8] c"ENOMSG", align 1
@alloc_215d33806f4ba809a2b96795d1e7a0e6 = private unnamed_addr constant [5 x i8] c"EIDRM", align 1
@alloc_2939475bfabcad8c50c892fbf318f7dd = private unnamed_addr constant [6 x i8] c"ECHRNG", align 1
@alloc_09d0693eba27d653ddd27e966fb83a8e = private unnamed_addr constant [8 x i8] c"EL2NSYNC", align 1
@alloc_6f36aa02338841494924dfd8849543f3 = private unnamed_addr constant [6 x i8] c"EL3HLT", align 1
@alloc_836b57fdf72146d7a3653eecc17a7200 = private unnamed_addr constant [6 x i8] c"EL3RST", align 1
@alloc_1cb2662dfdef045b8930644c453bf476 = private unnamed_addr constant [6 x i8] c"ELNRNG", align 1
@alloc_f334c77768804055ec99d59fda099fb7 = private unnamed_addr constant [7 x i8] c"EUNATCH", align 1
@alloc_2bf2316dde628223adb61e3b01869c64 = private unnamed_addr constant [6 x i8] c"ENOCSI", align 1
@alloc_89a077ecdcb316fd3d18ea1802da26b1 = private unnamed_addr constant [6 x i8] c"EL2HLT", align 1
@alloc_bbd696d7e836174617963e3a3b02c4bf = private unnamed_addr constant [5 x i8] c"EBADE", align 1
@alloc_07b7fccd581de4a0f58043714c6bdb75 = private unnamed_addr constant [5 x i8] c"EBADR", align 1
@alloc_723c4a58a17e4aae450d8d9957b22445 = private unnamed_addr constant [6 x i8] c"EXFULL", align 1
@alloc_0421b2104b61159b448eb1aaf9647256 = private unnamed_addr constant [6 x i8] c"ENOANO", align 1
@alloc_b4f3881bd3b5b5d43bf383cf86c486ed = private unnamed_addr constant [7 x i8] c"EBADRQC", align 1
@alloc_d9e4fde4db3281ab4c591fb20f834248 = private unnamed_addr constant [7 x i8] c"EBADSLT", align 1
@alloc_d84eb78f389905ca0230de88458cb696 = private unnamed_addr constant [6 x i8] c"EBFONT", align 1
@alloc_1ce034ba68a18aae701ac601ad36bf22 = private unnamed_addr constant [6 x i8] c"ENOSTR", align 1
@alloc_928348b0fb8413d594c672ae38e90e22 = private unnamed_addr constant [7 x i8] c"ENODATA", align 1
@alloc_9b7c24b73a05d66a1cd8ea616dddba58 = private unnamed_addr constant [5 x i8] c"ETIME", align 1
@alloc_66a462b7da34960c8beaefa60e208b11 = private unnamed_addr constant [5 x i8] c"ENOSR", align 1
@alloc_c36568b4b36c804e4870f1aa6bdf3a2a = private unnamed_addr constant [6 x i8] c"ENONET", align 1
@alloc_d9d5c1a3a4aa94c4d1ff7a160571061c = private unnamed_addr constant [6 x i8] c"ENOPKG", align 1
@alloc_494c0a5ba61fbb7071ff748e4f1cb433 = private unnamed_addr constant [7 x i8] c"EREMOTE", align 1
@alloc_9e83da2a1cc21915c62f8367c90fdadb = private unnamed_addr constant [7 x i8] c"ENOLINK", align 1
@alloc_28b6884878622fe718b239b613416571 = private unnamed_addr constant [4 x i8] c"EADV", align 1
@alloc_4d938c510ebb651e82e8de4564215b72 = private unnamed_addr constant [6 x i8] c"ESRMNT", align 1
@alloc_d212a56767d4fb4d6607865d075729f8 = private unnamed_addr constant [5 x i8] c"ECOMM", align 1
@alloc_9b9d5c7403c06c1b1893956c83187e72 = private unnamed_addr constant [6 x i8] c"EPROTO", align 1
@alloc_be948f685de56bf71d50b73745f4ac60 = private unnamed_addr constant [9 x i8] c"EMULTIHOP", align 1
@alloc_a2918dd88cad9f1065c1f1fd760d9807 = private unnamed_addr constant [7 x i8] c"EDOTDOT", align 1
@alloc_7057157759ac58a04dde0cb410735455 = private unnamed_addr constant [7 x i8] c"EBADMSG", align 1
@alloc_85bba4fa26b4bc7d3af483aea8d53610 = private unnamed_addr constant [9 x i8] c"EOVERFLOW", align 1
@alloc_e6dd583da76751037d2f23e77b767378 = private unnamed_addr constant [8 x i8] c"ENOTUNIQ", align 1
@alloc_38a3703a08665e1172b160a08c52bf00 = private unnamed_addr constant [6 x i8] c"EBADFD", align 1
@alloc_381a6f34b7bf5b9d95c448026655efd5 = private unnamed_addr constant [7 x i8] c"EREMCHG", align 1
@alloc_8d476f9867546e010d6e0f0e9df2f10e = private unnamed_addr constant [7 x i8] c"ELIBACC", align 1
@alloc_8718d28fb95e407cb1b53420fe73995a = private unnamed_addr constant [7 x i8] c"ELIBBAD", align 1
@alloc_3f394c18d606ce36f2c50816a4c76e96 = private unnamed_addr constant [7 x i8] c"ELIBSCN", align 1
@alloc_ad2e799ecd66fe4eb367bf0cfe674da4 = private unnamed_addr constant [7 x i8] c"ELIBMAX", align 1
@alloc_5eee53aa540bac93f85b20a41c4136bb = private unnamed_addr constant [8 x i8] c"ELIBEXEC", align 1
@alloc_d8a7f9677534b52f0fedc4e0d3ac4a7f = private unnamed_addr constant [6 x i8] c"EILSEQ", align 1
@alloc_5fbe7d2a6eb0974b5d6b9277c8ff292d = private unnamed_addr constant [8 x i8] c"ERESTART", align 1
@alloc_68ce7b92a59f96b9e4b322d0015566d5 = private unnamed_addr constant [8 x i8] c"ESTRPIPE", align 1
@alloc_675bba484e0ec186c533a4bd41bdb2c4 = private unnamed_addr constant [6 x i8] c"EUSERS", align 1
@alloc_86885d2f78b482de79d4322d24e4c411 = private unnamed_addr constant [8 x i8] c"ENOTSOCK", align 1
@alloc_2b516ee3757c032d8fcaaab47bdc82fc = private unnamed_addr constant [12 x i8] c"EDESTADDRREQ", align 1
@alloc_d1f02fa34d04bd4b912c0c8e2b5b9de6 = private unnamed_addr constant [8 x i8] c"EMSGSIZE", align 1
@alloc_800983b72099bfc3abf962370abe5459 = private unnamed_addr constant [10 x i8] c"EPROTOTYPE", align 1
@alloc_32a5aa9c39e874a9077e926b86087f67 = private unnamed_addr constant [11 x i8] c"ENOPROTOOPT", align 1
@alloc_47506649da77a5b57506dead306e2262 = private unnamed_addr constant [15 x i8] c"EPROTONOSUPPORT", align 1
@alloc_9351c29bf6440ce6cc1d1845b5b2239a = private unnamed_addr constant [15 x i8] c"ESOCKTNOSUPPORT", align 1
@alloc_9b01972f1876c57567e9f91eaeac11c0 = private unnamed_addr constant [10 x i8] c"EOPNOTSUPP", align 1
@alloc_23a2b5b2e50f58b3b2ee5f4e3e9e2963 = private unnamed_addr constant [12 x i8] c"EPFNOSUPPORT", align 1
@alloc_3332711b35cc115dd6e0ea31d9faf09d = private unnamed_addr constant [12 x i8] c"EAFNOSUPPORT", align 1
@alloc_fbca4e93830943a32db7f0544291d7aa = private unnamed_addr constant [10 x i8] c"EADDRINUSE", align 1
@alloc_dbca276093c054d8ae582acdce89067e = private unnamed_addr constant [13 x i8] c"EADDRNOTAVAIL", align 1
@alloc_f2c3b2cac51e42fd971a324253febb13 = private unnamed_addr constant [8 x i8] c"ENETDOWN", align 1
@alloc_5a2b78f7503004628f810781f9490c94 = private unnamed_addr constant [11 x i8] c"ENETUNREACH", align 1
@alloc_9de36250f4a87fd97880c81cbf713309 = private unnamed_addr constant [9 x i8] c"ENETRESET", align 1
@alloc_bb6002a14cc221cb091a29878e9508a5 = private unnamed_addr constant [12 x i8] c"ECONNABORTED", align 1
@alloc_69e47bc266bacc5206a88f9fadcf9ec6 = private unnamed_addr constant [10 x i8] c"ECONNRESET", align 1
@alloc_34dc7edf149271d5a5b67eaf70023d0e = private unnamed_addr constant [7 x i8] c"ENOBUFS", align 1
@alloc_faae74309a203211323bc3327eb25264 = private unnamed_addr constant [7 x i8] c"EISCONN", align 1
@alloc_c5d8dae1133a9087a76df87c2d5ed81a = private unnamed_addr constant [8 x i8] c"ENOTCONN", align 1
@alloc_4df2654afb1bc82031beadd281a36d0d = private unnamed_addr constant [9 x i8] c"ESHUTDOWN", align 1
@alloc_978ec0cb1924f1237f42007a79c519c4 = private unnamed_addr constant [12 x i8] c"ETOOMANYREFS", align 1
@alloc_084da7b8bb6c075ce42a1d77b6c995ee = private unnamed_addr constant [9 x i8] c"ETIMEDOUT", align 1
@alloc_44e924003e74a16bc4fbdc8f7c4d0473 = private unnamed_addr constant [12 x i8] c"ECONNREFUSED", align 1
@alloc_7abef68a189e3a7227af6f45c9ababfb = private unnamed_addr constant [9 x i8] c"EHOSTDOWN", align 1
@alloc_6b19a2f72bfad61fe889042e59b4f67f = private unnamed_addr constant [12 x i8] c"EHOSTUNREACH", align 1
@alloc_e2e0883fc1e4f0559ab4d2d7111e2922 = private unnamed_addr constant [8 x i8] c"EALREADY", align 1
@alloc_cf2d0d2856a8dd5bfcf40afd2d7b76e0 = private unnamed_addr constant [11 x i8] c"EINPROGRESS", align 1
@alloc_4ab5a989f2022623ea1da48703f7f0bd = private unnamed_addr constant [6 x i8] c"ESTALE", align 1
@alloc_e4648413a87fcbab95e9f4571686a68d = private unnamed_addr constant [7 x i8] c"EUCLEAN", align 1
@alloc_2154a05f30b5c4831200572c2d3dab30 = private unnamed_addr constant [7 x i8] c"ENOTNAM", align 1
@alloc_3e93dee092649f36ef58758f59c00094 = private unnamed_addr constant [7 x i8] c"ENAVAIL", align 1
@alloc_4a73cf61ecdfb06b8e4a08adceebcfe7 = private unnamed_addr constant [6 x i8] c"EISNAM", align 1
@alloc_3d31068ff3e390fedfff0f812b0758d5 = private unnamed_addr constant [9 x i8] c"EREMOTEIO", align 1
@alloc_a841989f0908480b181ad0c5abcfd68e = private unnamed_addr constant [6 x i8] c"EDQUOT", align 1
@alloc_f92d97beb29ce5b2fada37971b57fbb2 = private unnamed_addr constant [9 x i8] c"ENOMEDIUM", align 1
@alloc_ce81fb960d0bc24749fb6d08ce7d6eaf = private unnamed_addr constant [11 x i8] c"EMEDIUMTYPE", align 1
@alloc_0d44e7c346ed8b0c54abae600d17883f = private unnamed_addr constant [9 x i8] c"ECANCELED", align 1
@alloc_306701eddbce58119b3b452468e93bce = private unnamed_addr constant [6 x i8] c"ENOKEY", align 1
@alloc_f1d202c0b4fc106d9cff99e09505e2ad = private unnamed_addr constant [11 x i8] c"EKEYEXPIRED", align 1
@alloc_ad94dce71dc3943f9a9c4e3d5270371b = private unnamed_addr constant [11 x i8] c"EKEYREVOKED", align 1
@alloc_1685b860d57c20a4bb2090aa8ec3d72f = private unnamed_addr constant [12 x i8] c"EKEYREJECTED", align 1
@alloc_e97612422e606a267463c474940daaaf = private unnamed_addr constant [10 x i8] c"EOWNERDEAD", align 1
@alloc_38d47c498611f94c9b77481a9521b50b = private unnamed_addr constant [15 x i8] c"ENOTRECOVERABLE", align 1
@alloc_b2966257a8ddc16adc71767cf5355c0b = private unnamed_addr constant [7 x i8] c"ERFKILL", align 1
@alloc_eeeec90dba29775bdab7e5d8b2cb0355 = private unnamed_addr constant [9 x i8] c"EHWPOISON", align 1
@alloc_76df3c402ef72e8b7d930530d8dfb1e2 = private unnamed_addr constant [95 x i8] c"/rustc/48a229ceaefd4985c50990b14116b6d856af0985/library/alloc/src/vec/spec_from_iter_nested.rs\00", align 1
@alloc_da372945ea341f010b71d5a35198045a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_76df3c402ef72e8b7d930530d8dfb1e2, [16 x i8] c"^\00\00\00\00\00\00\009\00\00\00\12\00\00\00" }>, align 8
@alloc_f4f5988531868cd6169889b01a37a1ba = private unnamed_addr constant [11 x i8] c"ParserError", align 1
@alloc_d79363f408f2817cdc0fb43a73db1a17 = private unnamed_addr constant [3 x i8] c"pos", align 1
@vtable.5 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCsgxBkk5gSRhY_4core3ops5rangeINtB4_5RangejENtNtB8_3fmt5Debug3fmtCs1iFJFqccjfm_6uucore }>, align 8, !dbg !279
@alloc_f72492f89243c435f04e31021c737d8a = private unnamed_addr constant [5 x i8] c"slice", align 1
@vtable.6 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCsgxBkk5gSRhY_4core6optionINtB5_6OptionINtNtNtB7_3ops5range5RangejEENtNtB7_3fmt5Debug3fmtCs1iFJFqccjfm_6uucore }>, align 8, !dbg !295
@alloc_a5d866b1768ad3f826bccdb004a1a8ae = private unnamed_addr constant [4 x i8] c"kind", align 1
@vtable.7 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtCslPRUPRFQ4qs_13fluent_syntax6parser6errors9ErrorKindNtB6_5Debug3fmtCs1iFJFqccjfm_6uucore }>, align 8, !dbg !317
@alloc_04d7ce44d7c86a9a02b346ab945bf155 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@anon.81badeeee7240c06f676740fb2a52a16.1 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 1222507455029299403 to ptr), ptr inttoptr (i64 -9009552510091223689 to ptr) }>, align 8
@__rustc_debug_gdb_scripts_section__ = linkonce_odr unnamed_addr constant [34 x i8] c"\01gdb_load_rust_pretty_printers.py\00", section ".debug_gdb_scripts", align 1

; uu_expand::uumain::<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>
; Function Attrs: nonlazybind uwtable
define internal i32 @_RINvCs9xOv1NcnHfv_9uu_expand6uumainINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters6cloned6ClonedINtNtNtBG_5slice4iter4IterNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringEEECscBbfQkuq0VR_6expand(ptr %args.0, ptr %args.1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !551 {
start:
  %args.dbg.spill7 = alloca [8 x i8], align 8
  %args.dbg.spill6 = alloca [16 x i8], align 8
  %args.dbg.spill3 = alloca [8 x i8], align 8
  %0 = alloca [16 x i8], align 8
  %args.dbg.spill = alloca [16 x i8], align 8
  %_54 = alloca [1 x i8], align 1
  %_46 = alloca [16 x i8], align 8
  %args2 = alloca [16 x i8], align 8
  %_44 = alloca [16 x i8], align 8
  %_40 = alloca [8 x i8], align 8
  %_38 = alloca [8 x i8], align 8
  %_33 = alloca [16 x i8], align 8
  %_32 = alloca [16 x i8], align 8
  %args1 = alloca [32 x i8], align 8
  %_29 = alloca [16 x i8], align 8
  %_25 = alloca [8 x i8], align 8
  %_23 = alloca [8 x i8], align 8
  %_17 = alloca [16 x i8], align 8
  %args = alloca [16 x i8], align 8
  %_12 = alloca [24 x i8], align 8
  %s = alloca [24 x i8], align 8
  %e = alloca [16 x i8], align 8
  %result = alloca [16 x i8], align 8
  %_0 = alloca [4 x i8], align 4
  store ptr %args.0, ptr %args.dbg.spill, align 8
  %1 = getelementptr inbounds i8, ptr %args.dbg.spill, i64 8
  store ptr %args.1, ptr %1, align 8
    #dbg_declare(ptr %args.dbg.spill, !592, !DIExpression(), !739)
    #dbg_declare(ptr %result, !593, !DIExpression(), !740)
    #dbg_declare(ptr %e, !622, !DIExpression(), !741)
    #dbg_declare(ptr %s, !624, !DIExpression(), !742)
    #dbg_declare(ptr %args, !634, !DIExpression(), !743)
    #dbg_declare(ptr %args1, !722, !DIExpression(), !744)
    #dbg_declare(ptr %args2, !734, !DIExpression(), !745)
  store i8 0, ptr %_54, align 1, !dbg !739
  store i8 1, ptr %_54, align 1, !dbg !739
; invoke uucore::features::signals::sigpipe_was_ignored
  %_2 = invoke zeroext i1 @_RNvNtNtCs1iFJFqccjfm_6uucore8features7signals19sigpipe_was_ignored()
          to label %bb1 unwind label %cleanup, !dbg !739

bb38:                                             ; preds = %bb34, %cleanup
  %2 = load i8, ptr %_54, align 1, !dbg !746
  %3 = trunc nuw i8 %2 to i1, !dbg !746
  br i1 %3, label %bb37, label %bb35, !dbg !746

cleanup:                                          ; preds = %bb32, %bb9, %bb5, %bb4, %bb3, %bb2, %start
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  %6 = extractvalue { ptr, i32 } %4, 1
  store ptr %5, ptr %0, align 8
  %7 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %6, ptr %7, align 8
  br label %bb38

bb1:                                              ; preds = %start
  br i1 %_2, label %bb3, label %bb2, !dbg !739

bb2:                                              ; preds = %bb1
; invoke uucore::features::signals::enable_pipe_errors
  %_3 = invoke i32 @_RNvNtNtCs1iFJFqccjfm_6uucore8features7signals18enable_pipe_errors()
          to label %bb39 unwind label %cleanup, !dbg !739

bb3:                                              ; preds = %bb39, %bb1
; invoke uucore::disable_rust_signal_handlers
  %_5 = invoke i32 @_RNvCs1iFJFqccjfm_6uucore28disable_rust_signal_handlers()
          to label %bb4 unwind label %cleanup, !dbg !739

bb39:                                             ; preds = %bb2
  br label %bb3, !dbg !739

bb4:                                              ; preds = %bb3
; invoke <core::result::Result<(), nix::errno::consts::Errno>>::expect
  invoke void @_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtNtCsbRzQFPXpg46_3nix5errno6consts5ErrnoE6expectCscBbfQkuq0VR_6expand(i32 %_5, ptr @alloc_3925254e669243da7d0fee6e04f5e571, i64 37, ptr align 8 @alloc_9aa292692518873d06e529b26e61e841)
          to label %bb5 unwind label %cleanup, !dbg !739

bb5:                                              ; preds = %bb4
  store i8 0, ptr %_54, align 1, !dbg !739
; invoke uu_expand::uumain::uumain::<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>
  %8 = invoke { ptr, ptr } @_RINvNvCs9xOv1NcnHfv_9uu_expand6uumain6uumainINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters6cloned6ClonedINtNtNtBP_5slice4iter4IterNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringEEECscBbfQkuq0VR_6expand(ptr %args.0, ptr %args.1)
          to label %bb6 unwind label %cleanup, !dbg !739

bb6:                                              ; preds = %bb5
  %9 = extractvalue { ptr, ptr } %8, 0, !dbg !739
  %10 = extractvalue { ptr, ptr } %8, 1, !dbg !739
  store ptr %9, ptr %result, align 8, !dbg !739
  %11 = getelementptr inbounds i8, ptr %result, i64 8, !dbg !739
  store ptr %10, ptr %11, align 8, !dbg !739
  %12 = load ptr, ptr %result, align 8, !dbg !740
  %13 = getelementptr inbounds i8, ptr %result, i64 8, !dbg !740
  %14 = load ptr, ptr %13, align 8, !dbg !740
  %15 = ptrtoint ptr %12 to i64, !dbg !740
  %16 = icmp eq i64 %15, 0, !dbg !740
  %_9 = select i1 %16, i64 0, i64 1, !dbg !740
  %17 = trunc nuw i64 %_9 to i1, !dbg !740
  br i1 %17, label %bb8, label %bb9, !dbg !740

bb8:                                              ; preds = %bb6
  %18 = load ptr, ptr %result, align 8, !dbg !740
  %19 = getelementptr inbounds i8, ptr %result, i64 8, !dbg !740
  %20 = load ptr, ptr %19, align 8, !dbg !740
  store ptr %18, ptr %e, align 8, !dbg !740
  %21 = getelementptr inbounds i8, ptr %e, i64 8, !dbg !740
  store ptr %20, ptr %21, align 8, !dbg !740
  store ptr %e, ptr %args.dbg.spill3, align 8, !dbg !741
    #dbg_declare(ptr %args.dbg.spill3, !626, !DIExpression(), !747)
; invoke <core::fmt::rt::Argument>::new_display::<alloc::boxed::Box<dyn uucore::mods::error::UError>>
  invoke void @_RINvMNtNtCsgxBkk5gSRhY_4core3fmt2rtNtB3_8Argument11new_displayINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtCs1iFJFqccjfm_6uucore4mods5error6UErrorEL_EECs9xOv1NcnHfv_9uu_expand(ptr sret([16 x i8]) align 8 %_17, ptr align 8 %e)
          to label %bb10 unwind label %cleanup4, !dbg !747

bb9:                                              ; preds = %bb6
; invoke uucore::mods::error::get_exit_code
  %22 = invoke i32 @_RNvNtNtCs1iFJFqccjfm_6uucore4mods5error13get_exit_code()
          to label %bb40 unwind label %cleanup, !dbg !740

bb40:                                             ; preds = %bb9
  store i32 %22, ptr %_0, align 4, !dbg !740
  br label %bb36, !dbg !740

bb36:                                             ; preds = %bb32, %bb40
  %23 = load i32, ptr %_0, align 4, !dbg !748
  ret i32 %23, !dbg !748

bb34:                                             ; preds = %bb33, %cleanup4
; invoke core::ptr::drop_glue::<alloc::boxed::Box<dyn uucore::mods::error::UError>>
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtCs1iFJFqccjfm_6uucore4mods5error6UErrorEL_EECs9xOv1NcnHfv_9uu_expand(ptr align 8 %e) #15
          to label %bb38 unwind label %terminate, !dbg !749

cleanup4:                                         ; preds = %bb31, %bb11, %bb10, %bb8
  %24 = landingpad { ptr, i32 }
          cleanup
  %25 = extractvalue { ptr, i32 } %24, 0
  %26 = extractvalue { ptr, i32 } %24, 1
  store ptr %25, ptr %0, align 8
  %27 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %26, ptr %27, align 8
  br label %bb34

bb10:                                             ; preds = %bb8
  %28 = getelementptr inbounds nuw %"core::fmt::rt::Argument<'_>", ptr %args, i64 0, !dbg !747
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %28, ptr align 8 %_17, i64 16, i1 false), !dbg !747
; invoke <core::fmt::Arguments>::new::<2, 1>
  %29 = invoke { ptr, ptr } @_RINvMs2_NtCsgxBkk5gSRhY_4core3fmtNtB6_9Arguments3newKj2_Kj1_ECsbRzQFPXpg46_3nix(ptr @alloc_0c812808379efded5a4fb82d2790b556, ptr align 8 %args)
          to label %bb11 unwind label %cleanup4, !dbg !743

bb11:                                             ; preds = %bb10
  %_13.0 = extractvalue { ptr, ptr } %29, 0, !dbg !743
  %_13.1 = extractvalue { ptr, ptr } %29, 1, !dbg !743
; invoke alloc::fmt::format
  invoke void @_RNvNtCs6i54tJFfzR_5alloc3fmt6formatCscBbfQkuq0VR_6expand(ptr sret([24 x i8]) align 8 %_12, ptr %_13.0, ptr %_13.1)
          to label %bb12 unwind label %cleanup4, !dbg !741

bb12:                                             ; preds = %bb11
    #dbg_declare(ptr %_12, !750, !DIExpression(), !759)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %s, ptr align 8 %_12, i64 24, i1 false), !dbg !761
  br label %bb13, !dbg !762

bb13:                                             ; preds = %bb12
; invoke <alloc::string::String as core::cmp::PartialEq<&str>>::ne
  %_20 = invoke zeroext i1 @_RNvXs1y_NtCs6i54tJFfzR_5alloc6stringNtB6_6StringINtNtCsgxBkk5gSRhY_4core3cmp9PartialEqReE2neCscBbfQkuq0VR_6expand(ptr align 8 %s, ptr align 8 @alloc_eab5d04767146d7d9b93b60d28ef530a)
          to label %bb14 unwind label %cleanup5, !dbg !742

bb33:                                             ; preds = %cleanup5
; invoke core::ptr::drop_glue::<alloc::string::String>
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs69bkQDvJnHM_16unic_langid_impl(ptr align 8 %s) #15
          to label %bb34 unwind label %terminate, !dbg !763

cleanup5:                                         ; preds = %bb30, %bb29, %bb28, %bb27, %bb26, %bb25, %bb24, %bb22, %bb21, %bb20, %bb19, %bb18, %bb17, %bb16, %bb15, %bb13
  %30 = landingpad { ptr, i32 }
          cleanup
  %31 = extractvalue { ptr, i32 } %30, 0
  %32 = extractvalue { ptr, i32 } %30, 1
  store ptr %31, ptr %0, align 8
  %33 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %32, ptr %33, align 8
  br label %bb33

bb14:                                             ; preds = %bb13
  br i1 %_20, label %bb15, label %bb22, !dbg !742

bb22:                                             ; preds = %bb21, %bb14
  %_55.0 = load ptr, ptr %e, align 8, !dbg !742
  %34 = getelementptr inbounds i8, ptr %e, i64 8, !dbg !742
  %_55.1 = load ptr, ptr %34, align 8, !dbg !742
  %35 = getelementptr inbounds i8, ptr %_55.1, i64 96, !dbg !742
  %36 = load ptr, ptr %35, align 8, !dbg !742, !invariant.load !23, !nonnull !23
  %_36 = invoke zeroext i1 %36(ptr %_55.0)
          to label %bb23 unwind label %cleanup5, !dbg !742

bb15:                                             ; preds = %bb14
; invoke std::io::stdio::stderr
  %37 = invoke align 8 ptr @_RNvNtNtCs9k3SxhrAWiO_3std2io5stdio6stderrCscBbfQkuq0VR_6expand()
          to label %bb16 unwind label %cleanup5, !dbg !742

bb16:                                             ; preds = %bb15
  store ptr %37, ptr %_25, align 8, !dbg !742
; invoke uucore::util_name
  %38 = invoke { ptr, i64 } @_RNvCs1iFJFqccjfm_6uucore9util_name()
          to label %bb17 unwind label %cleanup5, !dbg !742

bb17:                                             ; preds = %bb16
  %39 = extractvalue { ptr, i64 } %38, 0, !dbg !742
  %40 = extractvalue { ptr, i64 } %38, 1, !dbg !742
  store ptr %39, ptr %_29, align 8, !dbg !742
  %41 = getelementptr inbounds i8, ptr %_29, i64 8, !dbg !742
  store i64 %40, ptr %41, align 8, !dbg !742
  store ptr %_29, ptr %args.dbg.spill6, align 8, !dbg !742
  %42 = getelementptr inbounds i8, ptr %args.dbg.spill6, i64 8, !dbg !742
  store ptr %s, ptr %42, align 8, !dbg !742
    #dbg_declare(ptr %args.dbg.spill6, !708, !DIExpression(), !764)
; invoke <core::fmt::rt::Argument>::new_display::<&str>
  invoke void @_RINvMNtNtCsgxBkk5gSRhY_4core3fmt2rtNtB3_8Argument11new_displayReECsbRzQFPXpg46_3nix(ptr sret([16 x i8]) align 8 %_32, ptr align 8 %_29)
          to label %bb18 unwind label %cleanup5, !dbg !764

bb18:                                             ; preds = %bb17
; invoke <core::fmt::rt::Argument>::new_display::<alloc::string::String>
  invoke void @_RINvMNtNtCsgxBkk5gSRhY_4core3fmt2rtNtB3_8Argument11new_displayNtNtCs6i54tJFfzR_5alloc6string6StringECs4VqSFjx4n5U_12clap_builder(ptr sret([16 x i8]) align 8 %_33, ptr align 8 %s)
          to label %bb19 unwind label %cleanup5, !dbg !764

bb19:                                             ; preds = %bb18
  %43 = getelementptr inbounds nuw %"core::fmt::rt::Argument<'_>", ptr %args1, i64 0, !dbg !764
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %43, ptr align 8 %_32, i64 16, i1 false), !dbg !764
  %44 = getelementptr inbounds nuw %"core::fmt::rt::Argument<'_>", ptr %args1, i64 1, !dbg !764
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %44, ptr align 8 %_33, i64 16, i1 false), !dbg !764
; invoke <core::fmt::Arguments>::new::<8, 2>
  %45 = invoke { ptr, ptr } @_RINvMs2_NtCsgxBkk5gSRhY_4core3fmtNtB6_9Arguments3newKj8_Kj2_ECs4VqSFjx4n5U_12clap_builder(ptr @alloc_874ad33e48b268f97acaace8e58fd638, ptr align 8 %args1)
          to label %bb20 unwind label %cleanup5, !dbg !744

bb20:                                             ; preds = %bb19
  %_26.0 = extractvalue { ptr, ptr } %45, 0, !dbg !744
  %_26.1 = extractvalue { ptr, ptr } %45, 1, !dbg !744
; invoke <std::io::stdio::Stderr as std::io::Write>::write_fmt
  %46 = invoke ptr @_RNvXso_NtNtCs9k3SxhrAWiO_3std2io5stdioNtB5_6StderrNtB7_5Write9write_fmt(ptr align 8 %_25, ptr %_26.0, ptr %_26.1)
          to label %bb21 unwind label %cleanup5, !dbg !742

bb21:                                             ; preds = %bb20
  store ptr %46, ptr %_23, align 8, !dbg !742
; invoke core::ptr::drop_glue::<core::result::Result<(), core::io::error::Error>>
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbRzQFPXpg46_3nix(ptr align 8 %_23)
          to label %bb22 unwind label %cleanup5, !dbg !742

bb23:                                             ; preds = %bb22
  br i1 %_36, label %bb24, label %bb30, !dbg !742

bb30:                                             ; preds = %bb29, %bb23
  %_56.0 = load ptr, ptr %e, align 8, !dbg !742
  %47 = getelementptr inbounds i8, ptr %e, i64 8, !dbg !742
  %_56.1 = load ptr, ptr %47, align 8, !dbg !742
  %48 = getelementptr inbounds i8, ptr %_56.1, i64 88, !dbg !742
  %49 = load ptr, ptr %48, align 8, !dbg !742, !invariant.load !23, !nonnull !23
  %50 = invoke i32 %49(ptr %_56.0)
          to label %bb31 unwind label %cleanup5, !dbg !742

bb24:                                             ; preds = %bb23
; invoke std::io::stdio::stderr
  %51 = invoke align 8 ptr @_RNvNtNtCs9k3SxhrAWiO_3std2io5stdio6stderrCscBbfQkuq0VR_6expand()
          to label %bb25 unwind label %cleanup5, !dbg !742

bb25:                                             ; preds = %bb24
  store ptr %51, ptr %_40, align 8, !dbg !742
; invoke uucore::execution_phrase
  %52 = invoke { ptr, i64 } @_RNvCs1iFJFqccjfm_6uucore16execution_phrase()
          to label %bb26 unwind label %cleanup5, !dbg !742

bb26:                                             ; preds = %bb25
  %53 = extractvalue { ptr, i64 } %52, 0, !dbg !742
  %54 = extractvalue { ptr, i64 } %52, 1, !dbg !742
  store ptr %53, ptr %_44, align 8, !dbg !742
  %55 = getelementptr inbounds i8, ptr %_44, i64 8, !dbg !742
  store i64 %54, ptr %55, align 8, !dbg !742
  store ptr %_44, ptr %args.dbg.spill7, align 8, !dbg !742
    #dbg_declare(ptr %args.dbg.spill7, !728, !DIExpression(), !765)
; invoke <core::fmt::rt::Argument>::new_display::<&str>
  invoke void @_RINvMNtNtCsgxBkk5gSRhY_4core3fmt2rtNtB3_8Argument11new_displayReECsbRzQFPXpg46_3nix(ptr sret([16 x i8]) align 8 %_46, ptr align 8 %_44)
          to label %bb27 unwind label %cleanup5, !dbg !765

bb27:                                             ; preds = %bb26
  %56 = getelementptr inbounds nuw %"core::fmt::rt::Argument<'_>", ptr %args2, i64 0, !dbg !765
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %56, ptr align 8 %_46, i64 16, i1 false), !dbg !765
; invoke <core::fmt::Arguments>::new::<40, 1>
  %57 = invoke { ptr, ptr } @_RINvMs2_NtCsgxBkk5gSRhY_4core3fmtNtB6_9Arguments3newKj28_Kj1_ECscBbfQkuq0VR_6expand(ptr @alloc_f75aa74870c61552fa45b7b9864e4640, ptr align 8 %args2)
          to label %bb28 unwind label %cleanup5, !dbg !745

bb28:                                             ; preds = %bb27
  %_41.0 = extractvalue { ptr, ptr } %57, 0, !dbg !745
  %_41.1 = extractvalue { ptr, ptr } %57, 1, !dbg !745
; invoke <std::io::stdio::Stderr as std::io::Write>::write_fmt
  %58 = invoke ptr @_RNvXso_NtNtCs9k3SxhrAWiO_3std2io5stdioNtB5_6StderrNtB7_5Write9write_fmt(ptr align 8 %_40, ptr %_41.0, ptr %_41.1)
          to label %bb29 unwind label %cleanup5, !dbg !742

bb29:                                             ; preds = %bb28
  store ptr %58, ptr %_38, align 8, !dbg !742
; invoke core::ptr::drop_glue::<core::result::Result<(), core::io::error::Error>>
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbRzQFPXpg46_3nix(ptr align 8 %_38)
          to label %bb30 unwind label %cleanup5, !dbg !766

bb31:                                             ; preds = %bb30
  store i32 %50, ptr %_0, align 4, !dbg !742
; invoke core::ptr::drop_glue::<alloc::string::String>
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs69bkQDvJnHM_16unic_langid_impl(ptr align 8 %s)
          to label %bb32 unwind label %cleanup4, !dbg !763

bb32:                                             ; preds = %bb31
; invoke core::ptr::drop_glue::<alloc::boxed::Box<dyn uucore::mods::error::UError>>
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtCs1iFJFqccjfm_6uucore4mods5error6UErrorEL_EECs9xOv1NcnHfv_9uu_expand(ptr align 8 %e)
          to label %bb36 unwind label %cleanup, !dbg !749

terminate:                                        ; preds = %bb34, %bb33
  %59 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !dbg !739
  unreachable, !dbg !739

bb7:                                              ; No predecessors!
  unreachable, !dbg !740

bb35:                                             ; preds = %bb37, %bb38
  %60 = load ptr, ptr %0, align 8, !dbg !739
  %61 = getelementptr inbounds i8, ptr %0, i64 8, !dbg !739
  %62 = load i32, ptr %61, align 8, !dbg !739
  %63 = insertvalue { ptr, i32 } poison, ptr %60, 0, !dbg !739
  %64 = insertvalue { ptr, i32 } %63, i32 %62, 1, !dbg !739
  resume { ptr, i32 } %64, !dbg !739

bb37:                                             ; preds = %bb38
  br label %bb35, !dbg !746
}

; <core::result::Result<(), uucore::mods::locale::LocalizationError>>::unwrap_or_else::<expand::main::{closure#0}>
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RINvMNtCsgxBkk5gSRhY_4core6resultINtB3_6ResultuNtNtNtCs1iFJFqccjfm_6uucore4mods6locale17LocalizationErrorE14unwrap_or_elseNCNvCscBbfQkuq0VR_6expand4main0EB20_(ptr align 8 %self, ptr align 8 %0) unnamed_addr #1 !dbg !767 {
start:
  %op.dbg.spill = alloca [0 x i8], align 1
  %t.dbg.spill = alloca [0 x i8], align 1
  %_6 = alloca [96 x i8], align 8
  %e = alloca [96 x i8], align 8
    #dbg_declare(ptr %t.dbg.spill, !942, !DIExpression(), !946)
    #dbg_declare(ptr %self, !940, !DIExpression(), !947)
    #dbg_declare(ptr %op.dbg.spill, !941, !DIExpression(), !948)
    #dbg_declare(ptr %e, !944, !DIExpression(), !949)
  %1 = load i64, ptr %self, align 8, !dbg !950
  %2 = icmp eq i64 %1, -1, !dbg !950
  %_3 = select i1 %2, i64 0, i64 1, !dbg !950
  %3 = trunc nuw i64 %_3 to i1, !dbg !951
  br i1 %3, label %bb2, label %bb3, !dbg !951

bb2:                                              ; preds = %start
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %e, ptr align 8 %self, i64 96, i1 false), !dbg !952
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_6, ptr align 8 %e, i64 96, i1 false), !dbg !953
; call expand::main::{closure#0}
  call void @_RNCNvCscBbfQkuq0VR_6expand4main0B3_(ptr align 8 %_6) #17, !dbg !953
  br label %bb5, !dbg !954

bb3:                                              ; preds = %start
  br label %bb5, !dbg !955

bb5:                                              ; preds = %bb2, %bb3
  ret void, !dbg !956

bb1:                                              ; No predecessors!
  unreachable, !dbg !950
}

; <core::fmt::rt::Argument>::new_display::<uucore::mods::locale::LocalizationError>
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RINvMNtNtCsgxBkk5gSRhY_4core3fmt2rtNtB3_8Argument11new_displayNtNtNtCs1iFJFqccjfm_6uucore4mods6locale17LocalizationErrorECscBbfQkuq0VR_6expand(ptr sret([16 x i8]) align 8 %_0, ptr align 8 %x) unnamed_addr #1 !dbg !957 {
start:
  %x.dbg.spill = alloca [8 x i8], align 8
  %_2 = alloca [16 x i8], align 8
  store ptr %x, ptr %x.dbg.spill, align 8
    #dbg_declare(ptr %x.dbg.spill, !966, !DIExpression(), !967)
    #dbg_declare(ptr %x.dbg.spill, !968, !DIExpression(), !979)
  store ptr %x, ptr %_2, align 8, !dbg !981
  %0 = getelementptr inbounds i8, ptr %_2, i64 8, !dbg !981
  store ptr @_RNvXs2_NtNtCs1iFJFqccjfm_6uucore4mods6localeNtB5_17LocalizationErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt, ptr %0, align 8, !dbg !981
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %_2, i64 16, i1 false), !dbg !982
  ret void, !dbg !983
}

; <core::fmt::rt::Argument>::new_debug::<fluent_syntax::parser::errors::ParserError>
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RINvMNtNtCsgxBkk5gSRhY_4core3fmt2rtNtB3_8Argument9new_debugNtNtNtCslPRUPRFQ4qs_13fluent_syntax6parser6errors11ParserErrorECscBbfQkuq0VR_6expand(ptr sret([16 x i8]) align 8 %_0, ptr align 8 %x) unnamed_addr #1 !dbg !984 {
start:
  %x.dbg.spill = alloca [8 x i8], align 8
  %_2 = alloca [16 x i8], align 8
  store ptr %x, ptr %x.dbg.spill, align 8
    #dbg_declare(ptr %x.dbg.spill, !992, !DIExpression(), !993)
    #dbg_declare(ptr %x.dbg.spill, !994, !DIExpression(), !1004)
  store ptr %x, ptr %_2, align 8, !dbg !1006
  %0 = getelementptr inbounds i8, ptr %_2, i64 8, !dbg !1006
  store ptr @_RNvXs_NtNtCslPRUPRFQ4qs_13fluent_syntax6parser6errorsNtB4_11ParserErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmtCscBbfQkuq0VR_6expand, ptr %0, align 8, !dbg !1006
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %_2, i64 16, i1 false), !dbg !1007
  ret void, !dbg !1008
}

; <core::fmt::Arguments>::new::<28, 1>
; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RINvMs2_NtCsgxBkk5gSRhY_4core3fmtNtB6_9Arguments3newKj1c_Kj1_ECscBbfQkuq0VR_6expand(ptr %template, ptr align 8 %args) unnamed_addr #1 !dbg !1009 {
start:
  %args.dbg.spill = alloca [8 x i8], align 8
  %template.dbg.spill = alloca [8 x i8], align 8
  store ptr %template, ptr %template.dbg.spill, align 8
    #dbg_declare(ptr %template.dbg.spill, !1030, !DIExpression(), !1032)
  store ptr %args, ptr %args.dbg.spill, align 8
    #dbg_declare(ptr %args.dbg.spill, !1031, !DIExpression(), !1033)
  %0 = insertvalue { ptr, ptr } poison, ptr %template, 0, !dbg !1034
  %1 = insertvalue { ptr, ptr } %0, ptr %args, 1, !dbg !1034
  ret { ptr, ptr } %1, !dbg !1034
}

; <core::fmt::Arguments>::new::<37, 2>
; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RINvMs2_NtCsgxBkk5gSRhY_4core3fmtNtB6_9Arguments3newKj25_Kj2_ECscBbfQkuq0VR_6expand(ptr %template, ptr align 8 %args) unnamed_addr #1 !dbg !1035 {
start:
  %args.dbg.spill = alloca [8 x i8], align 8
  %template.dbg.spill = alloca [8 x i8], align 8
  store ptr %template, ptr %template.dbg.spill, align 8
    #dbg_declare(ptr %template.dbg.spill, !1045, !DIExpression(), !1047)
  store ptr %args, ptr %args.dbg.spill, align 8
    #dbg_declare(ptr %args.dbg.spill, !1046, !DIExpression(), !1048)
  %0 = insertvalue { ptr, ptr } poison, ptr %template, 0, !dbg !1049
  %1 = insertvalue { ptr, ptr } %0, ptr %args, 1, !dbg !1049
  ret { ptr, ptr } %1, !dbg !1049
}

; <core::fmt::Arguments>::new::<40, 1>
; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RINvMs2_NtCsgxBkk5gSRhY_4core3fmtNtB6_9Arguments3newKj28_Kj1_ECscBbfQkuq0VR_6expand(ptr %template, ptr align 8 %args) unnamed_addr #1 !dbg !1050 {
start:
  %args.dbg.spill = alloca [8 x i8], align 8
  %template.dbg.spill = alloca [8 x i8], align 8
  store ptr %template, ptr %template.dbg.spill, align 8
    #dbg_declare(ptr %template.dbg.spill, !1059, !DIExpression(), !1061)
  store ptr %args, ptr %args.dbg.spill, align 8
    #dbg_declare(ptr %args.dbg.spill, !1060, !DIExpression(), !1062)
  %0 = insertvalue { ptr, ptr } poison, ptr %template, 0, !dbg !1063
  %1 = insertvalue { ptr, ptr } %0, ptr %args, 1, !dbg !1063
  ret { ptr, ptr } %1, !dbg !1063
}

; <core::fmt::Arguments>::new::<45, 1>
; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RINvMs2_NtCsgxBkk5gSRhY_4core3fmtNtB6_9Arguments3newKj2d_Kj1_ECscBbfQkuq0VR_6expand(ptr %template, ptr align 8 %args) unnamed_addr #1 !dbg !1064 {
start:
  %args.dbg.spill = alloca [8 x i8], align 8
  %template.dbg.spill = alloca [8 x i8], align 8
  store ptr %template, ptr %template.dbg.spill, align 8
    #dbg_declare(ptr %template.dbg.spill, !1073, !DIExpression(), !1075)
  store ptr %args, ptr %args.dbg.spill, align 8
    #dbg_declare(ptr %args.dbg.spill, !1074, !DIExpression(), !1076)
  %0 = insertvalue { ptr, ptr } poison, ptr %template, 0, !dbg !1077
  %1 = insertvalue { ptr, ptr } %0, ptr %args, 1, !dbg !1077
  ret { ptr, ptr } %1, !dbg !1077
}

; <alloc::vec::Vec<std::ffi::os_str::OsString>>::extend_trusted::<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>
; Function Attrs: nonlazybind uwtable
define internal void @_RINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB6_3VecNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringE14extend_trustedINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters6cloned6ClonedINtNtNtB1N_5slice4iter4IterBF_EEECscBbfQkuq0VR_6expand(ptr align 8 %self, ptr %0, ptr %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1078 {
start:
  %s.dbg.spill = alloca [16 x i8], align 8
  %local_len.dbg.spill = alloca [16 x i8], align 8
  %len.dbg.spill = alloca [8 x i8], align 8
  %ptr.dbg.spill = alloca [8 x i8], align 8
  %additional.dbg.spill = alloca [8 x i8], align 8
  %low.dbg.spill = alloca [8 x i8], align 8
  %2 = alloca [16 x i8], align 8
  %self.dbg.spill = alloca [8 x i8], align 8
  %_25 = alloca [1 x i8], align 1
  %_22 = alloca [24 x i8], align 8
  %_5 = alloca [24 x i8], align 8
  %high = alloca [16 x i8], align 8
  %iterator = alloca [16 x i8], align 8
  store ptr %0, ptr %iterator, align 8
  %3 = getelementptr inbounds i8, ptr %iterator, i64 8
  store ptr %1, ptr %3, align 8
  store ptr %self, ptr %self.dbg.spill, align 8
    #dbg_declare(ptr %self.dbg.spill, !1097, !DIExpression(), !1150)
    #dbg_declare(ptr %self.dbg.spill, !1151, !DIExpression(), !1157)
    #dbg_declare(ptr %iterator, !1098, !DIExpression(), !1159)
    #dbg_declare(ptr %high, !1101, !DIExpression(), !1160)
  store i8 1, ptr %_25, align 1, !dbg !1161
; invoke <core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>> as core::iter::traits::iterator::Iterator>::size_hint
  invoke void @_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator9size_hintCscBbfQkuq0VR_6expand(ptr sret([24 x i8]) align 8 %_5, ptr align 8 %iterator)
          to label %bb1 unwind label %cleanup, !dbg !1162

bb8:                                              ; preds = %cleanup
  %4 = load i8, ptr %_25, align 1, !dbg !1163
  %5 = trunc nuw i8 %4 to i1, !dbg !1163
  br i1 %5, label %bb7, label %bb6, !dbg !1163

cleanup:                                          ; preds = %bb5, %bb3, %bb2, %start
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %6, 0
  %8 = extractvalue { ptr, i32 } %6, 1
  store ptr %7, ptr %2, align 8
  %9 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 %8, ptr %9, align 8
  br label %bb8

bb1:                                              ; preds = %start
  %low = load i64, ptr %_5, align 8, !dbg !1164
  store i64 %low, ptr %low.dbg.spill, align 8, !dbg !1164
    #dbg_declare(ptr %low.dbg.spill, !1099, !DIExpression(), !1165)
  %10 = getelementptr inbounds i8, ptr %_5, i64 8, !dbg !1166
  %11 = load i64, ptr %10, align 8, !dbg !1166
  %12 = getelementptr inbounds i8, ptr %10, i64 8, !dbg !1166
  %13 = load i64, ptr %12, align 8, !dbg !1166
  store i64 %11, ptr %high, align 8, !dbg !1166
  %14 = getelementptr inbounds i8, ptr %high, i64 8, !dbg !1166
  store i64 %13, ptr %14, align 8, !dbg !1166
  %_7 = load i64, ptr %high, align 8, !dbg !1167
  %15 = getelementptr inbounds i8, ptr %high, i64 8, !dbg !1167
  %16 = load i64, ptr %15, align 8, !dbg !1167
  %17 = trunc nuw i64 %_7 to i1, !dbg !1168
  br i1 %17, label %bb2, label %bb5, !dbg !1168

bb2:                                              ; preds = %bb1
  %18 = getelementptr inbounds i8, ptr %high, i64 8, !dbg !1169
  %additional = load i64, ptr %18, align 8, !dbg !1169
  store i64 %additional, ptr %additional.dbg.spill, align 8, !dbg !1169
    #dbg_declare(ptr %additional.dbg.spill, !1115, !DIExpression(), !1169)
; invoke <alloc::vec::Vec<std::ffi::os_str::OsString>>::reserve
  invoke void @_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringE7reserveCsfDOkK3ZKZlf_8clap_lex(ptr align 8 %self, i64 %additional)
          to label %bb3 unwind label %cleanup, !dbg !1170

bb5:                                              ; preds = %bb1
  store ptr @alloc_31365cfefba383c4d2bf6b6a04cc10aa, ptr %s.dbg.spill, align 8, !dbg !1171
  %19 = getelementptr inbounds i8, ptr %s.dbg.spill, i64 8, !dbg !1171
  store i64 17, ptr %19, align 8, !dbg !1171
    #dbg_declare(ptr %s.dbg.spill, !1172, !DIExpression(), !1178)
    #dbg_declare(ptr %s.dbg.spill, !1179, !DIExpression(), !1187)
    #dbg_declare(ptr %s.dbg.spill, !1189, !DIExpression(), !1194)
    #dbg_declare(ptr %s.dbg.spill, !1196, !DIExpression(), !1205)
; invoke core::panicking::panic_fmt
  invoke void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr @alloc_31365cfefba383c4d2bf6b6a04cc10aa, ptr inttoptr (i64 35 to ptr), ptr align 8 @alloc_f9113280143601d93e6ec2a1bdcb047c) #18
          to label %unreachable unwind label %cleanup, !dbg !1171

bb3:                                              ; preds = %bb2
  %20 = getelementptr inbounds i8, ptr %self, i64 8, !dbg !1207
  %_26 = load ptr, ptr %20, align 8, !dbg !1207
  store ptr %_26, ptr %ptr.dbg.spill, align 8, !dbg !1227
    #dbg_declare(ptr %ptr.dbg.spill, !1139, !DIExpression(), !1233)
  %len = getelementptr inbounds i8, ptr %self, i64 16, !dbg !1234
  store ptr %len, ptr %len.dbg.spill, align 8, !dbg !1234
    #dbg_declare(ptr %len.dbg.spill, !1235, !DIExpression(), !1242)
  %_27 = load i64, ptr %len, align 8, !dbg !1244
  store ptr %len, ptr %local_len.dbg.spill, align 8, !dbg !1245
  %21 = getelementptr inbounds i8, ptr %local_len.dbg.spill, i64 8, !dbg !1245
  store i64 %_27, ptr %21, align 8, !dbg !1245
    #dbg_declare(ptr %local_len.dbg.spill, !1142, !DIExpression(), !1246)
  store i8 0, ptr %_25, align 1, !dbg !1247
  %_21.0 = load ptr, ptr %iterator, align 8, !dbg !1247
  %22 = getelementptr inbounds i8, ptr %iterator, i64 8, !dbg !1247
  %_21.1 = load ptr, ptr %22, align 8, !dbg !1247
  %23 = getelementptr inbounds i8, ptr %_22, i64 16, !dbg !1248
  store ptr %_26, ptr %23, align 8, !dbg !1248
  store ptr %len, ptr %_22, align 8, !dbg !1248
  %24 = getelementptr inbounds i8, ptr %_22, i64 8, !dbg !1248
  store i64 %_27, ptr %24, align 8, !dbg !1248
; invoke <core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>> as core::iter::traits::iterator::Iterator>::for_each::<<alloc::vec::Vec<std::ffi::os_str::OsString>>::extend_trusted<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>::{closure#0}>
  invoke void @_RINvYINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters6cloned6ClonedINtNtNtBc_5slice4iter4IterNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB2X_3VecB1n_E14extend_trustedB3_E0ECscBbfQkuq0VR_6expand(ptr %_21.0, ptr %_21.1, ptr align 8 %_22)
          to label %bb4 unwind label %cleanup, !dbg !1249

bb4:                                              ; preds = %bb3
  ret void, !dbg !1250

unreachable:                                      ; preds = %bb5
  unreachable

bb9:                                              ; No predecessors!
  unreachable, !dbg !1251

bb6:                                              ; preds = %bb7, %bb8
  %25 = load ptr, ptr %2, align 8, !dbg !1251
  %26 = getelementptr inbounds i8, ptr %2, i64 8, !dbg !1251
  %27 = load i32, ptr %26, align 8, !dbg !1251
  %28 = insertvalue { ptr, i32 } poison, ptr %25, 0, !dbg !1251
  %29 = insertvalue { ptr, i32 } %28, i32 %27, 1, !dbg !1251
  resume { ptr, i32 } %29, !dbg !1251

bb7:                                              ; preds = %bb8
  br label %bb6, !dbg !1163
}

; std::rt::lang_start::<()>
; Function Attrs: nonlazybind uwtable
define hidden i64 @_RINvNtCs9k3SxhrAWiO_3std2rt10lang_startuECscBbfQkuq0VR_6expand(ptr %main, i64 %argc, ptr %argv, i8 %sigpipe) unnamed_addr #0 !dbg !1252 {
start:
  %sigpipe.dbg.spill = alloca [1 x i8], align 1
  %argv.dbg.spill = alloca [8 x i8], align 8
  %argc.dbg.spill = alloca [8 x i8], align 8
  %main.dbg.spill = alloca [8 x i8], align 8
  %_7 = alloca [8 x i8], align 8
  store ptr %main, ptr %main.dbg.spill, align 8
    #dbg_declare(ptr %main.dbg.spill, !1259, !DIExpression(), !1263)
  store i64 %argc, ptr %argc.dbg.spill, align 8
    #dbg_declare(ptr %argc.dbg.spill, !1260, !DIExpression(), !1264)
  store ptr %argv, ptr %argv.dbg.spill, align 8
    #dbg_declare(ptr %argv.dbg.spill, !1261, !DIExpression(), !1265)
  store i8 %sigpipe, ptr %sigpipe.dbg.spill, align 1
    #dbg_declare(ptr %sigpipe.dbg.spill, !1262, !DIExpression(), !1266)
  store ptr %main, ptr %_7, align 8, !dbg !1267
; call std::rt::lang_start_internal
  %_0 = call i64 @_RNvNtCs9k3SxhrAWiO_3std2rt19lang_start_internal(ptr %_7, ptr align 8 @vtable.0, i64 %argc, ptr %argv, i8 %sigpipe), !dbg !1268
  ret i64 %_0, !dbg !1269
}

; core::ptr::drop_glue::<<alloc::vec::Vec<std::ffi::os_str::OsString>>::extend_trusted<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>::{closure#0}>
; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtBK_3VecNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringE14extend_trustedINtNtNtNtB4_4iter8adapters6cloned6ClonedINtNtNtB4_5slice4iter4IterB1j_EEE0ECscBbfQkuq0VR_6expand(ptr align 8 %_1) unnamed_addr #0 !dbg !1270 {
start:
  %_1.dbg.spill = alloca [8 x i8], align 8
  store ptr %_1, ptr %_1.dbg.spill, align 8
    #dbg_declare(ptr %_1.dbg.spill, !1282, !DIExpression(), !1285)
; call core::ptr::drop_glue::<alloc::vec::set_len_on_drop::SetLenOnDrop>
  call void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs6i54tJFfzR_5alloc3vec15set_len_on_drop12SetLenOnDropECsflPjn0bgVK6_16intl_pluralrules(ptr align 8 %_1), !dbg !1285
  ret void, !dbg !1285
}

; core::ptr::drop_glue::<core::iter::adapters::map::map_fold<&std::ffi::os_str::OsString, std::ffi::os_str::OsString, (), <std::ffi::os_str::OsString as core::clone::Clone>::clone, core::iter::traits::iterator::Iterator::for_each::call<std::ffi::os_str::OsString, <alloc::vec::Vec<std::ffi::os_str::OsString>>::extend_trusted<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>::{closure#0}>::{closure#0}>::{closure#0}>
; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCINvNtNtNtB4_4iter8adapters3map8map_foldRNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringB1h_uNvYB1h_NtNtB4_5clone5Clone5cloneNCINvNvNtNtNtBK_6traits8iterator8Iterator8for_each4callB1h_NCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB3G_3VecB1h_E14extend_trustedINtNtBI_6cloned6ClonedINtNtNtB4_5slice4iter4IterB1h_EEE0E0E0ECscBbfQkuq0VR_6expand(ptr align 8 %_1) unnamed_addr #0 !dbg !1286 {
start:
  %_1.dbg.spill = alloca [8 x i8], align 8
  store ptr %_1, ptr %_1.dbg.spill, align 8
    #dbg_declare(ptr %_1.dbg.spill, !1308, !DIExpression(), !1311)
; call core::ptr::drop_glue::<core::iter::traits::iterator::Iterator::for_each::call<std::ffi::os_str::OsString, <alloc::vec::Vec<std::ffi::os_str::OsString>>::extend_trusted<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>::{closure#0}>::{closure#0}>
  call void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCINvNvNtNtNtNtB4_4iter6traits8iterator8Iterator8for_each4callNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB2s_3VecB1B_E14extend_trustedINtNtNtBO_8adapters6cloned6ClonedINtNtNtB4_5slice4iter4IterB1B_EEE0E0ECscBbfQkuq0VR_6expand(ptr align 8 %_1), !dbg !1311
  ret void, !dbg !1311
}

; core::ptr::drop_glue::<core::iter::traits::iterator::Iterator::for_each::call<std::ffi::os_str::OsString, <alloc::vec::Vec<std::ffi::os_str::OsString>>::extend_trusted<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>::{closure#0}>::{closure#0}>
; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCINvNvNtNtNtNtB4_4iter6traits8iterator8Iterator8for_each4callNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB2s_3VecB1B_E14extend_trustedINtNtNtBO_8adapters6cloned6ClonedINtNtNtB4_5slice4iter4IterB1B_EEE0E0ECscBbfQkuq0VR_6expand(ptr align 8 %_1) unnamed_addr #0 !dbg !1312 {
start:
  %_1.dbg.spill = alloca [8 x i8], align 8
  store ptr %_1, ptr %_1.dbg.spill, align 8
    #dbg_declare(ptr %_1.dbg.spill, !1317, !DIExpression(), !1320)
; call core::ptr::drop_glue::<<alloc::vec::Vec<std::ffi::os_str::OsString>>::extend_trusted<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>::{closure#0}>
  call void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtBK_3VecNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringE14extend_trustedINtNtNtNtB4_4iter8adapters6cloned6ClonedINtNtNtB4_5slice4iter4IterB1j_EEE0ECscBbfQkuq0VR_6expand(ptr align 8 %_1), !dbg !1320
  ret void, !dbg !1320
}

; core::ptr::drop_glue::<uu_expand::ParseError>
; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtCs9xOv1NcnHfv_9uu_expand10ParseErrorECscBbfQkuq0VR_6expand(ptr align 8 %_1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1321 {
start:
  %0 = alloca [16 x i8], align 8
  %_1.dbg.spill = alloca [8 x i8], align 8
  store ptr %_1, ptr %_1.dbg.spill, align 8
    #dbg_declare(ptr %_1.dbg.spill, !1326, !DIExpression(), !1329)
  %1 = load i64, ptr %_1, align 8, !dbg !1329
  %2 = sub i64 %1, -9223372036854775808, !dbg !1329
  %3 = icmp uge i64 %1, -9223372036854775808, !dbg !1329
  %_2 = select i1 %3, i64 %2, i64 1, !dbg !1329
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb6
    i64 2, label %bb7
    i64 4, label %bb8
  ], !dbg !1329

bb2:                                              ; preds = %bb8, %bb7, %bb5, %bb3, %start
  ret void, !dbg !1329

bb3:                                              ; preds = %start
  %4 = getelementptr inbounds i8, ptr %_1, i64 8, !dbg !1329
; call core::ptr::drop_glue::<alloc::string::String>
  call void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs69bkQDvJnHM_16unic_langid_impl(ptr align 8 %4), !dbg !1329
  br label %bb2, !dbg !1329

bb6:                                              ; preds = %start
; invoke core::ptr::drop_glue::<alloc::string::String>
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs69bkQDvJnHM_16unic_langid_impl(ptr align 8 %_1)
          to label %bb5 unwind label %cleanup, !dbg !1329

bb7:                                              ; preds = %start
  %5 = getelementptr inbounds i8, ptr %_1, i64 8, !dbg !1329
; call core::ptr::drop_glue::<alloc::string::String>
  call void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs69bkQDvJnHM_16unic_langid_impl(ptr align 8 %5), !dbg !1329
  br label %bb2, !dbg !1329

bb8:                                              ; preds = %start
  %6 = getelementptr inbounds i8, ptr %_1, i64 8, !dbg !1329
; call core::ptr::drop_glue::<alloc::string::String>
  call void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs69bkQDvJnHM_16unic_langid_impl(ptr align 8 %6), !dbg !1329
  br label %bb2, !dbg !1329

bb4:                                              ; preds = %cleanup
  %7 = getelementptr inbounds i8, ptr %_1, i64 24, !dbg !1329
; invoke core::ptr::drop_glue::<alloc::string::String>
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs69bkQDvJnHM_16unic_langid_impl(ptr align 8 %7) #15
          to label %bb1 unwind label %terminate, !dbg !1329

cleanup:                                          ; preds = %bb6
  %8 = landingpad { ptr, i32 }
          cleanup
  %9 = extractvalue { ptr, i32 } %8, 0
  %10 = extractvalue { ptr, i32 } %8, 1
  store ptr %9, ptr %0, align 8
  %11 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %10, ptr %11, align 8
  br label %bb4

bb5:                                              ; preds = %bb6
  %12 = getelementptr inbounds i8, ptr %_1, i64 24, !dbg !1329
; call core::ptr::drop_glue::<alloc::string::String>
  call void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs69bkQDvJnHM_16unic_langid_impl(ptr align 8 %12), !dbg !1329
  br label %bb2, !dbg !1329

terminate:                                        ; preds = %bb4
  %13 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !dbg !1329
  unreachable, !dbg !1329

bb1:                                              ; preds = %bb4
  %14 = load ptr, ptr %0, align 8, !dbg !1329
  %15 = getelementptr inbounds i8, ptr %0, i64 8, !dbg !1329
  %16 = load i32, ptr %15, align 8, !dbg !1329
  %17 = insertvalue { ptr, i32 } poison, ptr %14, 0, !dbg !1329
  %18 = insertvalue { ptr, i32 } %17, i32 %16, 1, !dbg !1329
  resume { ptr, i32 } %18, !dbg !1329
}

; core::ptr::drop_glue::<uu_expand::Options>
; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtCs9xOv1NcnHfv_9uu_expand7OptionsECscBbfQkuq0VR_6expand(ptr align 8 %_1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1330 {
start:
  %0 = alloca [16 x i8], align 8
  %_1.dbg.spill = alloca [8 x i8], align 8
  store ptr %_1, ptr %_1.dbg.spill, align 8
    #dbg_declare(ptr %_1.dbg.spill, !1353, !DIExpression(), !1356)
; invoke core::ptr::drop_glue::<alloc::vec::Vec<std::ffi::os_str::OsString>>
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringEECsfDOkK3ZKZlf_8clap_lex(ptr align 8 %_1)
          to label %bb4 unwind label %cleanup, !dbg !1356

bb3:                                              ; preds = %cleanup
  %1 = getelementptr inbounds i8, ptr %_1, i64 24, !dbg !1356
; invoke core::ptr::drop_glue::<alloc::vec::Vec<usize>>
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecjEECsjRmjFM5qnIY_6strsim(ptr align 8 %1) #15
          to label %bb1 unwind label %terminate, !dbg !1356

cleanup:                                          ; preds = %start
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  %4 = extractvalue { ptr, i32 } %2, 1
  store ptr %3, ptr %0, align 8
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %4, ptr %5, align 8
  br label %bb3

bb4:                                              ; preds = %start
  %6 = getelementptr inbounds i8, ptr %_1, i64 24, !dbg !1356
; call core::ptr::drop_glue::<alloc::vec::Vec<usize>>
  call void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecjEECsjRmjFM5qnIY_6strsim(ptr align 8 %6), !dbg !1356
  ret void, !dbg !1356

terminate:                                        ; preds = %bb3
  %7 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !dbg !1356
  unreachable, !dbg !1356

bb1:                                              ; preds = %bb3
  %8 = load ptr, ptr %0, align 8, !dbg !1356
  %9 = getelementptr inbounds i8, ptr %0, i64 8, !dbg !1356
  %10 = load i32, ptr %9, align 8, !dbg !1356
  %11 = insertvalue { ptr, i32 } poison, ptr %8, 0, !dbg !1356
  %12 = insertvalue { ptr, i32 } %11, i32 %10, 1, !dbg !1356
  resume { ptr, i32 } %12, !dbg !1356
}

; uucore::mods::clap_localization::handle_clap_result::<alloc::vec::Vec<std::ffi::os_str::OsString>, std::ffi::os_str::OsString>
; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtCs1iFJFqccjfm_6uucore4mods17clap_localization18handle_clap_resultINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringEB1F_ECscBbfQkuq0VR_6expand(ptr sret([104 x i8]) align 8 %_0, ptr align 8 %cmd, ptr align 8 %itr) unnamed_addr #0 !dbg !1357 {
start:
  %0 = alloca [24 x i8], align 8
    #dbg_declare(ptr %cmd, !2065, !DIExpression(), !2069)
    #dbg_declare(ptr %itr, !2066, !DIExpression(), !2070)
  %1 = alloca [712 x i8], align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 8 %cmd, i64 712, i1 false), !dbg !2071
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %itr, i64 24, i1 false), !dbg !2071
; call uucore::mods::clap_localization::handle_clap_result_with_exit_code::<alloc::vec::Vec<std::ffi::os_str::OsString>, std::ffi::os_str::OsString>
  call void @_RINvNtNtCs1iFJFqccjfm_6uucore4mods17clap_localization33handle_clap_result_with_exit_codeINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringEB1U_EB6_(ptr sret([104 x i8]) align 8 %_0, ptr align 8 %1, ptr align 8 %0, i32 1), !dbg !2071
  ret void, !dbg !2072
}

; std::sys::backtrace::__rust_begin_short_backtrace::<fn(), ()>
; Function Attrs: noinline nonlazybind uwtable
define internal void @_RINvNtNtCs9k3SxhrAWiO_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECscBbfQkuq0VR_6expand(ptr %f) unnamed_addr #2 !dbg !2073 {
start:
  %dummy.dbg.spill = alloca [0 x i8], align 1
  %f.dbg.spill = alloca [8 x i8], align 8
  %result.dbg.spill = alloca [0 x i8], align 1
  %_2 = alloca [0 x i8], align 1
    #dbg_declare(ptr %result.dbg.spill, !2080, !DIExpression(), !2084)
  store ptr %f, ptr %f.dbg.spill, align 8
    #dbg_declare(ptr %f.dbg.spill, !2079, !DIExpression(), !2085)
    #dbg_declare(ptr %dummy.dbg.spill, !2086, !DIExpression(), !2091)
; call <fn() as core::ops::function::FnOnce<()>>::call_once
  call void @_RNvYFEuINtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceuE9call_onceCscBbfQkuq0VR_6expand(ptr %f) #17, !dbg !2093
  call void asm sideeffect "", "~{memory}"(), !dbg !2094, !srcloc !2095
  ret void, !dbg !2096
}

; uu_expand::uumain::uumain::<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>
; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RINvNvCs9xOv1NcnHfv_9uu_expand6uumain6uumainINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters6cloned6ClonedINtNtNtBP_5slice4iter4IterNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringEEECscBbfQkuq0VR_6expand(ptr %args.0, ptr %args.1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2097 {
start:
  %residual.dbg.spill = alloca [16 x i8], align 8
  %0 = alloca [48 x i8], align 8
  %1 = alloca [16 x i8], align 8
  %args.dbg.spill = alloca [16 x i8], align 8
  %_21 = alloca [1 x i8], align 1
  %_20 = alloca [1 x i8], align 1
  %val1 = alloca [56 x i8], align 8
  %residual = alloca [48 x i8], align 8
  %_15 = alloca [56 x i8], align 8
  %_14 = alloca [56 x i8], align 8
  %_13 = alloca [56 x i8], align 8
  %val = alloca [104 x i8], align 8
  %_7 = alloca [24 x i8], align 8
  %_6 = alloca [24 x i8], align 8
  %_5 = alloca [712 x i8], align 8
  %_4 = alloca [104 x i8], align 8
  %_3 = alloca [104 x i8], align 8
  %matches = alloca [104 x i8], align 8
  %_0 = alloca [16 x i8], align 8
  store ptr %args.0, ptr %args.dbg.spill, align 8
  %2 = getelementptr inbounds i8, ptr %args.dbg.spill, i64 8
  store ptr %args.1, ptr %2, align 8
    #dbg_declare(ptr %args.dbg.spill, !2102, !DIExpression(), !2145)
    #dbg_declare(ptr %matches, !2103, !DIExpression(), !2146)
    #dbg_declare(ptr %val, !2125, !DIExpression(), !2147)
    #dbg_declare(ptr %residual, !2127, !DIExpression(), !2148)
    #dbg_declare(ptr %val1, !2143, !DIExpression(), !2149)
  store i8 0, ptr %_21, align 1, !dbg !2150
  store i8 0, ptr %_20, align 1, !dbg !2150
  store i8 1, ptr %_21, align 1, !dbg !2150
; invoke uu_expand::uu_app
  invoke void @_RNvCs9xOv1NcnHfv_9uu_expand6uu_app(ptr sret([712 x i8]) align 8 %_5)
          to label %bb1 unwind label %cleanup, !dbg !2151

bb23:                                             ; preds = %bb20, %bb21, %bb17, %cleanup
  %3 = load i8, ptr %_21, align 1, !dbg !2152
  %4 = trunc nuw i8 %3 to i1, !dbg !2152
  br i1 %4, label %bb22, label %bb18, !dbg !2152

cleanup:                                          ; preds = %bb8, %bb13, %bb19, %bb4, %start
  %5 = landingpad { ptr, i32 }
          cleanup
  %6 = extractvalue { ptr, i32 } %5, 0
  %7 = extractvalue { ptr, i32 } %5, 1
  store ptr %6, ptr %1, align 8
  %8 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %7, ptr %8, align 8
  br label %bb23

bb1:                                              ; preds = %start
  store i8 1, ptr %_20, align 1, !dbg !2153
  store i8 0, ptr %_21, align 1, !dbg !2154
; invoke <core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>> as core::iter::traits::iterator::Iterator>::collect::<alloc::vec::Vec<std::ffi::os_str::OsString>>
  invoke void @_RINvYINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters6cloned6ClonedINtNtNtBc_5slice4iter4IterNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringEENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs6i54tJFfzR_5alloc3vec3VecB1n_EECscBbfQkuq0VR_6expand(ptr sret([24 x i8]) align 8 %_7, ptr %args.0, ptr %args.1)
          to label %bb2 unwind label %cleanup2, !dbg !2155

bb21:                                             ; preds = %cleanup2
  %9 = load i8, ptr %_20, align 1, !dbg !2156
  %10 = trunc nuw i8 %9 to i1, !dbg !2156
  br i1 %10, label %bb20, label %bb23, !dbg !2156

cleanup2:                                         ; preds = %bb3, %bb2, %bb1
  %11 = landingpad { ptr, i32 }
          cleanup
  %12 = extractvalue { ptr, i32 } %11, 0
  %13 = extractvalue { ptr, i32 } %11, 1
  store ptr %12, ptr %1, align 8
  %14 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %13, ptr %14, align 8
  br label %bb21

bb2:                                              ; preds = %bb1
; invoke uu_expand::expand_shortcuts
  invoke void @_RNvCs9xOv1NcnHfv_9uu_expand16expand_shortcuts(ptr sret([24 x i8]) align 8 %_6, ptr align 8 %_7)
          to label %bb3 unwind label %cleanup2, !dbg !2153

bb3:                                              ; preds = %bb2
  store i8 0, ptr %_20, align 1, !dbg !2157
; invoke uucore::mods::clap_localization::handle_clap_result::<alloc::vec::Vec<std::ffi::os_str::OsString>, std::ffi::os_str::OsString>
  invoke void @_RINvNtNtCs1iFJFqccjfm_6uucore4mods17clap_localization18handle_clap_resultINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringEB1F_ECscBbfQkuq0VR_6expand(ptr sret([104 x i8]) align 8 %_4, ptr align 8 %_5, ptr align 8 %_6)
          to label %bb4 unwind label %cleanup2, !dbg !2157

bb4:                                              ; preds = %bb3
  store i8 0, ptr %_20, align 1, !dbg !2156
; invoke <core::result::Result<clap_builder::parser::matches::arg_matches::ArgMatches, alloc::boxed::Box<dyn uucore::mods::error::UError>> as core::ops::try_trait::Try>::branch
  invoke void @_RNvXsp_NtCsgxBkk5gSRhY_4core6resultINtB5_6ResultNtNtNtNtCs4VqSFjx4n5U_12clap_builder6parser7matches11arg_matches10ArgMatchesINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtCs1iFJFqccjfm_6uucore4mods5error6UErrorEL_EENtNtNtB7_3ops9try_trait3Try6branchB2D_(ptr sret([104 x i8]) align 8 %_3, ptr align 8 %_4)
          to label %bb5 unwind label %cleanup, !dbg !2157

bb5:                                              ; preds = %bb4
  %15 = load i64, ptr %_3, align 8, !dbg !2157
  %16 = icmp eq i64 %15, -1, !dbg !2157
  %_9 = select i1 %16, i64 1, i64 0, !dbg !2157
  %17 = trunc nuw i64 %_9 to i1, !dbg !2157
  br i1 %17, label %bb8, label %bb7, !dbg !2157

bb8:                                              ; preds = %bb5
  %18 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !2158
  %residual.0 = load ptr, ptr %18, align 8, !dbg !2158
  %19 = getelementptr inbounds i8, ptr %18, i64 8, !dbg !2158
  %residual.1 = load ptr, ptr %19, align 8, !dbg !2158
  store ptr %residual.0, ptr %residual.dbg.spill, align 8, !dbg !2158
  %20 = getelementptr inbounds i8, ptr %residual.dbg.spill, i64 8, !dbg !2158
  store ptr %residual.1, ptr %20, align 8, !dbg !2158
    #dbg_declare(ptr %residual.dbg.spill, !2105, !DIExpression(), !2159)
; invoke <core::result::Result<(), alloc::boxed::Box<dyn uucore::mods::error::UError>> as core::ops::try_trait::FromResidual<core::result::Result<core::convert::Infallible, alloc::boxed::Box<dyn uucore::mods::error::UError>>>>::from_residual
  %21 = invoke { ptr, ptr } @_RNvXsq_NtCsgxBkk5gSRhY_4core6resultINtB5_6ResultuINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtCs1iFJFqccjfm_6uucore4mods5error6UErrorEL_EEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleBL_EE13from_residualCs9xOv1NcnHfv_9uu_expand(ptr %residual.0, ptr align 8 %residual.1, ptr align 8 @alloc_678b3387e405f879dfb1885b8e2d9e38)
          to label %bb24 unwind label %cleanup, !dbg !2160

bb7:                                              ; preds = %bb5
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %val, ptr align 8 %_3, i64 104, i1 false), !dbg !2157
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %matches, ptr align 8 %val, i64 104, i1 false), !dbg !2147
; invoke <uu_expand::Options>::new
  invoke void @_RNvMs_Cs9xOv1NcnHfv_9uu_expandNtB4_7Options3new(ptr sret([56 x i8]) align 8 %_15, ptr align 8 %matches)
          to label %bb9 unwind label %cleanup3, !dbg !2161

bb17:                                             ; preds = %bb16, %cleanup3
; invoke core::ptr::drop_glue::<clap_builder::parser::matches::arg_matches::ArgMatches>
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4VqSFjx4n5U_12clap_builder6parser7matches11arg_matches10ArgMatchesEBJ_(ptr align 8 %matches) #15
          to label %bb23 unwind label %terminate, !dbg !2152

cleanup3:                                         ; preds = %bb12, %bb14, %bb9, %bb7
  %22 = landingpad { ptr, i32 }
          cleanup
  %23 = extractvalue { ptr, i32 } %22, 0
  %24 = extractvalue { ptr, i32 } %22, 1
  store ptr %23, ptr %1, align 8
  %25 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %24, ptr %25, align 8
  br label %bb17

bb9:                                              ; preds = %bb7
; invoke <core::result::Result<uu_expand::Options, uu_expand::ParseError> as core::ops::try_trait::Try>::branch
  invoke void @_RNvXsp_NtCsgxBkk5gSRhY_4core6resultINtB5_6ResultNtCs9xOv1NcnHfv_9uu_expand7OptionsNtBM_10ParseErrorENtNtNtB7_3ops9try_trait3Try6branchCscBbfQkuq0VR_6expand(ptr sret([56 x i8]) align 8 %_14, ptr align 8 %_15)
          to label %bb10 unwind label %cleanup3, !dbg !2161

bb10:                                             ; preds = %bb9
  %26 = load i64, ptr %_14, align 8, !dbg !2161
  %27 = icmp eq i64 %26, -1, !dbg !2161
  %_17 = select i1 %27, i64 1, i64 0, !dbg !2161
  %28 = trunc nuw i64 %_17 to i1, !dbg !2161
  br i1 %28, label %bb12, label %bb11, !dbg !2161

bb12:                                             ; preds = %bb10
  %29 = getelementptr inbounds i8, ptr %_14, i64 8, !dbg !2162
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %residual, ptr align 8 %29, i64 48, i1 false), !dbg !2162
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %residual, i64 48, i1 false), !dbg !2163
; invoke <core::result::Result<(), alloc::boxed::Box<dyn uucore::mods::error::UError>> as core::ops::try_trait::FromResidual<core::result::Result<core::convert::Infallible, uu_expand::ParseError>>>::from_residual
  %30 = invoke { ptr, ptr } @_RNvXsq_NtCsgxBkk5gSRhY_4core6resultINtB5_6ResultuINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtCs1iFJFqccjfm_6uucore4mods5error6UErrorEL_EEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtCs9xOv1NcnHfv_9uu_expand10ParseErrorEE13from_residualCscBbfQkuq0VR_6expand(ptr align 8 %0, ptr align 8 @alloc_8549335741ed65fb2dee4784c85bbf84)
          to label %bb13 unwind label %cleanup3, !dbg !2163

bb11:                                             ; preds = %bb10
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %val1, ptr align 8 %_14, i64 56, i1 false), !dbg !2161
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_13, ptr align 8 %val1, i64 56, i1 false), !dbg !2149
; invoke uu_expand::expand
  %31 = invoke { ptr, ptr } @_RNvCs9xOv1NcnHfv_9uu_expand6expand(ptr align 8 %_13)
          to label %bb14 unwind label %cleanup4, !dbg !2164

bb16:                                             ; preds = %cleanup4
; invoke core::ptr::drop_glue::<uu_expand::Options>
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtCs9xOv1NcnHfv_9uu_expand7OptionsECscBbfQkuq0VR_6expand(ptr align 8 %_13) #15
          to label %bb17 unwind label %terminate, !dbg !2165

cleanup4:                                         ; preds = %bb11
  %32 = landingpad { ptr, i32 }
          cleanup
  %33 = extractvalue { ptr, i32 } %32, 0
  %34 = extractvalue { ptr, i32 } %32, 1
  store ptr %33, ptr %1, align 8
  %35 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %34, ptr %35, align 8
  br label %bb16

bb14:                                             ; preds = %bb11
  %36 = extractvalue { ptr, ptr } %31, 0, !dbg !2164
  %37 = extractvalue { ptr, ptr } %31, 1, !dbg !2164
  store ptr %36, ptr %_0, align 8, !dbg !2164
  %38 = getelementptr inbounds i8, ptr %_0, i64 8, !dbg !2164
  store ptr %37, ptr %38, align 8, !dbg !2164
; invoke core::ptr::drop_glue::<uu_expand::Options>
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtCs9xOv1NcnHfv_9uu_expand7OptionsECscBbfQkuq0VR_6expand(ptr align 8 %_13)
          to label %bb19 unwind label %cleanup3, !dbg !2165

bb19:                                             ; preds = %bb14
; invoke core::ptr::drop_glue::<clap_builder::parser::matches::arg_matches::ArgMatches>
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4VqSFjx4n5U_12clap_builder6parser7matches11arg_matches10ArgMatchesEBJ_(ptr align 8 %matches)
          to label %bb15 unwind label %cleanup, !dbg !2152

bb15:                                             ; preds = %bb24, %bb13, %bb19
  %39 = load ptr, ptr %_0, align 8, !dbg !2166
  %40 = getelementptr inbounds i8, ptr %_0, i64 8, !dbg !2166
  %41 = load ptr, ptr %40, align 8, !dbg !2166
  %42 = insertvalue { ptr, ptr } poison, ptr %39, 0, !dbg !2166
  %43 = insertvalue { ptr, ptr } %42, ptr %41, 1, !dbg !2166
  ret { ptr, ptr } %43, !dbg !2166

terminate:                                        ; preds = %bb20, %bb17, %bb16
  %44 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !dbg !2167
  unreachable, !dbg !2167

bb13:                                             ; preds = %bb12
  %45 = extractvalue { ptr, ptr } %30, 0, !dbg !2163
  %46 = extractvalue { ptr, ptr } %30, 1, !dbg !2163
  store ptr %45, ptr %_0, align 8, !dbg !2163
  %47 = getelementptr inbounds i8, ptr %_0, i64 8, !dbg !2163
  store ptr %46, ptr %47, align 8, !dbg !2163
; invoke core::ptr::drop_glue::<clap_builder::parser::matches::arg_matches::ArgMatches>
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4VqSFjx4n5U_12clap_builder6parser7matches11arg_matches10ArgMatchesEBJ_(ptr align 8 %matches)
          to label %bb15 unwind label %cleanup, !dbg !2152

bb24:                                             ; preds = %bb8
  %48 = extractvalue { ptr, ptr } %21, 0, !dbg !2160
  %49 = extractvalue { ptr, ptr } %21, 1, !dbg !2160
  store ptr %48, ptr %_0, align 8, !dbg !2160
  %50 = getelementptr inbounds i8, ptr %_0, i64 8, !dbg !2160
  store ptr %49, ptr %50, align 8, !dbg !2160
  br label %bb15, !dbg !2160

bb6:                                              ; No predecessors!
  unreachable, !dbg !2168

bb20:                                             ; preds = %bb21
; invoke core::ptr::drop_glue::<clap_builder::builder::command::Command>
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs4VqSFjx4n5U_12clap_builder7builder7command7CommandEBH_(ptr align 8 %_5) #15
          to label %bb23 unwind label %terminate, !dbg !2156

bb18:                                             ; preds = %bb22, %bb23
  %51 = load ptr, ptr %1, align 8, !dbg !2167
  %52 = getelementptr inbounds i8, ptr %1, i64 8, !dbg !2167
  %53 = load i32, ptr %52, align 8, !dbg !2167
  %54 = insertvalue { ptr, i32 } poison, ptr %51, 0, !dbg !2167
  %55 = insertvalue { ptr, i32 } %54, i32 %53, 1, !dbg !2167
  resume { ptr, i32 } %55, !dbg !2167

bb22:                                             ; preds = %bb23
  br label %bb18, !dbg !2152
}

; <core::slice::iter::Iter<std::ffi::os_str::OsString> as core::iter::traits::iterator::Iterator>::fold::<(), core::iter::adapters::map::map_fold<&std::ffi::os_str::OsString, std::ffi::os_str::OsString, (), <std::ffi::os_str::OsString as core::clone::Clone>::clone, core::iter::traits::iterator::Iterator::for_each::call<std::ffi::os_str::OsString, <alloc::vec::Vec<std::ffi::os_str::OsString>>::extend_trusted<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>::{closure#0}>::{closure#0}>::{closure#0}>
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RINvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB7_4IterNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1F_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1z_8for_each4callBQ_NCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB47_3VecBQ_E14extend_trustedINtNtB2r_6cloned6ClonedBF_EE0E0E0ECscBbfQkuq0VR_6expand(ptr %self.0, ptr %self.1, ptr align 8 %f) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !2171 {
start:
  %self.dbg.spill5 = alloca [8 x i8], align 8
  %count.dbg.spill = alloca [8 x i8], align 8
  %self.dbg.spill4 = alloca [8 x i8], align 8
  %0 = alloca [16 x i8], align 8
  %self.dbg.spill3 = alloca [8 x i8], align 8
  %origin.dbg.spill = alloca [8 x i8], align 8
  %self.dbg.spill2 = alloca [8 x i8], align 8
  %subtracted.dbg.spill = alloca [8 x i8], align 8
  %end.dbg.spill1 = alloca [8 x i8], align 8
  %end.dbg.spill = alloca [8 x i8], align 8
  %rhs.dbg.spill = alloca [8 x i8], align 8
  %pointee_size.dbg.spill = alloca [8 x i8], align 8
  %acc.dbg.spill = alloca [0 x i8], align 1
  %init.dbg.spill = alloca [0 x i8], align 1
  %self.dbg.spill = alloca [16 x i8], align 8
  %_32 = alloca [1 x i8], align 1
  %_31 = alloca [1 x i8], align 1
  %len = alloca [8 x i8], align 8
  %i = alloca [8 x i8], align 8
  %_4 = alloca [1 x i8], align 1
  store ptr %self.0, ptr %self.dbg.spill, align 8
  %1 = getelementptr inbounds i8, ptr %self.dbg.spill, i64 8
  store ptr %self.1, ptr %1, align 8
    #dbg_declare(ptr %self.dbg.spill, !2177, !DIExpression(), !2197)
    #dbg_declare(ptr %init.dbg.spill, !2178, !DIExpression(), !2198)
    #dbg_declare(ptr %f, !2179, !DIExpression(), !2199)
    #dbg_declare(ptr %acc.dbg.spill, !2184, !DIExpression(), !2200)
    #dbg_declare(ptr %i, !2186, !DIExpression(), !2201)
    #dbg_declare(ptr %i, !2202, !DIExpression(), !2210)
    #dbg_declare(ptr %len, !2188, !DIExpression(), !2212)
    #dbg_declare(ptr %len, !2190, !DIExpression(), !2213)
  store i64 24, ptr %pointee_size.dbg.spill, align 8, !dbg !2214
    #dbg_declare(ptr %pointee_size.dbg.spill, !2225, !DIExpression(), !2214)
  store i64 1, ptr %rhs.dbg.spill, align 8, !dbg !2245
    #dbg_declare(ptr %rhs.dbg.spill, !2209, !DIExpression(), !2245)
  br label %bb2, !dbg !2246

bb2:                                              ; preds = %start
  store ptr %self.1, ptr %end.dbg.spill, align 8, !dbg !2247
    #dbg_declare(ptr %end.dbg.spill, !2182, !DIExpression(), !2248)
    #dbg_value(ptr poison, !2249, !DIExpression(), !2257)
    #dbg_value(ptr poison, !2256, !DIExpression(), !2259)
  %2 = icmp eq ptr %self.0, %self.1, !dbg !2260
  %3 = zext i1 %2 to i8, !dbg !2260
  store i8 %3, ptr %_4, align 1, !dbg !2260
  br label %bb3, !dbg !2261

bb3:                                              ; preds = %bb2
  %4 = load i8, ptr %_4, align 1, !dbg !2262
  %5 = trunc nuw i8 %4 to i1, !dbg !2262
  br i1 %5, label %bb4, label %bb5, !dbg !2262

bb5:                                              ; preds = %bb3
  store i8 0, ptr %_32, align 1, !dbg !2263
  store i8 1, ptr %_31, align 1, !dbg !2263
  store i64 0, ptr %i, align 8, !dbg !2264
  br label %bb7, !dbg !2265

bb4:                                              ; preds = %bb3
  store i8 0, ptr %_32, align 1, !dbg !2266
; invoke core::ptr::drop_glue::<core::iter::adapters::map::map_fold<&std::ffi::os_str::OsString, std::ffi::os_str::OsString, (), <std::ffi::os_str::OsString as core::clone::Clone>::clone, core::iter::traits::iterator::Iterator::for_each::call<std::ffi::os_str::OsString, <alloc::vec::Vec<std::ffi::os_str::OsString>>::extend_trusted<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>::{closure#0}>::{closure#0}>::{closure#0}>
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCINvNtNtNtB4_4iter8adapters3map8map_foldRNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringB1h_uNvYB1h_NtNtB4_5clone5Clone5cloneNCINvNvNtNtNtBK_6traits8iterator8Iterator8for_each4callB1h_NCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB3G_3VecB1h_E14extend_trustedINtNtBI_6cloned6ClonedINtNtNtB4_5slice4iter4IterB1h_EEE0E0E0ECscBbfQkuq0VR_6expand(ptr align 8 %f)
          to label %bb12 unwind label %cleanup6, !dbg !2267

bb7:                                              ; preds = %bb5
  store ptr %self.1, ptr %end.dbg.spill1, align 8, !dbg !2268
    #dbg_declare(ptr %end.dbg.spill1, !2192, !DIExpression(), !2269)
    #dbg_declare(ptr %end.dbg.spill1, !2242, !DIExpression(), !2270)
    #dbg_declare(ptr %end.dbg.spill1, !2271, !DIExpression(), !2274)
  store ptr %self.0, ptr %subtracted.dbg.spill, align 8, !dbg !2276
    #dbg_declare(ptr %subtracted.dbg.spill, !2243, !DIExpression(), !2277)
    #dbg_declare(ptr %subtracted.dbg.spill, !2271, !DIExpression(), !2278)
  store ptr %self.1, ptr %self.dbg.spill2, align 8, !dbg !2280
    #dbg_declare(ptr %self.dbg.spill2, !2234, !DIExpression(), !2281)
  store ptr %self.0, ptr %origin.dbg.spill, align 8, !dbg !2282
    #dbg_declare(ptr %origin.dbg.spill, !2235, !DIExpression(), !2283)
    #dbg_declare(ptr %origin.dbg.spill, !2224, !DIExpression(), !2284)
  store ptr %self.1, ptr %self.dbg.spill3, align 8, !dbg !2285
    #dbg_declare(ptr %self.dbg.spill3, !2223, !DIExpression(), !2286)
  br label %bb20, !dbg !2287

bb20:                                             ; preds = %bb7
; call <*const _>::offset_from_unsigned::precondition_check
  call void @_RNvNvMNtNtCsgxBkk5gSRhY_4core3ptr9const_ptrPp20offset_from_unsigned18precondition_checkCscBbfQkuq0VR_6expand(ptr %self.1, ptr %self.0, ptr align 8 @alloc_88eb5942245017736a2fc7d6bc551fe4) #19, !dbg !2290
  br label %bb22, !dbg !2291

bb22:                                             ; preds = %bb20
  br label %bb23, !dbg !2292

bb23:                                             ; preds = %bb22
  br label %bb24, !dbg !2293

bb24:                                             ; preds = %bb23
  %6 = ptrtoint ptr %self.1 to i64, !dbg !2294
  %7 = ptrtoint ptr %self.0 to i64, !dbg !2294
  %8 = sub nuw i64 %6, %7, !dbg !2294
  %9 = udiv exact i64 %8, 24, !dbg !2294
  store i64 %9, ptr %len, align 8, !dbg !2294
  br label %bb8, !dbg !2295

bb25:                                             ; No predecessors!
; invoke core::panicking::panic
  invoke void @_RNvNtCsgxBkk5gSRhY_4core9panicking5panic(ptr @alloc_ec595fc0e82ef92fc59bd74f68296eae, i64 73, ptr align 8 @alloc_88eb5942245017736a2fc7d6bc551fe4) #18
          to label %unreachable unwind label %cleanup, !dbg !2296

bb16:                                             ; preds = %cleanup
  %10 = load i8, ptr %_31, align 1, !dbg !2267
  %11 = trunc nuw i8 %10 to i1, !dbg !2267
  br i1 %11, label %bb15, label %bb13, !dbg !2267

cleanup:                                          ; preds = %bb8, %bb25
  %12 = landingpad { ptr, i32 }
          cleanup
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = extractvalue { ptr, i32 } %12, 1
  store ptr %13, ptr %0, align 8
  %15 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %14, ptr %15, align 8
  br label %bb16

unreachable:                                      ; preds = %bb25
  unreachable

bb8:                                              ; preds = %bb11, %bb24
  store i8 0, ptr %_31, align 1, !dbg !2297
  store ptr %self.0, ptr %self.dbg.spill4, align 8, !dbg !2298
    #dbg_declare(ptr %self.dbg.spill4, !2299, !DIExpression(), !2306)
  %count = load i64, ptr %i, align 8, !dbg !2308
  store i64 %count, ptr %count.dbg.spill, align 8, !dbg !2308
    #dbg_declare(ptr %count.dbg.spill, !2305, !DIExpression(), !2309)
  %_45 = getelementptr inbounds nuw %"std::ffi::os_str::OsString", ptr %self.0, i64 %count, !dbg !2310
  store ptr %_45, ptr %self.dbg.spill5, align 8, !dbg !2311
    #dbg_declare(ptr %self.dbg.spill5, !2271, !DIExpression(), !2312)
; invoke core::iter::adapters::map::map_fold::<&std::ffi::os_str::OsString, std::ffi::os_str::OsString, (), <std::ffi::os_str::OsString as core::clone::Clone>::clone, core::iter::traits::iterator::Iterator::for_each::call<std::ffi::os_str::OsString, <alloc::vec::Vec<std::ffi::os_str::OsString>>::extend_trusted<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>::{closure#0}>::{closure#0}>::{closure#0}
  invoke void @_RNCINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map8map_foldRNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB3h_3VecBV_E14extend_trustedINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0CscBbfQkuq0VR_6expand(ptr align 8 %f, ptr align 8 %_45)
          to label %bb9 unwind label %cleanup, !dbg !2314

bb9:                                              ; preds = %bb8
  br label %bb26, !dbg !2315

bb26:                                             ; preds = %bb9
  %16 = load i64, ptr %i, align 8, !dbg !2317
; call <usize>::unchecked_add::precondition_check
  call void @_RNvNvMs9_NtCsgxBkk5gSRhY_4core3numj13unchecked_add18precondition_checkCscBbfQkuq0VR_6expand(i64 %16, i64 1, ptr align 8 @alloc_10df88950271cb30709e41e2dbbafd7f) #19, !dbg !2317
  br label %bb27, !dbg !2317

bb27:                                             ; preds = %bb26
  %17 = load i64, ptr %i, align 8, !dbg !2318
  %_27 = add nuw i64 %17, 1, !dbg !2318
  store i64 %_27, ptr %i, align 8, !dbg !2319
  %_29 = load i64, ptr %i, align 8, !dbg !2320
  %_30 = load i64, ptr %len, align 8, !dbg !2321
  %_28 = icmp eq i64 %_29, %_30, !dbg !2320
  br i1 %_28, label %bb10, label %bb11, !dbg !2320

bb11:                                             ; preds = %bb27
  br label %bb8, !dbg !2322

bb10:                                             ; preds = %bb27
; invoke core::ptr::drop_glue::<core::iter::adapters::map::map_fold<&std::ffi::os_str::OsString, std::ffi::os_str::OsString, (), <std::ffi::os_str::OsString as core::clone::Clone>::clone, core::iter::traits::iterator::Iterator::for_each::call<std::ffi::os_str::OsString, <alloc::vec::Vec<std::ffi::os_str::OsString>>::extend_trusted<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>::{closure#0}>::{closure#0}>::{closure#0}>
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCINvNtNtNtB4_4iter8adapters3map8map_foldRNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringB1h_uNvYB1h_NtNtB4_5clone5Clone5cloneNCINvNvNtNtNtBK_6traits8iterator8Iterator8for_each4callB1h_NCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB3G_3VecB1h_E14extend_trustedINtNtBI_6cloned6ClonedINtNtNtB4_5slice4iter4IterB1h_EEE0E0E0ECscBbfQkuq0VR_6expand(ptr align 8 %f)
          to label %bb12 unwind label %cleanup6, !dbg !2267

bb18:                                             ; preds = %bb13, %cleanup6
  %18 = load i8, ptr %_32, align 1, !dbg !2267
  %19 = trunc nuw i8 %18 to i1, !dbg !2267
  br i1 %19, label %bb17, label %bb14, !dbg !2267

cleanup6:                                         ; preds = %bb4, %bb10
  %20 = landingpad { ptr, i32 }
          cleanup
  %21 = extractvalue { ptr, i32 } %20, 0
  %22 = extractvalue { ptr, i32 } %20, 1
  store ptr %21, ptr %0, align 8
  %23 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %22, ptr %23, align 8
  br label %bb18

bb12:                                             ; preds = %bb4, %bb10
  ret void, !dbg !2323

bb13:                                             ; preds = %bb15, %bb16
; invoke core::ptr::drop_glue::<core::iter::adapters::map::map_fold<&std::ffi::os_str::OsString, std::ffi::os_str::OsString, (), <std::ffi::os_str::OsString as core::clone::Clone>::clone, core::iter::traits::iterator::Iterator::for_each::call<std::ffi::os_str::OsString, <alloc::vec::Vec<std::ffi::os_str::OsString>>::extend_trusted<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>::{closure#0}>::{closure#0}>::{closure#0}>
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCINvNtNtNtB4_4iter8adapters3map8map_foldRNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringB1h_uNvYB1h_NtNtB4_5clone5Clone5cloneNCINvNvNtNtNtBK_6traits8iterator8Iterator8for_each4callB1h_NCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB3G_3VecB1h_E14extend_trustedINtNtBI_6cloned6ClonedINtNtNtB4_5slice4iter4IterB1h_EEE0E0E0ECscBbfQkuq0VR_6expand(ptr align 8 %f) #15
          to label %bb18 unwind label %terminate, !dbg !2267

bb15:                                             ; preds = %bb16
  br label %bb13, !dbg !2267

terminate:                                        ; preds = %bb13
  %24 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !dbg !2324
  unreachable, !dbg !2324

bb14:                                             ; preds = %bb17, %bb18
  %25 = load ptr, ptr %0, align 8, !dbg !2324
  %26 = getelementptr inbounds i8, ptr %0, i64 8, !dbg !2324
  %27 = load i32, ptr %26, align 8, !dbg !2324
  %28 = insertvalue { ptr, i32 } poison, ptr %25, 0, !dbg !2324
  %29 = insertvalue { ptr, i32 } %28, i32 %27, 1, !dbg !2324
  resume { ptr, i32 } %29, !dbg !2324

bb17:                                             ; preds = %bb18
  br label %bb14, !dbg !2267

bb1:                                              ; No predecessors!
  unreachable

bb6:                                              ; No predecessors!
  unreachable
}

; <core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>> as core::iter::traits::iterator::Iterator>::fold::<(), core::iter::traits::iterator::Iterator::for_each::call<std::ffi::os_str::OsString, <alloc::vec::Vec<std::ffi::os_str::OsString>>::extend_trusted<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>::{closure#0}>::{closure#0}>
; Function Attrs: nonlazybind uwtable
define internal void @_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB2c_8for_each4callB1s_NCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB3s_3VecB1s_E14extend_trustedBP_E0E0ECscBbfQkuq0VR_6expand(ptr %self.0, ptr %self.1, ptr align 8 %f) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2325 {
start:
  %self.dbg.spill4 = alloca [16 x i8], align 8
  %0 = alloca [16 x i8], align 8
  %f.dbg.spill = alloca [0 x i8], align 1
  %init.dbg.spill1 = alloca [0 x i8], align 1
  %init.dbg.spill = alloca [0 x i8], align 1
  %self.dbg.spill = alloca [16 x i8], align 8
  %_11 = alloca [24 x i8], align 8
  %_9 = alloca [1 x i8], align 1
  %_8 = alloca [1 x i8], align 1
  %g = alloca [24 x i8], align 8
  store ptr %self.0, ptr %self.dbg.spill, align 8
  %1 = getelementptr inbounds i8, ptr %self.dbg.spill, i64 8
  store ptr %self.1, ptr %1, align 8
    #dbg_declare(ptr %self.dbg.spill, !2331, !DIExpression(), !2337)
    #dbg_declare(ptr %init.dbg.spill, !2332, !DIExpression(), !2338)
    #dbg_declare(ptr %f, !2333, !DIExpression(), !2339)
    #dbg_declare(ptr %init.dbg.spill1, !2340, !DIExpression(), !2358)
    #dbg_declare(ptr %g, !2354, !DIExpression(), !2360)
    #dbg_declare(ptr %g, !2361, !DIExpression(), !2370)
    #dbg_declare(ptr %f.dbg.spill, !2366, !DIExpression(), !2372)
  store i8 1, ptr %_9, align 1, !dbg !2373
  store i8 1, ptr %_8, align 1, !dbg !2373
; invoke <core::slice::iter::Iter<std::ffi::os_str::OsString> as core::iter::traits::iterator::Iterator>::map::<std::ffi::os_str::OsString, <std::ffi::os_str::OsString as core::clone::Clone>::clone>
  %2 = invoke { ptr, ptr } @_RINvYINtNtNtCsgxBkk5gSRhY_4core5slice4iter4IterNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator3mapBJ_NvYBJ_NtNtBa_5clone5Clone5cloneECscBbfQkuq0VR_6expand(ptr %self.0, ptr %self.1)
          to label %bb1 unwind label %cleanup, !dbg !2374

bb5:                                              ; preds = %cleanup
  %3 = load i8, ptr %_8, align 1, !dbg !2375
  %4 = trunc nuw i8 %3 to i1, !dbg !2375
  br i1 %4, label %bb4, label %bb2, !dbg !2375

cleanup:                                          ; preds = %bb1, %start
  %5 = landingpad { ptr, i32 }
          cleanup
  %6 = extractvalue { ptr, i32 } %5, 0
  %7 = extractvalue { ptr, i32 } %5, 1
  store ptr %6, ptr %0, align 8
  %8 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %7, ptr %8, align 8
  br label %bb5

bb1:                                              ; preds = %start
  %self.02 = extractvalue { ptr, ptr } %2, 0, !dbg !2373
  %self.13 = extractvalue { ptr, ptr } %2, 1, !dbg !2373
  store ptr %self.02, ptr %self.dbg.spill4, align 8, !dbg !2373
  %9 = getelementptr inbounds i8, ptr %self.dbg.spill4, i64 8, !dbg !2373
  store ptr %self.13, ptr %9, align 8, !dbg !2373
    #dbg_declare(ptr %self.dbg.spill4, !2353, !DIExpression(), !2376)
  store i8 0, ptr %_9, align 1, !dbg !2377
  store i8 0, ptr %_8, align 1, !dbg !2378
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %g, ptr align 8 %f, i64 24, i1 false), !dbg !2378
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_11, ptr align 8 %g, i64 24, i1 false), !dbg !2379
; invoke <core::slice::iter::Iter<std::ffi::os_str::OsString> as core::iter::traits::iterator::Iterator>::fold::<(), core::iter::adapters::map::map_fold<&std::ffi::os_str::OsString, std::ffi::os_str::OsString, (), <std::ffi::os_str::OsString as core::clone::Clone>::clone, core::iter::traits::iterator::Iterator::for_each::call<std::ffi::os_str::OsString, <alloc::vec::Vec<std::ffi::os_str::OsString>>::extend_trusted<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>::{closure#0}>::{closure#0}>::{closure#0}>
  invoke void @_RINvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB7_4IterNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1F_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1z_8for_each4callBQ_NCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB47_3VecBQ_E14extend_trustedINtNtB2r_6cloned6ClonedBF_EE0E0E0ECscBbfQkuq0VR_6expand(ptr %self.02, ptr %self.13, ptr align 8 %_11)
          to label %bb7 unwind label %cleanup, !dbg !2380

bb7:                                              ; preds = %bb1
  ret void, !dbg !2381

bb2:                                              ; preds = %bb4, %bb5
  %10 = load i8, ptr %_9, align 1, !dbg !2375
  %11 = trunc nuw i8 %10 to i1, !dbg !2375
  br i1 %11, label %bb6, label %bb3, !dbg !2375

bb4:                                              ; preds = %bb5
; invoke core::ptr::drop_glue::<core::iter::traits::iterator::Iterator::for_each::call<std::ffi::os_str::OsString, <alloc::vec::Vec<std::ffi::os_str::OsString>>::extend_trusted<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>::{closure#0}>::{closure#0}>
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCINvNvNtNtNtNtB4_4iter6traits8iterator8Iterator8for_each4callNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB2s_3VecB1B_E14extend_trustedINtNtNtBO_8adapters6cloned6ClonedINtNtNtB4_5slice4iter4IterB1B_EEE0E0ECscBbfQkuq0VR_6expand(ptr align 8 %f) #15
          to label %bb2 unwind label %terminate, !dbg !2375

terminate:                                        ; preds = %bb4
  %12 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !dbg !2382
  unreachable, !dbg !2382

bb3:                                              ; preds = %bb6, %bb2
  %13 = load ptr, ptr %0, align 8, !dbg !2382
  %14 = getelementptr inbounds i8, ptr %0, i64 8, !dbg !2382
  %15 = load i32, ptr %14, align 8, !dbg !2382
  %16 = insertvalue { ptr, i32 } poison, ptr %13, 0, !dbg !2382
  %17 = insertvalue { ptr, i32 } %16, i32 %15, 1, !dbg !2382
  resume { ptr, i32 } %17, !dbg !2382

bb6:                                              ; preds = %bb2
  br label %bb3, !dbg !2375
}

; <alloc::vec::Vec<std::ffi::os_str::OsString> as core::iter::traits::collect::FromIterator<std::ffi::os_str::OsString>>::from_iter::<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RINvXse_NtCs6i54tJFfzR_5alloc3vecINtB6_3VecNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringEINtNtNtNtCsgxBkk5gSRhY_4core4iter6traits7collect12FromIteratorBF_E9from_iterINtNtNtB1v_8adapters6cloned6ClonedINtNtNtB1x_5slice4iter4IterBF_EEECscBbfQkuq0VR_6expand(ptr sret([24 x i8]) align 8 %_0, ptr %iter.0, ptr %iter.1) unnamed_addr #1 !dbg !2383 {
start:
  %iter.dbg.spill = alloca [16 x i8], align 8
  store ptr %iter.0, ptr %iter.dbg.spill, align 8
  %0 = getelementptr inbounds i8, ptr %iter.dbg.spill, i64 8
  store ptr %iter.1, ptr %0, align 8
    #dbg_declare(ptr %iter.dbg.spill, !2388, !DIExpression(), !2391)
; call <core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>> as core::iter::traits::collect::IntoIterator>::into_iter
  %1 = call { ptr, ptr } @_RNvXNtNtNtCsgxBkk5gSRhY_4core4iter6traits7collectINtNtNtB6_8adapters6cloned6ClonedINtNtNtB8_5slice4iter4IterNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringEENtB2_12IntoIterator9into_iterCscBbfQkuq0VR_6expand(ptr %iter.0, ptr %iter.1) #17, !dbg !2392
  %_2.0 = extractvalue { ptr, ptr } %1, 0, !dbg !2392
  %_2.1 = extractvalue { ptr, ptr } %1, 1, !dbg !2392
; call <alloc::vec::Vec<std::ffi::os_str::OsString> as alloc::vec::spec_from_iter::SpecFromIter<std::ffi::os_str::OsString, core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>>::from_iter
  call void @_RNvXNtNtCs6i54tJFfzR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringEINtB2_12SpecFromIterBT_INtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters6cloned6ClonedINtNtNtB28_5slice4iter4IterBT_EEE9from_iterCscBbfQkuq0VR_6expand(ptr sret([24 x i8]) align 8 %_0, ptr %_2.0, ptr %_2.1), !dbg !2393
  ret void, !dbg !2394
}

; <core::slice::iter::Iter<std::ffi::os_str::OsString> as core::iter::traits::iterator::Iterator>::map::<std::ffi::os_str::OsString, <std::ffi::os_str::OsString as core::clone::Clone>::clone>
; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RINvYINtNtNtCsgxBkk5gSRhY_4core5slice4iter4IterNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator3mapBJ_NvYBJ_NtNtBa_5clone5Clone5cloneECscBbfQkuq0VR_6expand(ptr %self.0, ptr %self.1) unnamed_addr #1 !dbg !2395 {
start:
  %f.dbg.spill = alloca [0 x i8], align 1
  %self.dbg.spill = alloca [16 x i8], align 8
  store ptr %self.0, ptr %self.dbg.spill, align 8
  %0 = getelementptr inbounds i8, ptr %self.dbg.spill, i64 8
  store ptr %self.1, ptr %0, align 8
    #dbg_declare(ptr %self.dbg.spill, !2400, !DIExpression(), !2404)
    #dbg_declare(ptr %f.dbg.spill, !2401, !DIExpression(), !2405)
  %1 = insertvalue { ptr, ptr } poison, ptr %self.0, 0, !dbg !2406
  %2 = insertvalue { ptr, ptr } %1, ptr %self.1, 1, !dbg !2406
  ret { ptr, ptr } %2, !dbg !2406
}

; <core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>> as core::iter::traits::iterator::Iterator>::collect::<alloc::vec::Vec<std::ffi::os_str::OsString>>
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RINvYINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters6cloned6ClonedINtNtNtBc_5slice4iter4IterNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringEENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs6i54tJFfzR_5alloc3vec3VecB1n_EECscBbfQkuq0VR_6expand(ptr sret([24 x i8]) align 8 %_0, ptr %self.0, ptr %self.1) unnamed_addr #1 !dbg !2407 {
start:
  %self.dbg.spill = alloca [16 x i8], align 8
  store ptr %self.0, ptr %self.dbg.spill, align 8
  %0 = getelementptr inbounds i8, ptr %self.dbg.spill, i64 8
  store ptr %self.1, ptr %0, align 8
    #dbg_declare(ptr %self.dbg.spill, !2409, !DIExpression(), !2422)
; call <alloc::vec::Vec<std::ffi::os_str::OsString> as core::iter::traits::collect::FromIterator<std::ffi::os_str::OsString>>::from_iter::<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>
  call void @_RINvXse_NtCs6i54tJFfzR_5alloc3vecINtB6_3VecNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringEINtNtNtNtCsgxBkk5gSRhY_4core4iter6traits7collect12FromIteratorBF_E9from_iterINtNtNtB1v_8adapters6cloned6ClonedINtNtNtB1x_5slice4iter4IterBF_EEECscBbfQkuq0VR_6expand(ptr sret([24 x i8]) align 8 %_0, ptr %self.0, ptr %self.1) #17, !dbg !2423
  ret void, !dbg !2424
}

; <core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>> as core::iter::traits::iterator::Iterator>::for_each::<<alloc::vec::Vec<std::ffi::os_str::OsString>>::extend_trusted<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>::{closure#0}>
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RINvYINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters6cloned6ClonedINtNtNtBc_5slice4iter4IterNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB2X_3VecB1n_E14extend_trustedB3_E0ECscBbfQkuq0VR_6expand(ptr %self.0, ptr %self.1, ptr align 8 %f) unnamed_addr #1 !dbg !2425 {
start:
  %self.dbg.spill = alloca [16 x i8], align 8
  %_4 = alloca [24 x i8], align 8
  store ptr %self.0, ptr %self.dbg.spill, align 8
  %0 = getelementptr inbounds i8, ptr %self.dbg.spill, i64 8
  store ptr %self.1, ptr %0, align 8
    #dbg_declare(ptr %self.dbg.spill, !2429, !DIExpression(), !2433)
    #dbg_declare(ptr %f, !2430, !DIExpression(), !2434)
    #dbg_declare(ptr %f, !2435, !DIExpression(), !2442)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_4, ptr align 8 %f, i64 24, i1 false), !dbg !2444
; call <core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>> as core::iter::traits::iterator::Iterator>::fold::<(), core::iter::traits::iterator::Iterator::for_each::call<std::ffi::os_str::OsString, <alloc::vec::Vec<std::ffi::os_str::OsString>>::extend_trusted<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>::{closure#0}>::{closure#0}>
  call void @_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB2c_8for_each4callB1s_NCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB3s_3VecB1s_E14extend_trustedBP_E0E0ECscBbfQkuq0VR_6expand(ptr %self.0, ptr %self.1, ptr align 8 %_4), !dbg !2445
  ret void, !dbg !2446
}

; <alloc::vec::Vec<std::ffi::os_str::OsString>>::extend_trusted::<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>::{closure#0}
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB8_3VecNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringE14extend_trustedINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters6cloned6ClonedINtNtNtB1P_5slice4iter4IterBH_EEE0CscBbfQkuq0VR_6expand(ptr align 8 %_1, ptr align 8 %element) unnamed_addr #1 !dbg !2447 {
start:
  %_1.dbg.spill = alloca [8 x i8], align 8
  store ptr %_1, ptr %_1.dbg.spill, align 8
    #dbg_declare(ptr %_1.dbg.spill, !2452, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !2454)
    #dbg_declare(ptr %_1.dbg.spill, !2453, !DIExpression(DW_OP_deref), !2455)
    #dbg_declare(ptr %element, !2451, !DIExpression(), !2456)
  %0 = getelementptr inbounds i8, ptr %_1, i64 16, !dbg !2457
  %_4 = load ptr, ptr %0, align 8, !dbg !2457
  %1 = getelementptr inbounds i8, ptr %_1, i64 8, !dbg !2458
  %_5 = load i64, ptr %1, align 8, !dbg !2458
  %_3 = getelementptr inbounds nuw %"std::ffi::os_str::OsString", ptr %_4, i64 %_5, !dbg !2465
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_3, ptr align 8 %element, i64 24, i1 false), !dbg !2470
  %2 = getelementptr inbounds i8, ptr %_1, i64 8, !dbg !2475
  %3 = getelementptr inbounds i8, ptr %_1, i64 8, !dbg !2475
  %4 = load i64, ptr %3, align 8, !dbg !2475
  %5 = add i64 %4, 1, !dbg !2475
  store i64 %5, ptr %2, align 8, !dbg !2475
  ret void, !dbg !2482
}

; std::rt::lang_start::<()>::{closure#0}
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_RNCINvNtCs9k3SxhrAWiO_3std2rt10lang_startuE0CscBbfQkuq0VR_6expand(ptr align 8 %_1) unnamed_addr #1 !dbg !2483 {
start:
  %self.dbg.spill = alloca [1 x i8], align 1
  %_1.dbg.spill = alloca [8 x i8], align 8
  store ptr %_1, ptr %_1.dbg.spill, align 8
    #dbg_declare(ptr %_1.dbg.spill, !2488, !DIExpression(DW_OP_deref), !2489)
  %_4 = load ptr, ptr %_1, align 8, !dbg !2490
; call std::sys::backtrace::__rust_begin_short_backtrace::<fn(), ()>
  call void @_RINvNtNtCs9k3SxhrAWiO_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECscBbfQkuq0VR_6expand(ptr %_4) #20, !dbg !2491
; call <() as std::process::Termination>::report
  %self = call i8 @_RNvXsU_NtCs9k3SxhrAWiO_3std7processuNtB5_11Termination6reportCscBbfQkuq0VR_6expand() #17, !dbg !2492
  store i8 %self, ptr %self.dbg.spill, align 1, !dbg !2492
    #dbg_declare(ptr %self.dbg.spill, !2493, !DIExpression(), !2510)
  %_0 = zext i8 %self to i32, !dbg !2512
  ret i32 %_0, !dbg !2520
}

; core::iter::adapters::map::map_fold::<&std::ffi::os_str::OsString, std::ffi::os_str::OsString, (), <std::ffi::os_str::OsString as core::clone::Clone>::clone, core::iter::traits::iterator::Iterator::for_each::call<std::ffi::os_str::OsString, <alloc::vec::Vec<std::ffi::os_str::OsString>>::extend_trusted<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>::{closure#0}>::{closure#0}>::{closure#0}
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map8map_foldRNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB3h_3VecBV_E14extend_trustedINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0CscBbfQkuq0VR_6expand(ptr align 8 %_1, ptr align 8 %elt) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !2521 {
start:
  %0 = alloca [16 x i8], align 8
  %elt.dbg.spill = alloca [8 x i8], align 8
  %acc.dbg.spill = alloca [0 x i8], align 1
  %_1.dbg.spill = alloca [8 x i8], align 8
  %_10 = alloca [1 x i8], align 1
  %_7 = alloca [24 x i8], align 8
  %_5 = alloca [24 x i8], align 8
  store ptr %_1, ptr %_1.dbg.spill, align 8
    #dbg_declare(ptr %_1.dbg.spill, !2527, !DIExpression(DW_OP_deref), !2529)
    #dbg_declare(ptr %_1.dbg.spill, !2528, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 24), !2530)
    #dbg_declare(ptr %acc.dbg.spill, !2525, !DIExpression(), !2531)
  store ptr %elt, ptr %elt.dbg.spill, align 8
    #dbg_declare(ptr %elt.dbg.spill, !2526, !DIExpression(), !2532)
  store i8 1, ptr %_10, align 1, !dbg !2533
  %_8 = getelementptr inbounds i8, ptr %_1, i64 24, !dbg !2534
; invoke <<std::ffi::os_str::OsString as core::clone::Clone>::clone as core::ops::function::FnMut<(&std::ffi::os_str::OsString,)>>::call_mut
  invoke void @_RNvYNvYNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringNtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneINtNtNtBR_3ops8function5FnMutTRB5_EE8call_mutCscBbfQkuq0VR_6expand(ptr sret([24 x i8]) align 8 %_7, ptr %_8, ptr align 8 %elt)
          to label %bb1 unwind label %cleanup, !dbg !2534

bb5:                                              ; preds = %cleanup
  %1 = load i8, ptr %_10, align 1, !dbg !2535
  %2 = trunc nuw i8 %1 to i1, !dbg !2535
  br i1 %2, label %bb4, label %bb3, !dbg !2535

cleanup:                                          ; preds = %bb1, %start
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %0, align 8
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb5

bb1:                                              ; preds = %start
  store i8 0, ptr %_10, align 1, !dbg !2536
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_5, ptr align 8 %_7, i64 24, i1 false), !dbg !2536
; invoke core::iter::traits::iterator::Iterator::for_each::call::<std::ffi::os_str::OsString, <alloc::vec::Vec<std::ffi::os_str::OsString>>::extend_trusted<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>::{closure#0}>::{closure#0}
  invoke void @_RNCINvNvNtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator8for_each4callNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB26_3VecB1f_E14extend_trustedINtNtNtBc_8adapters6cloned6ClonedINtNtNtBe_5slice4iter4IterB1f_EEE0E0CscBbfQkuq0VR_6expand(ptr align 8 %_1, ptr align 8 %_5)
          to label %bb2 unwind label %cleanup, !dbg !2536

bb2:                                              ; preds = %bb1
  ret void, !dbg !2537

bb3:                                              ; preds = %bb4, %bb5
  %7 = load ptr, ptr %0, align 8, !dbg !2538
  %8 = getelementptr inbounds i8, ptr %0, i64 8, !dbg !2538
  %9 = load i32, ptr %8, align 8, !dbg !2538
  %10 = insertvalue { ptr, i32 } poison, ptr %7, 0, !dbg !2538
  %11 = insertvalue { ptr, i32 } %10, i32 %9, 1, !dbg !2538
  resume { ptr, i32 } %11, !dbg !2538

bb4:                                              ; preds = %bb5
  br label %bb3, !dbg !2535
}

; core::iter::traits::iterator::Iterator::for_each::call::<std::ffi::os_str::OsString, <alloc::vec::Vec<std::ffi::os_str::OsString>>::extend_trusted<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>::{closure#0}>::{closure#0}
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvNvNtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator8for_each4callNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB26_3VecB1f_E14extend_trustedINtNtNtBc_8adapters6cloned6ClonedINtNtNtBe_5slice4iter4IterB1f_EEE0E0CscBbfQkuq0VR_6expand(ptr align 8 %_1, ptr align 8 %item) unnamed_addr #1 !dbg !2539 {
start:
  %_2.dbg.spill = alloca [0 x i8], align 1
  %_1.dbg.spill = alloca [8 x i8], align 8
  %_5 = alloca [24 x i8], align 8
  store ptr %_1, ptr %_1.dbg.spill, align 8
    #dbg_declare(ptr %_1.dbg.spill, !2544, !DIExpression(DW_OP_deref), !2546)
    #dbg_declare(ptr %_2.dbg.spill, !2545, !DIExpression(), !2547)
    #dbg_declare(ptr %item, !2543, !DIExpression(), !2548)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_5, ptr align 8 %item, i64 24, i1 false), !dbg !2549
; call <alloc::vec::Vec<std::ffi::os_str::OsString>>::extend_trusted::<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>::{closure#0}
  call void @_RNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB8_3VecNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringE14extend_trustedINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters6cloned6ClonedINtNtNtB1P_5slice4iter4IterBH_EEE0CscBbfQkuq0VR_6expand(ptr align 8 %_1, ptr align 8 %_5) #17, !dbg !2549
  ret void, !dbg !2550
}

; expand::main::{closure#0}
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvCscBbfQkuq0VR_6expand4main0B3_(ptr align 8 %err) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !2551 {
start:
  %args.dbg.spill4 = alloca [8 x i8], align 8
  %0 = alloca [16 x i8], align 8
  %args.dbg.spill = alloca [16 x i8], align 8
  %_1.dbg.spill = alloca [0 x i8], align 1
  %_29 = alloca [1 x i8], align 1
  %_22 = alloca [16 x i8], align 8
  %args1 = alloca [16 x i8], align 8
  %other = alloca [96 x i8], align 8
  %_13 = alloca [16 x i8], align 8
  %_12 = alloca [16 x i8], align 8
  %args = alloca [32 x i8], align 8
  %snippet = alloca [24 x i8], align 8
  %err_msg = alloca [72 x i8], align 8
    #dbg_declare(ptr %_1.dbg.spill, !2582, !DIExpression(), !2583)
    #dbg_declare(ptr %err, !2556, !DIExpression(), !2584)
    #dbg_declare(ptr %err_msg, !2557, !DIExpression(), !2585)
    #dbg_declare(ptr %snippet, !2559, !DIExpression(), !2586)
    #dbg_declare(ptr %args, !2568, !DIExpression(), !2587)
    #dbg_declare(ptr %other, !2571, !DIExpression(), !2588)
    #dbg_declare(ptr %args1, !2579, !DIExpression(), !2589)
  store i8 0, ptr %_29, align 1, !dbg !2590
  store i8 1, ptr %_29, align 1, !dbg !2590
  %1 = load i64, ptr %err, align 8, !dbg !2591
  %2 = sub i64 %1, 2, !dbg !2591
  %3 = icmp uge i64 %1, 2, !dbg !2591
  %_3 = select i1 %3, i64 %2, i64 2, !dbg !2591
  %4 = icmp eq i64 %_3, 2, !dbg !2590
  br i1 %4, label %bb2, label %bb1, !dbg !2590

bb2:                                              ; preds = %start
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %err_msg, ptr align 8 %err, i64 72, i1 false), !dbg !2592
  %5 = getelementptr inbounds i8, ptr %err, i64 72, !dbg !2593
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %snippet, ptr align 8 %5, i64 24, i1 false), !dbg !2593
  store ptr %snippet, ptr %args.dbg.spill, align 8, !dbg !2594
  %6 = getelementptr inbounds i8, ptr %args.dbg.spill, i64 8, !dbg !2594
  store ptr %err_msg, ptr %6, align 8, !dbg !2594
    #dbg_declare(ptr %args.dbg.spill, !2560, !DIExpression(), !2595)
; invoke <core::fmt::rt::Argument>::new_display::<alloc::string::String>
  invoke void @_RINvMNtNtCsgxBkk5gSRhY_4core3fmt2rtNtB3_8Argument11new_displayNtNtCs6i54tJFfzR_5alloc6string6StringECs4VqSFjx4n5U_12clap_builder(ptr sret([16 x i8]) align 8 %_12, ptr align 8 %snippet)
          to label %bb3 unwind label %cleanup, !dbg !2595

bb1:                                              ; preds = %start
  store i8 0, ptr %_29, align 1, !dbg !2596
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %other, ptr align 8 %err, i64 96, i1 false), !dbg !2596
  store ptr %other, ptr %args.dbg.spill4, align 8, !dbg !2597
    #dbg_declare(ptr %args.dbg.spill4, !2573, !DIExpression(), !2598)
; invoke <core::fmt::rt::Argument>::new_display::<uucore::mods::locale::LocalizationError>
  invoke void @_RINvMNtNtCsgxBkk5gSRhY_4core3fmt2rtNtB3_8Argument11new_displayNtNtNtCs1iFJFqccjfm_6uucore4mods6locale17LocalizationErrorECscBbfQkuq0VR_6expand(ptr sret([16 x i8]) align 8 %_22, ptr align 8 %other)
          to label %bb8 unwind label %cleanup5, !dbg !2598

bb13:                                             ; preds = %cleanup
; invoke core::ptr::drop_glue::<alloc::string::String>
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs69bkQDvJnHM_16unic_langid_impl(ptr align 8 %snippet) #15
          to label %bb14 unwind label %terminate, !dbg !2599

cleanup:                                          ; preds = %bb5, %bb4, %bb3, %bb2
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %0, align 8
  %10 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb13

bb3:                                              ; preds = %bb2
; invoke <core::fmt::rt::Argument>::new_debug::<fluent_syntax::parser::errors::ParserError>
  invoke void @_RINvMNtNtCsgxBkk5gSRhY_4core3fmt2rtNtB3_8Argument9new_debugNtNtNtCslPRUPRFQ4qs_13fluent_syntax6parser6errors11ParserErrorECscBbfQkuq0VR_6expand(ptr sret([16 x i8]) align 8 %_13, ptr align 8 %err_msg)
          to label %bb4 unwind label %cleanup, !dbg !2595

bb4:                                              ; preds = %bb3
  %11 = getelementptr inbounds nuw %"core::fmt::rt::Argument<'_>", ptr %args, i64 0, !dbg !2595
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %11, ptr align 8 %_12, i64 16, i1 false), !dbg !2595
  %12 = getelementptr inbounds nuw %"core::fmt::rt::Argument<'_>", ptr %args, i64 1, !dbg !2595
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 8 %_13, i64 16, i1 false), !dbg !2595
; invoke <core::fmt::Arguments>::new::<37, 2>
  %13 = invoke { ptr, ptr } @_RINvMs2_NtCsgxBkk5gSRhY_4core3fmtNtB6_9Arguments3newKj25_Kj2_ECscBbfQkuq0VR_6expand(ptr @alloc_f106c4231033c3d7995ff328d807a10f, ptr align 8 %args)
          to label %bb5 unwind label %cleanup, !dbg !2587

bb5:                                              ; preds = %bb4
  %_7.0 = extractvalue { ptr, ptr } %13, 0, !dbg !2587
  %_7.1 = extractvalue { ptr, ptr } %13, 1, !dbg !2587
; invoke std::io::stdio::_eprint
  invoke void @_RNvNtNtCs9k3SxhrAWiO_3std2io5stdio7__eprint(ptr %_7.0, ptr %_7.1)
          to label %bb6 unwind label %cleanup, !dbg !2594

bb6:                                              ; preds = %bb5
; invoke core::ptr::drop_glue::<alloc::string::String>
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs69bkQDvJnHM_16unic_langid_impl(ptr align 8 %snippet)
          to label %bb7 unwind label %cleanup2, !dbg !2599

bb14:                                             ; preds = %bb13, %cleanup2
; invoke core::ptr::drop_glue::<fluent_syntax::parser::errors::ParserError>
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCslPRUPRFQ4qs_13fluent_syntax6parser6errors11ParserErrorECs8meAXs9AlSn_13fluent_bundle(ptr align 8 %err_msg) #15
          to label %bb18 unwind label %terminate, !dbg !2599

cleanup2:                                         ; preds = %bb6
  %14 = landingpad { ptr, i32 }
          cleanup
  %15 = extractvalue { ptr, i32 } %14, 0
  %16 = extractvalue { ptr, i32 } %14, 1
  store ptr %15, ptr %0, align 8
  %17 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %16, ptr %17, align 8
  br label %bb14

bb7:                                              ; preds = %bb6
; invoke core::ptr::drop_glue::<fluent_syntax::parser::errors::ParserError>
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCslPRUPRFQ4qs_13fluent_syntax6parser6errors11ParserErrorECs8meAXs9AlSn_13fluent_bundle(ptr align 8 %err_msg)
          to label %bb11 unwind label %cleanup3, !dbg !2599

bb18:                                             ; preds = %bb12, %bb14, %cleanup3
  %18 = load i8, ptr %_29, align 1, !dbg !2600
  %19 = trunc nuw i8 %18 to i1, !dbg !2600
  br i1 %19, label %bb17, label %bb15, !dbg !2600

cleanup3:                                         ; preds = %bb11, %bb10, %bb7
  %20 = landingpad { ptr, i32 }
          cleanup
  %21 = extractvalue { ptr, i32 } %20, 0
  %22 = extractvalue { ptr, i32 } %20, 1
  store ptr %21, ptr %0, align 8
  %23 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %22, ptr %23, align 8
  br label %bb18

bb11:                                             ; preds = %bb10, %bb7
; invoke std::process::exit
  invoke void @_RNvNtCs9k3SxhrAWiO_3std7process4exit(i32 99) #18
          to label %unreachable unwind label %cleanup3, !dbg !2601

terminate:                                        ; preds = %bb16, %bb12, %bb14, %bb13
  %24 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !dbg !2583
  unreachable, !dbg !2583

bb12:                                             ; preds = %cleanup5
; invoke core::ptr::drop_glue::<uucore::mods::locale::LocalizationError>
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs1iFJFqccjfm_6uucore4mods6locale17LocalizationErrorEBH_(ptr align 8 %other) #15
          to label %bb18 unwind label %terminate, !dbg !2602

cleanup5:                                         ; preds = %bb9, %bb8, %bb1
  %25 = landingpad { ptr, i32 }
          cleanup
  %26 = extractvalue { ptr, i32 } %25, 0
  %27 = extractvalue { ptr, i32 } %25, 1
  store ptr %26, ptr %0, align 8
  %28 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %27, ptr %28, align 8
  br label %bb12

bb8:                                              ; preds = %bb1
  %29 = getelementptr inbounds nuw %"core::fmt::rt::Argument<'_>", ptr %args1, i64 0, !dbg !2598
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %29, ptr align 8 %_22, i64 16, i1 false), !dbg !2598
; invoke <core::fmt::Arguments>::new::<45, 1>
  %30 = invoke { ptr, ptr } @_RINvMs2_NtCsgxBkk5gSRhY_4core3fmtNtB6_9Arguments3newKj2d_Kj1_ECscBbfQkuq0VR_6expand(ptr @alloc_69a76e502786c0bd533af778432437ec, ptr align 8 %args1)
          to label %bb9 unwind label %cleanup5, !dbg !2589

bb9:                                              ; preds = %bb8
  %_18.0 = extractvalue { ptr, ptr } %30, 0, !dbg !2589
  %_18.1 = extractvalue { ptr, ptr } %30, 1, !dbg !2589
; invoke std::io::stdio::_eprint
  invoke void @_RNvNtNtCs9k3SxhrAWiO_3std2io5stdio7__eprint(ptr %_18.0, ptr %_18.1)
          to label %bb10 unwind label %cleanup5, !dbg !2597

bb10:                                             ; preds = %bb9
; invoke core::ptr::drop_glue::<uucore::mods::locale::LocalizationError>
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs1iFJFqccjfm_6uucore4mods6locale17LocalizationErrorEBH_(ptr align 8 %other)
          to label %bb11 unwind label %cleanup3, !dbg !2602

unreachable:                                      ; preds = %bb11
  unreachable

bb15:                                             ; preds = %bb16, %bb17, %bb18
  %31 = load ptr, ptr %0, align 8, !dbg !2583
  %32 = getelementptr inbounds i8, ptr %0, i64 8, !dbg !2583
  %33 = load i32, ptr %32, align 8, !dbg !2583
  %34 = insertvalue { ptr, i32 } poison, ptr %31, 0, !dbg !2583
  %35 = insertvalue { ptr, i32 } %34, i32 %33, 1, !dbg !2583
  resume { ptr, i32 } %35, !dbg !2583

bb17:                                             ; preds = %bb18
  %36 = load i64, ptr %err, align 8, !dbg !2600
  %37 = sub i64 %36, 2, !dbg !2600
  %38 = icmp uge i64 %36, 2, !dbg !2600
  %_30 = select i1 %38, i64 %37, i64 2, !dbg !2600
  %39 = icmp eq i64 %_30, 2, !dbg !2600
  br i1 %39, label %bb15, label %bb16, !dbg !2600

bb16:                                             ; preds = %bb17
; invoke core::ptr::drop_glue::<uucore::mods::locale::LocalizationError>
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs1iFJFqccjfm_6uucore4mods6locale17LocalizationErrorEBH_(ptr align 8 %err) #15
          to label %bb15 unwind label %terminate, !dbg !2600
}

; <std::rt::lang_start<()>::{closure#0} as core::ops::function::FnOnce<()>>::call_once::{shim:vtable#0}
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_RNSNvYNCINvNtCs9k3SxhrAWiO_3std2rt10lang_startuE0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceuE9call_once6vtableCscBbfQkuq0VR_6expand(ptr %_1) unnamed_addr #1 !dbg !2603 {
start:
  %_1.dbg.spill = alloca [8 x i8], align 8
  %_2 = alloca [0 x i8], align 1
  store ptr %_1, ptr %_1.dbg.spill, align 8
    #dbg_declare(ptr %_1.dbg.spill, !2611, !DIExpression(), !2616)
    #dbg_declare(ptr %_2, !2612, !DIExpression(), !2616)
  %0 = load ptr, ptr %_1, align 8, !dbg !2616
; call <std::rt::lang_start<()>::{closure#0} as core::ops::function::FnOnce<()>>::call_once
  %_0 = call i32 @_RNvYNCINvNtCs9k3SxhrAWiO_3std2rt10lang_startuE0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceuE9call_onceCscBbfQkuq0VR_6expand(ptr %0) #17, !dbg !2616
  ret i32 %_0, !dbg !2616
}

; expand::main
; Function Attrs: nonlazybind uwtable
define hidden void @_RNvCscBbfQkuq0VR_6expand4main() unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2617 {
start:
  %0 = alloca [16 x i8], align 8
  %args.dbg.spill = alloca [8 x i8], align 8
  %code.dbg.spill = alloca [4 x i8], align 4
  %_19 = alloca [16 x i8], align 8
  %args = alloca [16 x i8], align 8
  %e = alloca [8 x i8], align 8
  %_11 = alloca [8 x i8], align 8
  %_9 = alloca [8 x i8], align 8
  %_4 = alloca [96 x i8], align 8
    #dbg_declare(ptr %e, !2621, !DIExpression(), !2634)
    #dbg_declare(ptr %args, !2631, !DIExpression(), !2635)
; call uucore::mods::panic::preserve_inherited_sigpipe
  call void @_RNvNtNtCs1iFJFqccjfm_6uucore4mods5panic26preserve_inherited_sigpipe(), !dbg !2636
; call uucore::mods::panic::mute_sigpipe_panic
  call void @_RNvNtNtCs1iFJFqccjfm_6uucore4mods5panic18mute_sigpipe_panic(), !dbg !2637
; call uucore::get_canonical_util_name
  %1 = call { ptr, i64 } @_RNvCs1iFJFqccjfm_6uucore23get_canonical_util_name(ptr @alloc_154ed4bd466cc2fedce3bb5c837646cd, i64 9), !dbg !2638
  %_5.0 = extractvalue { ptr, i64 } %1, 0, !dbg !2638
  %_5.1 = extractvalue { ptr, i64 } %1, 1, !dbg !2638
; call uucore::mods::locale::setup_localization
  call void @_RNvNtNtCs1iFJFqccjfm_6uucore4mods6locale18setup_localization(ptr sret([96 x i8]) align 8 %_4, ptr %_5.0, i64 %_5.1), !dbg !2639
; call <core::result::Result<(), uucore::mods::locale::LocalizationError>>::unwrap_or_else::<expand::main::{closure#0}>
  call void @_RINvMNtCsgxBkk5gSRhY_4core6resultINtB3_6ResultuNtNtNtCs1iFJFqccjfm_6uucore4mods6locale17LocalizationErrorE14unwrap_or_elseNCNvCscBbfQkuq0VR_6expand4main0EB20_(ptr align 8 %_4, ptr align 8 @alloc_f4d02967e7babc2d4d01789394a79678) #17, !dbg !2640
; call uucore::args_os
  %2 = call { ptr, ptr } @_RNvCs1iFJFqccjfm_6uucore7args_os(), !dbg !2641
  %_8.0 = extractvalue { ptr, ptr } %2, 0, !dbg !2641
  %_8.1 = extractvalue { ptr, ptr } %2, 1, !dbg !2641
; call uu_expand::uumain::<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>
  %code = call i32 @_RINvCs9xOv1NcnHfv_9uu_expand6uumainINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters6cloned6ClonedINtNtNtBG_5slice4iter4IterNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringEEECscBbfQkuq0VR_6expand(ptr %_8.0, ptr %_8.1), !dbg !2642
  store i32 %code, ptr %code.dbg.spill, align 4, !dbg !2642
    #dbg_declare(ptr %code.dbg.spill, !2619, !DIExpression(), !2643)
; call std::io::stdio::stdout
  %3 = call align 8 ptr @_RNvNtNtCs9k3SxhrAWiO_3std2io5stdio6stdout(), !dbg !2634
  store ptr %3, ptr %_11, align 8, !dbg !2634
; call <std::io::stdio::Stdout as std::io::Write>::flush
  %4 = call ptr @_RNvXse_NtNtCs9k3SxhrAWiO_3std2io5stdioNtB5_6StdoutNtB7_5Write5flush(ptr align 8 %_11), !dbg !2634
  store ptr %4, ptr %_9, align 8, !dbg !2634
  %5 = load ptr, ptr %_9, align 8, !dbg !2634
  %6 = ptrtoint ptr %5 to i64, !dbg !2634
  %7 = icmp eq i64 %6, 0, !dbg !2634
  %_12 = select i1 %7, i64 0, i64 1, !dbg !2634
  %8 = trunc nuw i64 %_12 to i1, !dbg !2634
  br i1 %8, label %bb10, label %bb14, !dbg !2634

bb10:                                             ; preds = %start
  %9 = load ptr, ptr %_9, align 8, !dbg !2634
  store ptr %9, ptr %e, align 8, !dbg !2634
  store ptr %e, ptr %args.dbg.spill, align 8, !dbg !2634
    #dbg_declare(ptr %args.dbg.spill, !2624, !DIExpression(), !2644)
; invoke <core::fmt::rt::Argument>::new_display::<core::io::error::Error>
  invoke void @_RINvMNtNtCsgxBkk5gSRhY_4core3fmt2rtNtB3_8Argument11new_displayNtNtNtB7_2io5error5ErrorECs1iFJFqccjfm_6uucore(ptr sret([16 x i8]) align 8 %_19, ptr align 8 %e)
          to label %bb11 unwind label %cleanup, !dbg !2644

bb14:                                             ; preds = %bb13, %start
; call std::process::exit
  call void @_RNvNtCs9k3SxhrAWiO_3std7process4exit(i32 %code) #18, !dbg !2645
  unreachable, !dbg !2645

bb15:                                             ; preds = %cleanup
; invoke core::ptr::drop_glue::<core::io::error::Error>
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbRzQFPXpg46_3nix(ptr align 8 %e) #15
          to label %bb16 unwind label %terminate, !dbg !2646

cleanup:                                          ; preds = %bb12, %bb11, %bb10
  %10 = landingpad { ptr, i32 }
          cleanup
  %11 = extractvalue { ptr, i32 } %10, 0
  %12 = extractvalue { ptr, i32 } %10, 1
  store ptr %11, ptr %0, align 8
  %13 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %12, ptr %13, align 8
  br label %bb15

bb11:                                             ; preds = %bb10
  %14 = getelementptr inbounds nuw %"core::fmt::rt::Argument<'_>", ptr %args, i64 0, !dbg !2644
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %14, ptr align 8 %_19, i64 16, i1 false), !dbg !2644
; invoke <core::fmt::Arguments>::new::<28, 1>
  %15 = invoke { ptr, ptr } @_RINvMs2_NtCsgxBkk5gSRhY_4core3fmtNtB6_9Arguments3newKj1c_Kj1_ECscBbfQkuq0VR_6expand(ptr @alloc_d29ebfd320b2670088d7a403fcb10477, ptr align 8 %args)
          to label %bb12 unwind label %cleanup, !dbg !2635

bb12:                                             ; preds = %bb11
  %_15.0 = extractvalue { ptr, ptr } %15, 0, !dbg !2635
  %_15.1 = extractvalue { ptr, ptr } %15, 1, !dbg !2635
; invoke std::io::stdio::_eprint
  invoke void @_RNvNtNtCs9k3SxhrAWiO_3std2io5stdio7__eprint(ptr %_15.0, ptr %_15.1)
          to label %bb13 unwind label %cleanup, !dbg !2634

bb13:                                             ; preds = %bb12
; call core::ptr::drop_glue::<core::io::error::Error>
  call void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbRzQFPXpg46_3nix(ptr align 8 %e), !dbg !2646
  br label %bb14, !dbg !2646

terminate:                                        ; preds = %bb15
  %16 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !dbg !2648
  unreachable, !dbg !2648

bb16:                                             ; preds = %bb15
  %17 = load ptr, ptr %0, align 8, !dbg !2648
  %18 = getelementptr inbounds i8, ptr %0, i64 8, !dbg !2648
  %19 = load i32, ptr %18, align 8, !dbg !2648
  %20 = insertvalue { ptr, i32 } poison, ptr %17, 0, !dbg !2648
  %21 = insertvalue { ptr, i32 } %20, i32 %19, 1, !dbg !2648
  resume { ptr, i32 } %21, !dbg !2648

bb17:                                             ; No predecessors!
  unreachable, !dbg !2648
}

; <alloc::alloc::Global>::alloc_impl_runtime
; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @_RNvMNtCs6i54tJFfzR_5alloc5allocNtB2_6Global18alloc_impl_runtimeCscBbfQkuq0VR_6expand(i64 %layout.0, i64 %layout.1, i1 zeroext %zeroed) unnamed_addr #1 !dbg !2649 {
start:
  %ptr.dbg.spill13 = alloca [16 x i8], align 8
  %self.dbg.spill12 = alloca [8 x i8], align 8
  %ptr.dbg.spill11 = alloca [8 x i8], align 8
  %v.dbg.spill10 = alloca [8 x i8], align 8
  %v.dbg.spill = alloca [8 x i8], align 8
  %ptr.dbg.spill = alloca [16 x i8], align 8
  %self.dbg.spill8 = alloca [8 x i8], align 8
  %self.dbg.spill = alloca [8 x i8], align 8
  %size.dbg.spill = alloca [8 x i8], align 8
  %t.dbg.spill = alloca [0 x i8], align 1
  %e.dbg.spill5 = alloca [0 x i8], align 1
  %residual.dbg.spill4 = alloca [0 x i8], align 1
  %e.dbg.spill = alloca [0 x i8], align 1
  %err.dbg.spill = alloca [0 x i8], align 1
  %len.dbg.spill3 = alloca [8 x i8], align 8
  %len.dbg.spill2 = alloca [8 x i8], align 8
  %len.dbg.spill = alloca [8 x i8], align 8
  %residual.dbg.spill = alloca [0 x i8], align 1
  %zeroed.dbg.spill = alloca [1 x i8], align 1
  %layout.dbg.spill = alloca [16 x i8], align 8
  %self1 = alloca [8 x i8], align 8
  %self = alloca [8 x i8], align 8
  %_9 = alloca [8 x i8], align 8
  %raw_ptr = alloca [8 x i8], align 8
  %_0 = alloca [16 x i8], align 8
  store i64 %layout.0, ptr %layout.dbg.spill, align 8
  %0 = getelementptr inbounds i8, ptr %layout.dbg.spill, i64 8
  store i64 %layout.1, ptr %0, align 8
    #dbg_declare(ptr %layout.dbg.spill, !2688, !DIExpression(), !2714)
    #dbg_declare(ptr %layout.dbg.spill, !2715, !DIExpression(), !2720)
    #dbg_declare(ptr %layout.dbg.spill, !2722, !DIExpression(), !2725)
  %1 = zext i1 %zeroed to i8
  store i8 %1, ptr %zeroed.dbg.spill, align 1
    #dbg_declare(ptr %zeroed.dbg.spill, !2689, !DIExpression(), !2727)
    #dbg_declare(ptr %raw_ptr, !2692, !DIExpression(), !2728)
    #dbg_declare(ptr %raw_ptr, !2729, !DIExpression(), !2748)
    #dbg_declare(ptr %raw_ptr, !2750, !DIExpression(), !2755)
    #dbg_declare(ptr %raw_ptr, !2757, !DIExpression(), !2763)
    #dbg_declare(ptr %self, !2765, !DIExpression(), !2806)
    #dbg_declare(ptr %self1, !2809, !DIExpression(), !2819)
    #dbg_declare(ptr %residual.dbg.spill, !2697, !DIExpression(), !2821)
  store i64 0, ptr %len.dbg.spill, align 8, !dbg !2822
    #dbg_declare(ptr %len.dbg.spill, !2829, !DIExpression(), !2822)
  store i64 0, ptr %len.dbg.spill2, align 8, !dbg !2832
    #dbg_declare(ptr %len.dbg.spill2, !2837, !DIExpression(), !2832)
  store i64 0, ptr %len.dbg.spill3, align 8, !dbg !2840
    #dbg_declare(ptr %len.dbg.spill3, !2851, !DIExpression(), !2840)
    #dbg_declare(ptr %err.dbg.spill, !2816, !DIExpression(), !2854)
    #dbg_declare(ptr %e.dbg.spill, !2804, !DIExpression(), !2855)
    #dbg_declare(ptr %residual.dbg.spill4, !2856, !DIExpression(), !2866)
    #dbg_declare(ptr %e.dbg.spill5, !2862, !DIExpression(), !2869)
    #dbg_declare(ptr %t.dbg.spill, !2870, !DIExpression(), !2879)
    #dbg_value(ptr poison, !2881, !DIExpression(), !2889)
  store i64 %layout.1, ptr %size.dbg.spill, align 8, !dbg !2891
    #dbg_declare(ptr %size.dbg.spill, !2690, !DIExpression(), !2892)
    #dbg_declare(ptr %size.dbg.spill, !2830, !DIExpression(), !2893)
    #dbg_declare(ptr %size.dbg.spill, !2838, !DIExpression(), !2895)
    #dbg_declare(ptr %size.dbg.spill, !2852, !DIExpression(), !2898)
  %2 = icmp eq i64 %layout.1, 0, !dbg !2901
  br i1 %2, label %bb2, label %bb1, !dbg !2901

bb2:                                              ; preds = %start
    #dbg_value(ptr poison, !2902, !DIExpression(), !2908)
  %self6 = inttoptr i64 %layout.0 to ptr, !dbg !2910
  store ptr %self6, ptr %self.dbg.spill, align 8, !dbg !2910
    #dbg_declare(ptr %self.dbg.spill, !2828, !DIExpression(), !2923)
    #dbg_declare(ptr %self.dbg.spill, !2836, !DIExpression(), !2924)
    #dbg_declare(ptr %self.dbg.spill, !2925, !DIExpression(), !2931)
  %self7 = inttoptr i64 %layout.0 to ptr, !dbg !2933
  store ptr %self7, ptr %self.dbg.spill8, align 8, !dbg !2933
    #dbg_declare(ptr %self.dbg.spill8, !2850, !DIExpression(), !2934)
  store ptr %self7, ptr %ptr.dbg.spill, align 8, !dbg !2935
  %3 = getelementptr inbounds i8, ptr %ptr.dbg.spill, i64 8, !dbg !2935
  store i64 0, ptr %3, align 8, !dbg !2935
    #dbg_declare(ptr %ptr.dbg.spill, !2944, !DIExpression(), !2950)
  br label %bb8, !dbg !2952

bb1:                                              ; preds = %start
  br i1 %zeroed, label %bb3, label %bb4, !dbg !2954

bb8:                                              ; preds = %bb2
  %_19 = inttoptr i64 %layout.0 to ptr, !dbg !2955
; call <core::ptr::non_null::NonNull<_>>::new_unchecked::precondition_check
  call void @_RNvNvMs1_NtNtCsgxBkk5gSRhY_4core3ptr8non_nullINtB7_7NonNullpE13new_unchecked18precondition_checkCscBbfQkuq0VR_6expand(ptr %_19, ptr align 8 @alloc_97aa5310bc4fb328fbd078331362374a) #19, !dbg !2956
  br label %bb10, !dbg !2957

bb10:                                             ; preds = %bb8
  store ptr %self7, ptr %_0, align 8, !dbg !2958
  %4 = getelementptr inbounds i8, ptr %_0, i64 8, !dbg !2958
  store i64 0, ptr %4, align 8, !dbg !2958
  br label %bb6, !dbg !2959

bb6:                                              ; preds = %bb22, %bb10
  br label %bb7, !dbg !2960

bb4:                                              ; preds = %bb1
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !dbg !2961
    #dbg_value(ptr poison, !2881, !DIExpression(), !2962)
    #dbg_value(ptr poison, !2964, !DIExpression(), !2970)
; call __rustc::__rust_alloc
  %5 = call ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 %layout.1, i64 %layout.0) #21, !dbg !2972
  store ptr %5, ptr %raw_ptr, align 8, !dbg !2972
  br label %bb5, !dbg !2973

bb3:                                              ; preds = %bb1
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !dbg !2974
    #dbg_value(ptr poison, !2881, !DIExpression(), !2975)
    #dbg_value(ptr poison, !2964, !DIExpression(), !2977)
; call __rustc::__rust_alloc_zeroed
  %6 = call ptr @_RNvCs1njKG4L9aB3_7___rustc19___rust_alloc_zeroed(i64 %layout.1, i64 %layout.0) #21, !dbg !2979
  store ptr %6, ptr %raw_ptr, align 8, !dbg !2979
  br label %bb5, !dbg !2973

bb5:                                              ; preds = %bb3, %bb4
  %7 = load ptr, ptr %raw_ptr, align 8, !dbg !2980
  %_29 = ptrtoint ptr %7 to i64, !dbg !2980
  %8 = icmp eq i64 %_29, 0, !dbg !2996
  br i1 %8, label %bb15, label %bb16, !dbg !2996

bb15:                                             ; preds = %bb5
  store ptr null, ptr %self1, align 8, !dbg !2997
  store ptr null, ptr %self, align 8, !dbg !2998
  %9 = load ptr, ptr @anon.81badeeee7240c06f676740fb2a52a16.0, align 8, !dbg !2999
  %10 = load i64, ptr getelementptr inbounds (i8, ptr @anon.81badeeee7240c06f676740fb2a52a16.0, i64 8), align 8, !dbg !2999
  store ptr %9, ptr %_0, align 8, !dbg !2999
  %11 = getelementptr inbounds i8, ptr %_0, i64 8, !dbg !2999
  store i64 %10, ptr %11, align 8, !dbg !2999
  br label %bb7, !dbg !2960

bb16:                                             ; preds = %bb5
  br label %bb17, !dbg !3000

bb7:                                              ; preds = %bb6, %bb15
  %12 = load ptr, ptr %_0, align 8, !dbg !2960
  %13 = getelementptr inbounds i8, ptr %_0, i64 8, !dbg !2960
  %14 = load i64, ptr %13, align 8, !dbg !2960
  %15 = insertvalue { ptr, i64 } poison, ptr %12, 0, !dbg !2960
  %16 = insertvalue { ptr, i64 } %15, i64 %14, 1, !dbg !2960
  ret { ptr, i64 } %16, !dbg !2960

bb17:                                             ; preds = %bb16
  %_31 = load ptr, ptr %raw_ptr, align 8, !dbg !3002
; call <core::ptr::non_null::NonNull<_>>::new_unchecked::precondition_check
  call void @_RNvNvMs1_NtNtCsgxBkk5gSRhY_4core3ptr8non_nullINtB7_7NonNullpE13new_unchecked18precondition_checkCscBbfQkuq0VR_6expand(ptr %_31, ptr align 8 @alloc_c20790a6582a2546f7f296b502b7345e) #19, !dbg !3003
  br label %bb19, !dbg !3004

bb19:                                             ; preds = %bb17
  %_28 = load ptr, ptr %raw_ptr, align 8, !dbg !3005
  store ptr %_28, ptr %self1, align 8, !dbg !3006
  %v = load ptr, ptr %self1, align 8, !dbg !3007
  store ptr %v, ptr %v.dbg.spill, align 8, !dbg !3007
    #dbg_declare(ptr %v.dbg.spill, !2817, !DIExpression(), !3008)
  store ptr %v, ptr %self, align 8, !dbg !3009
  %v9 = load ptr, ptr %self, align 8, !dbg !3010
  store ptr %v9, ptr %v.dbg.spill10, align 8, !dbg !3010
    #dbg_declare(ptr %v.dbg.spill10, !2802, !DIExpression(), !3011)
  store ptr %v9, ptr %_9, align 8, !dbg !3012
  %ptr = load ptr, ptr %_9, align 8, !dbg !2749
  store ptr %ptr, ptr %ptr.dbg.spill11, align 8, !dbg !2749
    #dbg_declare(ptr %ptr.dbg.spill11, !2695, !DIExpression(), !3013)
    #dbg_declare(ptr %ptr.dbg.spill11, !2712, !DIExpression(), !3014)
    #dbg_declare(ptr %ptr.dbg.spill11, !2828, !DIExpression(), !3015)
    #dbg_declare(ptr %ptr.dbg.spill11, !2836, !DIExpression(), !3016)
    #dbg_declare(ptr %ptr.dbg.spill11, !2925, !DIExpression(), !3017)
  store ptr %ptr, ptr %self.dbg.spill12, align 8, !dbg !3019
    #dbg_declare(ptr %self.dbg.spill12, !2850, !DIExpression(), !3020)
  store ptr %ptr, ptr %ptr.dbg.spill13, align 8, !dbg !3021
  %17 = getelementptr inbounds i8, ptr %ptr.dbg.spill13, i64 8, !dbg !3021
  store i64 %layout.1, ptr %17, align 8, !dbg !3021
    #dbg_declare(ptr %ptr.dbg.spill13, !2944, !DIExpression(), !3026)
  br label %bb20, !dbg !3028

bb20:                                             ; preds = %bb19
; call <core::ptr::non_null::NonNull<_>>::new_unchecked::precondition_check
  call void @_RNvNvMs1_NtNtCsgxBkk5gSRhY_4core3ptr8non_nullINtB7_7NonNullpE13new_unchecked18precondition_checkCscBbfQkuq0VR_6expand(ptr %ptr, ptr align 8 @alloc_97aa5310bc4fb328fbd078331362374a) #19, !dbg !3029
  br label %bb22, !dbg !3030

bb22:                                             ; preds = %bb20
  store ptr %ptr, ptr %_0, align 8, !dbg !3031
  %18 = getelementptr inbounds i8, ptr %_0, i64 8, !dbg !3031
  store i64 %layout.1, ptr %18, align 8, !dbg !3031
  br label %bb6, !dbg !3032
}

; <core::result::Result<(), nix::errno::consts::Errno>>::expect
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtNtCsbRzQFPXpg46_3nix5errno6consts5ErrnoE6expectCscBbfQkuq0VR_6expand(i32 %0, ptr %msg.0, i64 %msg.1, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !3033 {
start:
  %2 = alloca [16 x i8], align 8
  %msg.dbg.spill = alloca [16 x i8], align 8
  %t.dbg.spill = alloca [0 x i8], align 1
  %e = alloca [4 x i8], align 4
  %self = alloca [4 x i8], align 4
  store i32 %0, ptr %self, align 4
    #dbg_declare(ptr %t.dbg.spill, !3055, !DIExpression(), !3059)
    #dbg_declare(ptr %self, !3053, !DIExpression(), !3060)
  store ptr %msg.0, ptr %msg.dbg.spill, align 8
  %3 = getelementptr inbounds i8, ptr %msg.dbg.spill, i64 8
  store i64 %msg.1, ptr %3, align 8
    #dbg_declare(ptr %msg.dbg.spill, !3054, !DIExpression(), !3061)
    #dbg_declare(ptr %e, !3057, !DIExpression(), !3062)
  %4 = load i32, ptr %self, align 4, !dbg !3063
  %5 = icmp eq i32 %4, -1, !dbg !3063
  %_3 = select i1 %5, i64 0, i64 1, !dbg !3063
  %6 = trunc nuw i64 %_3 to i1, !dbg !3064
  br i1 %6, label %bb2, label %bb3, !dbg !3064

bb2:                                              ; preds = %start
  %7 = load i32, ptr %self, align 4, !dbg !3065
  store i32 %7, ptr %e, align 4, !dbg !3065
; invoke core::result::unwrap_failed
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr %msg.0, i64 %msg.1, ptr %e, ptr align 8 @vtable.1, ptr align 8 %1) #18
          to label %unreachable unwind label %cleanup, !dbg !3066

bb3:                                              ; preds = %start
  ret void, !dbg !3067

bb4:                                              ; preds = %cleanup
  %8 = load ptr, ptr %2, align 8, !dbg !3068
  %9 = getelementptr inbounds i8, ptr %2, i64 8, !dbg !3068
  %10 = load i32, ptr %9, align 8, !dbg !3068
  %11 = insertvalue { ptr, i32 } poison, ptr %8, 0, !dbg !3068
  %12 = insertvalue { ptr, i32 } %11, i32 %10, 1, !dbg !3068
  resume { ptr, i32 } %12, !dbg !3068

cleanup:                                          ; preds = %bb2
  %13 = landingpad { ptr, i32 }
          cleanup
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = extractvalue { ptr, i32 } %13, 1
  store ptr %14, ptr %2, align 8
  %16 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 %15, ptr %16, align 8
  br label %bb4

unreachable:                                      ; preds = %bb2
  unreachable

bb1:                                              ; No predecessors!
  unreachable, !dbg !3063
}

; alloc::fmt::format
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvNtCs6i54tJFfzR_5alloc3fmt6formatCscBbfQkuq0VR_6expand(ptr sret([24 x i8]) align 8 %_0, ptr %0, ptr %1) unnamed_addr #1 !dbg !3069 {
start:
  %v.dbg.spill = alloca [16 x i8], align 8
  %len.dbg.spill = alloca [8 x i8], align 8
  %data.dbg.spill = alloca [8 x i8], align 8
  %self.dbg.spill = alloca [8 x i8], align 8
  %bits.dbg.spill = alloca [8 x i8], align 8
  %_2 = alloca [16 x i8], align 8
  %args = alloca [16 x i8], align 8
  store ptr %0, ptr %args, align 8
  %2 = getelementptr inbounds i8, ptr %args, i64 8
  store ptr %1, ptr %2, align 8
    #dbg_declare(ptr %args, !3075, !DIExpression(), !3076)
    #dbg_value(ptr %args, !3077, !DIExpression(), !3097)
  %3 = getelementptr inbounds i8, ptr %args, i64 8, !dbg !3099
  %_7 = load ptr, ptr %3, align 8, !dbg !3099
  %bits = ptrtoint ptr %_7 to i64, !dbg !3100
  store i64 %bits, ptr %bits.dbg.spill, align 8, !dbg !3100
    #dbg_declare(ptr %bits.dbg.spill, !3095, !DIExpression(), !3101)
  %_8 = and i64 %bits, 1, !dbg !3102
  %4 = icmp eq i64 %_8, 1, !dbg !3102
  br i1 %4, label %bb2, label %bb3, !dbg !3102

bb2:                                              ; preds = %start
  %self = load ptr, ptr %args, align 8, !dbg !3103
  store ptr %self, ptr %self.dbg.spill, align 8, !dbg !3103
    #dbg_declare(ptr %self.dbg.spill, !3104, !DIExpression(), !3107)
  store ptr %self, ptr %data.dbg.spill, align 8, !dbg !3103
    #dbg_declare(ptr %data.dbg.spill, !3109, !DIExpression(), !3117)
    #dbg_declare(ptr %data.dbg.spill, !3119, !DIExpression(), !3125)
    #dbg_declare(ptr %data.dbg.spill, !3127, !DIExpression(), !3130)
  %len = lshr i64 %bits, 1, !dbg !3132
  store i64 %len, ptr %len.dbg.spill, align 8, !dbg !3132
    #dbg_declare(ptr %len.dbg.spill, !3116, !DIExpression(), !3133)
    #dbg_declare(ptr %len.dbg.spill, !3124, !DIExpression(), !3134)
  br label %bb5, !dbg !3135

bb3:                                              ; preds = %start
  %5 = load ptr, ptr @anon.81badeeee7240c06f676740fb2a52a16.0, align 8, !dbg !3137
  %6 = load i64, ptr getelementptr inbounds (i8, ptr @anon.81badeeee7240c06f676740fb2a52a16.0, i64 8), align 8, !dbg !3137
  store ptr %5, ptr %_2, align 8, !dbg !3137
  %7 = getelementptr inbounds i8, ptr %_2, i64 8, !dbg !3137
  store i64 %6, ptr %7, align 8, !dbg !3137
  br label %bb4, !dbg !3138

bb5:                                              ; preds = %bb2
; call core::slice::raw::from_raw_parts::precondition_check
  call void @_RNvNvNtNtCsgxBkk5gSRhY_4core5slice3raw14from_raw_parts18precondition_checkCscBbfQkuq0VR_6expand(ptr %self, i64 1, i64 1, i64 %len, ptr align 8 @alloc_94ae9b27ea16a535f8a4faeb5174fc5c) #19, !dbg !3139
  br label %bb7, !dbg !3140

bb7:                                              ; preds = %bb5
  store ptr %self, ptr %v.dbg.spill, align 8, !dbg !3141
  %8 = getelementptr inbounds i8, ptr %v.dbg.spill, i64 8, !dbg !3141
  store i64 %len, ptr %8, align 8, !dbg !3141
    #dbg_declare(ptr %v.dbg.spill, !3142, !DIExpression(), !3149)
  store ptr %self, ptr %_2, align 8, !dbg !3151
  %9 = getelementptr inbounds i8, ptr %_2, i64 8, !dbg !3151
  store i64 %len, ptr %9, align 8, !dbg !3151
  br label %bb4, !dbg !3138

bb4:                                              ; preds = %bb3, %bb7
  %10 = load ptr, ptr %_2, align 8, !dbg !3152
  %11 = getelementptr inbounds i8, ptr %_2, i64 8, !dbg !3152
  %12 = load i64, ptr %11, align 8, !dbg !3152
; call <core::option::Option<&str>>::map_or_else::<alloc::string::String, alloc::fmt::format::{closure#0}, <str as alloc::borrow::ToOwned>::to_owned>
  call void @_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6i54tJFfzR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs4VqSFjx4n5U_12clap_builder(ptr sret([24 x i8]) align 8 %_0, ptr %10, i64 %12, ptr align 8 %args) #17, !dbg !3153
  ret void, !dbg !3154
}

; alloc::boxed::box_new_uninit
; Function Attrs: inlinehint nonlazybind uwtable
define internal ptr @_RNvNtCs6i54tJFfzR_5alloc5boxed14box_new_uninitCscBbfQkuq0VR_6expand(i64 %layout.0, i64 %layout.1) unnamed_addr #1 !dbg !3155 {
start:
  %ptr.dbg.spill = alloca [16 x i8], align 8
  %zeroed.dbg.spill = alloca [1 x i8], align 1
  %self.dbg.spill1 = alloca [8 x i8], align 8
  %self.dbg.spill = alloca [8 x i8], align 8
  %layout.dbg.spill = alloca [16 x i8], align 8
  %_2 = alloca [16 x i8], align 8
  store i64 %layout.0, ptr %layout.dbg.spill, align 8
  %0 = getelementptr inbounds i8, ptr %layout.dbg.spill, i64 8
  store i64 %layout.1, ptr %0, align 8
    #dbg_declare(ptr %layout.dbg.spill, !3159, !DIExpression(), !3162)
    #dbg_declare(ptr %layout.dbg.spill, !3163, !DIExpression(), !3171)
    #dbg_declare(ptr %layout.dbg.spill, !3173, !DIExpression(), !3181)
  store ptr inttoptr (i64 1 to ptr), ptr %self.dbg.spill, align 8, !dbg !3183
    #dbg_declare(ptr %self.dbg.spill, !3170, !DIExpression(), !3183)
  store ptr inttoptr (i64 1 to ptr), ptr %self.dbg.spill1, align 8, !dbg !3184
    #dbg_declare(ptr %self.dbg.spill1, !3179, !DIExpression(), !3184)
  store i8 0, ptr %zeroed.dbg.spill, align 1, !dbg !3185
    #dbg_declare(ptr %zeroed.dbg.spill, !3180, !DIExpression(), !3185)
; call <alloc::alloc::Global>::alloc_impl_runtime
  %1 = call { ptr, i64 } @_RNvMNtCs6i54tJFfzR_5alloc5allocNtB2_6Global18alloc_impl_runtimeCscBbfQkuq0VR_6expand(i64 %layout.0, i64 %layout.1, i1 zeroext false) #17, !dbg !3186
  %2 = extractvalue { ptr, i64 } %1, 0, !dbg !3186
  %3 = extractvalue { ptr, i64 } %1, 1, !dbg !3186
  store ptr %2, ptr %_2, align 8, !dbg !3186
  %4 = getelementptr inbounds i8, ptr %_2, i64 8, !dbg !3186
  store i64 %3, ptr %4, align 8, !dbg !3186
  %5 = load ptr, ptr %_2, align 8, !dbg !3187
  %6 = getelementptr inbounds i8, ptr %_2, i64 8, !dbg !3187
  %7 = load i64, ptr %6, align 8, !dbg !3187
  %8 = ptrtoint ptr %5 to i64, !dbg !3187
  %9 = icmp eq i64 %8, 0, !dbg !3187
  %_3 = select i1 %9, i64 1, i64 0, !dbg !3187
  %10 = trunc nuw i64 %_3 to i1, !dbg !3188
  br i1 %10, label %bb2, label %bb3, !dbg !3188

bb2:                                              ; preds = %start
; call alloc::alloc::handle_alloc_error
  call void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 %layout.0, i64 %layout.1) #18, !dbg !3189
  unreachable, !dbg !3189

bb3:                                              ; preds = %start
  %ptr.0 = load ptr, ptr %_2, align 8, !dbg !3190
  %11 = getelementptr inbounds i8, ptr %_2, i64 8, !dbg !3190
  %ptr.1 = load i64, ptr %11, align 8, !dbg !3190
  store ptr %ptr.0, ptr %ptr.dbg.spill, align 8, !dbg !3190
  %12 = getelementptr inbounds i8, ptr %ptr.dbg.spill, i64 8, !dbg !3190
  store i64 %ptr.1, ptr %12, align 8, !dbg !3190
    #dbg_declare(ptr %ptr.dbg.spill, !3160, !DIExpression(), !3191)
    #dbg_declare(ptr %ptr.dbg.spill, !3192, !DIExpression(), !3198)
  ret ptr %ptr.0, !dbg !3200

bb1:                                              ; No predecessors!
  unreachable, !dbg !3187
}

; std::io::stdio::stderr
; Function Attrs: nonlazybind uwtable
define internal align 8 ptr @_RNvNtNtCs9k3SxhrAWiO_3std2io5stdio6stderrCscBbfQkuq0VR_6expand() unnamed_addr #0 !dbg !3201 {
start:
  ret ptr @_RNvNvNtNtCs9k3SxhrAWiO_3std2io5stdio6stderr8INSTANCE, !dbg !3282
}

; <*const _>::offset_from_unsigned::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNvNvMNtNtCsgxBkk5gSRhY_4core3ptr9const_ptrPp20offset_from_unsigned18precondition_checkCscBbfQkuq0VR_6expand(ptr %this, ptr %origin, ptr align 8 %0) unnamed_addr #3 !dbg !3283 {
start:
  %msg.dbg.spill = alloca [16 x i8], align 8
  %origin.dbg.spill = alloca [8 x i8], align 8
  %this.dbg.spill = alloca [8 x i8], align 8
  store ptr %this, ptr %this.dbg.spill, align 8
    #dbg_declare(ptr %this.dbg.spill, !3288, !DIExpression(), !3292)
    #dbg_declare(ptr %this.dbg.spill, !3293, !DIExpression(), !3299)
  store ptr %origin, ptr %origin.dbg.spill, align 8
    #dbg_declare(ptr %origin.dbg.spill, !3289, !DIExpression(), !3292)
    #dbg_declare(ptr %origin.dbg.spill, !3298, !DIExpression(), !3302)
  %_3 = icmp uge ptr %this, %origin, !dbg !3303
  br i1 %_3, label %bb1, label %bb2, !dbg !3300

bb2:                                              ; preds = %start
  store ptr @alloc_de4e626d456b04760e72bc785ed7e52a, ptr %msg.dbg.spill, align 8, !dbg !3309
  %1 = getelementptr inbounds i8, ptr %msg.dbg.spill, i64 8, !dbg !3309
  store i64 201, ptr %1, align 8, !dbg !3309
    #dbg_declare(ptr %msg.dbg.spill, !3290, !DIExpression(), !3310)
    #dbg_declare(ptr %msg.dbg.spill, !3311, !DIExpression(), !3314)
    #dbg_declare(ptr %msg.dbg.spill, !3316, !DIExpression(), !3319)
    #dbg_declare(ptr %msg.dbg.spill, !3321, !DIExpression(), !3324)
    #dbg_declare(ptr %msg.dbg.spill, !3326, !DIExpression(), !3329)
; call core::panicking::panic_nounwind_fmt
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking18panic_nounwind_fmt(ptr @alloc_de4e626d456b04760e72bc785ed7e52a, ptr inttoptr (i64 403 to ptr), i1 zeroext false, ptr align 8 %0) #22, !dbg !3331
  unreachable, !dbg !3331

bb1:                                              ; preds = %start
  ret void, !dbg !3332
}

; <core::ptr::non_null::NonNull<_>>::new_unchecked::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNvNvMs1_NtNtCsgxBkk5gSRhY_4core3ptr8non_nullINtB7_7NonNullpE13new_unchecked18precondition_checkCscBbfQkuq0VR_6expand(ptr %ptr, ptr align 8 %0) unnamed_addr #3 !dbg !3333 {
start:
  %msg.dbg.spill = alloca [16 x i8], align 8
  %ptr.dbg.spill = alloca [8 x i8], align 8
  store ptr %ptr, ptr %ptr.dbg.spill, align 8
    #dbg_declare(ptr %ptr.dbg.spill, !3340, !DIExpression(), !3343)
    #dbg_declare(ptr %ptr.dbg.spill, !3344, !DIExpression(), !3349)
  %_5 = ptrtoint ptr %ptr to i64, !dbg !3352
  %1 = icmp eq i64 %_5, 0, !dbg !3363
  br i1 %1, label %bb1, label %bb2, !dbg !3363

bb1:                                              ; preds = %start
  store ptr @alloc_560a59ed819b9d9a5841f6e731c4c8e5, ptr %msg.dbg.spill, align 8, !dbg !3364
  %2 = getelementptr inbounds i8, ptr %msg.dbg.spill, i64 8, !dbg !3364
  store i64 210, ptr %2, align 8, !dbg !3364
    #dbg_declare(ptr %msg.dbg.spill, !3341, !DIExpression(), !3365)
    #dbg_declare(ptr %msg.dbg.spill, !3366, !DIExpression(), !3369)
    #dbg_declare(ptr %msg.dbg.spill, !3371, !DIExpression(), !3374)
    #dbg_declare(ptr %msg.dbg.spill, !3376, !DIExpression(), !3379)
    #dbg_declare(ptr %msg.dbg.spill, !3381, !DIExpression(), !3384)
; call core::panicking::panic_nounwind_fmt
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking18panic_nounwind_fmt(ptr @alloc_560a59ed819b9d9a5841f6e731c4c8e5, ptr inttoptr (i64 421 to ptr), i1 zeroext false, ptr align 8 %0) #22, !dbg !3386
  unreachable, !dbg !3386

bb2:                                              ; preds = %start
  ret void, !dbg !3387
}

; <usize>::unchecked_add::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNvNvMs9_NtCsgxBkk5gSRhY_4core3numj13unchecked_add18precondition_checkCscBbfQkuq0VR_6expand(i64 %lhs, i64 %rhs, ptr align 8 %0) unnamed_addr #3 !dbg !3388 {
start:
  %msg.dbg.spill = alloca [16 x i8], align 8
  %rhs.dbg.spill = alloca [8 x i8], align 8
  %lhs.dbg.spill = alloca [8 x i8], align 8
  store i64 %lhs, ptr %lhs.dbg.spill, align 8
    #dbg_declare(ptr %lhs.dbg.spill, !3393, !DIExpression(), !3397)
    #dbg_declare(ptr %lhs.dbg.spill, !3398, !DIExpression(), !3408)
  store i64 %rhs, ptr %rhs.dbg.spill, align 8
    #dbg_declare(ptr %rhs.dbg.spill, !3394, !DIExpression(), !3397)
    #dbg_declare(ptr %rhs.dbg.spill, !3407, !DIExpression(), !3411)
  %_7.0 = add i64 %lhs, %rhs, !dbg !3412
  %_7.1 = icmp ult i64 %_7.0, %lhs, !dbg !3412
  br i1 %_7.1, label %bb1, label %bb2, !dbg !3413

bb2:                                              ; preds = %start
  ret void, !dbg !3414

bb1:                                              ; preds = %start
  store ptr @alloc_3e1ebac14318b612ab4efabc52799932, ptr %msg.dbg.spill, align 8, !dbg !3415
  %1 = getelementptr inbounds i8, ptr %msg.dbg.spill, i64 8, !dbg !3415
  store i64 186, ptr %1, align 8, !dbg !3415
    #dbg_declare(ptr %msg.dbg.spill, !3395, !DIExpression(), !3416)
    #dbg_declare(ptr %msg.dbg.spill, !3417, !DIExpression(), !3420)
    #dbg_declare(ptr %msg.dbg.spill, !3422, !DIExpression(), !3425)
    #dbg_declare(ptr %msg.dbg.spill, !3427, !DIExpression(), !3430)
    #dbg_declare(ptr %msg.dbg.spill, !3432, !DIExpression(), !3435)
; call core::panicking::panic_nounwind_fmt
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking18panic_nounwind_fmt(ptr @alloc_3e1ebac14318b612ab4efabc52799932, ptr inttoptr (i64 373 to ptr), i1 zeroext false, ptr align 8 %0) #22, !dbg !3437
  unreachable, !dbg !3437
}

; core::slice::raw::from_raw_parts::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNvNvNtNtCsgxBkk5gSRhY_4core5slice3raw14from_raw_parts18precondition_checkCscBbfQkuq0VR_6expand(ptr %data, i64 %size, i64 %align, i64 %len, ptr align 8 %0) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !3438 {
start:
  %msg.dbg.spill = alloca [16 x i8], align 8
  %ptr.dbg.spill = alloca [8 x i8], align 8
  %is_zst.dbg.spill = alloca [1 x i8], align 1
  %len.dbg.spill = alloca [8 x i8], align 8
  %align.dbg.spill = alloca [8 x i8], align 8
  %size.dbg.spill = alloca [8 x i8], align 8
  %data.dbg.spill = alloca [8 x i8], align 8
  %max_len = alloca [8 x i8], align 8
  store ptr %data, ptr %data.dbg.spill, align 8
    #dbg_declare(ptr %data.dbg.spill, !3443, !DIExpression(), !3449)
  store i64 %size, ptr %size.dbg.spill, align 8
    #dbg_declare(ptr %size.dbg.spill, !3444, !DIExpression(), !3449)
    #dbg_declare(ptr %size.dbg.spill, !3450, !DIExpression(), !3459)
  store i64 %align, ptr %align.dbg.spill, align 8
    #dbg_declare(ptr %align.dbg.spill, !3445, !DIExpression(), !3449)
    #dbg_declare(ptr %align.dbg.spill, !3462, !DIExpression(), !3469)
    #dbg_declare(ptr %align.dbg.spill, !3471, !DIExpression(), !3477)
    #dbg_declare(ptr %align.dbg.spill, !3479, !DIExpression(), !3484)
  store i64 %len, ptr %len.dbg.spill, align 8
    #dbg_declare(ptr %len.dbg.spill, !3446, !DIExpression(), !3449)
    #dbg_declare(ptr %len.dbg.spill, !3456, !DIExpression(), !3487)
    #dbg_declare(ptr %max_len, !3457, !DIExpression(), !3488)
  store i8 0, ptr %is_zst.dbg.spill, align 1, !dbg !3489
    #dbg_declare(ptr %is_zst.dbg.spill, !3468, !DIExpression(), !3489)
  store ptr %data, ptr %ptr.dbg.spill, align 8, !dbg !3490
    #dbg_declare(ptr %ptr.dbg.spill, !3467, !DIExpression(), !3491)
    #dbg_declare(ptr %ptr.dbg.spill, !3476, !DIExpression(), !3492)
    #dbg_declare(ptr %ptr.dbg.spill, !3483, !DIExpression(), !3484)
    #dbg_declare(ptr %ptr.dbg.spill, !3493, !DIExpression(), !3496)
; invoke <*const ()>::is_aligned_to
  %_11 = invoke zeroext i1 @_RNvMNtNtCsgxBkk5gSRhY_4core3ptr9const_ptrPu13is_aligned_toCs1zjXtWG3rwZ_6memchr(ptr %data, i64 %align)
          to label %bb8 unwind label %terminate, !dbg !3498

terminate:                                        ; preds = %start
  %1 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_cannot_unwind
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking19panic_cannot_unwind() #16, !dbg !3500
  unreachable, !dbg !3500

bb8:                                              ; preds = %start
  br i1 %_11, label %bb6, label %bb7, !dbg !3478

bb7:                                              ; preds = %bb8
  br label %bb4, !dbg !3470

bb6:                                              ; preds = %bb8
  %_13 = ptrtoint ptr %data to i64, !dbg !3501
  %_12 = icmp eq i64 %_13, 0, !dbg !3509
  %_5 = xor i1 %_12, true, !dbg !3510
  br i1 %_5, label %bb1, label %bb4, !dbg !3470

bb4:                                              ; preds = %bb6, %bb7
  br label %bb5, !dbg !3511

bb1:                                              ; preds = %bb6
  %2 = icmp eq i64 %size, 0, !dbg !3513
  br i1 %2, label %bb9, label %bb10, !dbg !3513

bb5:                                              ; preds = %bb3, %bb4
  store ptr @alloc_a28e8c8fd5088943a8b5d44af697ff83, ptr %msg.dbg.spill, align 8, !dbg !3514
  %3 = getelementptr inbounds i8, ptr %msg.dbg.spill, i64 8, !dbg !3514
  store i64 279, ptr %3, align 8, !dbg !3514
    #dbg_declare(ptr %msg.dbg.spill, !3447, !DIExpression(), !3515)
    #dbg_declare(ptr %msg.dbg.spill, !3516, !DIExpression(), !3519)
    #dbg_declare(ptr %msg.dbg.spill, !3521, !DIExpression(), !3524)
    #dbg_declare(ptr %msg.dbg.spill, !3526, !DIExpression(), !3529)
    #dbg_declare(ptr %msg.dbg.spill, !3531, !DIExpression(), !3534)
; call core::panicking::panic_nounwind_fmt
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking18panic_nounwind_fmt(ptr @alloc_a28e8c8fd5088943a8b5d44af697ff83, ptr inttoptr (i64 559 to ptr), i1 zeroext false, ptr align 8 %0) #22, !dbg !3536
  unreachable, !dbg !3536

bb9:                                              ; preds = %bb1
  store i64 -1, ptr %max_len, align 8, !dbg !3537
  br label %bb11, !dbg !3538

bb10:                                             ; preds = %bb1
  %4 = udiv i64 9223372036854775807, %size, !dbg !3539
  store i64 %4, ptr %max_len, align 8, !dbg !3539
  br label %bb11, !dbg !3538

bb11:                                             ; preds = %bb10, %bb9
  %5 = load i64, ptr %max_len, align 8, !dbg !3540
  %_7 = icmp ule i64 %len, %5, !dbg !3540
  br i1 %_7, label %bb2, label %bb3, !dbg !3460

bb3:                                              ; preds = %bb11
  br label %bb5, !dbg !3511

bb2:                                              ; preds = %bb11
  ret void, !dbg !3541
}

; <alloc::boxed::Box<dyn uucore::mods::error::UError> as core::convert::From<uu_expand::ParseError>>::from
; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXNtNtCs1iFJFqccjfm_6uucore4mods5errorINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtB2_6UErrorEL_EINtNtCsgxBkk5gSRhY_4core7convert4FromNtCs9xOv1NcnHfv_9uu_expand10ParseErrorE4fromCscBbfQkuq0VR_6expand(ptr align 8 %t) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3542 {
start:
  %ptr.dbg.spill.i = alloca [8 x i8], align 8
    #dbg_declare(ptr %1, !3550, !DIExpression(), !3560)
  %0 = alloca [16 x i8], align 8
    #dbg_declare(ptr %t, !3549, !DIExpression(), !3562)
  %1 = alloca [48 x i8], align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 8 %t, i64 48, i1 false), !dbg !3563
; invoke alloc::boxed::box_new_uninit
  %_3.i = invoke ptr @_RNvNtCs6i54tJFfzR_5alloc5boxed14box_new_uninitCscBbfQkuq0VR_6expand(i64 8, i64 48)
          to label %_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxNtCs9xOv1NcnHfv_9uu_expand10ParseErrorE3newCscBbfQkuq0VR_6expand.exit unwind label %cleanup.i, !dbg !3564

cleanup.i:                                        ; preds = %start
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  %4 = extractvalue { ptr, i32 } %2, 1
  store ptr %3, ptr %0, align 8
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %4, ptr %5, align 8
; invoke core::ptr::drop_glue::<uu_expand::ParseError>
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtCs9xOv1NcnHfv_9uu_expand10ParseErrorECscBbfQkuq0VR_6expand(ptr align 8 %1) #15
          to label %bb2.i unwind label %terminate.i, !dbg !3565

terminate.i:                                      ; preds = %cleanup.i
  %6 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !dbg !3566
  unreachable, !dbg !3566

bb2.i:                                            ; preds = %cleanup.i
  %7 = load ptr, ptr %0, align 8, !dbg !3566
  %8 = getelementptr inbounds i8, ptr %0, i64 8, !dbg !3566
  %9 = load i32, ptr %8, align 8, !dbg !3566
  %10 = insertvalue { ptr, i32 } poison, ptr %7, 0, !dbg !3566
  %11 = insertvalue { ptr, i32 } %10, i32 %9, 1, !dbg !3566
  resume { ptr, i32 } %11, !dbg !3566

_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxNtCs9xOv1NcnHfv_9uu_expand10ParseErrorE3newCscBbfQkuq0VR_6expand.exit: ; preds = %start
  store ptr %_3.i, ptr %ptr.dbg.spill.i, align 8, !dbg !3564
    #dbg_declare(ptr %ptr.dbg.spill.i, !3557, !DIExpression(), !3567)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_3.i, ptr align 8 %1, i64 48, i1 false), !dbg !3568
  %12 = insertvalue { ptr, ptr } poison, ptr %_3.i, 0, !dbg !3569
  %13 = insertvalue { ptr, ptr } %12, ptr @vtable.2, 1, !dbg !3569
  ret { ptr, ptr } %13, !dbg !3569
}

; <alloc::vec::Vec<std::ffi::os_str::OsString> as alloc::vec::spec_from_iter::SpecFromIter<std::ffi::os_str::OsString, core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>>::from_iter
; Function Attrs: nonlazybind uwtable
define internal void @_RNvXNtNtCs6i54tJFfzR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringEINtB2_12SpecFromIterBT_INtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters6cloned6ClonedINtNtNtB28_5slice4iter4IterBT_EEE9from_iterCscBbfQkuq0VR_6expand(ptr sret([24 x i8]) align 8 %_0, ptr %iterator.0, ptr %iterator.1) unnamed_addr #0 !dbg !3570 {
start:
  %iterator.dbg.spill = alloca [16 x i8], align 8
  store ptr %iterator.0, ptr %iterator.dbg.spill, align 8
  %0 = getelementptr inbounds i8, ptr %iterator.dbg.spill, i64 8
  store ptr %iterator.1, ptr %0, align 8
    #dbg_declare(ptr %iterator.dbg.spill, !3575, !DIExpression(), !3576)
; call <alloc::vec::Vec<std::ffi::os_str::OsString> as alloc::vec::spec_from_iter_nested::SpecFromIterNested<std::ffi::os_str::OsString, core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>>::from_iter
  call void @_RNvXs_NtNtCs6i54tJFfzR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringEINtB4_18SpecFromIterNestedB12_INtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters6cloned6ClonedINtNtNtB2o_5slice4iter4IterB12_EEE9from_iterCscBbfQkuq0VR_6expand(ptr sret([24 x i8]) align 8 %_0, ptr %iterator.0, ptr %iterator.1), !dbg !3577
  ret void, !dbg !3578
}

; <core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>> as core::iter::traits::collect::IntoIterator>::into_iter
; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RNvXNtNtNtCsgxBkk5gSRhY_4core4iter6traits7collectINtNtNtB6_8adapters6cloned6ClonedINtNtNtB8_5slice4iter4IterNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringEENtB2_12IntoIterator9into_iterCscBbfQkuq0VR_6expand(ptr %self.0, ptr %self.1) unnamed_addr #1 !dbg !3579 {
start:
  %self.dbg.spill = alloca [16 x i8], align 8
  store ptr %self.0, ptr %self.dbg.spill, align 8
  %0 = getelementptr inbounds i8, ptr %self.dbg.spill, i64 8
  store ptr %self.1, ptr %0, align 8
    #dbg_declare(ptr %self.dbg.spill, !3586, !DIExpression(), !3588)
  %1 = insertvalue { ptr, ptr } poison, ptr %self.0, 0, !dbg !3589
  %2 = insertvalue { ptr, ptr } %1, ptr %self.1, 1, !dbg !3589
  ret { ptr, ptr } %2, !dbg !3589
}

; <alloc::string::String as core::cmp::PartialEq<&str>>::ne
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @_RNvXs1y_NtCs6i54tJFfzR_5alloc6stringNtB6_6StringINtNtCsgxBkk5gSRhY_4core3cmp9PartialEqReE2neCscBbfQkuq0VR_6expand(ptr align 8 %self, ptr align 8 %other) unnamed_addr #1 !dbg !3590 {
start:
  %rhs.dbg.spill = alloca [8 x i8], align 8
  %lhs.dbg.spill = alloca [8 x i8], align 8
  %len.dbg.spill = alloca [8 x i8], align 8
  %other.dbg.spill4 = alloca [16 x i8], align 8
  %self.dbg.spill3 = alloca [16 x i8], align 8
  %self.dbg.spill2 = alloca [16 x i8], align 8
  %slice.dbg.spill = alloca [16 x i8], align 8
  %index.dbg.spill1 = alloca [0 x i8], align 1
  %index.dbg.spill = alloca [0 x i8], align 1
  %other.dbg.spill = alloca [8 x i8], align 8
  %self.dbg.spill = alloca [8 x i8], align 8
  %_10 = alloca [1 x i8], align 1
  store ptr %self, ptr %self.dbg.spill, align 8
    #dbg_declare(ptr %self.dbg.spill, !3596, !DIExpression(), !3598)
    #dbg_declare(ptr %self.dbg.spill, !3599, !DIExpression(), !3609)
    #dbg_declare(ptr %self.dbg.spill, !3611, !DIExpression(), !3617)
  store ptr %other, ptr %other.dbg.spill, align 8
    #dbg_declare(ptr %other.dbg.spill, !3597, !DIExpression(), !3619)
    #dbg_declare(ptr %index.dbg.spill, !3606, !DIExpression(), !3620)
    #dbg_declare(ptr %index.dbg.spill1, !3621, !DIExpression(), !3630)
  %0 = getelementptr inbounds i8, ptr %self, i64 8, !dbg !3632
  %_9 = load ptr, ptr %0, align 8, !dbg !3632
  %1 = getelementptr inbounds i8, ptr %self, i64 16, !dbg !3661
  %_8 = load i64, ptr %1, align 8, !dbg !3661
  store ptr %_9, ptr %slice.dbg.spill, align 8, !dbg !3662
  %2 = getelementptr inbounds i8, ptr %slice.dbg.spill, i64 8, !dbg !3662
  store i64 %_8, ptr %2, align 8, !dbg !3662
    #dbg_declare(ptr %slice.dbg.spill, !3665, !DIExpression(), !3671)
    #dbg_declare(ptr %slice.dbg.spill, !3673, !DIExpression(), !3685)
    #dbg_declare(ptr %slice.dbg.spill, !3687, !DIExpression(), !3692)
    #dbg_declare(ptr %slice.dbg.spill, !3694, !DIExpression(), !3697)
  %self.0 = load ptr, ptr %other, align 8, !dbg !3699
  %3 = getelementptr inbounds i8, ptr %other, i64 8, !dbg !3699
  %self.1 = load i64, ptr %3, align 8, !dbg !3699
  store ptr %self.0, ptr %self.dbg.spill2, align 8, !dbg !3699
  %4 = getelementptr inbounds i8, ptr %self.dbg.spill2, i64 8, !dbg !3699
  store i64 %self.1, ptr %4, align 8, !dbg !3699
    #dbg_declare(ptr %self.dbg.spill2, !3629, !DIExpression(), !3700)
    #dbg_declare(ptr %self.dbg.spill2, !3665, !DIExpression(), !3701)
    #dbg_declare(ptr %self.dbg.spill2, !3681, !DIExpression(), !3703)
    #dbg_declare(ptr %self.dbg.spill2, !3691, !DIExpression(), !3704)
    #dbg_declare(ptr %self.dbg.spill2, !3694, !DIExpression(), !3705)
  store ptr %_9, ptr %self.dbg.spill3, align 8, !dbg !3707
  %5 = getelementptr inbounds i8, ptr %self.dbg.spill3, i64 8, !dbg !3707
  store i64 %_8, ptr %5, align 8, !dbg !3707
    #dbg_declare(ptr %self.dbg.spill3, !3708, !DIExpression(), !3721)
    #dbg_declare(ptr %self.dbg.spill3, !3736, !DIExpression(), !3743)
    #dbg_value(ptr poison, !3730, !DIExpression(), !3745)
  store ptr %self.0, ptr %other.dbg.spill4, align 8, !dbg !3746
  %6 = getelementptr inbounds i8, ptr %other.dbg.spill4, i64 8, !dbg !3746
  store i64 %self.1, ptr %6, align 8, !dbg !3746
    #dbg_declare(ptr %other.dbg.spill4, !3716, !DIExpression(), !3747)
    #dbg_declare(ptr %other.dbg.spill4, !3736, !DIExpression(), !3748)
    #dbg_value(ptr poison, !3731, !DIExpression(), !3750)
  store i64 %_8, ptr %len.dbg.spill, align 8, !dbg !3751
    #dbg_declare(ptr %len.dbg.spill, !3717, !DIExpression(), !3752)
    #dbg_declare(ptr %len.dbg.spill, !3753, !DIExpression(), !3766)
    #dbg_declare(ptr %len.dbg.spill, !3761, !DIExpression(), !3768)
  %_16 = icmp eq i64 %_8, %self.1, !dbg !3769
  br i1 %_16, label %bb1, label %bb2, !dbg !3769

bb2:                                              ; preds = %start
  store i8 0, ptr %_10, align 1, !dbg !3770
  br label %bb3, !dbg !3771

bb1:                                              ; preds = %start
  store ptr %_9, ptr %lhs.dbg.spill, align 8, !dbg !3772
    #dbg_declare(ptr %lhs.dbg.spill, !3759, !DIExpression(), !3773)
  store ptr %self.0, ptr %rhs.dbg.spill, align 8, !dbg !3774
    #dbg_declare(ptr %rhs.dbg.spill, !3760, !DIExpression(), !3775)
  %_22 = call i32 @memcmp(ptr %_9, ptr %self.0, i64 %_8), !dbg !3776
  %7 = icmp eq i32 %_22, 0, !dbg !3776
  %8 = zext i1 %7 to i8, !dbg !3776
  store i8 %8, ptr %_10, align 1, !dbg !3776
  br label %bb3, !dbg !3771

bb3:                                              ; preds = %bb1, %bb2
  %9 = load i8, ptr %_10, align 1, !dbg !3777
  %10 = trunc nuw i8 %9 to i1, !dbg !3777
  %_0 = xor i1 %10, true, !dbg !3777
  ret i1 %_0, !dbg !3778
}

; <uu_expand::ParseError as core::fmt::Debug>::fmt
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @_RNvXs2_Cs9xOv1NcnHfv_9uu_expandNtB5_10ParseErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmtCscBbfQkuq0VR_6expand(ptr align 8 %self, ptr align 8 %f) unnamed_addr #1 !dbg !3779 {
start:
  %__self_0.dbg.spill = alloca [8 x i8], align 8
  %f.dbg.spill = alloca [8 x i8], align 8
  %self.dbg.spill = alloca [8 x i8], align 8
  %__self_02 = alloca [8 x i8], align 8
  %__self_01 = alloca [8 x i8], align 8
  %__self_1 = alloca [8 x i8], align 8
  %__self_0 = alloca [8 x i8], align 8
  %_0 = alloca [1 x i8], align 1
  store ptr %self, ptr %self.dbg.spill, align 8
    #dbg_declare(ptr %self.dbg.spill, !3785, !DIExpression(), !3796)
  store ptr %f, ptr %f.dbg.spill, align 8
    #dbg_declare(ptr %f.dbg.spill, !3786, !DIExpression(), !3796)
    #dbg_declare(ptr %__self_0, !3787, !DIExpression(), !3797)
    #dbg_declare(ptr %__self_1, !3791, !DIExpression(), !3798)
    #dbg_declare(ptr %__self_01, !3792, !DIExpression(), !3799)
    #dbg_declare(ptr %__self_02, !3794, !DIExpression(), !3800)
  %0 = load i64, ptr %self, align 8, !dbg !3796
  %1 = sub i64 %0, -9223372036854775808, !dbg !3796
  %2 = icmp uge i64 %0, -9223372036854775808, !dbg !3796
  %_3 = select i1 %2, i64 %1, i64 1, !dbg !3796
  switch i64 %_3, label %bb1 [
    i64 0, label %bb7
    i64 1, label %bb6
    i64 2, label %bb5
    i64 3, label %bb4
    i64 4, label %bb3
    i64 5, label %bb2
  ], !dbg !3796

bb1:                                              ; preds = %start
  unreachable, !dbg !3796

bb7:                                              ; preds = %start
  %3 = getelementptr inbounds i8, ptr %self, i64 8, !dbg !3801
  store ptr %3, ptr %__self_0, align 8, !dbg !3801
; call <core::fmt::Formatter>::debug_tuple_field1_finish
  %4 = call zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr align 8 %f, ptr @alloc_4b4b31f3f45b1a1bfb697ffca2985c68, i64 16, ptr %__self_0, ptr align 8 @vtable.3), !dbg !3802
  %5 = zext i1 %4 to i8, !dbg !3802
  store i8 %5, ptr %_0, align 1, !dbg !3802
  br label %bb8, !dbg !3802

bb6:                                              ; preds = %start
  store ptr %self, ptr %__self_0.dbg.spill, align 8, !dbg !3803
    #dbg_declare(ptr %__self_0.dbg.spill, !3789, !DIExpression(), !3804)
  %6 = getelementptr inbounds i8, ptr %self, i64 24, !dbg !3805
  store ptr %6, ptr %__self_1, align 8, !dbg !3805
; call <core::fmt::Formatter>::debug_tuple_field2_finish
  %7 = call zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr align 8 %f, ptr @alloc_b7fa16675416cacb6c230f129add8fa4, i64 27, ptr %self, ptr align 8 @vtable.4, ptr %__self_1, ptr align 8 @vtable.3), !dbg !3806
  %8 = zext i1 %7 to i8, !dbg !3806
  store i8 %8, ptr %_0, align 1, !dbg !3806
  br label %bb8, !dbg !3806

bb5:                                              ; preds = %start
  %9 = getelementptr inbounds i8, ptr %self, i64 8, !dbg !3807
  store ptr %9, ptr %__self_01, align 8, !dbg !3807
; call <core::fmt::Formatter>::debug_tuple_field1_finish
  %10 = call zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr align 8 %f, ptr @alloc_e0578d500f7af93167d5448a9f507f8f, i64 33, ptr %__self_01, ptr align 8 @vtable.3), !dbg !3808
  %11 = zext i1 %10 to i8, !dbg !3808
  store i8 %11, ptr %_0, align 1, !dbg !3808
  br label %bb8, !dbg !3808

bb4:                                              ; preds = %start
; call <core::fmt::Formatter>::write_str
  %12 = call zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %f, ptr @alloc_adca0d13b5f42284e114fbb7ea336f76, i64 19), !dbg !3796
  %13 = zext i1 %12 to i8, !dbg !3796
  store i8 %13, ptr %_0, align 1, !dbg !3796
  br label %bb8, !dbg !3796

bb3:                                              ; preds = %start
  %14 = getelementptr inbounds i8, ptr %self, i64 8, !dbg !3809
  store ptr %14, ptr %__self_02, align 8, !dbg !3809
; call <core::fmt::Formatter>::debug_tuple_field1_finish
  %15 = call zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr align 8 %f, ptr @alloc_72d812b6f325737802a7961f8d9537d3, i64 15, ptr %__self_02, ptr align 8 @vtable.3), !dbg !3810
  %16 = zext i1 %15 to i8, !dbg !3810
  store i8 %16, ptr %_0, align 1, !dbg !3810
  br label %bb8, !dbg !3810

bb2:                                              ; preds = %start
; call <core::fmt::Formatter>::write_str
  %17 = call zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %f, ptr @alloc_89fb148d0719d1279214ac396d0d232b, i64 23), !dbg !3796
  %18 = zext i1 %17 to i8, !dbg !3796
  store i8 %18, ptr %_0, align 1, !dbg !3796
  br label %bb8, !dbg !3796

bb8:                                              ; preds = %bb2, %bb3, %bb4, %bb5, %bb6, %bb7
  %19 = load i8, ptr %_0, align 1, !dbg !3811
  %20 = trunc nuw i8 %19 to i1, !dbg !3811
  ret i1 %20, !dbg !3811
}

; <nix::errno::consts::Errno as core::fmt::Debug>::fmt
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @_RNvXs2_NtNtCsbRzQFPXpg46_3nix5errno6constsNtB5_5ErrnoNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmtCscBbfQkuq0VR_6expand(ptr align 4 %self, ptr align 8 %f) unnamed_addr #1 !dbg !3812 {
start:
  %f.dbg.spill = alloca [8 x i8], align 8
  %self.dbg.spill = alloca [8 x i8], align 8
  %_3 = alloca [16 x i8], align 8
  store ptr %self, ptr %self.dbg.spill, align 8
    #dbg_declare(ptr %self.dbg.spill, !3819, !DIExpression(), !3821)
  store ptr %f, ptr %f.dbg.spill, align 8
    #dbg_declare(ptr %f.dbg.spill, !3820, !DIExpression(), !3821)
  %_4 = load i32, ptr %self, align 4, !dbg !3821
  switch i32 %_4, label %bb1 [
    i32 0, label %bb133
    i32 1, label %bb132
    i32 2, label %bb131
    i32 3, label %bb130
    i32 4, label %bb129
    i32 5, label %bb128
    i32 6, label %bb127
    i32 7, label %bb126
    i32 8, label %bb125
    i32 9, label %bb124
    i32 10, label %bb123
    i32 11, label %bb122
    i32 12, label %bb121
    i32 13, label %bb120
    i32 14, label %bb119
    i32 15, label %bb118
    i32 16, label %bb117
    i32 17, label %bb116
    i32 18, label %bb115
    i32 19, label %bb114
    i32 20, label %bb113
    i32 21, label %bb112
    i32 22, label %bb111
    i32 23, label %bb110
    i32 24, label %bb109
    i32 25, label %bb108
    i32 26, label %bb107
    i32 27, label %bb106
    i32 28, label %bb105
    i32 29, label %bb104
    i32 30, label %bb103
    i32 31, label %bb102
    i32 32, label %bb101
    i32 33, label %bb100
    i32 34, label %bb99
    i32 35, label %bb98
    i32 36, label %bb97
    i32 37, label %bb96
    i32 38, label %bb95
    i32 39, label %bb94
    i32 40, label %bb93
    i32 42, label %bb92
    i32 43, label %bb91
    i32 44, label %bb90
    i32 45, label %bb89
    i32 46, label %bb88
    i32 47, label %bb87
    i32 48, label %bb86
    i32 49, label %bb85
    i32 50, label %bb84
    i32 51, label %bb83
    i32 52, label %bb82
    i32 53, label %bb81
    i32 54, label %bb80
    i32 55, label %bb79
    i32 56, label %bb78
    i32 57, label %bb77
    i32 59, label %bb76
    i32 60, label %bb75
    i32 61, label %bb74
    i32 62, label %bb73
    i32 63, label %bb72
    i32 64, label %bb71
    i32 65, label %bb70
    i32 66, label %bb69
    i32 67, label %bb68
    i32 68, label %bb67
    i32 69, label %bb66
    i32 70, label %bb65
    i32 71, label %bb64
    i32 72, label %bb63
    i32 73, label %bb62
    i32 74, label %bb61
    i32 75, label %bb60
    i32 76, label %bb59
    i32 77, label %bb58
    i32 78, label %bb57
    i32 79, label %bb56
    i32 80, label %bb55
    i32 81, label %bb54
    i32 82, label %bb53
    i32 83, label %bb52
    i32 84, label %bb51
    i32 85, label %bb50
    i32 86, label %bb49
    i32 87, label %bb48
    i32 88, label %bb47
    i32 89, label %bb46
    i32 90, label %bb45
    i32 91, label %bb44
    i32 92, label %bb43
    i32 93, label %bb42
    i32 94, label %bb41
    i32 95, label %bb40
    i32 96, label %bb39
    i32 97, label %bb38
    i32 98, label %bb37
    i32 99, label %bb36
    i32 100, label %bb35
    i32 101, label %bb34
    i32 102, label %bb33
    i32 103, label %bb32
    i32 104, label %bb31
    i32 105, label %bb30
    i32 106, label %bb29
    i32 107, label %bb28
    i32 108, label %bb27
    i32 109, label %bb26
    i32 110, label %bb25
    i32 111, label %bb24
    i32 112, label %bb23
    i32 113, label %bb22
    i32 114, label %bb21
    i32 115, label %bb20
    i32 116, label %bb19
    i32 117, label %bb18
    i32 118, label %bb17
    i32 119, label %bb16
    i32 120, label %bb15
    i32 121, label %bb14
    i32 122, label %bb13
    i32 123, label %bb12
    i32 124, label %bb11
    i32 125, label %bb10
    i32 126, label %bb9
    i32 127, label %bb8
    i32 128, label %bb7
    i32 129, label %bb6
    i32 130, label %bb5
    i32 131, label %bb4
    i32 132, label %bb3
    i32 133, label %bb2
  ], !dbg !3821

bb1:                                              ; preds = %start
  unreachable, !dbg !3821

bb133:                                            ; preds = %start
  store ptr @alloc_94de12363f3ad82eb88f17c146010918, ptr %_3, align 8, !dbg !3821, !captures !3822
  %0 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 12, ptr %0, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb132:                                            ; preds = %start
  store ptr @alloc_c0277d8038a6c64e72887cbcc884c3bb, ptr %_3, align 8, !dbg !3821, !captures !3822
  %1 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 5, ptr %1, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb131:                                            ; preds = %start
  store ptr @alloc_56041ca6eaaf7e3ef282582e48dffd90, ptr %_3, align 8, !dbg !3821, !captures !3822
  %2 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 6, ptr %2, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb130:                                            ; preds = %start
  store ptr @alloc_efa918ca8fd350104162f4b89715815c, ptr %_3, align 8, !dbg !3821, !captures !3822
  %3 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 5, ptr %3, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb129:                                            ; preds = %start
  store ptr @alloc_ad0a99e246003c87ceb7d0f323ff2580, ptr %_3, align 8, !dbg !3821, !captures !3822
  %4 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 5, ptr %4, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb128:                                            ; preds = %start
  store ptr @alloc_1ad3c9658acad47760e4c473a34c7d3b, ptr %_3, align 8, !dbg !3821, !captures !3822
  %5 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 3, ptr %5, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb127:                                            ; preds = %start
  store ptr @alloc_6dedd2160d6d8f97ec4f1623b4302f7c, ptr %_3, align 8, !dbg !3821, !captures !3822
  %6 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 5, ptr %6, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb126:                                            ; preds = %start
  store ptr @alloc_42a580698ba93a37df51119b31cd88c1, ptr %_3, align 8, !dbg !3821, !captures !3822
  %7 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 5, ptr %7, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb125:                                            ; preds = %start
  store ptr @alloc_bd057cb34460f661ef182ff156fc819e, ptr %_3, align 8, !dbg !3821, !captures !3822
  %8 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 7, ptr %8, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb124:                                            ; preds = %start
  store ptr @alloc_00ea1e26a59b8dc57996c8f8bd4a3717, ptr %_3, align 8, !dbg !3821, !captures !3822
  %9 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 5, ptr %9, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb123:                                            ; preds = %start
  store ptr @alloc_98538349a2cd2820ed22bd9f0b9dc802, ptr %_3, align 8, !dbg !3821, !captures !3822
  %10 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 6, ptr %10, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb122:                                            ; preds = %start
  store ptr @alloc_82a96ddff67c3ec277e473895a80dd1e, ptr %_3, align 8, !dbg !3821, !captures !3822
  %11 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 6, ptr %11, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb121:                                            ; preds = %start
  store ptr @alloc_f7b6042e65e87cd23a945053af86f2ef, ptr %_3, align 8, !dbg !3821, !captures !3822
  %12 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 6, ptr %12, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb120:                                            ; preds = %start
  store ptr @alloc_3b2624a9f6c83698379a8f772e74bb38, ptr %_3, align 8, !dbg !3821, !captures !3822
  %13 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 6, ptr %13, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb119:                                            ; preds = %start
  store ptr @alloc_8a8d12330b0edcc0ff37327ed998255f, ptr %_3, align 8, !dbg !3821, !captures !3822
  %14 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 6, ptr %14, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb118:                                            ; preds = %start
  store ptr @alloc_f54eb14543977fe5fc802f49b30ccdca, ptr %_3, align 8, !dbg !3821, !captures !3822
  %15 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 7, ptr %15, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb117:                                            ; preds = %start
  store ptr @alloc_ff8994d9eba3e5343a9b53228010da31, ptr %_3, align 8, !dbg !3821, !captures !3822
  %16 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 5, ptr %16, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb116:                                            ; preds = %start
  store ptr @alloc_2dfe18e858cf93870a4cff1370e9c9b0, ptr %_3, align 8, !dbg !3821, !captures !3822
  %17 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 6, ptr %17, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb115:                                            ; preds = %start
  store ptr @alloc_bc821d93424984e9dcc8d410acb3401b, ptr %_3, align 8, !dbg !3821, !captures !3822
  %18 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 5, ptr %18, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb114:                                            ; preds = %start
  store ptr @alloc_f1e9fdc6bc423e1edfbbcdf54c955cc1, ptr %_3, align 8, !dbg !3821, !captures !3822
  %19 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 6, ptr %19, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb113:                                            ; preds = %start
  store ptr @alloc_e8207917a07ca92b599995c6bf68fdda, ptr %_3, align 8, !dbg !3821, !captures !3822
  %20 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 7, ptr %20, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb112:                                            ; preds = %start
  store ptr @alloc_8a55676c016656c683fd58df6cbbfcc8, ptr %_3, align 8, !dbg !3821, !captures !3822
  %21 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 6, ptr %21, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb111:                                            ; preds = %start
  store ptr @alloc_31bae0bbf06c82dc196d425d3504b50d, ptr %_3, align 8, !dbg !3821, !captures !3822
  %22 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 6, ptr %22, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb110:                                            ; preds = %start
  store ptr @alloc_3b6bceff34f14ce8e4c2f343be15df26, ptr %_3, align 8, !dbg !3821, !captures !3822
  %23 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 6, ptr %23, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb109:                                            ; preds = %start
  store ptr @alloc_b00570ec474102351a8977332fa64d30, ptr %_3, align 8, !dbg !3821, !captures !3822
  %24 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 6, ptr %24, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb108:                                            ; preds = %start
  store ptr @alloc_c3301bc6520ccc9163bce47dddbff6b8, ptr %_3, align 8, !dbg !3821, !captures !3822
  %25 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 6, ptr %25, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb107:                                            ; preds = %start
  store ptr @alloc_351946230f087e85e556fe3b968b1981, ptr %_3, align 8, !dbg !3821, !captures !3822
  %26 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 7, ptr %26, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb106:                                            ; preds = %start
  store ptr @alloc_3705aa602755f3be9a0919f381aa127f, ptr %_3, align 8, !dbg !3821, !captures !3822
  %27 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 5, ptr %27, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb105:                                            ; preds = %start
  store ptr @alloc_28d4f003a3a8ed43710568c95fe9351a, ptr %_3, align 8, !dbg !3821, !captures !3822
  %28 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 6, ptr %28, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb104:                                            ; preds = %start
  store ptr @alloc_5b80a9cc4738a62be9f7d95c8d597dc7, ptr %_3, align 8, !dbg !3821, !captures !3822
  %29 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 6, ptr %29, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb103:                                            ; preds = %start
  store ptr @alloc_8563ec224e7b49c3c4502731d867c128, ptr %_3, align 8, !dbg !3821, !captures !3822
  %30 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 5, ptr %30, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb102:                                            ; preds = %start
  store ptr @alloc_0c664ef1627eefa7120e5cb745bcf752, ptr %_3, align 8, !dbg !3821, !captures !3822
  %31 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 6, ptr %31, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb101:                                            ; preds = %start
  store ptr @alloc_2881bd0c21bd06bd22ebf60a0f3a2028, ptr %_3, align 8, !dbg !3821, !captures !3822
  %32 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 5, ptr %32, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb100:                                            ; preds = %start
  store ptr @alloc_da0b686a5e1dc859499cae16431f96ae, ptr %_3, align 8, !dbg !3821, !captures !3822
  %33 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 4, ptr %33, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb99:                                             ; preds = %start
  store ptr @alloc_eb59d2b23a3d7b405fe7b10c3a0c3e5a, ptr %_3, align 8, !dbg !3821, !captures !3822
  %34 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 6, ptr %34, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb98:                                             ; preds = %start
  store ptr @alloc_dcb34ae2af2ce66e0e5dcfa999e3beb7, ptr %_3, align 8, !dbg !3821, !captures !3822
  %35 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 7, ptr %35, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb97:                                             ; preds = %start
  store ptr @alloc_de098db79b872822198968bbc383469f, ptr %_3, align 8, !dbg !3821, !captures !3822
  %36 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 12, ptr %36, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb96:                                             ; preds = %start
  store ptr @alloc_721e060f8ee21ebd020f01daad5f2975, ptr %_3, align 8, !dbg !3821, !captures !3822
  %37 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 6, ptr %37, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb95:                                             ; preds = %start
  store ptr @alloc_01c4584c71d29ab89453b0c1dfa9f5c8, ptr %_3, align 8, !dbg !3821, !captures !3822
  %38 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 6, ptr %38, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb94:                                             ; preds = %start
  store ptr @alloc_2603dd6381b9af60034e46608f8f66fc, ptr %_3, align 8, !dbg !3821, !captures !3822
  %39 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 9, ptr %39, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb93:                                             ; preds = %start
  store ptr @alloc_a82e52c8c91e88d90ecebbbba2dd9f9e, ptr %_3, align 8, !dbg !3821, !captures !3822
  %40 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 5, ptr %40, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb92:                                             ; preds = %start
  store ptr @alloc_0526207bb0c9401b11586abdea37a0ec, ptr %_3, align 8, !dbg !3821, !captures !3822
  %41 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 6, ptr %41, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb91:                                             ; preds = %start
  store ptr @alloc_215d33806f4ba809a2b96795d1e7a0e6, ptr %_3, align 8, !dbg !3821, !captures !3822
  %42 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 5, ptr %42, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb90:                                             ; preds = %start
  store ptr @alloc_2939475bfabcad8c50c892fbf318f7dd, ptr %_3, align 8, !dbg !3821, !captures !3822
  %43 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 6, ptr %43, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb89:                                             ; preds = %start
  store ptr @alloc_09d0693eba27d653ddd27e966fb83a8e, ptr %_3, align 8, !dbg !3821, !captures !3822
  %44 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 8, ptr %44, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb88:                                             ; preds = %start
  store ptr @alloc_6f36aa02338841494924dfd8849543f3, ptr %_3, align 8, !dbg !3821, !captures !3822
  %45 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 6, ptr %45, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb87:                                             ; preds = %start
  store ptr @alloc_836b57fdf72146d7a3653eecc17a7200, ptr %_3, align 8, !dbg !3821, !captures !3822
  %46 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 6, ptr %46, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb86:                                             ; preds = %start
  store ptr @alloc_1cb2662dfdef045b8930644c453bf476, ptr %_3, align 8, !dbg !3821, !captures !3822
  %47 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 6, ptr %47, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb85:                                             ; preds = %start
  store ptr @alloc_f334c77768804055ec99d59fda099fb7, ptr %_3, align 8, !dbg !3821, !captures !3822
  %48 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 7, ptr %48, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb84:                                             ; preds = %start
  store ptr @alloc_2bf2316dde628223adb61e3b01869c64, ptr %_3, align 8, !dbg !3821, !captures !3822
  %49 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 6, ptr %49, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb83:                                             ; preds = %start
  store ptr @alloc_89a077ecdcb316fd3d18ea1802da26b1, ptr %_3, align 8, !dbg !3821, !captures !3822
  %50 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 6, ptr %50, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb82:                                             ; preds = %start
  store ptr @alloc_bbd696d7e836174617963e3a3b02c4bf, ptr %_3, align 8, !dbg !3821, !captures !3822
  %51 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 5, ptr %51, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb81:                                             ; preds = %start
  store ptr @alloc_07b7fccd581de4a0f58043714c6bdb75, ptr %_3, align 8, !dbg !3821, !captures !3822
  %52 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 5, ptr %52, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb80:                                             ; preds = %start
  store ptr @alloc_723c4a58a17e4aae450d8d9957b22445, ptr %_3, align 8, !dbg !3821, !captures !3822
  %53 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 6, ptr %53, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb79:                                             ; preds = %start
  store ptr @alloc_0421b2104b61159b448eb1aaf9647256, ptr %_3, align 8, !dbg !3821, !captures !3822
  %54 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 6, ptr %54, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb78:                                             ; preds = %start
  store ptr @alloc_b4f3881bd3b5b5d43bf383cf86c486ed, ptr %_3, align 8, !dbg !3821, !captures !3822
  %55 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 7, ptr %55, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb77:                                             ; preds = %start
  store ptr @alloc_d9e4fde4db3281ab4c591fb20f834248, ptr %_3, align 8, !dbg !3821, !captures !3822
  %56 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 7, ptr %56, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb76:                                             ; preds = %start
  store ptr @alloc_d84eb78f389905ca0230de88458cb696, ptr %_3, align 8, !dbg !3821, !captures !3822
  %57 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 6, ptr %57, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb75:                                             ; preds = %start
  store ptr @alloc_1ce034ba68a18aae701ac601ad36bf22, ptr %_3, align 8, !dbg !3821, !captures !3822
  %58 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 6, ptr %58, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb74:                                             ; preds = %start
  store ptr @alloc_928348b0fb8413d594c672ae38e90e22, ptr %_3, align 8, !dbg !3821, !captures !3822
  %59 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 7, ptr %59, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb73:                                             ; preds = %start
  store ptr @alloc_9b7c24b73a05d66a1cd8ea616dddba58, ptr %_3, align 8, !dbg !3821, !captures !3822
  %60 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 5, ptr %60, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb72:                                             ; preds = %start
  store ptr @alloc_66a462b7da34960c8beaefa60e208b11, ptr %_3, align 8, !dbg !3821, !captures !3822
  %61 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 5, ptr %61, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb71:                                             ; preds = %start
  store ptr @alloc_c36568b4b36c804e4870f1aa6bdf3a2a, ptr %_3, align 8, !dbg !3821, !captures !3822
  %62 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 6, ptr %62, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb70:                                             ; preds = %start
  store ptr @alloc_d9d5c1a3a4aa94c4d1ff7a160571061c, ptr %_3, align 8, !dbg !3821, !captures !3822
  %63 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 6, ptr %63, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb69:                                             ; preds = %start
  store ptr @alloc_494c0a5ba61fbb7071ff748e4f1cb433, ptr %_3, align 8, !dbg !3821, !captures !3822
  %64 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 7, ptr %64, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb68:                                             ; preds = %start
  store ptr @alloc_9e83da2a1cc21915c62f8367c90fdadb, ptr %_3, align 8, !dbg !3821, !captures !3822
  %65 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 7, ptr %65, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb67:                                             ; preds = %start
  store ptr @alloc_28b6884878622fe718b239b613416571, ptr %_3, align 8, !dbg !3821, !captures !3822
  %66 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 4, ptr %66, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb66:                                             ; preds = %start
  store ptr @alloc_4d938c510ebb651e82e8de4564215b72, ptr %_3, align 8, !dbg !3821, !captures !3822
  %67 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 6, ptr %67, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb65:                                             ; preds = %start
  store ptr @alloc_d212a56767d4fb4d6607865d075729f8, ptr %_3, align 8, !dbg !3821, !captures !3822
  %68 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 5, ptr %68, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb64:                                             ; preds = %start
  store ptr @alloc_9b9d5c7403c06c1b1893956c83187e72, ptr %_3, align 8, !dbg !3821, !captures !3822
  %69 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 6, ptr %69, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb63:                                             ; preds = %start
  store ptr @alloc_be948f685de56bf71d50b73745f4ac60, ptr %_3, align 8, !dbg !3821, !captures !3822
  %70 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 9, ptr %70, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb62:                                             ; preds = %start
  store ptr @alloc_a2918dd88cad9f1065c1f1fd760d9807, ptr %_3, align 8, !dbg !3821, !captures !3822
  %71 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 7, ptr %71, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb61:                                             ; preds = %start
  store ptr @alloc_7057157759ac58a04dde0cb410735455, ptr %_3, align 8, !dbg !3821, !captures !3822
  %72 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 7, ptr %72, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb60:                                             ; preds = %start
  store ptr @alloc_85bba4fa26b4bc7d3af483aea8d53610, ptr %_3, align 8, !dbg !3821, !captures !3822
  %73 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 9, ptr %73, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb59:                                             ; preds = %start
  store ptr @alloc_e6dd583da76751037d2f23e77b767378, ptr %_3, align 8, !dbg !3821, !captures !3822
  %74 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 8, ptr %74, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb58:                                             ; preds = %start
  store ptr @alloc_38a3703a08665e1172b160a08c52bf00, ptr %_3, align 8, !dbg !3821, !captures !3822
  %75 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 6, ptr %75, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb57:                                             ; preds = %start
  store ptr @alloc_381a6f34b7bf5b9d95c448026655efd5, ptr %_3, align 8, !dbg !3821, !captures !3822
  %76 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 7, ptr %76, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb56:                                             ; preds = %start
  store ptr @alloc_8d476f9867546e010d6e0f0e9df2f10e, ptr %_3, align 8, !dbg !3821, !captures !3822
  %77 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 7, ptr %77, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb55:                                             ; preds = %start
  store ptr @alloc_8718d28fb95e407cb1b53420fe73995a, ptr %_3, align 8, !dbg !3821, !captures !3822
  %78 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 7, ptr %78, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb54:                                             ; preds = %start
  store ptr @alloc_3f394c18d606ce36f2c50816a4c76e96, ptr %_3, align 8, !dbg !3821, !captures !3822
  %79 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 7, ptr %79, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb53:                                             ; preds = %start
  store ptr @alloc_ad2e799ecd66fe4eb367bf0cfe674da4, ptr %_3, align 8, !dbg !3821, !captures !3822
  %80 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 7, ptr %80, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb52:                                             ; preds = %start
  store ptr @alloc_5eee53aa540bac93f85b20a41c4136bb, ptr %_3, align 8, !dbg !3821, !captures !3822
  %81 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 8, ptr %81, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb51:                                             ; preds = %start
  store ptr @alloc_d8a7f9677534b52f0fedc4e0d3ac4a7f, ptr %_3, align 8, !dbg !3821, !captures !3822
  %82 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 6, ptr %82, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb50:                                             ; preds = %start
  store ptr @alloc_5fbe7d2a6eb0974b5d6b9277c8ff292d, ptr %_3, align 8, !dbg !3821, !captures !3822
  %83 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 8, ptr %83, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb49:                                             ; preds = %start
  store ptr @alloc_68ce7b92a59f96b9e4b322d0015566d5, ptr %_3, align 8, !dbg !3821, !captures !3822
  %84 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 8, ptr %84, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb48:                                             ; preds = %start
  store ptr @alloc_675bba484e0ec186c533a4bd41bdb2c4, ptr %_3, align 8, !dbg !3821, !captures !3822
  %85 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 6, ptr %85, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb47:                                             ; preds = %start
  store ptr @alloc_86885d2f78b482de79d4322d24e4c411, ptr %_3, align 8, !dbg !3821, !captures !3822
  %86 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 8, ptr %86, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb46:                                             ; preds = %start
  store ptr @alloc_2b516ee3757c032d8fcaaab47bdc82fc, ptr %_3, align 8, !dbg !3821, !captures !3822
  %87 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 12, ptr %87, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb45:                                             ; preds = %start
  store ptr @alloc_d1f02fa34d04bd4b912c0c8e2b5b9de6, ptr %_3, align 8, !dbg !3821, !captures !3822
  %88 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 8, ptr %88, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb44:                                             ; preds = %start
  store ptr @alloc_800983b72099bfc3abf962370abe5459, ptr %_3, align 8, !dbg !3821, !captures !3822
  %89 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 10, ptr %89, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb43:                                             ; preds = %start
  store ptr @alloc_32a5aa9c39e874a9077e926b86087f67, ptr %_3, align 8, !dbg !3821, !captures !3822
  %90 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 11, ptr %90, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb42:                                             ; preds = %start
  store ptr @alloc_47506649da77a5b57506dead306e2262, ptr %_3, align 8, !dbg !3821, !captures !3822
  %91 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 15, ptr %91, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb41:                                             ; preds = %start
  store ptr @alloc_9351c29bf6440ce6cc1d1845b5b2239a, ptr %_3, align 8, !dbg !3821, !captures !3822
  %92 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 15, ptr %92, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb40:                                             ; preds = %start
  store ptr @alloc_9b01972f1876c57567e9f91eaeac11c0, ptr %_3, align 8, !dbg !3821, !captures !3822
  %93 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 10, ptr %93, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb39:                                             ; preds = %start
  store ptr @alloc_23a2b5b2e50f58b3b2ee5f4e3e9e2963, ptr %_3, align 8, !dbg !3821, !captures !3822
  %94 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 12, ptr %94, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb38:                                             ; preds = %start
  store ptr @alloc_3332711b35cc115dd6e0ea31d9faf09d, ptr %_3, align 8, !dbg !3821, !captures !3822
  %95 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 12, ptr %95, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb37:                                             ; preds = %start
  store ptr @alloc_fbca4e93830943a32db7f0544291d7aa, ptr %_3, align 8, !dbg !3821, !captures !3822
  %96 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 10, ptr %96, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb36:                                             ; preds = %start
  store ptr @alloc_dbca276093c054d8ae582acdce89067e, ptr %_3, align 8, !dbg !3821, !captures !3822
  %97 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 13, ptr %97, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb35:                                             ; preds = %start
  store ptr @alloc_f2c3b2cac51e42fd971a324253febb13, ptr %_3, align 8, !dbg !3821, !captures !3822
  %98 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 8, ptr %98, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb34:                                             ; preds = %start
  store ptr @alloc_5a2b78f7503004628f810781f9490c94, ptr %_3, align 8, !dbg !3821, !captures !3822
  %99 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 11, ptr %99, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb33:                                             ; preds = %start
  store ptr @alloc_9de36250f4a87fd97880c81cbf713309, ptr %_3, align 8, !dbg !3821, !captures !3822
  %100 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 9, ptr %100, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb32:                                             ; preds = %start
  store ptr @alloc_bb6002a14cc221cb091a29878e9508a5, ptr %_3, align 8, !dbg !3821, !captures !3822
  %101 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 12, ptr %101, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb31:                                             ; preds = %start
  store ptr @alloc_69e47bc266bacc5206a88f9fadcf9ec6, ptr %_3, align 8, !dbg !3821, !captures !3822
  %102 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 10, ptr %102, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb30:                                             ; preds = %start
  store ptr @alloc_34dc7edf149271d5a5b67eaf70023d0e, ptr %_3, align 8, !dbg !3821, !captures !3822
  %103 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 7, ptr %103, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb29:                                             ; preds = %start
  store ptr @alloc_faae74309a203211323bc3327eb25264, ptr %_3, align 8, !dbg !3821, !captures !3822
  %104 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 7, ptr %104, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb28:                                             ; preds = %start
  store ptr @alloc_c5d8dae1133a9087a76df87c2d5ed81a, ptr %_3, align 8, !dbg !3821, !captures !3822
  %105 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 8, ptr %105, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb27:                                             ; preds = %start
  store ptr @alloc_4df2654afb1bc82031beadd281a36d0d, ptr %_3, align 8, !dbg !3821, !captures !3822
  %106 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 9, ptr %106, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb26:                                             ; preds = %start
  store ptr @alloc_978ec0cb1924f1237f42007a79c519c4, ptr %_3, align 8, !dbg !3821, !captures !3822
  %107 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 12, ptr %107, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb25:                                             ; preds = %start
  store ptr @alloc_084da7b8bb6c075ce42a1d77b6c995ee, ptr %_3, align 8, !dbg !3821, !captures !3822
  %108 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 9, ptr %108, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb24:                                             ; preds = %start
  store ptr @alloc_44e924003e74a16bc4fbdc8f7c4d0473, ptr %_3, align 8, !dbg !3821, !captures !3822
  %109 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 12, ptr %109, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb23:                                             ; preds = %start
  store ptr @alloc_7abef68a189e3a7227af6f45c9ababfb, ptr %_3, align 8, !dbg !3821, !captures !3822
  %110 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 9, ptr %110, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb22:                                             ; preds = %start
  store ptr @alloc_6b19a2f72bfad61fe889042e59b4f67f, ptr %_3, align 8, !dbg !3821, !captures !3822
  %111 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 12, ptr %111, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb21:                                             ; preds = %start
  store ptr @alloc_e2e0883fc1e4f0559ab4d2d7111e2922, ptr %_3, align 8, !dbg !3821, !captures !3822
  %112 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 8, ptr %112, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb20:                                             ; preds = %start
  store ptr @alloc_cf2d0d2856a8dd5bfcf40afd2d7b76e0, ptr %_3, align 8, !dbg !3821, !captures !3822
  %113 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 11, ptr %113, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb19:                                             ; preds = %start
  store ptr @alloc_4ab5a989f2022623ea1da48703f7f0bd, ptr %_3, align 8, !dbg !3821, !captures !3822
  %114 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 6, ptr %114, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb18:                                             ; preds = %start
  store ptr @alloc_e4648413a87fcbab95e9f4571686a68d, ptr %_3, align 8, !dbg !3821, !captures !3822
  %115 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 7, ptr %115, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb17:                                             ; preds = %start
  store ptr @alloc_2154a05f30b5c4831200572c2d3dab30, ptr %_3, align 8, !dbg !3821, !captures !3822
  %116 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 7, ptr %116, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb16:                                             ; preds = %start
  store ptr @alloc_3e93dee092649f36ef58758f59c00094, ptr %_3, align 8, !dbg !3821, !captures !3822
  %117 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 7, ptr %117, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb15:                                             ; preds = %start
  store ptr @alloc_4a73cf61ecdfb06b8e4a08adceebcfe7, ptr %_3, align 8, !dbg !3821, !captures !3822
  %118 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 6, ptr %118, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb14:                                             ; preds = %start
  store ptr @alloc_3d31068ff3e390fedfff0f812b0758d5, ptr %_3, align 8, !dbg !3821, !captures !3822
  %119 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 9, ptr %119, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb13:                                             ; preds = %start
  store ptr @alloc_a841989f0908480b181ad0c5abcfd68e, ptr %_3, align 8, !dbg !3821, !captures !3822
  %120 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 6, ptr %120, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb12:                                             ; preds = %start
  store ptr @alloc_f92d97beb29ce5b2fada37971b57fbb2, ptr %_3, align 8, !dbg !3821, !captures !3822
  %121 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 9, ptr %121, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb11:                                             ; preds = %start
  store ptr @alloc_ce81fb960d0bc24749fb6d08ce7d6eaf, ptr %_3, align 8, !dbg !3821, !captures !3822
  %122 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 11, ptr %122, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb10:                                             ; preds = %start
  store ptr @alloc_0d44e7c346ed8b0c54abae600d17883f, ptr %_3, align 8, !dbg !3821, !captures !3822
  %123 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 9, ptr %123, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb9:                                              ; preds = %start
  store ptr @alloc_306701eddbce58119b3b452468e93bce, ptr %_3, align 8, !dbg !3821, !captures !3822
  %124 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 6, ptr %124, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb8:                                              ; preds = %start
  store ptr @alloc_f1d202c0b4fc106d9cff99e09505e2ad, ptr %_3, align 8, !dbg !3821, !captures !3822
  %125 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 11, ptr %125, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb7:                                              ; preds = %start
  store ptr @alloc_ad94dce71dc3943f9a9c4e3d5270371b, ptr %_3, align 8, !dbg !3821, !captures !3822
  %126 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 11, ptr %126, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb6:                                              ; preds = %start
  store ptr @alloc_1685b860d57c20a4bb2090aa8ec3d72f, ptr %_3, align 8, !dbg !3821, !captures !3822
  %127 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 12, ptr %127, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb5:                                              ; preds = %start
  store ptr @alloc_e97612422e606a267463c474940daaaf, ptr %_3, align 8, !dbg !3821, !captures !3822
  %128 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 10, ptr %128, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb4:                                              ; preds = %start
  store ptr @alloc_38d47c498611f94c9b77481a9521b50b, ptr %_3, align 8, !dbg !3821, !captures !3822
  %129 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 15, ptr %129, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb3:                                              ; preds = %start
  store ptr @alloc_b2966257a8ddc16adc71767cf5355c0b, ptr %_3, align 8, !dbg !3821, !captures !3822
  %130 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 7, ptr %130, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb2:                                              ; preds = %start
  store ptr @alloc_eeeec90dba29775bdab7e5d8b2cb0355, ptr %_3, align 8, !dbg !3821, !captures !3822
  %131 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  store i64 9, ptr %131, align 8, !dbg !3821
  br label %bb134, !dbg !3823

bb134:                                            ; preds = %bb2, %bb3, %bb4, %bb5, %bb6, %bb7, %bb8, %bb9, %bb10, %bb11, %bb12, %bb13, %bb14, %bb15, %bb16, %bb17, %bb18, %bb19, %bb20, %bb21, %bb22, %bb23, %bb24, %bb25, %bb26, %bb27, %bb28, %bb29, %bb30, %bb31, %bb32, %bb33, %bb34, %bb35, %bb36, %bb37, %bb38, %bb39, %bb40, %bb41, %bb42, %bb43, %bb44, %bb45, %bb46, %bb47, %bb48, %bb49, %bb50, %bb51, %bb52, %bb53, %bb54, %bb55, %bb56, %bb57, %bb58, %bb59, %bb60, %bb61, %bb62, %bb63, %bb64, %bb65, %bb66, %bb67, %bb68, %bb69, %bb70, %bb71, %bb72, %bb73, %bb74, %bb75, %bb76, %bb77, %bb78, %bb79, %bb80, %bb81, %bb82, %bb83, %bb84, %bb85, %bb86, %bb87, %bb88, %bb89, %bb90, %bb91, %bb92, %bb93, %bb94, %bb95, %bb96, %bb97, %bb98, %bb99, %bb100, %bb101, %bb102, %bb103, %bb104, %bb105, %bb106, %bb107, %bb108, %bb109, %bb110, %bb111, %bb112, %bb113, %bb114, %bb115, %bb116, %bb117, %bb118, %bb119, %bb120, %bb121, %bb122, %bb123, %bb124, %bb125, %bb126, %bb127, %bb128, %bb129, %bb130, %bb131, %bb132, %bb133
  %132 = load ptr, ptr %_3, align 8, !dbg !3821
  %133 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3821
  %134 = load i64, ptr %133, align 8, !dbg !3821
; call <core::fmt::Formatter>::write_str
  %_0 = call zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %f, ptr %132, i64 %134), !dbg !3821
  ret i1 %_0, !dbg !3824
}

; <std::ffi::os_str::OsString as core::clone::Clone>::clone
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXs6_NtNtCs9k3SxhrAWiO_3std3ffi6os_strNtB5_8OsStringNtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCscBbfQkuq0VR_6expand(ptr sret([24 x i8]) align 8 %_0, ptr align 8 %self) unnamed_addr #1 !dbg !3825 {
start:
  %self.dbg.spill = alloca [8 x i8], align 8
  %_4 = alloca [24 x i8], align 8
  %_2 = alloca [24 x i8], align 8
  store ptr %self, ptr %self.dbg.spill, align 8
    #dbg_declare(ptr %self.dbg.spill, !3829, !DIExpression(), !3830)
    #dbg_value(ptr %self, !3831, !DIExpression(), !3839)
; call <alloc::vec::Vec<u8> as core::clone::Clone>::clone
  call void @_RNvXsa_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCs4VqSFjx4n5U_12clap_builder(ptr sret([24 x i8]) align 8 %_4, ptr align 8 %self), !dbg !3841
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_2, ptr align 8 %_4, i64 24, i1 false), !dbg !3842
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %_2, i64 24, i1 false), !dbg !3843
  ret void, !dbg !3844
}

; <() as std::process::Termination>::report
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8 @_RNvXsU_NtCs9k3SxhrAWiO_3std7processuNtB5_11Termination6reportCscBbfQkuq0VR_6expand() unnamed_addr #1 !dbg !3845 {
start:
  %_1.dbg.spill = alloca [0 x i8], align 1
    #dbg_declare(ptr %_1.dbg.spill, !3850, !DIExpression(), !3851)
  ret i8 0, !dbg !3852
}

; <alloc::vec::Vec<std::ffi::os_str::OsString> as alloc::vec::spec_extend::SpecExtend<std::ffi::os_str::OsString, core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>>::spec_extend
; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs_NtNtCs6i54tJFfzR_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringEINtB4_10SpecExtendBS_INtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters6cloned6ClonedINtNtNtB25_5slice4iter4IterBS_EEE11spec_extendCscBbfQkuq0VR_6expand(ptr align 8 %self, ptr %iterator.0, ptr %iterator.1) unnamed_addr #0 !dbg !3853 {
start:
  %iterator.dbg.spill = alloca [16 x i8], align 8
  %self.dbg.spill = alloca [8 x i8], align 8
  store ptr %self, ptr %self.dbg.spill, align 8
    #dbg_declare(ptr %self.dbg.spill, !3858, !DIExpression(), !3861)
  store ptr %iterator.0, ptr %iterator.dbg.spill, align 8
  %0 = getelementptr inbounds i8, ptr %iterator.dbg.spill, i64 8
  store ptr %iterator.1, ptr %0, align 8
    #dbg_declare(ptr %iterator.dbg.spill, !3859, !DIExpression(), !3862)
; call <alloc::vec::Vec<std::ffi::os_str::OsString>>::extend_trusted::<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>
  call void @_RINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB6_3VecNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringE14extend_trustedINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters6cloned6ClonedINtNtNtB1N_5slice4iter4IterBF_EEECscBbfQkuq0VR_6expand(ptr align 8 %self, ptr %iterator.0, ptr %iterator.1), !dbg !3863
  ret void, !dbg !3864
}

; <alloc::vec::Vec<std::ffi::os_str::OsString> as alloc::vec::spec_from_iter_nested::SpecFromIterNested<std::ffi::os_str::OsString, core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>>::from_iter
; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs_NtNtCs6i54tJFfzR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringEINtB4_18SpecFromIterNestedB12_INtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters6cloned6ClonedINtNtNtB2o_5slice4iter4IterB12_EEE9from_iterCscBbfQkuq0VR_6expand(ptr sret([24 x i8]) align 8 %_0, ptr %0, ptr %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3865 {
start:
  %s.dbg.spill = alloca [16 x i8], align 8
  %upper.dbg.spill = alloca [8 x i8], align 8
  %2 = alloca [16 x i8], align 8
  %alloc.dbg.spill1 = alloca [0 x i8], align 1
  %alloc.dbg.spill = alloca [0 x i8], align 1
  %_12 = alloca [1 x i8], align 1
  %_3 = alloca [24 x i8], align 8
  %vector = alloca [24 x i8], align 8
  %iterator = alloca [16 x i8], align 8
  store ptr %0, ptr %iterator, align 8
  %3 = getelementptr inbounds i8, ptr %iterator, i64 8
  store ptr %1, ptr %3, align 8
    #dbg_declare(ptr %iterator, !3870, !DIExpression(), !3875)
    #dbg_declare(ptr %vector, !3871, !DIExpression(), !3876)
    #dbg_declare(ptr %alloc.dbg.spill, !3877, !DIExpression(), !3884)
    #dbg_declare(ptr %alloc.dbg.spill1, !3893, !DIExpression(), !3900)
  store i8 1, ptr %_12, align 1, !dbg !3902
; invoke <core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>> as core::iter::traits::iterator::Iterator>::size_hint
  invoke void @_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator9size_hintCscBbfQkuq0VR_6expand(ptr sret([24 x i8]) align 8 %_3, ptr align 8 %iterator)
          to label %bb1 unwind label %cleanup, !dbg !3903

bb8:                                              ; preds = %bb5, %cleanup
  %4 = load i8, ptr %_12, align 1, !dbg !3904
  %5 = trunc nuw i8 %4 to i1, !dbg !3904
  br i1 %5, label %bb7, label %bb6, !dbg !3904

cleanup:                                          ; preds = %bb2, %bb3, %start
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %6, 0
  %8 = extractvalue { ptr, i32 } %6, 1
  store ptr %7, ptr %2, align 8
  %9 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 %8, ptr %9, align 8
  br label %bb8

bb1:                                              ; preds = %start
  %10 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3905
  %_5 = load i64, ptr %10, align 8, !dbg !3905
  %11 = getelementptr inbounds i8, ptr %10, i64 8, !dbg !3905
  %12 = load i64, ptr %11, align 8, !dbg !3905
  %13 = trunc nuw i64 %_5 to i1, !dbg !3906
  br i1 %13, label %bb3, label %bb2, !dbg !3906

bb3:                                              ; preds = %bb1
  %14 = getelementptr inbounds i8, ptr %_3, i64 8, !dbg !3907
  %15 = getelementptr inbounds i8, ptr %14, i64 8, !dbg !3907
  %upper = load i64, ptr %15, align 8, !dbg !3907
  store i64 %upper, ptr %upper.dbg.spill, align 8, !dbg !3907
    #dbg_declare(ptr %upper.dbg.spill, !3873, !DIExpression(), !3908)
    #dbg_declare(ptr %upper.dbg.spill, !3891, !DIExpression(), !3909)
    #dbg_declare(ptr %upper.dbg.spill, !3883, !DIExpression(), !3910)
    #dbg_declare(ptr %upper.dbg.spill, !3899, !DIExpression(), !3911)
; invoke <alloc::raw_vec::RawVecInner>::with_capacity_in
  %16 = invoke { i64, ptr } @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2R7k9gklnyT_8bitflags(i64 %upper, i64 8, i64 24)
          to label %bb9 unwind label %cleanup, !dbg !3912

bb2:                                              ; preds = %bb1
  store ptr @alloc_31365cfefba383c4d2bf6b6a04cc10aa, ptr %s.dbg.spill, align 8, !dbg !3913
  %17 = getelementptr inbounds i8, ptr %s.dbg.spill, i64 8, !dbg !3913
  store i64 17, ptr %17, align 8, !dbg !3913
    #dbg_declare(ptr %s.dbg.spill, !3914, !DIExpression(), !3917)
    #dbg_declare(ptr %s.dbg.spill, !3918, !DIExpression(), !3921)
    #dbg_declare(ptr %s.dbg.spill, !3923, !DIExpression(), !3926)
    #dbg_declare(ptr %s.dbg.spill, !3928, !DIExpression(), !3931)
; invoke core::panicking::panic_fmt
  invoke void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr @alloc_31365cfefba383c4d2bf6b6a04cc10aa, ptr inttoptr (i64 35 to ptr), ptr align 8 @alloc_da372945ea341f010b71d5a35198045a) #18
          to label %unreachable unwind label %cleanup, !dbg !3913

bb9:                                              ; preds = %bb3
  %_23.0 = extractvalue { i64, ptr } %16, 0, !dbg !3912
  %_23.1 = extractvalue { i64, ptr } %16, 1, !dbg !3912
  store i64 %_23.0, ptr %vector, align 8, !dbg !3933
  %18 = getelementptr inbounds i8, ptr %vector, i64 8, !dbg !3933
  store ptr %_23.1, ptr %18, align 8, !dbg !3933
  %19 = getelementptr inbounds i8, ptr %vector, i64 16, !dbg !3933
  store i64 0, ptr %19, align 8, !dbg !3933
  store i8 0, ptr %_12, align 1, !dbg !3934
  %_11.0 = load ptr, ptr %iterator, align 8, !dbg !3934
  %20 = getelementptr inbounds i8, ptr %iterator, i64 8, !dbg !3934
  %_11.1 = load ptr, ptr %20, align 8, !dbg !3934
; invoke <alloc::vec::Vec<std::ffi::os_str::OsString> as alloc::vec::spec_extend::SpecExtend<std::ffi::os_str::OsString, core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>>::spec_extend
  invoke void @_RNvXs_NtNtCs6i54tJFfzR_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringEINtB4_10SpecExtendBS_INtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters6cloned6ClonedINtNtNtB25_5slice4iter4IterBS_EEE11spec_extendCscBbfQkuq0VR_6expand(ptr align 8 %vector, ptr %_11.0, ptr %_11.1)
          to label %bb4 unwind label %cleanup2, !dbg !3935

bb5:                                              ; preds = %cleanup2
; invoke core::ptr::drop_glue::<alloc::vec::Vec<std::ffi::os_str::OsString>>
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringEECsfDOkK3ZKZlf_8clap_lex(ptr align 8 %vector) #15
          to label %bb8 unwind label %terminate, !dbg !3904

cleanup2:                                         ; preds = %bb9
  %21 = landingpad { ptr, i32 }
          cleanup
  %22 = extractvalue { ptr, i32 } %21, 0
  %23 = extractvalue { ptr, i32 } %21, 1
  store ptr %22, ptr %2, align 8
  %24 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 %23, ptr %24, align 8
  br label %bb5

bb4:                                              ; preds = %bb9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %vector, i64 24, i1 false), !dbg !3936
  ret void, !dbg !3937

terminate:                                        ; preds = %bb5
  %25 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !dbg !3938
  unreachable, !dbg !3938

unreachable:                                      ; preds = %bb2
  unreachable

bb10:                                             ; No predecessors!
  unreachable, !dbg !3938

bb6:                                              ; preds = %bb7, %bb8
  %26 = load ptr, ptr %2, align 8, !dbg !3938
  %27 = getelementptr inbounds i8, ptr %2, i64 8, !dbg !3938
  %28 = load i32, ptr %27, align 8, !dbg !3938
  %29 = insertvalue { ptr, i32 } poison, ptr %26, 0, !dbg !3938
  %30 = insertvalue { ptr, i32 } %29, i32 %28, 1, !dbg !3938
  resume { ptr, i32 } %30, !dbg !3938

bb7:                                              ; preds = %bb8
  br label %bb6, !dbg !3904
}

; <fluent_syntax::parser::errors::ParserError as core::fmt::Debug>::fmt
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @_RNvXs_NtNtCslPRUPRFQ4qs_13fluent_syntax6parser6errorsNtB4_11ParserErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmtCscBbfQkuq0VR_6expand(ptr align 8 %self, ptr align 8 %f) unnamed_addr #1 !dbg !3939 {
start:
  %f.dbg.spill = alloca [8 x i8], align 8
  %self.dbg.spill = alloca [8 x i8], align 8
  %_13 = alloca [8 x i8], align 8
  store ptr %self, ptr %self.dbg.spill, align 8
    #dbg_declare(ptr %self.dbg.spill, !3945, !DIExpression(), !3947)
  store ptr %f, ptr %f.dbg.spill, align 8
    #dbg_declare(ptr %f.dbg.spill, !3946, !DIExpression(), !3947)
  %_6 = getelementptr inbounds i8, ptr %self, i64 56, !dbg !3948
  %0 = getelementptr inbounds i8, ptr %self, i64 24, !dbg !3949
  store ptr %0, ptr %_13, align 8, !dbg !3949
; call <core::fmt::Formatter>::debug_struct_field3_finish
  %_0 = call zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr align 8 %f, ptr @alloc_f4f5988531868cd6169889b01a37a1ba, i64 11, ptr @alloc_d79363f408f2817cdc0fb43a73db1a17, i64 3, ptr %_6, ptr align 8 @vtable.5, ptr @alloc_f72492f89243c435f04e31021c737d8a, i64 5, ptr %self, ptr align 8 @vtable.6, ptr @alloc_a5d866b1768ad3f826bccdb004a1a8ae, i64 4, ptr %_13, ptr align 8 @vtable.7), !dbg !3947
  ret i1 %_0, !dbg !3950
}

; <core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>> as core::iter::traits::iterator::Iterator>::size_hint
; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator9size_hintCscBbfQkuq0VR_6expand(ptr sret([24 x i8]) align 8 %_0, ptr align 8 %self) unnamed_addr #0 !dbg !3951 {
start:
  %self.dbg.spill = alloca [8 x i8], align 8
  store ptr %self, ptr %self.dbg.spill, align 8
    #dbg_declare(ptr %self.dbg.spill, !3956, !DIExpression(), !3958)
; call <core::slice::iter::Iter<std::ffi::os_str::OsString> as core::iter::traits::iterator::Iterator>::size_hint
  call void @_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs4VqSFjx4n5U_12clap_builder(ptr sret([24 x i8]) align 8 %_0, ptr align 8 %self) #17, !dbg !3959
  ret void, !dbg !3960
}

; <core::result::Result<uu_expand::Options, uu_expand::ParseError> as core::ops::try_trait::Try>::branch
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXsp_NtCsgxBkk5gSRhY_4core6resultINtB5_6ResultNtCs9xOv1NcnHfv_9uu_expand7OptionsNtBM_10ParseErrorENtNtNtB7_3ops9try_trait3Try6branchCscBbfQkuq0VR_6expand(ptr sret([56 x i8]) align 8 %_0, ptr align 8 %self) unnamed_addr #1 !dbg !3961 {
start:
  %_5 = alloca [48 x i8], align 8
  %e = alloca [48 x i8], align 8
  %v = alloca [56 x i8], align 8
    #dbg_declare(ptr %self, !3995, !DIExpression(), !4000)
    #dbg_declare(ptr %v, !3996, !DIExpression(), !4001)
    #dbg_declare(ptr %e, !3998, !DIExpression(), !4002)
  %0 = load i64, ptr %self, align 8, !dbg !4003
  %1 = icmp eq i64 %0, -1, !dbg !4003
  %_2 = select i1 %1, i64 1, i64 0, !dbg !4003
  %2 = trunc nuw i64 %_2 to i1, !dbg !4004
  br i1 %2, label %bb2, label %bb3, !dbg !4004

bb2:                                              ; preds = %start
  %3 = getelementptr inbounds i8, ptr %self, i64 8, !dbg !4005
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %e, ptr align 8 %3, i64 48, i1 false), !dbg !4005
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_5, ptr align 8 %e, i64 48, i1 false), !dbg !4006
  %4 = getelementptr inbounds i8, ptr %_0, i64 8, !dbg !4007
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %_5, i64 48, i1 false), !dbg !4007
  store i64 -1, ptr %_0, align 8, !dbg !4007
  br label %bb4, !dbg !4008

bb3:                                              ; preds = %start
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %v, ptr align 8 %self, i64 56, i1 false), !dbg !4009
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %v, i64 56, i1 false), !dbg !4010
  br label %bb4, !dbg !4011

bb4:                                              ; preds = %bb2, %bb3
  ret void, !dbg !4012

bb1:                                              ; No predecessors!
  unreachable, !dbg !4003
}

; <core::result::Result<(), alloc::boxed::Box<dyn uucore::mods::error::UError>> as core::ops::try_trait::FromResidual<core::result::Result<core::convert::Infallible, uu_expand::ParseError>>>::from_residual
; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RNvXsq_NtCsgxBkk5gSRhY_4core6resultINtB5_6ResultuINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtCs1iFJFqccjfm_6uucore4mods5error6UErrorEL_EEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtCs9xOv1NcnHfv_9uu_expand10ParseErrorEE13from_residualCscBbfQkuq0VR_6expand(ptr align 8 %residual, ptr align 8 %0) unnamed_addr #1 !dbg !4013 {
start:
  %e = alloca [48 x i8], align 8
    #dbg_declare(ptr %residual, !4017, !DIExpression(), !4022)
    #dbg_declare(ptr %e, !4018, !DIExpression(), !4023)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %e, ptr align 8 %residual, i64 48, i1 false), !dbg !4024
; call <alloc::boxed::Box<dyn uucore::mods::error::UError> as core::convert::From<uu_expand::ParseError>>::from
  %1 = call { ptr, ptr } @_RNvXNtNtCs1iFJFqccjfm_6uucore4mods5errorINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtB2_6UErrorEL_EINtNtCsgxBkk5gSRhY_4core7convert4FromNtCs9xOv1NcnHfv_9uu_expand10ParseErrorE4fromCscBbfQkuq0VR_6expand(ptr align 8 %e), !dbg !4025
  %_4.0 = extractvalue { ptr, ptr } %1, 0, !dbg !4025
  %_4.1 = extractvalue { ptr, ptr } %1, 1, !dbg !4025
  %2 = insertvalue { ptr, ptr } poison, ptr %_4.0, 0, !dbg !4026
  %3 = insertvalue { ptr, ptr } %2, ptr %_4.1, 1, !dbg !4026
  ret { ptr, ptr } %3, !dbg !4026
}

; <alloc::string::String as core::fmt::Debug>::fmt
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @_RNvXsr_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmtCscBbfQkuq0VR_6expand(ptr align 8 %self, ptr align 8 %f) unnamed_addr #1 !dbg !4027 {
start:
  %f.dbg.spill = alloca [8 x i8], align 8
  %self.dbg.spill = alloca [8 x i8], align 8
  store ptr %self, ptr %self.dbg.spill, align 8
    #dbg_declare(ptr %self.dbg.spill, !4032, !DIExpression(), !4034)
    #dbg_declare(ptr %self.dbg.spill, !4035, !DIExpression(), !4039)
    #dbg_declare(ptr %self.dbg.spill, !4041, !DIExpression(), !4044)
  store ptr %f, ptr %f.dbg.spill, align 8
    #dbg_declare(ptr %f.dbg.spill, !4033, !DIExpression(), !4046)
  %0 = getelementptr inbounds i8, ptr %self, i64 8, !dbg !4047
  %_8 = load ptr, ptr %0, align 8, !dbg !4047
  %1 = getelementptr inbounds i8, ptr %self, i64 16, !dbg !4058
  %_7 = load i64, ptr %1, align 8, !dbg !4058
; call <str as core::fmt::Debug>::fmt
  %_0 = call zeroext i1 @_RNvXsh_NtCsgxBkk5gSRhY_4core3fmteNtB5_5Debug3fmt(ptr %_8, i64 %_7, ptr align 8 %f), !dbg !4059
  ret i1 %_0, !dbg !4060
}

; <fn() as core::ops::function::FnOnce<()>>::call_once
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYFEuINtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceuE9call_onceCscBbfQkuq0VR_6expand(ptr %_1) unnamed_addr #1 !dbg !4061 {
start:
  %_1.dbg.spill = alloca [8 x i8], align 8
  %_2 = alloca [0 x i8], align 1
  store ptr %_1, ptr %_1.dbg.spill, align 8
    #dbg_declare(ptr %_1.dbg.spill, !4063, !DIExpression(), !4067)
    #dbg_declare(ptr %_2, !4064, !DIExpression(), !4067)
  call void %_1(), !dbg !4067
  ret void, !dbg !4067
}

; <std::rt::lang_start<()>::{closure#0} as core::ops::function::FnOnce<()>>::call_once
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_RNvYNCINvNtCs9k3SxhrAWiO_3std2rt10lang_startuE0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceuE9call_onceCscBbfQkuq0VR_6expand(ptr %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !4068 {
start:
  %1 = alloca [16 x i8], align 8
  %_2 = alloca [0 x i8], align 1
  %_1 = alloca [8 x i8], align 8
  store ptr %0, ptr %_1, align 8
    #dbg_declare(ptr %_1, !4072, !DIExpression(), !4074)
    #dbg_declare(ptr %_2, !4073, !DIExpression(), !4074)
; invoke std::rt::lang_start::<()>::{closure#0}
  %_0 = invoke i32 @_RNCINvNtCs9k3SxhrAWiO_3std2rt10lang_startuE0CscBbfQkuq0VR_6expand(ptr align 8 %_1)
          to label %bb1 unwind label %cleanup, !dbg !4074

bb3:                                              ; preds = %cleanup
  %2 = load ptr, ptr %1, align 8, !dbg !4074
  %3 = getelementptr inbounds i8, ptr %1, i64 8, !dbg !4074
  %4 = load i32, ptr %3, align 8, !dbg !4074
  %5 = insertvalue { ptr, i32 } poison, ptr %2, 0, !dbg !4074
  %6 = insertvalue { ptr, i32 } %5, i32 %4, 1, !dbg !4074
  resume { ptr, i32 } %6, !dbg !4074

cleanup:                                          ; preds = %start
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %1, align 8
  %10 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb3

bb1:                                              ; preds = %start
  ret i32 %_0, !dbg !4074
}

; <uu_expand::ParseError as core::error::Error>::description
; Function Attrs: nonlazybind uwtable
define internal { ptr, i64 } @_RNvYNtCs9xOv1NcnHfv_9uu_expand10ParseErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCscBbfQkuq0VR_6expand(ptr align 8 %self) unnamed_addr #0 !dbg !4075 {
start:
  %self.dbg.spill = alloca [8 x i8], align 8
  store ptr %self, ptr %self.dbg.spill, align 8
    #dbg_declare(ptr %self.dbg.spill, !4082, !DIExpression(), !4085)
  ret { ptr, i64 } { ptr @alloc_04d7ce44d7c86a9a02b346ab945bf155, i64 40 }, !dbg !4086
}

; <uu_expand::ParseError as core::error::Error>::cause
; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYNtCs9xOv1NcnHfv_9uu_expand10ParseErrorNtNtCsgxBkk5gSRhY_4core5error5Error5causeCscBbfQkuq0VR_6expand(ptr align 8 %self) unnamed_addr #0 !dbg !4087 {
start:
  %self.dbg.spill = alloca [8 x i8], align 8
  store ptr %self, ptr %self.dbg.spill, align 8
    #dbg_declare(ptr %self.dbg.spill, !4110, !DIExpression(), !4111)
; call <uu_expand::ParseError as core::error::Error>::source
  %0 = call { ptr, ptr } @_RNvYNtCs9xOv1NcnHfv_9uu_expand10ParseErrorNtNtCsgxBkk5gSRhY_4core5error5Error6sourceCscBbfQkuq0VR_6expand(ptr align 8 %self), !dbg !4112
  %_0.0 = extractvalue { ptr, ptr } %0, 0, !dbg !4112
  %_0.1 = extractvalue { ptr, ptr } %0, 1, !dbg !4112
  %1 = insertvalue { ptr, ptr } poison, ptr %_0.0, 0, !dbg !4113
  %2 = insertvalue { ptr, ptr } %1, ptr %_0.1, 1, !dbg !4113
  ret { ptr, ptr } %2, !dbg !4113
}

; <uu_expand::ParseError as core::error::Error>::source
; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYNtCs9xOv1NcnHfv_9uu_expand10ParseErrorNtNtCsgxBkk5gSRhY_4core5error5Error6sourceCscBbfQkuq0VR_6expand(ptr align 8 %self) unnamed_addr #0 !dbg !4114 {
start:
  %self.dbg.spill = alloca [8 x i8], align 8
  store ptr %self, ptr %self.dbg.spill, align 8
    #dbg_declare(ptr %self.dbg.spill, !4116, !DIExpression(), !4117)
  %_0.0 = load ptr, ptr @anon.81badeeee7240c06f676740fb2a52a16.0, align 8, !dbg !4118
  %_0.1 = load ptr, ptr getelementptr inbounds (i8, ptr @anon.81badeeee7240c06f676740fb2a52a16.0, i64 8), align 8, !dbg !4118
  %0 = insertvalue { ptr, ptr } poison, ptr %_0.0, 0, !dbg !4119
  %1 = insertvalue { ptr, ptr } %0, ptr %_0.1, 1, !dbg !4119
  ret { ptr, ptr } %1, !dbg !4119
}

; <uu_expand::ParseError as core::error::Error>::provide
; Function Attrs: nonlazybind uwtable
define internal void @_RNvYNtCs9xOv1NcnHfv_9uu_expand10ParseErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideCscBbfQkuq0VR_6expand(ptr align 8 %self, ptr align 8 %request.0, ptr align 8 %request.1) unnamed_addr #0 !dbg !4120 {
start:
  %request.dbg.spill = alloca [16 x i8], align 8
  %self.dbg.spill = alloca [8 x i8], align 8
  store ptr %self, ptr %self.dbg.spill, align 8
    #dbg_declare(ptr %self.dbg.spill, !4143, !DIExpression(), !4145)
  store ptr %request.0, ptr %request.dbg.spill, align 8
  %0 = getelementptr inbounds i8, ptr %request.dbg.spill, i64 8
  store ptr %request.1, ptr %0, align 8
    #dbg_declare(ptr %request.dbg.spill, !4144, !DIExpression(), !4146)
  ret void, !dbg !4147
}

; <uu_expand::ParseError as core::error::Error>::type_id
; Function Attrs: nonlazybind uwtable
define internal void @_RNvYNtCs9xOv1NcnHfv_9uu_expand10ParseErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idCscBbfQkuq0VR_6expand(ptr sret([16 x i8]) align 8 %_0, ptr align 8 %self) unnamed_addr #0 !dbg !4148 {
start:
  %_2.dbg.spill = alloca [0 x i8], align 1
  %self.dbg.spill = alloca [8 x i8], align 8
  store ptr %self, ptr %self.dbg.spill, align 8
    #dbg_declare(ptr %self.dbg.spill, !4154, !DIExpression(), !4156)
    #dbg_declare(ptr %_2.dbg.spill, !4155, !DIExpression(), !4157)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 @anon.81badeeee7240c06f676740fb2a52a16.1, i64 16, i1 false), !dbg !4158
  ret void, !dbg !4165
}

; <uu_expand::ParseError as uucore::mods::error::UError>::code
; Function Attrs: nonlazybind uwtable
define internal i32 @_RNvYNtCs9xOv1NcnHfv_9uu_expand10ParseErrorNtNtNtCs1iFJFqccjfm_6uucore4mods5error6UError4codeCscBbfQkuq0VR_6expand(ptr align 8 %self) unnamed_addr #0 !dbg !4166 {
start:
  %self.dbg.spill = alloca [8 x i8], align 8
  store ptr %self, ptr %self.dbg.spill, align 8
    #dbg_declare(ptr %self.dbg.spill, !4171, !DIExpression(), !4172)
  ret i32 1, !dbg !4173
}

; <uu_expand::ParseError as uucore::mods::error::UError>::usage
; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @_RNvYNtCs9xOv1NcnHfv_9uu_expand10ParseErrorNtNtNtCs1iFJFqccjfm_6uucore4mods5error6UError5usageCscBbfQkuq0VR_6expand(ptr align 8 %self) unnamed_addr #0 !dbg !4174 {
start:
  %self.dbg.spill = alloca [8 x i8], align 8
  store ptr %self, ptr %self.dbg.spill, align 8
    #dbg_declare(ptr %self.dbg.spill, !4178, !DIExpression(), !4179)
  ret i1 false, !dbg !4180
}

; <<std::ffi::os_str::OsString as core::clone::Clone>::clone as core::ops::function::FnMut<(&std::ffi::os_str::OsString,)>>::call_mut
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNvYNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringNtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneINtNtNtBR_3ops8function5FnMutTRB5_EE8call_mutCscBbfQkuq0VR_6expand(ptr sret([24 x i8]) align 8 %_0, ptr %_1, ptr align 8 %0) unnamed_addr #1 !dbg !4181 {
start:
  %_1.dbg.spill = alloca [8 x i8], align 8
  %_2 = alloca [8 x i8], align 8
  store ptr %0, ptr %_2, align 8
  store ptr %_1, ptr %_1.dbg.spill, align 8
    #dbg_declare(ptr %_1.dbg.spill, !4187, !DIExpression(), !4195)
    #dbg_declare(ptr %_2, !4188, !DIExpression(), !4195)
  %1 = load ptr, ptr %_2, align 8, !dbg !4195
; call <std::ffi::os_str::OsString as core::clone::Clone>::clone
  call void @_RNvXs6_NtNtCs9k3SxhrAWiO_3std3ffi6os_strNtB5_8OsStringNtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCscBbfQkuq0VR_6expand(ptr sret([24 x i8]) align 8 %_0, ptr align 8 %1) #17, !dbg !4195
  ret void, !dbg !4195
}

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #4

; uucore::features::signals::sigpipe_was_ignored
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvNtNtCs1iFJFqccjfm_6uucore8features7signals19sigpipe_was_ignored() unnamed_addr #0

; uucore::features::signals::enable_pipe_errors
; Function Attrs: nonlazybind uwtable
declare i32 @_RNvNtNtCs1iFJFqccjfm_6uucore8features7signals18enable_pipe_errors() unnamed_addr #0

; uucore::disable_rust_signal_handlers
; Function Attrs: nonlazybind uwtable
declare i32 @_RNvCs1iFJFqccjfm_6uucore28disable_rust_signal_handlers() unnamed_addr #0

; uucore::mods::error::get_exit_code
; Function Attrs: nonlazybind uwtable
declare i32 @_RNvNtNtCs1iFJFqccjfm_6uucore4mods5error13get_exit_code() unnamed_addr #0

; <core::fmt::rt::Argument>::new_display::<alloc::boxed::Box<dyn uucore::mods::error::UError>>
; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMNtNtCsgxBkk5gSRhY_4core3fmt2rtNtB3_8Argument11new_displayINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtCs1iFJFqccjfm_6uucore4mods5error6UErrorEL_EECs9xOv1NcnHfv_9uu_expand(ptr sret([16 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; <core::fmt::Arguments>::new::<2, 1>
; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RINvMs2_NtCsgxBkk5gSRhY_4core3fmtNtB6_9Arguments3newKj2_Kj1_ECsbRzQFPXpg46_3nix(ptr, ptr align 8) unnamed_addr #1

; uucore::util_name
; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvCs1iFJFqccjfm_6uucore9util_name() unnamed_addr #0

; <core::fmt::rt::Argument>::new_display::<&str>
; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMNtNtCsgxBkk5gSRhY_4core3fmt2rtNtB3_8Argument11new_displayReECsbRzQFPXpg46_3nix(ptr sret([16 x i8]) align 8, ptr align 8) unnamed_addr #1

; <core::fmt::rt::Argument>::new_display::<alloc::string::String>
; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMNtNtCsgxBkk5gSRhY_4core3fmt2rtNtB3_8Argument11new_displayNtNtCs6i54tJFfzR_5alloc6string6StringECs4VqSFjx4n5U_12clap_builder(ptr sret([16 x i8]) align 8, ptr align 8) unnamed_addr #1

; <core::fmt::Arguments>::new::<8, 2>
; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RINvMs2_NtCsgxBkk5gSRhY_4core3fmtNtB6_9Arguments3newKj8_Kj2_ECs4VqSFjx4n5U_12clap_builder(ptr, ptr align 8) unnamed_addr #1

; <std::io::stdio::Stderr as std::io::Write>::write_fmt
; Function Attrs: nonlazybind uwtable
declare ptr @_RNvXso_NtNtCs9k3SxhrAWiO_3std2io5stdioNtB5_6StderrNtB7_5Write9write_fmt(ptr align 8, ptr, ptr) unnamed_addr #0

; core::ptr::drop_glue::<core::result::Result<(), core::io::error::Error>>
; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbRzQFPXpg46_3nix(ptr align 8) unnamed_addr #0

; uucore::execution_phrase
; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvCs1iFJFqccjfm_6uucore16execution_phrase() unnamed_addr #0

; core::ptr::drop_glue::<alloc::string::String>
; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs69bkQDvJnHM_16unic_langid_impl(ptr align 8) unnamed_addr #0

; core::ptr::drop_glue::<alloc::boxed::Box<dyn uucore::mods::error::UError>>
; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtCs1iFJFqccjfm_6uucore4mods5error6UErrorEL_EECs9xOv1NcnHfv_9uu_expand(ptr align 8) unnamed_addr #0

; core::panicking::panic_in_cleanup
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() unnamed_addr #6

; <uucore::mods::locale::LocalizationError as core::fmt::Display>::fmt
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs2_NtNtCs1iFJFqccjfm_6uucore4mods6localeNtB5_17LocalizationErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt(ptr align 8, ptr align 8) unnamed_addr #0

; <alloc::vec::Vec<std::ffi::os_str::OsString>>::reserve
; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringE7reserveCsfDOkK3ZKZlf_8clap_lex(ptr align 8, i64) unnamed_addr #0

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr, ptr, ptr align 8) unnamed_addr #7

; std::rt::lang_start_internal
; Function Attrs: nonlazybind uwtable
declare i64 @_RNvNtCs9k3SxhrAWiO_3std2rt19lang_start_internal(ptr, ptr align 8, i64, ptr, i8) unnamed_addr #0

; core::ptr::drop_glue::<alloc::vec::set_len_on_drop::SetLenOnDrop>
; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs6i54tJFfzR_5alloc3vec15set_len_on_drop12SetLenOnDropECsflPjn0bgVK6_16intl_pluralrules(ptr align 8) unnamed_addr #0

; core::ptr::drop_glue::<alloc::vec::Vec<std::ffi::os_str::OsString>>
; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringEECsfDOkK3ZKZlf_8clap_lex(ptr align 8) unnamed_addr #0

; core::ptr::drop_glue::<alloc::vec::Vec<usize>>
; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecjEECsjRmjFM5qnIY_6strsim(ptr align 8) unnamed_addr #0

; uucore::mods::clap_localization::handle_clap_result_with_exit_code::<alloc::vec::Vec<std::ffi::os_str::OsString>, std::ffi::os_str::OsString>
; Function Attrs: nonlazybind uwtable
declare void @_RINvNtNtCs1iFJFqccjfm_6uucore4mods17clap_localization33handle_clap_result_with_exit_codeINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringEB1U_EB6_(ptr sret([104 x i8]) align 8, ptr align 8, ptr align 8, i32) unnamed_addr #0

; uu_expand::uu_app
; Function Attrs: nonlazybind uwtable
declare void @_RNvCs9xOv1NcnHfv_9uu_expand6uu_app(ptr sret([712 x i8]) align 8) unnamed_addr #0

; uu_expand::expand_shortcuts
; Function Attrs: nonlazybind uwtable
declare void @_RNvCs9xOv1NcnHfv_9uu_expand16expand_shortcuts(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; <core::result::Result<clap_builder::parser::matches::arg_matches::ArgMatches, alloc::boxed::Box<dyn uucore::mods::error::UError>> as core::ops::try_trait::Try>::branch
; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsp_NtCsgxBkk5gSRhY_4core6resultINtB5_6ResultNtNtNtNtCs4VqSFjx4n5U_12clap_builder6parser7matches11arg_matches10ArgMatchesINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtCs1iFJFqccjfm_6uucore4mods5error6UErrorEL_EENtNtNtB7_3ops9try_trait3Try6branchB2D_(ptr sret([104 x i8]) align 8, ptr align 8) unnamed_addr #1

; <uu_expand::Options>::new
; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_Cs9xOv1NcnHfv_9uu_expandNtB4_7Options3new(ptr sret([56 x i8]) align 8, ptr align 8) unnamed_addr #0

; uu_expand::expand
; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvCs9xOv1NcnHfv_9uu_expand6expand(ptr align 8) unnamed_addr #0

; core::ptr::drop_glue::<clap_builder::parser::matches::arg_matches::ArgMatches>
; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4VqSFjx4n5U_12clap_builder6parser7matches11arg_matches10ArgMatchesEBJ_(ptr align 8) unnamed_addr #0

; <core::result::Result<(), alloc::boxed::Box<dyn uucore::mods::error::UError>> as core::ops::try_trait::FromResidual<core::result::Result<core::convert::Infallible, alloc::boxed::Box<dyn uucore::mods::error::UError>>>>::from_residual
; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RNvXsq_NtCsgxBkk5gSRhY_4core6resultINtB5_6ResultuINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtCs1iFJFqccjfm_6uucore4mods5error6UErrorEL_EEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleBL_EE13from_residualCs9xOv1NcnHfv_9uu_expand(ptr, ptr align 8, ptr align 8) unnamed_addr #1

; core::ptr::drop_glue::<clap_builder::builder::command::Command>
; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs4VqSFjx4n5U_12clap_builder7builder7command7CommandEBH_(ptr align 8) unnamed_addr #0

; core::panicking::panic
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core9panicking5panic(ptr, i64, ptr align 8) unnamed_addr #7

; std::io::stdio::_eprint
; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs9k3SxhrAWiO_3std2io5stdio7__eprint(ptr, ptr) unnamed_addr #0

; core::ptr::drop_glue::<fluent_syntax::parser::errors::ParserError>
; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCslPRUPRFQ4qs_13fluent_syntax6parser6errors11ParserErrorECs8meAXs9AlSn_13fluent_bundle(ptr align 8) unnamed_addr #0

; core::ptr::drop_glue::<uucore::mods::locale::LocalizationError>
; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs1iFJFqccjfm_6uucore4mods6locale17LocalizationErrorEBH_(ptr align 8) unnamed_addr #0

; std::process::exit
; Function Attrs: noreturn nonlazybind uwtable
declare void @_RNvNtCs9k3SxhrAWiO_3std7process4exit(i32) unnamed_addr #8

; uucore::mods::panic::preserve_inherited_sigpipe
; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs1iFJFqccjfm_6uucore4mods5panic26preserve_inherited_sigpipe() unnamed_addr #0

; uucore::mods::panic::mute_sigpipe_panic
; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs1iFJFqccjfm_6uucore4mods5panic18mute_sigpipe_panic() unnamed_addr #0

; uucore::get_canonical_util_name
; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvCs1iFJFqccjfm_6uucore23get_canonical_util_name(ptr, i64) unnamed_addr #0

; uucore::mods::locale::setup_localization
; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs1iFJFqccjfm_6uucore4mods6locale18setup_localization(ptr sret([96 x i8]) align 8, ptr, i64) unnamed_addr #0

; uucore::args_os
; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvCs1iFJFqccjfm_6uucore7args_os() unnamed_addr #0

; std::io::stdio::stdout
; Function Attrs: nonlazybind uwtable
declare align 8 ptr @_RNvNtNtCs9k3SxhrAWiO_3std2io5stdio6stdout() unnamed_addr #0

; <std::io::stdio::Stdout as std::io::Write>::flush
; Function Attrs: nonlazybind uwtable
declare ptr @_RNvXse_NtNtCs9k3SxhrAWiO_3std2io5stdioNtB5_6StdoutNtB7_5Write5flush(ptr align 8) unnamed_addr #0

; <core::fmt::rt::Argument>::new_display::<core::io::error::Error>
; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMNtNtCsgxBkk5gSRhY_4core3fmt2rtNtB3_8Argument11new_displayNtNtNtB7_2io5error5ErrorECs1iFJFqccjfm_6uucore(ptr sret([16 x i8]) align 8, ptr align 8) unnamed_addr #1

; core::ptr::drop_glue::<core::io::error::Error>
; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbRzQFPXpg46_3nix(ptr align 8) unnamed_addr #0

; __rustc::__rust_no_alloc_shim_is_unstable_v2
; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #4

; __rustc::__rust_alloc
; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64, i64 allocalign) unnamed_addr #9

; __rustc::__rust_alloc_zeroed
; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias ptr @_RNvCs1njKG4L9aB3_7___rustc19___rust_alloc_zeroed(i64, i64 allocalign) unnamed_addr #10

; core::result::unwrap_failed
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr, i64, ptr, ptr align 8, ptr align 8) unnamed_addr #7

; <core::option::Option<&str>>::map_or_else::<alloc::string::String, alloc::fmt::format::{closure#0}, <str as alloc::borrow::ToOwned>::to_owned>
; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6i54tJFfzR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs4VqSFjx4n5U_12clap_builder(ptr sret([24 x i8]) align 8, ptr, i64, ptr align 8) unnamed_addr #1

; alloc::alloc::handle_alloc_error
; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64, i64) unnamed_addr #11

; core::panicking::panic_nounwind_fmt
; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core9panicking18panic_nounwind_fmt(ptr, ptr, i1 zeroext, ptr align 8) unnamed_addr #12

; <*const ()>::is_aligned_to
; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNvMNtNtCsgxBkk5gSRhY_4core3ptr9const_ptrPu13is_aligned_toCs1zjXtWG3rwZ_6memchr(ptr, i64) unnamed_addr #1

; core::panicking::panic_cannot_unwind
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core9panicking19panic_cannot_unwind() unnamed_addr #6

; <uu_expand::ParseError as core::fmt::Display>::fmt
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs4_Cs9xOv1NcnHfv_9uu_expandNtB5_10ParseErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind
declare i32 @memcmp(ptr, ptr, i64) #13

; <&alloc::string::String as core::fmt::Debug>::fmt
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtCs6i54tJFfzR_5alloc6string6StringNtB6_5Debug3fmtCs4VqSFjx4n5U_12clap_builder(ptr align 8, ptr align 8) unnamed_addr #0

; <core::fmt::Formatter>::debug_tuple_field1_finish
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr align 8, ptr, i64, ptr, ptr align 8) unnamed_addr #0

; <core::fmt::Formatter>::debug_tuple_field2_finish
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr align 8, ptr, i64, ptr, ptr align 8, ptr, ptr align 8) unnamed_addr #0

; <core::fmt::Formatter>::write_str
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr align 8, ptr, i64) unnamed_addr #0

; <alloc::vec::Vec<u8> as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
declare void @_RNvXsa_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCs4VqSFjx4n5U_12clap_builder(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; <alloc::raw_vec::RawVecInner>::with_capacity_in
; Function Attrs: inlinehint nonlazybind uwtable
declare { i64, ptr } @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2R7k9gklnyT_8bitflags(i64, i64, i64) unnamed_addr #1

; <core::ops::range::Range<usize> as core::fmt::Debug>::fmt
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs_NtNtCsgxBkk5gSRhY_4core3ops5rangeINtB4_5RangejENtNtB8_3fmt5Debug3fmtCs1iFJFqccjfm_6uucore(ptr align 8, ptr align 8) unnamed_addr #0

; <core::option::Option<core::ops::range::Range<usize>> as core::fmt::Debug>::fmt
; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNvXsR_NtCsgxBkk5gSRhY_4core6optionINtB5_6OptionINtNtNtB7_3ops5range5RangejEENtNtB7_3fmt5Debug3fmtCs1iFJFqccjfm_6uucore(ptr align 8, ptr align 8) unnamed_addr #1

; <&fluent_syntax::parser::errors::ErrorKind as core::fmt::Debug>::fmt
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtCslPRUPRFQ4qs_13fluent_syntax6parser6errors9ErrorKindNtB6_5Debug3fmtCs1iFJFqccjfm_6uucore(ptr align 8, ptr align 8) unnamed_addr #0

; <core::fmt::Formatter>::debug_struct_field3_finish
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr align 8, ptr, i64, ptr, i64, ptr, ptr align 8, ptr, i64, ptr, ptr align 8, ptr, i64, ptr, ptr align 8) unnamed_addr #0

; <core::slice::iter::Iter<std::ffi::os_str::OsString> as core::iter::traits::iterator::Iterator>::size_hint
; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs4VqSFjx4n5U_12clap_builder(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #1

; <str as core::fmt::Debug>::fmt
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXsh_NtCsgxBkk5gSRhY_4core3fmteNtB5_5Debug3fmt(ptr, i64, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind
define i32 @main(i32 %0, ptr %1) unnamed_addr #14 {
top:
  %2 = load volatile i8, ptr @__rustc_debug_gdb_scripts_section__, align 1
  %3 = sext i32 %0 to i64
; call std::rt::lang_start::<()>
  %4 = call i64 @_RINvNtCs9k3SxhrAWiO_3std2rt10lang_startuECscBbfQkuq0VR_6expand(ptr @_RNvCscBbfQkuq0VR_6expand4main, i64 %3, ptr %1, i8 0)
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs1njKG4L9aB3_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nonlazybind }
attributes #14 = { nonlazybind "target-cpu"="x86-64" }
attributes #15 = { cold }
attributes #16 = { cold noreturn nounwind }
attributes #17 = { inlinehint }
attributes #18 = { noreturn }
attributes #19 = { inlinehint nounwind }
attributes #20 = { noinline }
attributes #21 = { nounwind }
attributes #22 = { noinline noreturn nounwind }

!llvm.module.flags = !{!392, !393, !394, !395, !396, !397}
!llvm.ident = !{!398}
!llvm.dbg.cu = !{!399}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "<std::rt::lang_start::{closure_env#0}<()> as core::ops::function::Fn<()>>::{vtable}", scope: null, file: !2, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "<unknown>", directory: "")
!3 = !DICompositeType(tag: DW_TAG_structure_type, name: "<std::rt::lang_start::{closure_env#0}<()> as core::ops::function::Fn<()>>::{vtable_type}", file: !2, size: 384, align: 64, flags: DIFlagArtificial, elements: !4, vtableHolder: !14, templateParams: !23, identifier: "d65c6a82ab049fafce16e95f764e036a")
!4 = !{!5, !8, !10, !11, !12, !13}
!5 = !DIDerivedType(tag: DW_TAG_member, name: "drop_in_place", scope: !3, file: !2, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const ()", baseType: !7, size: 64, align: 64, dwarfAddressSpace: 0)
!7 = !DIBasicType(name: "()", encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!9 = !DIBasicType(name: "usize", size: 64, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3, file: !2, baseType: !9, size: 64, align: 64, offset: 128)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "__method3", scope: !3, file: !2, baseType: !6, size: 64, align: 64, offset: 192)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "__method4", scope: !3, file: !2, baseType: !6, size: 64, align: 64, offset: 256)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "__method5", scope: !3, file: !2, baseType: !6, size: 64, align: 64, offset: 320)
!14 = !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<()>", scope: !15, file: !2, size: 64, align: 64, elements: !18, templateParams: !23, identifier: "10078de90bcaa96cbd1899a86a52a6c")
!15 = !DINamespace(name: "lang_start", scope: !16)
!16 = !DINamespace(name: "rt", scope: !17)
!17 = !DINamespace(name: "std", scope: null)
!18 = !{!19}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !14, file: !2, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "fn()", baseType: !21, size: 64, align: 64, dwarfAddressSpace: 0)
!21 = !DISubroutineType(types: !22)
!22 = !{null}
!23 = !{}
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "<nix::errno::consts::Errno as core::fmt::Debug>::{vtable}", scope: null, file: !2, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_structure_type, name: "<nix::errno::consts::Errno as core::fmt::Debug>::{vtable_type}", file: !2, size: 256, align: 64, flags: DIFlagArtificial, elements: !27, vtableHolder: !32, templateParams: !23, identifier: "6551135458522068d03d4a2e1725708d")
!27 = !{!28, !29, !30, !31}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "drop_in_place", scope: !26, file: !2, baseType: !6, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !26, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !26, file: !2, baseType: !9, size: 64, align: 64, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "__method3", scope: !26, file: !2, baseType: !6, size: 64, align: 64, offset: 192)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Errno", scope: !33, file: !2, baseType: !36, size: 32, align: 32, flags: DIFlagEnumClass, elements: !37)
!33 = !DINamespace(name: "consts", scope: !34)
!34 = !DINamespace(name: "errno", scope: !35)
!35 = !DINamespace(name: "nix", scope: null)
!36 = !DIBasicType(name: "i32", size: 32, encoding: DW_ATE_signed)
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169}
!38 = !DIEnumerator(name: "UnknownErrno", value: 0)
!39 = !DIEnumerator(name: "EPERM", value: 1)
!40 = !DIEnumerator(name: "ENOENT", value: 2)
!41 = !DIEnumerator(name: "ESRCH", value: 3)
!42 = !DIEnumerator(name: "EINTR", value: 4)
!43 = !DIEnumerator(name: "EIO", value: 5)
!44 = !DIEnumerator(name: "ENXIO", value: 6)
!45 = !DIEnumerator(name: "E2BIG", value: 7)
!46 = !DIEnumerator(name: "ENOEXEC", value: 8)
!47 = !DIEnumerator(name: "EBADF", value: 9)
!48 = !DIEnumerator(name: "ECHILD", value: 10)
!49 = !DIEnumerator(name: "EAGAIN", value: 11)
!50 = !DIEnumerator(name: "ENOMEM", value: 12)
!51 = !DIEnumerator(name: "EACCES", value: 13)
!52 = !DIEnumerator(name: "EFAULT", value: 14)
!53 = !DIEnumerator(name: "ENOTBLK", value: 15)
!54 = !DIEnumerator(name: "EBUSY", value: 16)
!55 = !DIEnumerator(name: "EEXIST", value: 17)
!56 = !DIEnumerator(name: "EXDEV", value: 18)
!57 = !DIEnumerator(name: "ENODEV", value: 19)
!58 = !DIEnumerator(name: "ENOTDIR", value: 20)
!59 = !DIEnumerator(name: "EISDIR", value: 21)
!60 = !DIEnumerator(name: "EINVAL", value: 22)
!61 = !DIEnumerator(name: "ENFILE", value: 23)
!62 = !DIEnumerator(name: "EMFILE", value: 24)
!63 = !DIEnumerator(name: "ENOTTY", value: 25)
!64 = !DIEnumerator(name: "ETXTBSY", value: 26)
!65 = !DIEnumerator(name: "EFBIG", value: 27)
!66 = !DIEnumerator(name: "ENOSPC", value: 28)
!67 = !DIEnumerator(name: "ESPIPE", value: 29)
!68 = !DIEnumerator(name: "EROFS", value: 30)
!69 = !DIEnumerator(name: "EMLINK", value: 31)
!70 = !DIEnumerator(name: "EPIPE", value: 32)
!71 = !DIEnumerator(name: "EDOM", value: 33)
!72 = !DIEnumerator(name: "ERANGE", value: 34)
!73 = !DIEnumerator(name: "EDEADLK", value: 35)
!74 = !DIEnumerator(name: "ENAMETOOLONG", value: 36)
!75 = !DIEnumerator(name: "ENOLCK", value: 37)
!76 = !DIEnumerator(name: "ENOSYS", value: 38)
!77 = !DIEnumerator(name: "ENOTEMPTY", value: 39)
!78 = !DIEnumerator(name: "ELOOP", value: 40)
!79 = !DIEnumerator(name: "ENOMSG", value: 42)
!80 = !DIEnumerator(name: "EIDRM", value: 43)
!81 = !DIEnumerator(name: "ECHRNG", value: 44)
!82 = !DIEnumerator(name: "EL2NSYNC", value: 45)
!83 = !DIEnumerator(name: "EL3HLT", value: 46)
!84 = !DIEnumerator(name: "EL3RST", value: 47)
!85 = !DIEnumerator(name: "ELNRNG", value: 48)
!86 = !DIEnumerator(name: "EUNATCH", value: 49)
!87 = !DIEnumerator(name: "ENOCSI", value: 50)
!88 = !DIEnumerator(name: "EL2HLT", value: 51)
!89 = !DIEnumerator(name: "EBADE", value: 52)
!90 = !DIEnumerator(name: "EBADR", value: 53)
!91 = !DIEnumerator(name: "EXFULL", value: 54)
!92 = !DIEnumerator(name: "ENOANO", value: 55)
!93 = !DIEnumerator(name: "EBADRQC", value: 56)
!94 = !DIEnumerator(name: "EBADSLT", value: 57)
!95 = !DIEnumerator(name: "EBFONT", value: 59)
!96 = !DIEnumerator(name: "ENOSTR", value: 60)
!97 = !DIEnumerator(name: "ENODATA", value: 61)
!98 = !DIEnumerator(name: "ETIME", value: 62)
!99 = !DIEnumerator(name: "ENOSR", value: 63)
!100 = !DIEnumerator(name: "ENONET", value: 64)
!101 = !DIEnumerator(name: "ENOPKG", value: 65)
!102 = !DIEnumerator(name: "EREMOTE", value: 66)
!103 = !DIEnumerator(name: "ENOLINK", value: 67)
!104 = !DIEnumerator(name: "EADV", value: 68)
!105 = !DIEnumerator(name: "ESRMNT", value: 69)
!106 = !DIEnumerator(name: "ECOMM", value: 70)
!107 = !DIEnumerator(name: "EPROTO", value: 71)
!108 = !DIEnumerator(name: "EMULTIHOP", value: 72)
!109 = !DIEnumerator(name: "EDOTDOT", value: 73)
!110 = !DIEnumerator(name: "EBADMSG", value: 74)
!111 = !DIEnumerator(name: "EOVERFLOW", value: 75)
!112 = !DIEnumerator(name: "ENOTUNIQ", value: 76)
!113 = !DIEnumerator(name: "EBADFD", value: 77)
!114 = !DIEnumerator(name: "EREMCHG", value: 78)
!115 = !DIEnumerator(name: "ELIBACC", value: 79)
!116 = !DIEnumerator(name: "ELIBBAD", value: 80)
!117 = !DIEnumerator(name: "ELIBSCN", value: 81)
!118 = !DIEnumerator(name: "ELIBMAX", value: 82)
!119 = !DIEnumerator(name: "ELIBEXEC", value: 83)
!120 = !DIEnumerator(name: "EILSEQ", value: 84)
!121 = !DIEnumerator(name: "ERESTART", value: 85)
!122 = !DIEnumerator(name: "ESTRPIPE", value: 86)
!123 = !DIEnumerator(name: "EUSERS", value: 87)
!124 = !DIEnumerator(name: "ENOTSOCK", value: 88)
!125 = !DIEnumerator(name: "EDESTADDRREQ", value: 89)
!126 = !DIEnumerator(name: "EMSGSIZE", value: 90)
!127 = !DIEnumerator(name: "EPROTOTYPE", value: 91)
!128 = !DIEnumerator(name: "ENOPROTOOPT", value: 92)
!129 = !DIEnumerator(name: "EPROTONOSUPPORT", value: 93)
!130 = !DIEnumerator(name: "ESOCKTNOSUPPORT", value: 94)
!131 = !DIEnumerator(name: "EOPNOTSUPP", value: 95)
!132 = !DIEnumerator(name: "EPFNOSUPPORT", value: 96)
!133 = !DIEnumerator(name: "EAFNOSUPPORT", value: 97)
!134 = !DIEnumerator(name: "EADDRINUSE", value: 98)
!135 = !DIEnumerator(name: "EADDRNOTAVAIL", value: 99)
!136 = !DIEnumerator(name: "ENETDOWN", value: 100)
!137 = !DIEnumerator(name: "ENETUNREACH", value: 101)
!138 = !DIEnumerator(name: "ENETRESET", value: 102)
!139 = !DIEnumerator(name: "ECONNABORTED", value: 103)
!140 = !DIEnumerator(name: "ECONNRESET", value: 104)
!141 = !DIEnumerator(name: "ENOBUFS", value: 105)
!142 = !DIEnumerator(name: "EISCONN", value: 106)
!143 = !DIEnumerator(name: "ENOTCONN", value: 107)
!144 = !DIEnumerator(name: "ESHUTDOWN", value: 108)
!145 = !DIEnumerator(name: "ETOOMANYREFS", value: 109)
!146 = !DIEnumerator(name: "ETIMEDOUT", value: 110)
!147 = !DIEnumerator(name: "ECONNREFUSED", value: 111)
!148 = !DIEnumerator(name: "EHOSTDOWN", value: 112)
!149 = !DIEnumerator(name: "EHOSTUNREACH", value: 113)
!150 = !DIEnumerator(name: "EALREADY", value: 114)
!151 = !DIEnumerator(name: "EINPROGRESS", value: 115)
!152 = !DIEnumerator(name: "ESTALE", value: 116)
!153 = !DIEnumerator(name: "EUCLEAN", value: 117)
!154 = !DIEnumerator(name: "ENOTNAM", value: 118)
!155 = !DIEnumerator(name: "ENAVAIL", value: 119)
!156 = !DIEnumerator(name: "EISNAM", value: 120)
!157 = !DIEnumerator(name: "EREMOTEIO", value: 121)
!158 = !DIEnumerator(name: "EDQUOT", value: 122)
!159 = !DIEnumerator(name: "ENOMEDIUM", value: 123)
!160 = !DIEnumerator(name: "EMEDIUMTYPE", value: 124)
!161 = !DIEnumerator(name: "ECANCELED", value: 125)
!162 = !DIEnumerator(name: "ENOKEY", value: 126)
!163 = !DIEnumerator(name: "EKEYEXPIRED", value: 127)
!164 = !DIEnumerator(name: "EKEYREVOKED", value: 128)
!165 = !DIEnumerator(name: "EKEYREJECTED", value: 129)
!166 = !DIEnumerator(name: "EOWNERDEAD", value: 130)
!167 = !DIEnumerator(name: "ENOTRECOVERABLE", value: 131)
!168 = !DIEnumerator(name: "ERFKILL", value: 132)
!169 = !DIEnumerator(name: "EHWPOISON", value: 133)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "<uu_expand::ParseError as uucore::mods::error::UError>::{vtable}", scope: null, file: !2, type: !172, isLocal: true, isDefinition: true)
!172 = !DICompositeType(tag: DW_TAG_structure_type, name: "<uu_expand::ParseError as uucore::mods::error::UError>::{vtable_type}", file: !2, size: 832, align: 64, flags: DIFlagArtificial, elements: !173, vtableHolder: !187, templateParams: !23, identifier: "d71225e4a82e634194c635ce7079d9b2")
!173 = !{!174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "drop_in_place", scope: !172, file: !2, baseType: !6, size: 64, align: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !172, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !172, file: !2, baseType: !9, size: 64, align: 64, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "__method3", scope: !172, file: !2, baseType: !6, size: 64, align: 64, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "__method4", scope: !172, file: !2, baseType: !6, size: 64, align: 64, offset: 256)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "__super_trait_ptr5", scope: !172, file: !2, baseType: !6, size: 64, align: 64, offset: 320)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "__method6", scope: !172, file: !2, baseType: !6, size: 64, align: 64, offset: 384)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "__method7", scope: !172, file: !2, baseType: !6, size: 64, align: 64, offset: 448)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "__method8", scope: !172, file: !2, baseType: !6, size: 64, align: 64, offset: 512)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "__method9", scope: !172, file: !2, baseType: !6, size: 64, align: 64, offset: 576)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "__method10", scope: !172, file: !2, baseType: !6, size: 64, align: 64, offset: 640)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "__method11", scope: !172, file: !2, baseType: !6, size: 64, align: 64, offset: 704)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "__method12", scope: !172, file: !2, baseType: !6, size: 64, align: 64, offset: 768)
!187 = !DICompositeType(tag: DW_TAG_structure_type, name: "ParseError", scope: !188, file: !2, size: 384, align: 64, flags: DIFlagPrivate, elements: !189, templateParams: !23, identifier: "37d712c5f4f64fd77aec2a47387cbc1d")
!188 = !DINamespace(name: "uu_expand", scope: null)
!189 = !{!190}
!190 = !DICompositeType(tag: DW_TAG_variant_part, scope: !187, file: !2, size: 384, align: 64, elements: !191, templateParams: !23, identifier: "7b7ecca8bc556d40ff4a4537515702c9", discriminator: !260)
!191 = !{!192, !243, !248, !252, !254, !258}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "InvalidCharacter", scope: !190, file: !2, baseType: !193, size: 384, align: 64, extraData: i64 -9223372036854775808)
!193 = !DICompositeType(tag: DW_TAG_structure_type, name: "InvalidCharacter", scope: !187, file: !2, size: 384, align: 64, flags: DIFlagPrivate, elements: !194, templateParams: !23, identifier: "a61810823c762b75b54093b315112b55")
!194 = !{!195}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !193, file: !2, baseType: !196, size: 192, align: 64, offset: 64, flags: DIFlagPrivate)
!196 = !DICompositeType(tag: DW_TAG_structure_type, name: "String", scope: !197, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !199, templateParams: !23, identifier: "46b2823192e4d2ec5afb48bac35cbff5")
!197 = !DINamespace(name: "string", scope: !198)
!198 = !DINamespace(name: "alloc", scope: null)
!199 = !{!200}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !196, file: !2, baseType: !201, size: 192, align: 64, flags: DIFlagPrivate)
!201 = !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<u8, alloc::alloc::Global>", scope: !202, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !203, templateParams: !241, identifier: "a18c0777a85ca286f4f715119571a4f5")
!202 = !DINamespace(name: "vec", scope: !198)
!203 = !{!204, !242}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !201, file: !2, baseType: !205, size: 128, align: 64, flags: DIFlagPrivate)
!205 = !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<u8, alloc::alloc::Global>", scope: !206, file: !2, size: 128, align: 64, flags: DIFlagProtected, elements: !207, templateParams: !241, identifier: "4844c9c5b3ccd0c746460a2e9903c62b")
!206 = !DINamespace(name: "raw_vec", scope: !198)
!207 = !{!208, !240}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !205, file: !2, baseType: !209, size: 128, align: 64, flags: DIFlagPrivate)
!209 = !DICompositeType(tag: DW_TAG_structure_type, name: "RawVecInner<alloc::alloc::Global>", scope: !206, file: !2, size: 128, align: 64, flags: DIFlagPrivate, elements: !210, templateParams: !238, identifier: "8e8c1ad98e55b8d9532fec758c71c50")
!210 = !{!211, !229, !235}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !209, file: !2, baseType: !212, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!212 = !DICompositeType(tag: DW_TAG_structure_type, name: "Unique<u8>", scope: !213, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !216, templateParams: !224, identifier: "eec6bbb0af5ced06fe8bab190bbb34ef")
!213 = !DINamespace(name: "unique", scope: !214)
!214 = !DINamespace(name: "ptr", scope: !215)
!215 = !DINamespace(name: "core", scope: null)
!216 = !{!217, !226}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !212, file: !2, baseType: !218, size: 64, align: 64, flags: DIFlagPrivate)
!218 = !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<u8>", scope: !219, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !220, templateParams: !224, identifier: "42d37d004b130ef5e317ad6354f2cd98")
!219 = !DINamespace(name: "non_null", scope: !214)
!220 = !{!221}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !218, file: !2, baseType: !222, size: 64, align: 64, flags: DIFlagPrivate)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const u8", baseType: !223, size: 64, align: 64, dwarfAddressSpace: 0)
!223 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!224 = !{!225}
!225 = !DITemplateTypeParameter(name: "T", type: !223)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !212, file: !2, baseType: !227, align: 8, offset: 64, flags: DIFlagPrivate)
!227 = !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<u8>", scope: !228, file: !2, align: 8, flags: DIFlagPublic, elements: !23, templateParams: !224, identifier: "1c3d59867d227f534484411152d322a7")
!228 = !DINamespace(name: "marker", scope: !215)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !209, file: !2, baseType: !230, size: 64, align: 64, flags: DIFlagPrivate)
!230 = !DICompositeType(tag: DW_TAG_structure_type, name: "UsizeNoHighBit", scope: !231, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !233, templateParams: !23, identifier: "f68c2839e2c50952210dc1427ec55f2e")
!231 = !DINamespace(name: "niche_types", scope: !232)
!232 = !DINamespace(name: "num", scope: !215)
!233 = !{!234}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !230, file: !2, baseType: !9, size: 64, align: 64, flags: DIFlagPrivate)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !209, file: !2, baseType: !236, align: 8, offset: 128, flags: DIFlagPrivate)
!236 = !DICompositeType(tag: DW_TAG_structure_type, name: "Global", scope: !237, file: !2, align: 8, flags: DIFlagPublic, elements: !23, identifier: "e159e400097937f99a5640fd4ae0d8d1")
!237 = !DINamespace(name: "alloc", scope: !198)
!238 = !{!239}
!239 = !DITemplateTypeParameter(name: "A", type: !236)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !205, file: !2, baseType: !227, align: 8, offset: 128, flags: DIFlagPrivate)
!241 = !{!225, !239}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !201, file: !2, baseType: !9, size: 64, align: 64, offset: 128, flags: DIFlagPrivate)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "SpecifierNotAtStartOfNumber", scope: !190, file: !2, baseType: !244, size: 384, align: 64)
!244 = !DICompositeType(tag: DW_TAG_structure_type, name: "SpecifierNotAtStartOfNumber", scope: !187, file: !2, size: 384, align: 64, flags: DIFlagPrivate, elements: !245, templateParams: !23, identifier: "b99f1bbfba9482ea535e93e04f0c5d25")
!245 = !{!246, !247}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !244, file: !2, baseType: !196, size: 192, align: 64, flags: DIFlagPrivate)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !244, file: !2, baseType: !196, size: 192, align: 64, offset: 192, flags: DIFlagPrivate)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "SpecifierOnlyAllowedWithLastValue", scope: !190, file: !2, baseType: !249, size: 384, align: 64, extraData: i64 -9223372036854775806)
!249 = !DICompositeType(tag: DW_TAG_structure_type, name: "SpecifierOnlyAllowedWithLastValue", scope: !187, file: !2, size: 384, align: 64, flags: DIFlagPrivate, elements: !250, templateParams: !23, identifier: "c891ee3170a11600bcfc8e0131ef09e1")
!250 = !{!251}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !249, file: !2, baseType: !196, size: 192, align: 64, offset: 64, flags: DIFlagPrivate)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "TabSizeCannotBeZero", scope: !190, file: !2, baseType: !253, size: 384, align: 64, extraData: i64 -9223372036854775805)
!253 = !DICompositeType(tag: DW_TAG_structure_type, name: "TabSizeCannotBeZero", scope: !187, file: !2, size: 384, align: 64, flags: DIFlagPrivate, elements: !23, identifier: "34caa43e802775f0d86abba0d37a39a9")
!254 = !DIDerivedType(tag: DW_TAG_member, name: "TabSizeTooLarge", scope: !190, file: !2, baseType: !255, size: 384, align: 64, extraData: i64 -9223372036854775804)
!255 = !DICompositeType(tag: DW_TAG_structure_type, name: "TabSizeTooLarge", scope: !187, file: !2, size: 384, align: 64, flags: DIFlagPrivate, elements: !256, templateParams: !23, identifier: "981aacba3c8a1436a086e5ec3d32d265")
!256 = !{!257}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !255, file: !2, baseType: !196, size: 192, align: 64, offset: 64, flags: DIFlagPrivate)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "TabSizesMustBeAscending", scope: !190, file: !2, baseType: !259, size: 384, align: 64, extraData: i64 -9223372036854775803)
!259 = !DICompositeType(tag: DW_TAG_structure_type, name: "TabSizesMustBeAscending", scope: !187, file: !2, size: 384, align: 64, flags: DIFlagPrivate, elements: !23, identifier: "86a3e55bcc9330f1bc7f43113f3e57")
!260 = !DIDerivedType(tag: DW_TAG_member, scope: !187, file: !2, baseType: !261, size: 64, align: 64, flags: DIFlagArtificial)
!261 = !DIBasicType(name: "u64", size: 64, encoding: DW_ATE_unsigned)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(name: "<&alloc::string::String as core::fmt::Debug>::{vtable}", scope: null, file: !2, type: !264, isLocal: true, isDefinition: true)
!264 = !DICompositeType(tag: DW_TAG_structure_type, name: "<&alloc::string::String as core::fmt::Debug>::{vtable_type}", file: !2, size: 256, align: 64, flags: DIFlagArtificial, elements: !265, vtableHolder: !270, templateParams: !23, identifier: "2fbad8cdd3d1c816ca83c51836fee262")
!265 = !{!266, !267, !268, !269}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "drop_in_place", scope: !264, file: !2, baseType: !6, size: 64, align: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !264, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !264, file: !2, baseType: !9, size: 64, align: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "__method3", scope: !264, file: !2, baseType: !6, size: 64, align: 64, offset: 192)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&alloc::string::String", baseType: !196, size: 64, align: 64, dwarfAddressSpace: 0)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(name: "<alloc::string::String as core::fmt::Debug>::{vtable}", scope: null, file: !2, type: !273, isLocal: true, isDefinition: true)
!273 = !DICompositeType(tag: DW_TAG_structure_type, name: "<alloc::string::String as core::fmt::Debug>::{vtable_type}", file: !2, size: 256, align: 64, flags: DIFlagArtificial, elements: !274, vtableHolder: !196, templateParams: !23, identifier: "3440eaa87adcca0daaba1ab369e49bd4")
!274 = !{!275, !276, !277, !278}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "drop_in_place", scope: !273, file: !2, baseType: !6, size: 64, align: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !273, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !273, file: !2, baseType: !9, size: 64, align: 64, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "__method3", scope: !273, file: !2, baseType: !6, size: 64, align: 64, offset: 192)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(name: "<core::ops::range::Range<usize> as core::fmt::Debug>::{vtable}", scope: null, file: !2, type: !281, isLocal: true, isDefinition: true)
!281 = !DICompositeType(tag: DW_TAG_structure_type, name: "<core::ops::range::Range<usize> as core::fmt::Debug>::{vtable_type}", file: !2, size: 256, align: 64, flags: DIFlagArtificial, elements: !282, vtableHolder: !287, templateParams: !23, identifier: "e0e68982c299a1c4b3ed3439c4c5e703")
!282 = !{!283, !284, !285, !286}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "drop_in_place", scope: !281, file: !2, baseType: !6, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !281, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !281, file: !2, baseType: !9, size: 64, align: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "__method3", scope: !281, file: !2, baseType: !6, size: 64, align: 64, offset: 192)
!287 = !DICompositeType(tag: DW_TAG_structure_type, name: "Range<usize>", scope: !288, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !290, templateParams: !293, identifier: "1dc0659ef49b3f0787c2cb45a78fccb3")
!288 = !DINamespace(name: "range", scope: !289)
!289 = !DINamespace(name: "ops", scope: !215)
!290 = !{!291, !292}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !287, file: !2, baseType: !9, size: 64, align: 64, flags: DIFlagPublic)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !287, file: !2, baseType: !9, size: 64, align: 64, offset: 64, flags: DIFlagPublic)
!293 = !{!294}
!294 = !DITemplateTypeParameter(name: "Idx", type: !9)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(name: "<core::option::Option<core::ops::range::Range<usize>> as core::fmt::Debug>::{vtable}", scope: null, file: !2, type: !297, isLocal: true, isDefinition: true)
!297 = !DICompositeType(tag: DW_TAG_structure_type, name: "<core::option::Option<core::ops::range::Range<usize>> as core::fmt::Debug>::{vtable_type}", file: !2, size: 256, align: 64, flags: DIFlagArtificial, elements: !298, vtableHolder: !303, templateParams: !23, identifier: "5243a02001ef0ab4db4f241f77747acf")
!298 = !{!299, !300, !301, !302}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "drop_in_place", scope: !297, file: !2, baseType: !6, size: 64, align: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !297, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !297, file: !2, baseType: !9, size: 64, align: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "__method3", scope: !297, file: !2, baseType: !6, size: 64, align: 64, offset: 192)
!303 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<core::ops::range::Range<usize>>", scope: !304, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !305, templateParams: !23, identifier: "67739ba6a89c640d69a8d3019870eccb")
!304 = !DINamespace(name: "option", scope: !215)
!305 = !{!306}
!306 = !DICompositeType(tag: DW_TAG_variant_part, scope: !303, file: !2, size: 192, align: 64, elements: !307, templateParams: !23, identifier: "be4e65a9e0406d72c35db98d0c17d0d7", discriminator: !316)
!307 = !{!308, !312}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !306, file: !2, baseType: !309, size: 192, align: 64, extraData: i64 0)
!309 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !303, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !23, templateParams: !310, identifier: "56005d1e62006b856cbfc6f0d3a01e5e")
!310 = !{!311}
!311 = !DITemplateTypeParameter(name: "T", type: !287)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !306, file: !2, baseType: !313, size: 192, align: 64, extraData: i64 1)
!313 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !303, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !314, templateParams: !310, identifier: "30c2a5408a973bf5223500afd50ad10b")
!314 = !{!315}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !313, file: !2, baseType: !287, size: 128, align: 64, offset: 64, flags: DIFlagPublic)
!316 = !DIDerivedType(tag: DW_TAG_member, scope: !303, file: !2, baseType: !261, size: 64, align: 64, flags: DIFlagArtificial)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(name: "<&fluent_syntax::parser::errors::ErrorKind as core::fmt::Debug>::{vtable}", scope: null, file: !2, type: !319, isLocal: true, isDefinition: true)
!319 = !DICompositeType(tag: DW_TAG_structure_type, name: "<&fluent_syntax::parser::errors::ErrorKind as core::fmt::Debug>::{vtable_type}", file: !2, size: 256, align: 64, flags: DIFlagArtificial, elements: !320, vtableHolder: !325, templateParams: !23, identifier: "3d61ab9c5b134ca1f58cb866cb7d7f25")
!320 = !{!321, !322, !323, !324}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "drop_in_place", scope: !319, file: !2, baseType: !6, size: 64, align: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !319, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !319, file: !2, baseType: !9, size: 64, align: 64, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "__method3", scope: !319, file: !2, baseType: !6, size: 64, align: 64, offset: 192)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&fluent_syntax::parser::errors::ErrorKind", baseType: !326, size: 64, align: 64, dwarfAddressSpace: 0)
!326 = !DICompositeType(tag: DW_TAG_structure_type, name: "ErrorKind", scope: !327, file: !2, size: 256, align: 64, flags: DIFlagPublic, elements: !330, templateParams: !23, identifier: "e70399e8ef535251eb5ffc3e934b4d08")
!327 = !DINamespace(name: "errors", scope: !328)
!328 = !DINamespace(name: "parser", scope: !329)
!329 = !DINamespace(name: "fluent_syntax", scope: null)
!330 = !{!331}
!331 = !DICompositeType(tag: DW_TAG_variant_part, scope: !326, file: !2, size: 256, align: 64, elements: !332, templateParams: !23, identifier: "7a83f252037d6ab4861c5d13726b70d0", discriminator: !390)
!332 = !{!333, !338, !342, !346, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !374, !378, !382, !384, !386, !388}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedToken", scope: !331, file: !2, baseType: !334, size: 256, align: 64, extraData: i32 0)
!334 = !DICompositeType(tag: DW_TAG_structure_type, name: "ExpectedToken", scope: !326, file: !2, size: 256, align: 64, flags: DIFlagPublic, elements: !335, templateParams: !23, identifier: "a9b6fd8d3a6f2aba3774a4d8b898eadf")
!335 = !{!336}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !334, file: !2, baseType: !337, size: 32, align: 32, offset: 32, flags: DIFlagPublic)
!337 = !DIBasicType(name: "char", size: 32, encoding: DW_ATE_UTF)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedCharRange", scope: !331, file: !2, baseType: !339, size: 256, align: 64, extraData: i32 1)
!339 = !DICompositeType(tag: DW_TAG_structure_type, name: "ExpectedCharRange", scope: !326, file: !2, size: 256, align: 64, flags: DIFlagPublic, elements: !340, templateParams: !23, identifier: "6c5b5327aa3dab1cc7ac7667afcb0f2c")
!340 = !{!341}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !339, file: !2, baseType: !196, size: 192, align: 64, offset: 64, flags: DIFlagPublic)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedMessageField", scope: !331, file: !2, baseType: !343, size: 256, align: 64, extraData: i32 2)
!343 = !DICompositeType(tag: DW_TAG_structure_type, name: "ExpectedMessageField", scope: !326, file: !2, size: 256, align: 64, flags: DIFlagPublic, elements: !344, templateParams: !23, identifier: "2e39a6b7fba26abdd7a3cbeed7e11ee6")
!344 = !{!345}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "entry_id", scope: !343, file: !2, baseType: !196, size: 192, align: 64, offset: 64, flags: DIFlagPublic)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedTermField", scope: !331, file: !2, baseType: !347, size: 256, align: 64, extraData: i32 3)
!347 = !DICompositeType(tag: DW_TAG_structure_type, name: "ExpectedTermField", scope: !326, file: !2, size: 256, align: 64, flags: DIFlagPublic, elements: !348, templateParams: !23, identifier: "394c38ce80a5b501780f877c989a52e1")
!348 = !{!349}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "entry_id", scope: !347, file: !2, baseType: !196, size: 192, align: 64, offset: 64, flags: DIFlagPublic)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "ForbiddenCallee", scope: !331, file: !2, baseType: !351, size: 256, align: 64, extraData: i32 4)
!351 = !DICompositeType(tag: DW_TAG_structure_type, name: "ForbiddenCallee", scope: !326, file: !2, size: 256, align: 64, flags: DIFlagPublic, elements: !23, identifier: "10d2e67ab19698e73e4bf07f97f29021")
!352 = !DIDerivedType(tag: DW_TAG_member, name: "MissingDefaultVariant", scope: !331, file: !2, baseType: !353, size: 256, align: 64, extraData: i32 5)
!353 = !DICompositeType(tag: DW_TAG_structure_type, name: "MissingDefaultVariant", scope: !326, file: !2, size: 256, align: 64, flags: DIFlagPublic, elements: !23, identifier: "359b8bebe0ed106a4d40f588ddcd2708")
!354 = !DIDerivedType(tag: DW_TAG_member, name: "MissingValue", scope: !331, file: !2, baseType: !355, size: 256, align: 64, extraData: i32 6)
!355 = !DICompositeType(tag: DW_TAG_structure_type, name: "MissingValue", scope: !326, file: !2, size: 256, align: 64, flags: DIFlagPublic, elements: !23, identifier: "32063456961cdfc939b45e1999866a93")
!356 = !DIDerivedType(tag: DW_TAG_member, name: "MultipleDefaultVariants", scope: !331, file: !2, baseType: !357, size: 256, align: 64, extraData: i32 7)
!357 = !DICompositeType(tag: DW_TAG_structure_type, name: "MultipleDefaultVariants", scope: !326, file: !2, size: 256, align: 64, flags: DIFlagPublic, elements: !23, identifier: "bb7c3abd6b53dfae10b064b3f48fb79d")
!358 = !DIDerivedType(tag: DW_TAG_member, name: "MessageReferenceAsSelector", scope: !331, file: !2, baseType: !359, size: 256, align: 64, extraData: i32 8)
!359 = !DICompositeType(tag: DW_TAG_structure_type, name: "MessageReferenceAsSelector", scope: !326, file: !2, size: 256, align: 64, flags: DIFlagPublic, elements: !23, identifier: "e59ac8b787f71aa765adb34c8f7bbae9")
!360 = !DIDerivedType(tag: DW_TAG_member, name: "TermReferenceAsSelector", scope: !331, file: !2, baseType: !361, size: 256, align: 64, extraData: i32 9)
!361 = !DICompositeType(tag: DW_TAG_structure_type, name: "TermReferenceAsSelector", scope: !326, file: !2, size: 256, align: 64, flags: DIFlagPublic, elements: !23, identifier: "ee4e3fb51e529f078af6977605d934a0")
!362 = !DIDerivedType(tag: DW_TAG_member, name: "MessageAttributeAsSelector", scope: !331, file: !2, baseType: !363, size: 256, align: 64, extraData: i32 10)
!363 = !DICompositeType(tag: DW_TAG_structure_type, name: "MessageAttributeAsSelector", scope: !326, file: !2, size: 256, align: 64, flags: DIFlagPublic, elements: !23, identifier: "639143b451566e4355085661cc24bbd6")
!364 = !DIDerivedType(tag: DW_TAG_member, name: "TermAttributeAsPlaceable", scope: !331, file: !2, baseType: !365, size: 256, align: 64, extraData: i32 11)
!365 = !DICompositeType(tag: DW_TAG_structure_type, name: "TermAttributeAsPlaceable", scope: !326, file: !2, size: 256, align: 64, flags: DIFlagPublic, elements: !23, identifier: "f83dc64c8c5469e430abe620bb772508")
!366 = !DIDerivedType(tag: DW_TAG_member, name: "UnterminatedStringLiteral", scope: !331, file: !2, baseType: !367, size: 256, align: 64, extraData: i32 12)
!367 = !DICompositeType(tag: DW_TAG_structure_type, name: "UnterminatedStringLiteral", scope: !326, file: !2, size: 256, align: 64, flags: DIFlagPublic, elements: !23, identifier: "1d68d8c508f6943121061c4a298be2e1")
!368 = !DIDerivedType(tag: DW_TAG_member, name: "PositionalArgumentFollowsNamed", scope: !331, file: !2, baseType: !369, size: 256, align: 64, extraData: i32 13)
!369 = !DICompositeType(tag: DW_TAG_structure_type, name: "PositionalArgumentFollowsNamed", scope: !326, file: !2, size: 256, align: 64, flags: DIFlagPublic, elements: !23, identifier: "65f34d2e7060962e867e88ca27203208")
!370 = !DIDerivedType(tag: DW_TAG_member, name: "DuplicatedNamedArgument", scope: !331, file: !2, baseType: !371, size: 256, align: 64, extraData: i32 14)
!371 = !DICompositeType(tag: DW_TAG_structure_type, name: "DuplicatedNamedArgument", scope: !326, file: !2, size: 256, align: 64, flags: DIFlagPublic, elements: !372, templateParams: !23, identifier: "7e6a6dde4b376b54b55a5d29fb140033")
!372 = !{!373}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !371, file: !2, baseType: !196, size: 192, align: 64, offset: 64, flags: DIFlagPublic)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "UnknownEscapeSequence", scope: !331, file: !2, baseType: !375, size: 256, align: 64, extraData: i32 15)
!375 = !DICompositeType(tag: DW_TAG_structure_type, name: "UnknownEscapeSequence", scope: !326, file: !2, size: 256, align: 64, flags: DIFlagPublic, elements: !376, templateParams: !23, identifier: "1f806ef407d023c48f0d00def5e271e")
!376 = !{!377}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !375, file: !2, baseType: !196, size: 192, align: 64, offset: 64, flags: DIFlagPublic)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "InvalidUnicodeEscapeSequence", scope: !331, file: !2, baseType: !379, size: 256, align: 64, extraData: i32 16)
!379 = !DICompositeType(tag: DW_TAG_structure_type, name: "InvalidUnicodeEscapeSequence", scope: !326, file: !2, size: 256, align: 64, flags: DIFlagPublic, elements: !380, templateParams: !23, identifier: "63cc440931ea7dde8caccd6f990c1f2a")
!380 = !{!381}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !379, file: !2, baseType: !196, size: 192, align: 64, offset: 64, flags: DIFlagPublic)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "UnbalancedClosingBrace", scope: !331, file: !2, baseType: !383, size: 256, align: 64, extraData: i32 17)
!383 = !DICompositeType(tag: DW_TAG_structure_type, name: "UnbalancedClosingBrace", scope: !326, file: !2, size: 256, align: 64, flags: DIFlagPublic, elements: !23, identifier: "f6648669ffb5aa052f803620a5f6c949")
!384 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedInlineExpression", scope: !331, file: !2, baseType: !385, size: 256, align: 64, extraData: i32 18)
!385 = !DICompositeType(tag: DW_TAG_structure_type, name: "ExpectedInlineExpression", scope: !326, file: !2, size: 256, align: 64, flags: DIFlagPublic, elements: !23, identifier: "2cde0cc00ae2422ac4d80839e8835357")
!386 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedSimpleExpressionAsSelector", scope: !331, file: !2, baseType: !387, size: 256, align: 64, extraData: i32 19)
!387 = !DICompositeType(tag: DW_TAG_structure_type, name: "ExpectedSimpleExpressionAsSelector", scope: !326, file: !2, size: 256, align: 64, flags: DIFlagPublic, elements: !23, identifier: "9e2404bb9abd8e625f296983ea2673b1")
!388 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedLiteral", scope: !331, file: !2, baseType: !389, size: 256, align: 64, extraData: i32 20)
!389 = !DICompositeType(tag: DW_TAG_structure_type, name: "ExpectedLiteral", scope: !326, file: !2, size: 256, align: 64, flags: DIFlagPublic, elements: !23, identifier: "1116aabf7536aa1dc00070b3862b6266")
!390 = !DIDerivedType(tag: DW_TAG_member, scope: !326, file: !2, baseType: !391, size: 32, align: 32, flags: DIFlagArtificial)
!391 = !DIBasicType(name: "u32", size: 32, encoding: DW_ATE_unsigned)
!392 = !{i32 8, !"PIC Level", i32 2}
!393 = !{i32 7, !"PIE Level", i32 2}
!394 = !{i32 2, !"RtLibUseGOT", i32 1}
!395 = !{i32 7, !"uwtable", i32 2}
!396 = !{i32 7, !"Dwarf Version", i32 4}
!397 = !{i32 2, !"Debug Info Version", i32 3}
!398 = !{!"rustc version 1.98.1 (48a229cea 2026-09-01)"}
!399 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !400, producer: "clang LLVM (rustc version 1.98.1 (48a229cea 2026-09-01))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !401, globals: !550, splitDebugInlining: false, nameTableKind: None)
!400 = !DIFile(filename: "src/uu/expand/src/main.rs/@/9cvvjut5a0c01nrcvc1qbq451", directory: "/workspaces/Thesis/.build/uutils-coreutils")
!401 = !{!402, !449, !455, !460, !469, !482, !32}
!402 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ErrorKind", scope: !403, file: !2, baseType: !223, size: 8, align: 8, flags: DIFlagEnumClass, elements: !405)
!403 = !DINamespace(name: "error", scope: !404)
!404 = !DINamespace(name: "io", scope: !215)
!405 = !{!406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448}
!406 = !DIEnumerator(name: "NotFound", value: 0, isUnsigned: true)
!407 = !DIEnumerator(name: "PermissionDenied", value: 1, isUnsigned: true)
!408 = !DIEnumerator(name: "ConnectionRefused", value: 2, isUnsigned: true)
!409 = !DIEnumerator(name: "ConnectionReset", value: 3, isUnsigned: true)
!410 = !DIEnumerator(name: "HostUnreachable", value: 4, isUnsigned: true)
!411 = !DIEnumerator(name: "NetworkUnreachable", value: 5, isUnsigned: true)
!412 = !DIEnumerator(name: "ConnectionAborted", value: 6, isUnsigned: true)
!413 = !DIEnumerator(name: "NotConnected", value: 7, isUnsigned: true)
!414 = !DIEnumerator(name: "AddrInUse", value: 8, isUnsigned: true)
!415 = !DIEnumerator(name: "AddrNotAvailable", value: 9, isUnsigned: true)
!416 = !DIEnumerator(name: "NetworkDown", value: 10, isUnsigned: true)
!417 = !DIEnumerator(name: "BrokenPipe", value: 11, isUnsigned: true)
!418 = !DIEnumerator(name: "AlreadyExists", value: 12, isUnsigned: true)
!419 = !DIEnumerator(name: "WouldBlock", value: 13, isUnsigned: true)
!420 = !DIEnumerator(name: "NotADirectory", value: 14, isUnsigned: true)
!421 = !DIEnumerator(name: "IsADirectory", value: 15, isUnsigned: true)
!422 = !DIEnumerator(name: "DirectoryNotEmpty", value: 16, isUnsigned: true)
!423 = !DIEnumerator(name: "ReadOnlyFilesystem", value: 17, isUnsigned: true)
!424 = !DIEnumerator(name: "FilesystemLoop", value: 18, isUnsigned: true)
!425 = !DIEnumerator(name: "StaleNetworkFileHandle", value: 19, isUnsigned: true)
!426 = !DIEnumerator(name: "InvalidInput", value: 20, isUnsigned: true)
!427 = !DIEnumerator(name: "InvalidData", value: 21, isUnsigned: true)
!428 = !DIEnumerator(name: "TimedOut", value: 22, isUnsigned: true)
!429 = !DIEnumerator(name: "WriteZero", value: 23, isUnsigned: true)
!430 = !DIEnumerator(name: "StorageFull", value: 24, isUnsigned: true)
!431 = !DIEnumerator(name: "NotSeekable", value: 25, isUnsigned: true)
!432 = !DIEnumerator(name: "QuotaExceeded", value: 26, isUnsigned: true)
!433 = !DIEnumerator(name: "FileTooLarge", value: 27, isUnsigned: true)
!434 = !DIEnumerator(name: "ResourceBusy", value: 28, isUnsigned: true)
!435 = !DIEnumerator(name: "ExecutableFileBusy", value: 29, isUnsigned: true)
!436 = !DIEnumerator(name: "Deadlock", value: 30, isUnsigned: true)
!437 = !DIEnumerator(name: "CrossesDevices", value: 31, isUnsigned: true)
!438 = !DIEnumerator(name: "TooManyLinks", value: 32, isUnsigned: true)
!439 = !DIEnumerator(name: "InvalidFilename", value: 33, isUnsigned: true)
!440 = !DIEnumerator(name: "ArgumentListTooLong", value: 34, isUnsigned: true)
!441 = !DIEnumerator(name: "Interrupted", value: 35, isUnsigned: true)
!442 = !DIEnumerator(name: "Unsupported", value: 36, isUnsigned: true)
!443 = !DIEnumerator(name: "UnexpectedEof", value: 37, isUnsigned: true)
!444 = !DIEnumerator(name: "OutOfMemory", value: 38, isUnsigned: true)
!445 = !DIEnumerator(name: "InProgress", value: 39, isUnsigned: true)
!446 = !DIEnumerator(name: "TooManyOpenFiles", value: 40, isUnsigned: true)
!447 = !DIEnumerator(name: "Other", value: 41, isUnsigned: true)
!448 = !DIEnumerator(name: "Uncategorized", value: 42, isUnsigned: true)
!449 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "AssertKind", scope: !450, file: !2, baseType: !223, size: 8, align: 8, flags: DIFlagEnumClass, elements: !451)
!450 = !DINamespace(name: "panicking", scope: !215)
!451 = !{!452, !453, !454}
!452 = !DIEnumerator(name: "Eq", value: 0, isUnsigned: true)
!453 = !DIEnumerator(name: "Ne", value: 1, isUnsigned: true)
!454 = !DIEnumerator(name: "Match", value: 2, isUnsigned: true)
!455 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "RemainingMode", scope: !188, file: !2, baseType: !223, size: 8, align: 8, flags: DIFlagEnumClass, elements: !456)
!456 = !{!457, !458, !459}
!457 = !DIEnumerator(name: "None", value: 0, isUnsigned: true)
!458 = !DIEnumerator(name: "Slash", value: 1, isUnsigned: true)
!459 = !DIEnumerator(name: "Plus", value: 2, isUnsigned: true)
!460 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ValueSource", scope: !461, file: !2, baseType: !223, size: 8, align: 8, flags: DIFlagEnumClass, elements: !465)
!461 = !DINamespace(name: "value_source", scope: !462)
!462 = !DINamespace(name: "matches", scope: !463)
!463 = !DINamespace(name: "parser", scope: !464)
!464 = !DINamespace(name: "clap_builder", scope: null)
!465 = !{!466, !467, !468}
!466 = !DIEnumerator(name: "DefaultValue", value: 0, isUnsigned: true)
!467 = !DIEnumerator(name: "EnvVariable", value: 1, isUnsigned: true)
!468 = !DIEnumerator(name: "CommandLine", value: 2, isUnsigned: true)
!469 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ArgAction", scope: !470, file: !2, baseType: !223, size: 8, align: 8, flags: DIFlagEnumClass, elements: !472)
!470 = !DINamespace(name: "action", scope: !471)
!471 = !DINamespace(name: "builder", scope: !464)
!472 = !{!473, !474, !475, !476, !477, !478, !479, !480, !481}
!473 = !DIEnumerator(name: "Set", value: 0, isUnsigned: true)
!474 = !DIEnumerator(name: "Append", value: 1, isUnsigned: true)
!475 = !DIEnumerator(name: "SetTrue", value: 2, isUnsigned: true)
!476 = !DIEnumerator(name: "SetFalse", value: 3, isUnsigned: true)
!477 = !DIEnumerator(name: "Count", value: 4, isUnsigned: true)
!478 = !DIEnumerator(name: "Help", value: 5, isUnsigned: true)
!479 = !DIEnumerator(name: "HelpShort", value: 6, isUnsigned: true)
!480 = !DIEnumerator(name: "HelpLong", value: 7, isUnsigned: true)
!481 = !DIEnumerator(name: "Version", value: 8, isUnsigned: true)
!482 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "AlignmentEnum", scope: !483, file: !2, baseType: !261, size: 64, align: 64, flags: DIFlagEnumClass, elements: !485)
!483 = !DINamespace(name: "alignment", scope: !484)
!484 = !DINamespace(name: "mem", scope: !215)
!485 = !{!486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549}
!486 = !DIEnumerator(name: "_Align1Shl0", value: 1, isUnsigned: true)
!487 = !DIEnumerator(name: "_Align1Shl1", value: 2, isUnsigned: true)
!488 = !DIEnumerator(name: "_Align1Shl2", value: 4, isUnsigned: true)
!489 = !DIEnumerator(name: "_Align1Shl3", value: 8, isUnsigned: true)
!490 = !DIEnumerator(name: "_Align1Shl4", value: 16, isUnsigned: true)
!491 = !DIEnumerator(name: "_Align1Shl5", value: 32, isUnsigned: true)
!492 = !DIEnumerator(name: "_Align1Shl6", value: 64, isUnsigned: true)
!493 = !DIEnumerator(name: "_Align1Shl7", value: 128, isUnsigned: true)
!494 = !DIEnumerator(name: "_Align1Shl8", value: 256, isUnsigned: true)
!495 = !DIEnumerator(name: "_Align1Shl9", value: 512, isUnsigned: true)
!496 = !DIEnumerator(name: "_Align1Shl10", value: 1024, isUnsigned: true)
!497 = !DIEnumerator(name: "_Align1Shl11", value: 2048, isUnsigned: true)
!498 = !DIEnumerator(name: "_Align1Shl12", value: 4096, isUnsigned: true)
!499 = !DIEnumerator(name: "_Align1Shl13", value: 8192, isUnsigned: true)
!500 = !DIEnumerator(name: "_Align1Shl14", value: 16384, isUnsigned: true)
!501 = !DIEnumerator(name: "_Align1Shl15", value: 32768, isUnsigned: true)
!502 = !DIEnumerator(name: "_Align1Shl16", value: 65536, isUnsigned: true)
!503 = !DIEnumerator(name: "_Align1Shl17", value: 131072, isUnsigned: true)
!504 = !DIEnumerator(name: "_Align1Shl18", value: 262144, isUnsigned: true)
!505 = !DIEnumerator(name: "_Align1Shl19", value: 524288, isUnsigned: true)
!506 = !DIEnumerator(name: "_Align1Shl20", value: 1048576, isUnsigned: true)
!507 = !DIEnumerator(name: "_Align1Shl21", value: 2097152, isUnsigned: true)
!508 = !DIEnumerator(name: "_Align1Shl22", value: 4194304, isUnsigned: true)
!509 = !DIEnumerator(name: "_Align1Shl23", value: 8388608, isUnsigned: true)
!510 = !DIEnumerator(name: "_Align1Shl24", value: 16777216, isUnsigned: true)
!511 = !DIEnumerator(name: "_Align1Shl25", value: 33554432, isUnsigned: true)
!512 = !DIEnumerator(name: "_Align1Shl26", value: 67108864, isUnsigned: true)
!513 = !DIEnumerator(name: "_Align1Shl27", value: 134217728, isUnsigned: true)
!514 = !DIEnumerator(name: "_Align1Shl28", value: 268435456, isUnsigned: true)
!515 = !DIEnumerator(name: "_Align1Shl29", value: 536870912, isUnsigned: true)
!516 = !DIEnumerator(name: "_Align1Shl30", value: 1073741824, isUnsigned: true)
!517 = !DIEnumerator(name: "_Align1Shl31", value: 2147483648, isUnsigned: true)
!518 = !DIEnumerator(name: "_Align1Shl32", value: 4294967296, isUnsigned: true)
!519 = !DIEnumerator(name: "_Align1Shl33", value: 8589934592, isUnsigned: true)
!520 = !DIEnumerator(name: "_Align1Shl34", value: 17179869184, isUnsigned: true)
!521 = !DIEnumerator(name: "_Align1Shl35", value: 34359738368, isUnsigned: true)
!522 = !DIEnumerator(name: "_Align1Shl36", value: 68719476736, isUnsigned: true)
!523 = !DIEnumerator(name: "_Align1Shl37", value: 137438953472, isUnsigned: true)
!524 = !DIEnumerator(name: "_Align1Shl38", value: 274877906944, isUnsigned: true)
!525 = !DIEnumerator(name: "_Align1Shl39", value: 549755813888, isUnsigned: true)
!526 = !DIEnumerator(name: "_Align1Shl40", value: 1099511627776, isUnsigned: true)
!527 = !DIEnumerator(name: "_Align1Shl41", value: 2199023255552, isUnsigned: true)
!528 = !DIEnumerator(name: "_Align1Shl42", value: 4398046511104, isUnsigned: true)
!529 = !DIEnumerator(name: "_Align1Shl43", value: 8796093022208, isUnsigned: true)
!530 = !DIEnumerator(name: "_Align1Shl44", value: 17592186044416, isUnsigned: true)
!531 = !DIEnumerator(name: "_Align1Shl45", value: 35184372088832, isUnsigned: true)
!532 = !DIEnumerator(name: "_Align1Shl46", value: 70368744177664, isUnsigned: true)
!533 = !DIEnumerator(name: "_Align1Shl47", value: 140737488355328, isUnsigned: true)
!534 = !DIEnumerator(name: "_Align1Shl48", value: 281474976710656, isUnsigned: true)
!535 = !DIEnumerator(name: "_Align1Shl49", value: 562949953421312, isUnsigned: true)
!536 = !DIEnumerator(name: "_Align1Shl50", value: 1125899906842624, isUnsigned: true)
!537 = !DIEnumerator(name: "_Align1Shl51", value: 2251799813685248, isUnsigned: true)
!538 = !DIEnumerator(name: "_Align1Shl52", value: 4503599627370496, isUnsigned: true)
!539 = !DIEnumerator(name: "_Align1Shl53", value: 9007199254740992, isUnsigned: true)
!540 = !DIEnumerator(name: "_Align1Shl54", value: 18014398509481984, isUnsigned: true)
!541 = !DIEnumerator(name: "_Align1Shl55", value: 36028797018963968, isUnsigned: true)
!542 = !DIEnumerator(name: "_Align1Shl56", value: 72057594037927936, isUnsigned: true)
!543 = !DIEnumerator(name: "_Align1Shl57", value: 144115188075855872, isUnsigned: true)
!544 = !DIEnumerator(name: "_Align1Shl58", value: 288230376151711744, isUnsigned: true)
!545 = !DIEnumerator(name: "_Align1Shl59", value: 576460752303423488, isUnsigned: true)
!546 = !DIEnumerator(name: "_Align1Shl60", value: 1152921504606846976, isUnsigned: true)
!547 = !DIEnumerator(name: "_Align1Shl61", value: 2305843009213693952, isUnsigned: true)
!548 = !DIEnumerator(name: "_Align1Shl62", value: 4611686018427387904, isUnsigned: true)
!549 = !DIEnumerator(name: "_Align1Shl63", value: 9223372036854775808, isUnsigned: true)
!550 = !{!0, !24, !170, !262, !271, !279, !295, !317}
!551 = distinct !DISubprogram(name: "uumain<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>", linkageName: "_RINvCs9xOv1NcnHfv_9uu_expand6uumainINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters6cloned6ClonedINtNtNtBG_5slice4iter4IterNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringEEECscBbfQkuq0VR_6expand", scope: !188, file: !552, line: 209, type: !553, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !737, retainedNodes: !591)
!552 = !DIFile(filename: "src/uu/expand/src/expand.rs", directory: "/workspaces/Thesis/.build/uutils-coreutils", checksumkind: CSK_MD5, checksum: "523f37511915adfd9a02f0b6713fdb8f")
!553 = !DISubroutineType(types: !554)
!554 = !{!36, !555}
!555 = !DICompositeType(tag: DW_TAG_structure_type, name: "Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>", scope: !556, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !559, templateParams: !589, identifier: "5584c985d7c41b0da8d0618cdc534e17")
!556 = !DINamespace(name: "cloned", scope: !557)
!557 = !DINamespace(name: "adapters", scope: !558)
!558 = !DINamespace(name: "iter", scope: !215)
!559 = !{!560}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !555, file: !2, baseType: !561, size: 128, align: 64, flags: DIFlagPrivate)
!561 = !DICompositeType(tag: DW_TAG_structure_type, name: "Iter<std::ffi::os_str::OsString>", scope: !562, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !564, templateParams: !581, identifier: "8259dc14343f41d9b97c4864c3dbe757")
!562 = !DINamespace(name: "iter", scope: !563)
!563 = !DINamespace(name: "slice", scope: !215)
!564 = !{!565, !583, !584}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !561, file: !2, baseType: !566, size: 64, align: 64, flags: DIFlagPrivate)
!566 = !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<std::ffi::os_str::OsString>", scope: !219, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !567, templateParams: !581, identifier: "ada7bedff0299e56103e10a46a0ef3c")
!567 = !{!568}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !566, file: !2, baseType: !569, size: 64, align: 64, flags: DIFlagPrivate)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const std::ffi::os_str::OsString", baseType: !570, size: 64, align: 64, dwarfAddressSpace: 0)
!570 = !DICompositeType(tag: DW_TAG_structure_type, name: "OsString", scope: !571, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !573, templateParams: !23, identifier: "2c978954df758083fc02e2b0c195b13f")
!571 = !DINamespace(name: "os_str", scope: !572)
!572 = !DINamespace(name: "ffi", scope: !17)
!573 = !{!574}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !570, file: !2, baseType: !575, size: 192, align: 64, flags: DIFlagPrivate)
!575 = !DICompositeType(tag: DW_TAG_structure_type, name: "Buf", scope: !576, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !579, templateParams: !23, identifier: "b8219b3ab45ea3813ec5a4e712a8ea29")
!576 = !DINamespace(name: "bytes", scope: !577)
!577 = !DINamespace(name: "os_str", scope: !578)
!578 = !DINamespace(name: "sys", scope: !17)
!579 = !{!580}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !575, file: !2, baseType: !201, size: 192, align: 64, flags: DIFlagPublic)
!581 = !{!582}
!582 = !DITemplateTypeParameter(name: "T", type: !570)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "end_or_len", scope: !561, file: !2, baseType: !569, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !561, file: !2, baseType: !585, align: 8, offset: 128, flags: DIFlagPrivate)
!585 = !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<&std::ffi::os_str::OsString>", scope: !228, file: !2, align: 8, flags: DIFlagPublic, elements: !23, templateParams: !586, identifier: "c5ca3d99f09bc96bf4bad4a5d37112b2")
!586 = !{!587}
!587 = !DITemplateTypeParameter(name: "T", type: !588)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&std::ffi::os_str::OsString", baseType: !570, size: 64, align: 64, dwarfAddressSpace: 0)
!589 = !{!590}
!590 = !DITemplateTypeParameter(name: "I", type: !561)
!591 = !{!592, !593, !622, !624, !626, !634, !708, !722, !728, !734}
!592 = !DILocalVariable(name: "args", arg: 1, scope: !551, file: !552, line: 209, type: !555)
!593 = !DILocalVariable(name: "result", scope: !594, file: !552, line: 209, type: !595, align: 64)
!594 = distinct !DILexicalBlock(scope: !551, file: !552, line: 209, column: 1)
!595 = !DICompositeType(tag: DW_TAG_structure_type, name: "Result<(), alloc::boxed::Box<dyn uucore::mods::error::UError, alloc::alloc::Global>>", scope: !596, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !597, templateParams: !23, identifier: "f424191fc225de333ba7ec08224ab1ef")
!596 = !DINamespace(name: "result", scope: !215)
!597 = !{!598}
!598 = !DICompositeType(tag: DW_TAG_variant_part, scope: !595, file: !2, size: 128, align: 64, elements: !599, templateParams: !23, identifier: "e27771c9776928429b5a1db567b655ae", discriminator: !621)
!599 = !{!600, !617}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !598, file: !2, baseType: !601, size: 128, align: 64, extraData: i64 0)
!601 = !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !595, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !602, templateParams: !604, identifier: "edd09fcd2024512970af6e1a253c920")
!602 = !{!603}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !601, file: !2, baseType: !7, align: 8, flags: DIFlagPublic)
!604 = !{!605, !606}
!605 = !DITemplateTypeParameter(name: "T", type: !7)
!606 = !DITemplateTypeParameter(name: "E", type: !607)
!607 = !DICompositeType(tag: DW_TAG_structure_type, name: "alloc::boxed::Box<dyn uucore::mods::error::UError, alloc::alloc::Global>", file: !2, size: 128, align: 64, elements: !608, templateParams: !23, identifier: "fd3fc0f1e87f11eac4a7ce6c333e6fd8")
!608 = !{!609, !612}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !607, file: !2, baseType: !610, size: 64, align: 64)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64, align: 64, dwarfAddressSpace: 0)
!611 = !DICompositeType(tag: DW_TAG_structure_type, name: "dyn uucore::mods::error::UError", file: !2, align: 8, elements: !23, identifier: "9627b1e37b0aeff23f0ec4355eb9da3d")
!612 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !607, file: !2, baseType: !613, size: 64, align: 64, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&[usize; 12]", baseType: !614, size: 64, align: 64, dwarfAddressSpace: 0)
!614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 768, align: 64, elements: !615)
!615 = !{!616}
!616 = !DISubrange(count: 12, lowerBound: 0)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !598, file: !2, baseType: !618, size: 128, align: 64)
!618 = !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !595, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !619, templateParams: !604, identifier: "3b5687df8a1d026e1338d19d2720a327")
!619 = !{!620}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !618, file: !2, baseType: !607, size: 128, align: 64, flags: DIFlagPublic)
!621 = !DIDerivedType(tag: DW_TAG_member, scope: !595, file: !2, baseType: !261, size: 64, align: 64, flags: DIFlagArtificial)
!622 = !DILocalVariable(name: "e", scope: !623, file: !552, line: 209, type: !607, align: 64)
!623 = distinct !DILexicalBlock(scope: !594, file: !552, line: 209, column: 1)
!624 = !DILocalVariable(name: "s", scope: !625, file: !552, line: 209, type: !196, align: 64)
!625 = distinct !DILexicalBlock(scope: !623, file: !552, line: 209, column: 1)
!626 = !DILocalVariable(name: "args", scope: !627, file: !552, line: 209, type: !630, align: 64)
!627 = !DILexicalBlockFile(scope: !628, file: !552, discriminator: 0)
!628 = distinct !DILexicalBlock(scope: !623, file: !629, line: 114, column: 33)
!629 = !DIFile(filename: "library/alloc/src/macros.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "c06fded2c893c2cc0e8ea200156f1086")
!630 = !DICompositeType(tag: DW_TAG_structure_type, name: "(&alloc::boxed::Box<dyn uucore::mods::error::UError, alloc::alloc::Global>)", file: !2, size: 64, align: 64, elements: !631, templateParams: !23, identifier: "a27ada767c14797f8756f0c64c6f11f9")
!631 = !{!632}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !630, file: !2, baseType: !633, size: 64, align: 64)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&alloc::boxed::Box<dyn uucore::mods::error::UError, alloc::alloc::Global>", baseType: !607, size: 64, align: 64, dwarfAddressSpace: 0)
!634 = !DILocalVariable(name: "args", scope: !635, file: !552, line: 209, type: !637, align: 64)
!635 = !DILexicalBlockFile(scope: !636, file: !552, discriminator: 0)
!636 = distinct !DILexicalBlock(scope: !628, file: !629, line: 114, column: 33)
!637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !638, size: 128, align: 64, elements: !706)
!638 = !DICompositeType(tag: DW_TAG_structure_type, name: "Argument", scope: !639, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !641, templateParams: !23, identifier: "4cd4bfe7ddc2978ae9415534f4663631")
!639 = !DINamespace(name: "rt", scope: !640)
!640 = !DINamespace(name: "fmt", scope: !215)
!641 = !{!642}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "ty", scope: !638, file: !2, baseType: !643, size: 128, align: 64, flags: DIFlagPrivate)
!643 = !DICompositeType(tag: DW_TAG_structure_type, name: "ArgumentType", scope: !639, file: !2, size: 128, align: 64, flags: DIFlagPrivate, elements: !644, templateParams: !23, identifier: "74a71dab1e468a8764dd439864fab0a")
!644 = !{!645}
!645 = !DICompositeType(tag: DW_TAG_variant_part, scope: !643, file: !2, size: 128, align: 64, elements: !646, templateParams: !23, identifier: "10046964505ae647b47a9177b47a9a42", discriminator: !705)
!646 = !{!647, !701}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "Placeholder", scope: !645, file: !2, baseType: !648, size: 128, align: 64)
!648 = !DICompositeType(tag: DW_TAG_structure_type, name: "Placeholder", scope: !643, file: !2, size: 128, align: 64, flags: DIFlagPrivate, elements: !649, templateParams: !23, identifier: "24080f6d2d53a8e071b590ddca3f4662")
!649 = !{!650, !655, !696}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !648, file: !2, baseType: !651, size: 64, align: 64, flags: DIFlagPrivate)
!651 = !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<()>", scope: !219, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !652, templateParams: !654, identifier: "3e177d5d5db223e044ee794fc78edd97")
!652 = !{!653}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !651, file: !2, baseType: !6, size: 64, align: 64, flags: DIFlagPrivate)
!654 = !{!605}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "formatter", scope: !648, file: !2, baseType: !656, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "unsafe fn(core::ptr::non_null::NonNull<()>, &mut core::fmt::Formatter) -> core::result::Result<(), core::fmt::Error>", baseType: !657, size: 64, align: 64, dwarfAddressSpace: 0)
!657 = !DISubroutineType(types: !658)
!658 = !{!659, !651, !675}
!659 = !DICompositeType(tag: DW_TAG_structure_type, name: "Result<(), core::fmt::Error>", scope: !596, file: !2, size: 8, align: 8, flags: DIFlagPublic, elements: !660, templateParams: !23, identifier: "8cbc53680e90728d97140493c1435cc7")
!660 = !{!661}
!661 = !DICompositeType(tag: DW_TAG_variant_part, scope: !659, file: !2, size: 8, align: 8, elements: !662, templateParams: !23, identifier: "4422a90e523444cfbcd64a77ff70349", discriminator: !674)
!662 = !{!663, !670}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !661, file: !2, baseType: !664, size: 8, align: 8, extraData: i8 0)
!664 = !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !659, file: !2, size: 8, align: 8, flags: DIFlagPublic, elements: !665, templateParams: !667, identifier: "70dfd3c64c8456e9119916fa26e70f65")
!665 = !{!666}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !664, file: !2, baseType: !7, align: 8, offset: 8, flags: DIFlagPublic)
!667 = !{!605, !668}
!668 = !DITemplateTypeParameter(name: "E", type: !669)
!669 = !DICompositeType(tag: DW_TAG_structure_type, name: "Error", scope: !640, file: !2, align: 8, flags: DIFlagPublic, elements: !23, identifier: "5cb5fd3af5e3979b9376551f7917ef12")
!670 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !661, file: !2, baseType: !671, size: 8, align: 8, extraData: i8 1)
!671 = !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !659, file: !2, size: 8, align: 8, flags: DIFlagPublic, elements: !672, templateParams: !667, identifier: "c714bb80a48e775abb1f27ee268511d")
!672 = !{!673}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !671, file: !2, baseType: !669, align: 8, offset: 8, flags: DIFlagPublic)
!674 = !DIDerivedType(tag: DW_TAG_member, scope: !659, file: !2, baseType: !223, size: 8, align: 8, flags: DIFlagArtificial)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::fmt::Formatter", baseType: !676, size: 64, align: 64, dwarfAddressSpace: 0)
!676 = !DICompositeType(tag: DW_TAG_structure_type, name: "Formatter", scope: !640, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !677, templateParams: !23, identifier: "cdc0597f49020b4c916efb0131c3ac59")
!677 = !{!678, !685}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !676, file: !2, baseType: !679, size: 64, align: 32, offset: 128, flags: DIFlagPrivate)
!679 = !DICompositeType(tag: DW_TAG_structure_type, name: "FormattingOptions", scope: !640, file: !2, size: 64, align: 32, flags: DIFlagPublic, elements: !680, templateParams: !23, identifier: "5dc3edbab8804b4d910c6395050f7186")
!680 = !{!681, !682, !684}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !679, file: !2, baseType: !391, size: 32, align: 32, flags: DIFlagPrivate)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !679, file: !2, baseType: !683, size: 16, align: 16, offset: 32, flags: DIFlagPrivate)
!683 = !DIBasicType(name: "u16", size: 16, encoding: DW_ATE_unsigned)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !679, file: !2, baseType: !683, size: 16, align: 16, offset: 48, flags: DIFlagPrivate)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !676, file: !2, baseType: !686, size: 128, align: 64, flags: DIFlagPrivate)
!686 = !DICompositeType(tag: DW_TAG_structure_type, name: "&mut dyn core::fmt::Write", file: !2, size: 128, align: 64, elements: !687, templateParams: !23, identifier: "a41bda62900bf5b48be4d9a51623ef17")
!687 = !{!688, !691}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !686, file: !2, baseType: !689, size: 64, align: 64)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64, align: 64, dwarfAddressSpace: 0)
!690 = !DICompositeType(tag: DW_TAG_structure_type, name: "dyn core::fmt::Write", file: !2, align: 8, elements: !23, identifier: "897da74a0f39fe85103a41975dc86e15")
!691 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !686, file: !2, baseType: !692, size: 64, align: 64, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&[usize; 6]", baseType: !693, size: 64, align: 64, dwarfAddressSpace: 0)
!693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 384, align: 64, elements: !694)
!694 = !{!695}
!695 = !DISubrange(count: 6, lowerBound: 0)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "_lifetime", scope: !648, file: !2, baseType: !697, align: 8, offset: 128, flags: DIFlagPrivate)
!697 = !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<&()>", scope: !228, file: !2, align: 8, flags: DIFlagPublic, elements: !23, templateParams: !698, identifier: "35c11eb64061f7d7aec2e52a3812a33e")
!698 = !{!699}
!699 = !DITemplateTypeParameter(name: "T", type: !700)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&()", baseType: !7, size: 64, align: 64, dwarfAddressSpace: 0)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "Count", scope: !645, file: !2, baseType: !702, size: 128, align: 64, extraData: i64 0)
!702 = !DICompositeType(tag: DW_TAG_structure_type, name: "Count", scope: !643, file: !2, size: 128, align: 64, flags: DIFlagPrivate, elements: !703, templateParams: !23, identifier: "6a1b6cdeb792b64e3f70edeb92a076d1")
!703 = !{!704}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !702, file: !2, baseType: !683, size: 16, align: 16, offset: 64, flags: DIFlagPrivate)
!705 = !DIDerivedType(tag: DW_TAG_member, scope: !643, file: !2, baseType: !261, size: 64, align: 64, flags: DIFlagArtificial)
!706 = !{!707}
!707 = !DISubrange(count: 1, lowerBound: 0)
!708 = !DILocalVariable(name: "args", scope: !709, file: !552, line: 209, type: !712, align: 64)
!709 = !DILexicalBlockFile(scope: !710, file: !552, discriminator: 0)
!710 = distinct !DILexicalBlock(scope: !625, file: !711, line: 646, column: 24)
!711 = !DIFile(filename: "library/core/src/macros/mod.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "824d22018dce292422ff101909d966fc")
!712 = !DICompositeType(tag: DW_TAG_structure_type, name: "(&&str, &alloc::string::String)", file: !2, size: 128, align: 64, elements: !713, templateParams: !23, identifier: "76ca25a586351b8351915526317f5f43")
!713 = !{!714, !721}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !712, file: !2, baseType: !715, size: 64, align: 64)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&&str", baseType: !716, size: 64, align: 64, dwarfAddressSpace: 0)
!716 = !DICompositeType(tag: DW_TAG_structure_type, name: "&str", file: !2, size: 128, align: 64, elements: !717, templateParams: !23, identifier: "6fc9dd7daffb1f73292744aea0793200")
!717 = !{!718, !720}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !716, file: !2, baseType: !719, size: 64, align: 64)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64, dwarfAddressSpace: 0)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !716, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !712, file: !2, baseType: !270, size: 64, align: 64, offset: 64)
!722 = !DILocalVariable(name: "args", scope: !723, file: !552, line: 209, type: !725, align: 64)
!723 = !DILexicalBlockFile(scope: !724, file: !552, discriminator: 0)
!724 = distinct !DILexicalBlock(scope: !710, file: !711, line: 646, column: 24)
!725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !638, size: 256, align: 64, elements: !726)
!726 = !{!727}
!727 = !DISubrange(count: 2, lowerBound: 0)
!728 = !DILocalVariable(name: "args", scope: !729, file: !552, line: 209, type: !731, align: 64)
!729 = !DILexicalBlockFile(scope: !730, file: !552, discriminator: 0)
!730 = distinct !DILexicalBlock(scope: !625, file: !711, line: 646, column: 24)
!731 = !DICompositeType(tag: DW_TAG_structure_type, name: "(&&str)", file: !2, size: 64, align: 64, elements: !732, templateParams: !23, identifier: "62abe662e5bcf477833ff0b2a3ec0386")
!732 = !{!733}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !731, file: !2, baseType: !715, size: 64, align: 64)
!734 = !DILocalVariable(name: "args", scope: !735, file: !552, line: 209, type: !637, align: 64)
!735 = !DILexicalBlockFile(scope: !736, file: !552, discriminator: 0)
!736 = distinct !DILexicalBlock(scope: !730, file: !711, line: 646, column: 24)
!737 = !{!738}
!738 = !DITemplateTypeParameter(name: "impl uucore::Args", type: !555)
!739 = !DILocation(line: 209, column: 1, scope: !551)
!740 = !DILocation(line: 209, column: 1, scope: !594)
!741 = !DILocation(line: 209, column: 1, scope: !623)
!742 = !DILocation(line: 209, column: 1, scope: !625)
!743 = !DILocation(line: 209, column: 1, scope: !635)
!744 = !DILocation(line: 209, column: 1, scope: !723)
!745 = !DILocation(line: 209, column: 1, scope: !735)
!746 = !DILocation(line: 209, column: 15, scope: !551)
!747 = !DILocation(line: 209, column: 1, scope: !627)
!748 = !DILocation(line: 209, column: 16, scope: !551)
!749 = !DILocation(line: 209, column: 15, scope: !594)
!750 = !DILocalVariable(name: "value", arg: 1, scope: !751, file: !752, line: 613, type: !196)
!751 = distinct !DISubprogram(name: "must_use<alloc::string::String>", linkageName: "_RINvNtCsgxBkk5gSRhY_4core4hint8must_useNtNtCs6i54tJFfzR_5alloc6string6StringECscBbfQkuq0VR_6expand", scope: !753, file: !752, line: 613, type: !754, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !757, retainedNodes: !756)
!752 = !DIFile(filename: "library/core/src/hint.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "720ecb12dbf1a304509abd161627e0e2")
!753 = !DINamespace(name: "hint", scope: !215)
!754 = !DISubroutineType(types: !755)
!755 = !{!196, !196}
!756 = !{!750}
!757 = !{!758}
!758 = !DITemplateTypeParameter(name: "T", type: !196)
!759 = !DILocation(line: 613, column: 26, scope: !751, inlinedAt: !760)
!760 = distinct !DILocation(line: 209, column: 1, scope: !623)
!761 = !DILocation(line: 614, column: 5, scope: !751, inlinedAt: !760)
!762 = !DILocation(line: 615, column: 2, scope: !751, inlinedAt: !760)
!763 = !DILocation(line: 209, column: 15, scope: !623)
!764 = !DILocation(line: 209, column: 1, scope: !709)
!765 = !DILocation(line: 209, column: 1, scope: !729)
!766 = !DILocation(line: 209, column: 15, scope: !625)
!767 = distinct !DISubprogram(name: "unwrap_or_else<(), uucore::mods::locale::LocalizationError, expand::main::{closure_env#0}>", linkageName: "_RINvMNtCsgxBkk5gSRhY_4core6resultINtB3_6ResultuNtNtNtCs1iFJFqccjfm_6uucore4mods6locale17LocalizationErrorE14unwrap_or_elseNCNvCscBbfQkuq0VR_6expand4main0EB20_", scope: !769, file: !768, line: 1614, type: !907, scopeLine: 1614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !937, declaration: !936, retainedNodes: !939)
!768 = !DIFile(filename: "library/core/src/result.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "9cc68a9aa40a713f2495e5c9463681ad")
!769 = !DICompositeType(tag: DW_TAG_structure_type, name: "Result<(), uucore::mods::locale::LocalizationError>", scope: !596, file: !2, size: 768, align: 64, flags: DIFlagPublic, elements: !770, templateParams: !23, identifier: "9feae07847adf87b5014a0cfe33cb196")
!770 = !{!771}
!771 = !DICompositeType(tag: DW_TAG_variant_part, scope: !769, file: !2, size: 768, align: 64, elements: !772, templateParams: !23, identifier: "3dc55aa290b9e4e75b4358631e14de6d", discriminator: !906)
!772 = !{!773, !902}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !771, file: !2, baseType: !774, size: 768, align: 64, extraData: i64 -1)
!774 = !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !769, file: !2, size: 768, align: 64, flags: DIFlagPublic, elements: !775, templateParams: !777, identifier: "f59d3e816d7628aa5f7103b756a4c00a")
!775 = !{!776}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !774, file: !2, baseType: !7, align: 8, flags: DIFlagPublic)
!777 = !{!605, !778}
!778 = !DITemplateTypeParameter(name: "E", type: !779)
!779 = !DICompositeType(tag: DW_TAG_structure_type, name: "LocalizationError", scope: !780, file: !2, size: 768, align: 64, flags: DIFlagPublic, elements: !783, templateParams: !23, identifier: "4b1d28c81109fcf4b5de87514698748a")
!780 = !DINamespace(name: "locale", scope: !781)
!781 = !DINamespace(name: "mods", scope: !782)
!782 = !DINamespace(name: "uucore", scope: null)
!783 = !{!784}
!784 = !DICompositeType(tag: DW_TAG_variant_part, scope: !779, file: !2, size: 768, align: 64, elements: !785, templateParams: !23, identifier: "5b56ed9e3d3bfe3c7896e6f7c2e089da", discriminator: !901)
!785 = !{!786, !875, !879, !889, !893, !897}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "Io", scope: !784, file: !2, baseType: !787, size: 768, align: 64, extraData: i64 2)
!787 = !DICompositeType(tag: DW_TAG_structure_type, name: "Io", scope: !779, file: !2, size: 768, align: 64, flags: DIFlagPublic, elements: !788, templateParams: !23, identifier: "3fd8b3a703b6bb64e79ba0a24bdea955")
!788 = !{!789, !870}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !787, file: !2, baseType: !790, size: 64, align: 64, offset: 256, flags: DIFlagPublic)
!790 = !DICompositeType(tag: DW_TAG_structure_type, name: "Error", scope: !403, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !791, templateParams: !23, identifier: "3083a27902527637344ea9b189047d6")
!791 = !{!792}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "repr", scope: !790, file: !2, baseType: !793, size: 64, align: 64, flags: DIFlagPrivate)
!793 = !DICompositeType(tag: DW_TAG_structure_type, name: "Repr", scope: !794, file: !2, size: 64, align: 64, flags: DIFlagProtected, elements: !795, templateParams: !23, identifier: "fe0562853c4aee67a32c52286365ff9")
!794 = !DINamespace(name: "repr", scope: !403)
!795 = !{!796, !797}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !793, file: !2, baseType: !651, size: 64, align: 64, flags: DIFlagPrivate)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !793, file: !2, baseType: !798, align: 8, offset: 64, flags: DIFlagPrivate)
!798 = !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<core::io::error::ErrorData<core::io::error::CustomOwner>>", scope: !228, file: !2, align: 8, flags: DIFlagPublic, elements: !23, templateParams: !799, identifier: "fa2bb1311c6288971b709f5591f06bd2")
!799 = !{!800}
!800 = !DITemplateTypeParameter(name: "T", type: !801)
!801 = !DICompositeType(tag: DW_TAG_structure_type, name: "ErrorData<core::io::error::CustomOwner>", scope: !403, file: !2, size: 128, align: 64, flags: DIFlagPrivate, elements: !802, templateParams: !23, identifier: "96ebafb78862171fe09485768dfe99f8")
!802 = !{!803}
!803 = !DICompositeType(tag: DW_TAG_variant_part, scope: !801, file: !2, size: 128, align: 64, elements: !804, templateParams: !23, identifier: "c9094a7f100584f4d28c14faee30ef88", discriminator: !869)
!804 = !{!805, !852, !856, !865}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "Os", scope: !803, file: !2, baseType: !806, size: 128, align: 64, extraData: i8 0)
!806 = !DICompositeType(tag: DW_TAG_structure_type, name: "Os", scope: !801, file: !2, size: 128, align: 64, flags: DIFlagPrivate, elements: !807, templateParams: !809, identifier: "a6a30daf4b96519a4e5b905ebcc17397")
!807 = !{!808}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !806, file: !2, baseType: !36, size: 32, align: 32, offset: 32, flags: DIFlagPrivate)
!809 = !{!810}
!810 = !DITemplateTypeParameter(name: "C", type: !811)
!811 = !DICompositeType(tag: DW_TAG_structure_type, name: "CustomOwner", scope: !403, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !812, templateParams: !23, identifier: "6108b327ab28eb1688c36a8a9d84517a")
!812 = !{!813}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !811, file: !2, baseType: !814, size: 64, align: 64, flags: DIFlagPrivate)
!814 = !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<core::io::error::Custom>", scope: !219, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !815, templateParams: !850, identifier: "4e8c430bc29df931dff239ba993a8e6")
!815 = !{!816}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !814, file: !2, baseType: !817, size: 64, align: 64, flags: DIFlagPrivate)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const core::io::error::Custom", baseType: !818, size: 64, align: 64, dwarfAddressSpace: 0)
!818 = !DICompositeType(tag: DW_TAG_structure_type, name: "Custom", scope: !403, file: !2, size: 320, align: 64, flags: DIFlagPublic, elements: !819, templateParams: !23, identifier: "b13b018353cf72e4a2babfe627a32d5")
!819 = !{!820, !821, !837, !845}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !818, file: !2, baseType: !402, size: 8, align: 8, offset: 256, flags: DIFlagPrivate)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !818, file: !2, baseType: !822, size: 128, align: 64, flags: DIFlagPrivate)
!822 = !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<(dyn core::error::Error + core::marker::Send + core::marker::Sync)>", scope: !219, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !823, templateParams: !835, identifier: "c2fb69ac3aaf6fdc8c345589453bc34")
!823 = !{!824}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !822, file: !2, baseType: !825, size: 128, align: 64, flags: DIFlagPrivate)
!825 = !DICompositeType(tag: DW_TAG_structure_type, name: "*const (dyn core::error::Error + core::marker::Send + core::marker::Sync)", file: !2, size: 128, align: 64, elements: !826, templateParams: !23, identifier: "8b57d9bf8f4c267e3595dc2fc65501c2")
!826 = !{!827, !830}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !825, file: !2, baseType: !828, size: 64, align: 64)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64, align: 64, dwarfAddressSpace: 0)
!829 = !DICompositeType(tag: DW_TAG_structure_type, name: "(dyn core::error::Error + core::marker::Send + core::marker::Sync)", file: !2, align: 8, elements: !23, identifier: "b1d90e5fc38af8c399bfcd4183275c14")
!830 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !825, file: !2, baseType: !831, size: 64, align: 64, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&[usize; 10]", baseType: !832, size: 64, align: 64, dwarfAddressSpace: 0)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 640, align: 64, elements: !833)
!833 = !{!834}
!834 = !DISubrange(count: 10, lowerBound: 0)
!835 = !{!836}
!836 = !DITemplateTypeParameter(name: "T", type: !829)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "error_drop", scope: !818, file: !2, baseType: !838, size: 64, align: 64, offset: 128, flags: DIFlagPrivate)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "unsafe fn(*mut (dyn core::error::Error + core::marker::Send + core::marker::Sync))", baseType: !839, size: 64, align: 64, dwarfAddressSpace: 0)
!839 = !DISubroutineType(types: !840)
!840 = !{null, !841}
!841 = !DICompositeType(tag: DW_TAG_structure_type, name: "*mut (dyn core::error::Error + core::marker::Send + core::marker::Sync)", file: !2, size: 128, align: 64, elements: !842, templateParams: !23, identifier: "a5999158198d290e765cc0791c488090")
!842 = !{!843, !844}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !841, file: !2, baseType: !828, size: 64, align: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !841, file: !2, baseType: !831, size: 64, align: 64, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "outer_drop", scope: !818, file: !2, baseType: !846, size: 64, align: 64, offset: 192, flags: DIFlagPrivate)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "unsafe fn(*mut core::io::error::Custom)", baseType: !847, size: 64, align: 64, dwarfAddressSpace: 0)
!847 = !DISubroutineType(types: !848)
!848 = !{null, !849}
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut core::io::error::Custom", baseType: !818, size: 64, align: 64, dwarfAddressSpace: 0)
!850 = !{!851}
!851 = !DITemplateTypeParameter(name: "T", type: !818)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "Simple", scope: !803, file: !2, baseType: !853, size: 128, align: 64, extraData: i8 1)
!853 = !DICompositeType(tag: DW_TAG_structure_type, name: "Simple", scope: !801, file: !2, size: 128, align: 64, flags: DIFlagPrivate, elements: !854, templateParams: !809, identifier: "d3a0c15f60f79933767ffbacd23b0198")
!854 = !{!855}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !853, file: !2, baseType: !402, size: 8, align: 8, offset: 8, flags: DIFlagPrivate)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "SimpleMessage", scope: !803, file: !2, baseType: !857, size: 128, align: 64, extraData: i8 2)
!857 = !DICompositeType(tag: DW_TAG_structure_type, name: "SimpleMessage", scope: !801, file: !2, size: 128, align: 64, flags: DIFlagPrivate, elements: !858, templateParams: !809, identifier: "f7a10532822538b1f8885445e015369c")
!858 = !{!859}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !857, file: !2, baseType: !860, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::io::error::SimpleMessage", baseType: !861, size: 64, align: 64, dwarfAddressSpace: 0)
!861 = !DICompositeType(tag: DW_TAG_structure_type, name: "SimpleMessage", scope: !403, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !862, templateParams: !23, identifier: "e69b6ae9f08c085569e02a053e15455c")
!862 = !{!863, !864}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !861, file: !2, baseType: !402, size: 8, align: 8, offset: 128, flags: DIFlagPublic)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !861, file: !2, baseType: !716, size: 128, align: 64, flags: DIFlagPublic)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "Custom", scope: !803, file: !2, baseType: !866, size: 128, align: 64, extraData: i8 3)
!866 = !DICompositeType(tag: DW_TAG_structure_type, name: "Custom", scope: !801, file: !2, size: 128, align: 64, flags: DIFlagPrivate, elements: !867, templateParams: !809, identifier: "b2f9491f5eafce0440e931ca2e0a9b29")
!867 = !{!868}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !866, file: !2, baseType: !811, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!869 = !DIDerivedType(tag: DW_TAG_member, scope: !801, file: !2, baseType: !223, size: 8, align: 8, flags: DIFlagArtificial)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !787, file: !2, baseType: !871, size: 192, align: 64, offset: 64, flags: DIFlagPublic)
!871 = !DICompositeType(tag: DW_TAG_structure_type, name: "PathBuf", scope: !872, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !873, templateParams: !23, identifier: "3372e7fba110f3caccb584b568a06996")
!872 = !DINamespace(name: "path", scope: !17)
!873 = !{!874}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !871, file: !2, baseType: !570, size: 192, align: 64, flags: DIFlagPrivate)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "ParseLocale", scope: !784, file: !2, baseType: !876, size: 768, align: 64, extraData: i64 3)
!876 = !DICompositeType(tag: DW_TAG_structure_type, name: "ParseLocale", scope: !779, file: !2, size: 768, align: 64, flags: DIFlagPublic, elements: !877, templateParams: !23, identifier: "6d280c141d442fdefa3d728eafa8ec12")
!877 = !{!878}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !876, file: !2, baseType: !196, size: 192, align: 64, offset: 64, flags: DIFlagPublic)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "ParseResource", scope: !784, file: !2, baseType: !880, size: 768, align: 64)
!880 = !DICompositeType(tag: DW_TAG_structure_type, name: "ParseResource", scope: !779, file: !2, size: 768, align: 64, flags: DIFlagPublic, elements: !881, templateParams: !23, identifier: "f1517ad9245030f53b5b41a920ea030")
!881 = !{!882, !888}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !880, file: !2, baseType: !883, size: 576, align: 64, flags: DIFlagPublic)
!883 = !DICompositeType(tag: DW_TAG_structure_type, name: "ParserError", scope: !327, file: !2, size: 576, align: 64, flags: DIFlagPublic, elements: !884, templateParams: !23, identifier: "72138dbb0785dbbb219704803ba73126")
!884 = !{!885, !886, !887}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !883, file: !2, baseType: !287, size: 128, align: 64, offset: 448, flags: DIFlagPublic)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !883, file: !2, baseType: !303, size: 192, align: 64, flags: DIFlagPublic)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !883, file: !2, baseType: !326, size: 256, align: 64, offset: 192, flags: DIFlagPublic)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "snippet", scope: !880, file: !2, baseType: !196, size: 192, align: 64, offset: 576, flags: DIFlagPublic)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "Bundle", scope: !784, file: !2, baseType: !890, size: 768, align: 64, extraData: i64 5)
!890 = !DICompositeType(tag: DW_TAG_structure_type, name: "Bundle", scope: !779, file: !2, size: 768, align: 64, flags: DIFlagPublic, elements: !891, templateParams: !23, identifier: "900fd8f8bcb6b12a9a8638ff28d7d852")
!891 = !{!892}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !890, file: !2, baseType: !196, size: 192, align: 64, offset: 64, flags: DIFlagPublic)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "LocalesDirNotFound", scope: !784, file: !2, baseType: !894, size: 768, align: 64, extraData: i64 6)
!894 = !DICompositeType(tag: DW_TAG_structure_type, name: "LocalesDirNotFound", scope: !779, file: !2, size: 768, align: 64, flags: DIFlagPublic, elements: !895, templateParams: !23, identifier: "eab407d8d1a74ac1d36cbea1fa6ba11b")
!895 = !{!896}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !894, file: !2, baseType: !196, size: 192, align: 64, offset: 64, flags: DIFlagPublic)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "PathResolution", scope: !784, file: !2, baseType: !898, size: 768, align: 64, extraData: i64 7)
!898 = !DICompositeType(tag: DW_TAG_structure_type, name: "PathResolution", scope: !779, file: !2, size: 768, align: 64, flags: DIFlagPublic, elements: !899, templateParams: !23, identifier: "9e915d131566accd702ee6f641ed602")
!899 = !{!900}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !898, file: !2, baseType: !196, size: 192, align: 64, offset: 64, flags: DIFlagPublic)
!901 = !DIDerivedType(tag: DW_TAG_member, scope: !779, file: !2, baseType: !261, size: 64, align: 64, flags: DIFlagArtificial)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !771, file: !2, baseType: !903, size: 768, align: 64)
!903 = !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !769, file: !2, size: 768, align: 64, flags: DIFlagPublic, elements: !904, templateParams: !777, identifier: "9dcc0e31914254de219de17ffd3182de")
!904 = !{!905}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !903, file: !2, baseType: !779, size: 768, align: 64, flags: DIFlagPublic)
!906 = !DIDerivedType(tag: DW_TAG_member, scope: !769, file: !2, baseType: !261, size: 64, align: 64, flags: DIFlagArtificial)
!907 = !DISubroutineType(types: !908)
!908 = !{null, !769, !909, !912}
!909 = !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}", scope: !910, file: !2, align: 8, elements: !23, identifier: "5d6cb8065053f896864b33255be3a398")
!910 = !DINamespace(name: "main", scope: !911)
!911 = !DINamespace(name: "expand", scope: null)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::panic::location::Location", baseType: !913, size: 64, align: 64, dwarfAddressSpace: 0)
!913 = !DICompositeType(tag: DW_TAG_structure_type, name: "Location", scope: !914, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !916, templateParams: !23, identifier: "148399427b93c820a2d4e1ad2efc96c0")
!914 = !DINamespace(name: "location", scope: !915)
!915 = !DINamespace(name: "panic", scope: !215)
!916 = !{!917, !930, !931, !932}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !913, file: !2, baseType: !918, size: 128, align: 64, flags: DIFlagPrivate)
!918 = !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<str>", scope: !219, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !919, templateParams: !925, identifier: "72c7bd24d9d92cbc741f86a1ae20d026")
!919 = !{!920}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !918, file: !2, baseType: !921, size: 128, align: 64, flags: DIFlagPrivate)
!921 = !DICompositeType(tag: DW_TAG_structure_type, name: "*const str", file: !2, size: 128, align: 64, elements: !922, templateParams: !23, identifier: "9b6c4209945857e804225489e1f89f1")
!922 = !{!923, !924}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !921, file: !2, baseType: !719, size: 64, align: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !921, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!925 = !{!926}
!926 = !DITemplateTypeParameter(name: "T", type: !927)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, align: 8, elements: !928)
!928 = !{!929}
!929 = !DISubrange(count: -1, lowerBound: 0)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !913, file: !2, baseType: !391, size: 32, align: 32, offset: 128, flags: DIFlagPrivate)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !913, file: !2, baseType: !391, size: 32, align: 32, offset: 160, flags: DIFlagPrivate)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_filename", scope: !913, file: !2, baseType: !933, align: 8, offset: 192, flags: DIFlagPrivate)
!933 = !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<&str>", scope: !228, file: !2, align: 8, flags: DIFlagPublic, elements: !23, templateParams: !934, identifier: "dbf524986c6049e045c5399bad42c832")
!934 = !{!935}
!935 = !DITemplateTypeParameter(name: "T", type: !716)
!936 = !DISubprogram(name: "unwrap_or_else<(), uucore::mods::locale::LocalizationError, expand::main::{closure_env#0}>", linkageName: "_RINvMNtCsgxBkk5gSRhY_4core6resultINtB3_6ResultuNtNtNtCs1iFJFqccjfm_6uucore4mods6locale17LocalizationErrorE14unwrap_or_elseNCNvCscBbfQkuq0VR_6expand4main0EB20_", scope: !769, file: !768, line: 1614, type: !907, scopeLine: 1614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !937)
!937 = !{!605, !778, !938}
!938 = !DITemplateTypeParameter(name: "F", type: !909)
!939 = !{!940, !941, !942, !944}
!940 = !DILocalVariable(name: "self", arg: 1, scope: !767, file: !768, line: 1614, type: !769)
!941 = !DILocalVariable(name: "op", arg: 2, scope: !767, file: !768, line: 1614, type: !909)
!942 = !DILocalVariable(name: "t", scope: !943, file: !768, line: 1619, type: !7, align: 8)
!943 = distinct !DILexicalBlock(scope: !767, file: !768, line: 1619, column: 13)
!944 = !DILocalVariable(name: "e", scope: !945, file: !768, line: 1620, type: !779, align: 64)
!945 = distinct !DILexicalBlock(scope: !767, file: !768, line: 1620, column: 13)
!946 = !DILocation(line: 1619, column: 16, scope: !943)
!947 = !DILocation(line: 1614, column: 36, scope: !767)
!948 = !DILocation(line: 1614, column: 42, scope: !767)
!949 = !DILocation(line: 1620, column: 17, scope: !945)
!950 = !DILocation(line: 1618, column: 15, scope: !767)
!951 = !DILocation(line: 1618, column: 9, scope: !767)
!952 = !DILocation(line: 1620, column: 17, scope: !767)
!953 = !DILocation(line: 1620, column: 23, scope: !945)
!954 = !DILocation(line: 1620, column: 27, scope: !767)
!955 = !DILocation(line: 1622, column: 5, scope: !767)
!956 = !DILocation(line: 1622, column: 6, scope: !767)
!957 = distinct !DISubprogram(name: "new_display<uucore::mods::locale::LocalizationError>", linkageName: "_RINvMNtNtCsgxBkk5gSRhY_4core3fmt2rtNtB3_8Argument11new_displayNtNtNtCs1iFJFqccjfm_6uucore4mods6locale17LocalizationErrorECscBbfQkuq0VR_6expand", scope: !638, file: !958, line: 89, type: !959, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !963, declaration: !962, retainedNodes: !965)
!958 = !DIFile(filename: "library/core/src/fmt/rt.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "f03333f1e0f72e96e1911387c755e384")
!959 = !DISubroutineType(types: !960)
!960 = !{!638, !961}
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&uucore::mods::locale::LocalizationError", baseType: !779, size: 64, align: 64, dwarfAddressSpace: 0)
!962 = !DISubprogram(name: "new_display<uucore::mods::locale::LocalizationError>", linkageName: "_RINvMNtNtCsgxBkk5gSRhY_4core3fmt2rtNtB3_8Argument11new_displayNtNtNtCs1iFJFqccjfm_6uucore4mods6locale17LocalizationErrorECscBbfQkuq0VR_6expand", scope: !638, file: !958, line: 89, type: !959, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !963)
!963 = !{!964}
!964 = !DITemplateTypeParameter(name: "T", type: !779)
!965 = !{!966}
!966 = !DILocalVariable(name: "x", arg: 1, scope: !957, file: !958, line: 89, type: !961)
!967 = !DILocation(line: 89, column: 42, scope: !957)
!968 = !DILocalVariable(name: "r", arg: 1, scope: !969, file: !970, line: 279, type: !961)
!969 = distinct !DISubprogram(name: "from_ref<uucore::mods::locale::LocalizationError>", linkageName: "_RNvMs1_NtNtCsgxBkk5gSRhY_4core3ptr8non_nullINtB5_7NonNullNtNtNtCs1iFJFqccjfm_6uucore4mods6locale17LocalizationErrorE8from_refCscBbfQkuq0VR_6expand", scope: !971, file: !970, line: 279, type: !975, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !963, declaration: !977, retainedNodes: !978)
!970 = !DIFile(filename: "library/core/src/ptr/non_null.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "3c2c651e9e1abc2b808fff61b59d0fb6")
!971 = !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<uucore::mods::locale::LocalizationError>", scope: !219, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !972, templateParams: !963, identifier: "13916c6628459ba1e5ffbd2dfcbc7823")
!972 = !{!973}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !971, file: !2, baseType: !974, size: 64, align: 64, flags: DIFlagPrivate)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const uucore::mods::locale::LocalizationError", baseType: !779, size: 64, align: 64, dwarfAddressSpace: 0)
!975 = !DISubroutineType(types: !976)
!976 = !{!971, !961}
!977 = !DISubprogram(name: "from_ref<uucore::mods::locale::LocalizationError>", linkageName: "_RNvMs1_NtNtCsgxBkk5gSRhY_4core3ptr8non_nullINtB5_7NonNullNtNtNtCs1iFJFqccjfm_6uucore4mods6locale17LocalizationErrorE8from_refCscBbfQkuq0VR_6expand", scope: !971, file: !970, line: 279, type: !975, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !963)
!978 = !{!968}
!979 = !DILocation(line: 279, column: 27, scope: !969, inlinedAt: !980)
!980 = !DILocation(line: 48, column: 24, scope: !957)
!981 = !DILocation(line: 47, column: 17, scope: !957)
!982 = !DILocation(line: 44, column: 9, scope: !957)
!983 = !DILocation(line: 91, column: 6, scope: !957)
!984 = distinct !DISubprogram(name: "new_debug<fluent_syntax::parser::errors::ParserError>", linkageName: "_RINvMNtNtCsgxBkk5gSRhY_4core3fmt2rtNtB3_8Argument9new_debugNtNtNtCslPRUPRFQ4qs_13fluent_syntax6parser6errors11ParserErrorECscBbfQkuq0VR_6expand", scope: !638, file: !958, line: 93, type: !985, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !989, declaration: !988, retainedNodes: !991)
!985 = !DISubroutineType(types: !986)
!986 = !{!638, !987}
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&fluent_syntax::parser::errors::ParserError", baseType: !883, size: 64, align: 64, dwarfAddressSpace: 0)
!988 = !DISubprogram(name: "new_debug<fluent_syntax::parser::errors::ParserError>", linkageName: "_RINvMNtNtCsgxBkk5gSRhY_4core3fmt2rtNtB3_8Argument9new_debugNtNtNtCslPRUPRFQ4qs_13fluent_syntax6parser6errors11ParserErrorECscBbfQkuq0VR_6expand", scope: !638, file: !958, line: 93, type: !985, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !989)
!989 = !{!990}
!990 = !DITemplateTypeParameter(name: "T", type: !883)
!991 = !{!992}
!992 = !DILocalVariable(name: "x", arg: 1, scope: !984, file: !958, line: 93, type: !987)
!993 = !DILocation(line: 93, column: 38, scope: !984)
!994 = !DILocalVariable(name: "r", arg: 1, scope: !995, file: !970, line: 279, type: !987)
!995 = distinct !DISubprogram(name: "from_ref<fluent_syntax::parser::errors::ParserError>", linkageName: "_RNvMs1_NtNtCsgxBkk5gSRhY_4core3ptr8non_nullINtB5_7NonNullNtNtNtCslPRUPRFQ4qs_13fluent_syntax6parser6errors11ParserErrorE8from_refCscBbfQkuq0VR_6expand", scope: !996, file: !970, line: 279, type: !1000, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !989, declaration: !1002, retainedNodes: !1003)
!996 = !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<fluent_syntax::parser::errors::ParserError>", scope: !219, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !997, templateParams: !989, identifier: "2e0f7a2c5214aa639794d9f0a8d6ddaa")
!997 = !{!998}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !996, file: !2, baseType: !999, size: 64, align: 64, flags: DIFlagPrivate)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const fluent_syntax::parser::errors::ParserError", baseType: !883, size: 64, align: 64, dwarfAddressSpace: 0)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!996, !987}
!1002 = !DISubprogram(name: "from_ref<fluent_syntax::parser::errors::ParserError>", linkageName: "_RNvMs1_NtNtCsgxBkk5gSRhY_4core3ptr8non_nullINtB5_7NonNullNtNtNtCslPRUPRFQ4qs_13fluent_syntax6parser6errors11ParserErrorE8from_refCscBbfQkuq0VR_6expand", scope: !996, file: !970, line: 279, type: !1000, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !989)
!1003 = !{!994}
!1004 = !DILocation(line: 279, column: 27, scope: !995, inlinedAt: !1005)
!1005 = !DILocation(line: 48, column: 24, scope: !984)
!1006 = !DILocation(line: 47, column: 17, scope: !984)
!1007 = !DILocation(line: 44, column: 9, scope: !984)
!1008 = !DILocation(line: 95, column: 6, scope: !984)
!1009 = distinct !DISubprogram(name: "new<28, 1>", linkageName: "_RINvMs2_NtCsgxBkk5gSRhY_4core3fmtNtB6_9Arguments3newKj1c_Kj1_ECscBbfQkuq0VR_6expand", scope: !1011, file: !1010, line: 729, type: !1021, scopeLine: 729, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, declaration: !1028, retainedNodes: !1029)
!1010 = !DIFile(filename: "library/core/src/fmt/mod.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "e2b8072d78f697fa596188a47806b74c")
!1011 = !DICompositeType(tag: DW_TAG_structure_type, name: "Arguments", scope: !640, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !1012, templateParams: !23, identifier: "65a3e0be6816950f93533c4ac51e5342")
!1012 = !{!1013, !1014}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "template", scope: !1011, file: !2, baseType: !218, size: 64, align: 64, flags: DIFlagPrivate)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1011, file: !2, baseType: !1015, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!1015 = !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<core::fmt::rt::Argument>", scope: !219, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !1016, templateParams: !1019, identifier: "8ba17bc1bfb64f2d3ee14342302d9d18")
!1016 = !{!1017}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1015, file: !2, baseType: !1018, size: 64, align: 64, flags: DIFlagPrivate)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const core::fmt::rt::Argument", baseType: !638, size: 64, align: 64, dwarfAddressSpace: 0)
!1019 = !{!1020}
!1020 = !DITemplateTypeParameter(name: "T", type: !638)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!1011, !1023, !1027}
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&[u8; 28]", baseType: !1024, size: 64, align: 64, dwarfAddressSpace: 0)
!1024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 224, align: 8, elements: !1025)
!1025 = !{!1026}
!1026 = !DISubrange(count: 28, lowerBound: 0)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&[core::fmt::rt::Argument; 1]", baseType: !637, size: 64, align: 64, dwarfAddressSpace: 0)
!1028 = !DISubprogram(name: "new<28, 1>", linkageName: "_RINvMs2_NtCsgxBkk5gSRhY_4core3fmtNtB6_9Arguments3newKj1c_Kj1_ECscBbfQkuq0VR_6expand", scope: !1011, file: !1010, line: 729, type: !1021, scopeLine: 729, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !23)
!1029 = !{!1030, !1031}
!1030 = !DILocalVariable(name: "template", arg: 1, scope: !1009, file: !1010, line: 730, type: !1023)
!1031 = !DILocalVariable(name: "args", arg: 2, scope: !1009, file: !1010, line: 731, type: !1027)
!1032 = !DILocation(line: 730, column: 9, scope: !1009)
!1033 = !DILocation(line: 731, column: 9, scope: !1009)
!1034 = !DILocation(line: 735, column: 6, scope: !1009)
!1035 = distinct !DISubprogram(name: "new<37, 2>", linkageName: "_RINvMs2_NtCsgxBkk5gSRhY_4core3fmtNtB6_9Arguments3newKj25_Kj2_ECscBbfQkuq0VR_6expand", scope: !1011, file: !1010, line: 729, type: !1036, scopeLine: 729, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, declaration: !1043, retainedNodes: !1044)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!1011, !1038, !1042}
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&[u8; 37]", baseType: !1039, size: 64, align: 64, dwarfAddressSpace: 0)
!1039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 296, align: 8, elements: !1040)
!1040 = !{!1041}
!1041 = !DISubrange(count: 37, lowerBound: 0)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&[core::fmt::rt::Argument; 2]", baseType: !725, size: 64, align: 64, dwarfAddressSpace: 0)
!1043 = !DISubprogram(name: "new<37, 2>", linkageName: "_RINvMs2_NtCsgxBkk5gSRhY_4core3fmtNtB6_9Arguments3newKj25_Kj2_ECscBbfQkuq0VR_6expand", scope: !1011, file: !1010, line: 729, type: !1036, scopeLine: 729, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !23)
!1044 = !{!1045, !1046}
!1045 = !DILocalVariable(name: "template", arg: 1, scope: !1035, file: !1010, line: 730, type: !1038)
!1046 = !DILocalVariable(name: "args", arg: 2, scope: !1035, file: !1010, line: 731, type: !1042)
!1047 = !DILocation(line: 730, column: 9, scope: !1035)
!1048 = !DILocation(line: 731, column: 9, scope: !1035)
!1049 = !DILocation(line: 735, column: 6, scope: !1035)
!1050 = distinct !DISubprogram(name: "new<40, 1>", linkageName: "_RINvMs2_NtCsgxBkk5gSRhY_4core3fmtNtB6_9Arguments3newKj28_Kj1_ECscBbfQkuq0VR_6expand", scope: !1011, file: !1010, line: 729, type: !1051, scopeLine: 729, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, declaration: !1057, retainedNodes: !1058)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!1011, !1053, !1027}
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&[u8; 40]", baseType: !1054, size: 64, align: 64, dwarfAddressSpace: 0)
!1054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 320, align: 8, elements: !1055)
!1055 = !{!1056}
!1056 = !DISubrange(count: 40, lowerBound: 0)
!1057 = !DISubprogram(name: "new<40, 1>", linkageName: "_RINvMs2_NtCsgxBkk5gSRhY_4core3fmtNtB6_9Arguments3newKj28_Kj1_ECscBbfQkuq0VR_6expand", scope: !1011, file: !1010, line: 729, type: !1051, scopeLine: 729, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !23)
!1058 = !{!1059, !1060}
!1059 = !DILocalVariable(name: "template", arg: 1, scope: !1050, file: !1010, line: 730, type: !1053)
!1060 = !DILocalVariable(name: "args", arg: 2, scope: !1050, file: !1010, line: 731, type: !1027)
!1061 = !DILocation(line: 730, column: 9, scope: !1050)
!1062 = !DILocation(line: 731, column: 9, scope: !1050)
!1063 = !DILocation(line: 735, column: 6, scope: !1050)
!1064 = distinct !DISubprogram(name: "new<45, 1>", linkageName: "_RINvMs2_NtCsgxBkk5gSRhY_4core3fmtNtB6_9Arguments3newKj2d_Kj1_ECscBbfQkuq0VR_6expand", scope: !1011, file: !1010, line: 729, type: !1065, scopeLine: 729, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, declaration: !1071, retainedNodes: !1072)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!1011, !1067, !1027}
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&[u8; 45]", baseType: !1068, size: 64, align: 64, dwarfAddressSpace: 0)
!1068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 360, align: 8, elements: !1069)
!1069 = !{!1070}
!1070 = !DISubrange(count: 45, lowerBound: 0)
!1071 = !DISubprogram(name: "new<45, 1>", linkageName: "_RINvMs2_NtCsgxBkk5gSRhY_4core3fmtNtB6_9Arguments3newKj2d_Kj1_ECscBbfQkuq0VR_6expand", scope: !1011, file: !1010, line: 729, type: !1065, scopeLine: 729, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !23)
!1072 = !{!1073, !1074}
!1073 = !DILocalVariable(name: "template", arg: 1, scope: !1064, file: !1010, line: 730, type: !1067)
!1074 = !DILocalVariable(name: "args", arg: 2, scope: !1064, file: !1010, line: 731, type: !1027)
!1075 = !DILocation(line: 730, column: 9, scope: !1064)
!1076 = !DILocation(line: 731, column: 9, scope: !1064)
!1077 = !DILocation(line: 735, column: 6, scope: !1064)
!1078 = distinct !DISubprogram(name: "extend_trusted<std::ffi::os_str::OsString, alloc::alloc::Global, core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>", linkageName: "_RINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB6_3VecNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringE14extend_trustedINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters6cloned6ClonedINtNtNtB1N_5slice4iter4IterBF_EEECscBbfQkuq0VR_6expand", scope: !1080, file: !1079, line: 4064, type: !1090, scopeLine: 4064, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !1094, declaration: !1093, retainedNodes: !1096)
!1079 = !DIFile(filename: "library/alloc/src/vec/mod.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "f255766509030807fb1d087d10bf6068")
!1080 = !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<std::ffi::os_str::OsString, alloc::alloc::Global>", scope: !202, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !1081, templateParams: !1088, identifier: "d0a7b21584cacd7cda04b6625649a690")
!1081 = !{!1082, !1089}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1080, file: !2, baseType: !1083, size: 128, align: 64, flags: DIFlagPrivate)
!1083 = !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<std::ffi::os_str::OsString, alloc::alloc::Global>", scope: !206, file: !2, size: 128, align: 64, flags: DIFlagProtected, elements: !1084, templateParams: !1088, identifier: "ef93d5f4d0b19b769ade0ee586c2029b")
!1084 = !{!1085, !1086}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1083, file: !2, baseType: !209, size: 128, align: 64, flags: DIFlagPrivate)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !1083, file: !2, baseType: !1087, align: 8, offset: 128, flags: DIFlagPrivate)
!1087 = !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<std::ffi::os_str::OsString>", scope: !228, file: !2, align: 8, flags: DIFlagPublic, elements: !23, templateParams: !581, identifier: "20b23d7fa50b9bded1ef993f22086bc7")
!1088 = !{!582, !239}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1080, file: !2, baseType: !9, size: 64, align: 64, offset: 128, flags: DIFlagPrivate)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{null, !1092, !555}
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut alloc::vec::Vec<std::ffi::os_str::OsString, alloc::alloc::Global>", baseType: !1080, size: 64, align: 64, dwarfAddressSpace: 0)
!1093 = !DISubprogram(name: "extend_trusted<std::ffi::os_str::OsString, alloc::alloc::Global, core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>", linkageName: "_RINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB6_3VecNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringE14extend_trustedINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters6cloned6ClonedINtNtNtB1N_5slice4iter4IterBF_EEECscBbfQkuq0VR_6expand", scope: !1080, file: !1079, line: 4064, type: !1090, scopeLine: 4064, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !1094)
!1094 = !{!582, !239, !1095}
!1095 = !DITemplateTypeParameter(name: "impl iter::TrustedLen<Item = T>", type: !555)
!1096 = !{!1097, !1098, !1099, !1101, !1115, !1117, !1121, !1122, !1125, !1136, !1139, !1142}
!1097 = !DILocalVariable(name: "self", arg: 1, scope: !1078, file: !1079, line: 4064, type: !1092)
!1098 = !DILocalVariable(name: "iterator", arg: 2, scope: !1078, file: !1079, line: 4064, type: !555)
!1099 = !DILocalVariable(name: "low", scope: !1100, file: !1079, line: 4065, type: !9, align: 64)
!1100 = distinct !DILexicalBlock(scope: !1078, file: !1079, line: 4065, column: 9)
!1101 = !DILocalVariable(name: "high", scope: !1100, file: !1079, line: 4065, type: !1102, align: 64)
!1102 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<usize>", scope: !304, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !1103, templateParams: !23, identifier: "31e9df9c5a641f3d29d7a55e2b9343fe")
!1103 = !{!1104}
!1104 = !DICompositeType(tag: DW_TAG_variant_part, scope: !1102, file: !2, size: 128, align: 64, elements: !1105, templateParams: !23, identifier: "166f8db0a223d9d3db496581ca8199d3", discriminator: !1114)
!1105 = !{!1106, !1110}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !1104, file: !2, baseType: !1107, size: 128, align: 64, extraData: i64 0)
!1107 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !1102, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !23, templateParams: !1108, identifier: "9528662bff6f68ed35486b34391a4ce9")
!1108 = !{!1109}
!1109 = !DITemplateTypeParameter(name: "T", type: !9)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !1104, file: !2, baseType: !1111, size: 128, align: 64, extraData: i64 1)
!1111 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !1102, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !1112, templateParams: !1108, identifier: "fc6f65dc0a49d04122ebb0e8d5e81637")
!1112 = !{!1113}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1111, file: !2, baseType: !9, size: 64, align: 64, offset: 64, flags: DIFlagPublic)
!1114 = !DIDerivedType(tag: DW_TAG_member, scope: !1102, file: !2, baseType: !261, size: 64, align: 64, flags: DIFlagArtificial)
!1115 = !DILocalVariable(name: "additional", scope: !1116, file: !1079, line: 4066, type: !9, align: 64)
!1116 = distinct !DILexicalBlock(scope: !1100, file: !1079, line: 4066, column: 40)
!1117 = !DILocalVariable(name: "left_val", scope: !1118, file: !1079, line: 4067, type: !1120, align: 64)
!1118 = !DILexicalBlockFile(scope: !1119, file: !1079, discriminator: 0)
!1119 = distinct !DILexicalBlock(scope: !1116, file: !711, line: 58, column: 13)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&usize", baseType: !9, size: 64, align: 64, dwarfAddressSpace: 0)
!1121 = !DILocalVariable(name: "right_val", scope: !1118, file: !1079, line: 4067, type: !1120, align: 64)
!1122 = !DILocalVariable(name: "kind", scope: !1123, file: !1079, line: 4067, type: !449, align: 8)
!1123 = !DILexicalBlockFile(scope: !1124, file: !1079, discriminator: 0)
!1124 = distinct !DILexicalBlock(scope: !1119, file: !711, line: 60, column: 21)
!1125 = !DILocalVariable(name: "args", scope: !1126, file: !1079, line: 4067, type: !1128, align: 64)
!1126 = !DILexicalBlockFile(scope: !1127, file: !1079, discriminator: 0)
!1127 = distinct !DILexicalBlock(scope: !1124, file: !711, line: 64, column: 114)
!1128 = !DICompositeType(tag: DW_TAG_structure_type, name: "(&(usize, core::option::Option<usize>))", file: !2, size: 64, align: 64, elements: !1129, templateParams: !23, identifier: "ee443b1de8afd535932eb6e0e892e3a1")
!1129 = !{!1130}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1128, file: !2, baseType: !1131, size: 64, align: 64)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&(usize, core::option::Option<usize>)", baseType: !1132, size: 64, align: 64, dwarfAddressSpace: 0)
!1132 = !DICompositeType(tag: DW_TAG_structure_type, name: "(usize, core::option::Option<usize>)", file: !2, size: 192, align: 64, elements: !1133, templateParams: !23, identifier: "23b2d4a416b5caa7ea63f28512e50b77")
!1133 = !{!1134, !1135}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1132, file: !2, baseType: !9, size: 64, align: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !1132, file: !2, baseType: !1102, size: 128, align: 64, offset: 64)
!1136 = !DILocalVariable(name: "args", scope: !1137, file: !1079, line: 4067, type: !637, align: 64)
!1137 = !DILexicalBlockFile(scope: !1138, file: !1079, discriminator: 0)
!1138 = distinct !DILexicalBlock(scope: !1127, file: !711, line: 64, column: 114)
!1139 = !DILocalVariable(name: "ptr", scope: !1140, file: !1079, line: 4075, type: !1141, align: 64)
!1140 = distinct !DILexicalBlock(scope: !1116, file: !1079, line: 4075, column: 17)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut std::ffi::os_str::OsString", baseType: !570, size: 64, align: 64, dwarfAddressSpace: 0)
!1142 = !DILocalVariable(name: "local_len", scope: !1143, file: !1079, line: 4076, type: !1144, align: 64)
!1143 = distinct !DILexicalBlock(scope: !1140, file: !1079, line: 4076, column: 17)
!1144 = !DICompositeType(tag: DW_TAG_structure_type, name: "SetLenOnDrop", scope: !1145, file: !2, size: 128, align: 64, flags: DIFlagProtected, elements: !1146, templateParams: !23, identifier: "bd0f82eb960ed7f16a5292ae1989bb1a")
!1145 = !DINamespace(name: "set_len_on_drop", scope: !202)
!1146 = !{!1147, !1149}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1144, file: !2, baseType: !1148, size: 64, align: 64, flags: DIFlagPrivate)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut usize", baseType: !9, size: 64, align: 64, dwarfAddressSpace: 0)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "local_len", scope: !1144, file: !2, baseType: !9, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!1150 = !DILocation(line: 4064, column: 23, scope: !1078)
!1151 = !DILocalVariable(name: "self", arg: 1, scope: !1152, file: !1079, line: 2058, type: !1092)
!1152 = distinct !DISubprogram(name: "as_mut_ptr<std::ffi::os_str::OsString, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringE10as_mut_ptrCscBbfQkuq0VR_6expand", scope: !1080, file: !1079, line: 2058, type: !1153, scopeLine: 2058, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !1088, declaration: !1155, retainedNodes: !1156)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!1141, !1092}
!1155 = !DISubprogram(name: "as_mut_ptr<std::ffi::os_str::OsString, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringE10as_mut_ptrCscBbfQkuq0VR_6expand", scope: !1080, file: !1079, line: 2058, type: !1153, scopeLine: 2058, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !1088)
!1156 = !{!1151}
!1157 = !DILocation(line: 2058, column: 29, scope: !1152, inlinedAt: !1158)
!1158 = !DILocation(line: 4075, column: 32, scope: !1116)
!1159 = !DILocation(line: 4064, column: 34, scope: !1078)
!1160 = !DILocation(line: 4065, column: 19, scope: !1100)
!1161 = !DILocation(line: 4065, column: 27, scope: !1078)
!1162 = !DILocation(line: 4065, column: 36, scope: !1078)
!1163 = !DILocation(line: 4093, column: 5, scope: !1078)
!1164 = !DILocation(line: 4065, column: 14, scope: !1078)
!1165 = !DILocation(line: 4065, column: 14, scope: !1100)
!1166 = !DILocation(line: 4065, column: 19, scope: !1078)
!1167 = !DILocation(line: 4066, column: 35, scope: !1116)
!1168 = !DILocation(line: 4066, column: 16, scope: !1116)
!1169 = !DILocation(line: 4066, column: 21, scope: !1116)
!1170 = !DILocation(line: 4073, column: 18, scope: !1116)
!1171 = !DILocation(line: 4091, column: 13, scope: !1100)
!1172 = !DILocalVariable(name: "s", arg: 1, scope: !1173, file: !1010, line: 815, type: !716)
!1173 = distinct !DISubprogram(name: "from_str", linkageName: "_RNvMs4_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Arguments8from_strCscBbfQkuq0VR_6expand", scope: !1011, file: !1010, line: 815, type: !1174, scopeLine: 815, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, declaration: !1176, retainedNodes: !1177)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!1011, !716}
!1176 = !DISubprogram(name: "from_str", linkageName: "_RNvMs4_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Arguments8from_strCscBbfQkuq0VR_6expand", scope: !1011, file: !1010, line: 815, type: !1174, scopeLine: 815, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !23)
!1177 = !{!1172}
!1178 = !DILocation(line: 815, column: 27, scope: !1173, inlinedAt: !1171)
!1179 = !DILocalVariable(name: "self", arg: 1, scope: !1180, file: !1181, line: 589, type: !716)
!1180 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMNtCsgxBkk5gSRhY_4core3stre6as_ptr", scope: !1182, file: !1181, line: 589, type: !1184, scopeLine: 589, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !1186)
!1181 = !DIFile(filename: "library/core/src/str/mod.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "a8178ed410b630ab121ec2c11d42488d")
!1182 = !DINamespace(name: "{impl#0}", scope: !1183)
!1183 = !DINamespace(name: "str", scope: !215)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!222, !716}
!1186 = !{!1179}
!1187 = !DILocation(line: 589, column: 25, scope: !1180, inlinedAt: !1188)
!1188 = !DILocation(line: 819, column: 44, scope: !1173, inlinedAt: !1171)
!1189 = !DILocalVariable(name: "self", arg: 1, scope: !1190, file: !1181, line: 154, type: !716)
!1190 = distinct !DISubprogram(name: "len", linkageName: "_RNvMNtCsgxBkk5gSRhY_4core3stre3lenCscBbfQkuq0VR_6expand", scope: !1182, file: !1181, line: 154, type: !1191, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !1193)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!9, !716}
!1193 = !{!1189}
!1194 = !DILocation(line: 154, column: 22, scope: !1190, inlinedAt: !1195)
!1195 = !DILocation(line: 820, column: 40, scope: !1173, inlinedAt: !1171)
!1196 = !DILocalVariable(name: "self", arg: 1, scope: !1197, file: !1181, line: 513, type: !716)
!1197 = distinct !DISubprogram(name: "as_bytes", linkageName: "_RNvMNtCsgxBkk5gSRhY_4core3stre8as_bytes", scope: !1182, file: !1181, line: 513, type: !1198, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !1204)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!1200, !716}
!1200 = !DICompositeType(tag: DW_TAG_structure_type, name: "&[u8]", file: !2, size: 128, align: 64, elements: !1201, templateParams: !23, identifier: "5137121b88caf77bcbd112ac0bb55398")
!1201 = !{!1202, !1203}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !1200, file: !2, baseType: !719, size: 64, align: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1200, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!1204 = !{!1196}
!1205 = !DILocation(line: 513, column: 27, scope: !1197, inlinedAt: !1206)
!1206 = !DILocation(line: 155, column: 14, scope: !1190, inlinedAt: !1195)
!1207 = !DILocation(line: 615, column: 9, scope: !1208, inlinedAt: !1215)
!1208 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, std::ffi::os_str::OsString>", linkageName: "_RINvMs2_NtCs6i54tJFfzR_5alloc7raw_vecNtB6_11RawVecInner8non_nullNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringECscBbfQkuq0VR_6expand", scope: !209, file: !1209, line: 614, type: !1210, scopeLine: 614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !1214, declaration: !1213)
!1209 = !DIFile(filename: "library/alloc/src/raw_vec/mod.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "7cd4a63a4227b6e1fedccbb65d2f972d")
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!566, !1212}
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&alloc::raw_vec::RawVecInner<alloc::alloc::Global>", baseType: !209, size: 64, align: 64, dwarfAddressSpace: 0)
!1213 = !DISubprogram(name: "non_null<alloc::alloc::Global, std::ffi::os_str::OsString>", linkageName: "_RINvMs2_NtCs6i54tJFfzR_5alloc7raw_vecNtB6_11RawVecInner8non_nullNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringECscBbfQkuq0VR_6expand", scope: !209, file: !1209, line: 614, type: !1210, scopeLine: 614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !1214)
!1214 = !{!239, !582}
!1215 = !DILocation(line: 610, column: 14, scope: !1216, inlinedAt: !1220)
!1216 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, std::ffi::os_str::OsString>", linkageName: "_RINvMs2_NtCs6i54tJFfzR_5alloc7raw_vecNtB6_11RawVecInner3ptrNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringECscBbfQkuq0VR_6expand", scope: !209, file: !1209, line: 609, type: !1217, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !1214, declaration: !1219)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!1141, !1212}
!1219 = !DISubprogram(name: "ptr<alloc::alloc::Global, std::ffi::os_str::OsString>", linkageName: "_RINvMs2_NtCs6i54tJFfzR_5alloc7raw_vecNtB6_11RawVecInner3ptrNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringECscBbfQkuq0VR_6expand", scope: !209, file: !1209, line: 609, type: !1217, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !1214)
!1220 = !DILocation(line: 296, column: 20, scope: !1221, inlinedAt: !1226)
!1221 = distinct !DISubprogram(name: "ptr<std::ffi::os_str::OsString, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringE3ptrCscBbfQkuq0VR_6expand", scope: !1083, file: !1209, line: 295, type: !1222, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !1088, declaration: !1225)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!1141, !1224}
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&alloc::raw_vec::RawVec<std::ffi::os_str::OsString, alloc::alloc::Global>", baseType: !1083, size: 64, align: 64, dwarfAddressSpace: 0)
!1225 = !DISubprogram(name: "ptr<std::ffi::os_str::OsString, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringE3ptrCscBbfQkuq0VR_6expand", scope: !1083, file: !1209, line: 295, type: !1222, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !1088)
!1226 = !DILocation(line: 2061, column: 18, scope: !1152, inlinedAt: !1158)
!1227 = !DILocation(line: 404, column: 18, scope: !1228, inlinedAt: !1232)
!1228 = distinct !DISubprogram(name: "as_ptr<std::ffi::os_str::OsString>", linkageName: "_RNvMs1_NtNtCsgxBkk5gSRhY_4core3ptr8non_nullINtB5_7NonNullNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringE6as_ptrCscBbfQkuq0VR_6expand", scope: !566, file: !970, line: 398, type: !1229, scopeLine: 398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !581, declaration: !1231)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!1141, !566}
!1231 = !DISubprogram(name: "as_ptr<std::ffi::os_str::OsString>", linkageName: "_RNvMs1_NtNtCsgxBkk5gSRhY_4core3ptr8non_nullINtB5_7NonNullNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringE6as_ptrCscBbfQkuq0VR_6expand", scope: !566, file: !970, line: 398, type: !1229, scopeLine: 398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !581)
!1232 = !DILocation(line: 610, column: 30, scope: !1216, inlinedAt: !1220)
!1233 = !DILocation(line: 4075, column: 21, scope: !1140)
!1234 = !DILocation(line: 4076, column: 55, scope: !1140)
!1235 = !DILocalVariable(name: "len", arg: 1, scope: !1236, file: !1237, line: 13, type: !1148)
!1236 = distinct !DISubprogram(name: "new", linkageName: "_RNvMNtNtCs6i54tJFfzR_5alloc3vec15set_len_on_dropNtB2_12SetLenOnDrop3newCscBbfQkuq0VR_6expand", scope: !1144, file: !1237, line: 13, type: !1238, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, declaration: !1240, retainedNodes: !1241)
!1237 = !DIFile(filename: "library/alloc/src/vec/set_len_on_drop.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "9a0d01ce4a85900df996691fa734ffd7")
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!1144, !1148}
!1240 = !DISubprogram(name: "new", linkageName: "_RNvMNtNtCs6i54tJFfzR_5alloc3vec15set_len_on_dropNtB2_12SetLenOnDrop3newCscBbfQkuq0VR_6expand", scope: !1144, file: !1237, line: 13, type: !1238, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !23)
!1241 = !{!1235}
!1242 = !DILocation(line: 13, column: 23, scope: !1236, inlinedAt: !1243)
!1243 = !DILocation(line: 4076, column: 37, scope: !1140)
!1244 = !DILocation(line: 14, column: 35, scope: !1236, inlinedAt: !1243)
!1245 = !DILocation(line: 14, column: 9, scope: !1236, inlinedAt: !1243)
!1246 = !DILocation(line: 4076, column: 21, scope: !1143)
!1247 = !DILocation(line: 4077, column: 17, scope: !1143)
!1248 = !DILocation(line: 4077, column: 35, scope: !1143)
!1249 = !DILocation(line: 4077, column: 26, scope: !1143)
!1250 = !DILocation(line: 4093, column: 6, scope: !1078)
!1251 = !DILocation(line: 4064, column: 5, scope: !1078)
!1252 = distinct !DISubprogram(name: "lang_start<()>", linkageName: "_RINvNtCs9k3SxhrAWiO_3std2rt10lang_startuECscBbfQkuq0VR_6expand", scope: !16, file: !1253, line: 199, type: !1254, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !654, retainedNodes: !1258)
!1253 = !DIFile(filename: "library/std/src/rt.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "83eadca7bec2ebce94abb46f51902baa")
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!1256, !20, !1256, !1257, !223}
!1256 = !DIBasicType(name: "isize", size: 64, encoding: DW_ATE_signed)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const *const u8", baseType: !222, size: 64, align: 64, dwarfAddressSpace: 0)
!1258 = !{!1259, !1260, !1261, !1262}
!1259 = !DILocalVariable(name: "main", arg: 1, scope: !1252, file: !1253, line: 200, type: !20)
!1260 = !DILocalVariable(name: "argc", arg: 2, scope: !1252, file: !1253, line: 201, type: !1256)
!1261 = !DILocalVariable(name: "argv", arg: 3, scope: !1252, file: !1253, line: 202, type: !1257)
!1262 = !DILocalVariable(name: "sigpipe", arg: 4, scope: !1252, file: !1253, line: 203, type: !223)
!1263 = !DILocation(line: 200, column: 5, scope: !1252)
!1264 = !DILocation(line: 201, column: 5, scope: !1252)
!1265 = !DILocation(line: 202, column: 5, scope: !1252)
!1266 = !DILocation(line: 203, column: 5, scope: !1252)
!1267 = !DILocation(line: 206, column: 10, scope: !1252)
!1268 = !DILocation(line: 205, column: 5, scope: !1252)
!1269 = !DILocation(line: 211, column: 2, scope: !1252)
!1270 = distinct !DISubprogram(name: "drop_glue<alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<std::ffi::os_str::OsString, alloc::alloc::Global, core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>>", linkageName: "_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtBK_3VecNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringE14extend_trustedINtNtNtNtB4_4iter8adapters6cloned6ClonedINtNtNtB4_5slice4iter4IterB1j_EEE0ECscBbfQkuq0VR_6expand", scope: !214, file: !1271, line: 823, type: !1272, scopeLine: 823, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !1283, retainedNodes: !1281)
!1271 = !DIFile(filename: "library/core/src/ptr/mod.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "adf09092a768fb63932c6e448fcd177c")
!1272 = !DISubroutineType(types: !1273)
!1273 = !{null, !1274}
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<std::ffi::os_str::OsString, alloc::alloc::Global, core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>", baseType: !1275, size: 64, align: 64, dwarfAddressSpace: 0)
!1275 = !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<std::ffi::os_str::OsString, alloc::alloc::Global, core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>", scope: !1276, file: !2, size: 192, align: 64, elements: !1278, templateParams: !23, identifier: "7aca6cb8d26c680a42054b4d331c6692")
!1276 = !DINamespace(name: "extend_trusted", scope: !1277)
!1277 = !DINamespace(name: "{impl#21}", scope: !202)
!1278 = !{!1279, !1280}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1275, file: !2, baseType: !1141, size: 64, align: 64, offset: 128)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "local_len", scope: !1275, file: !2, baseType: !1144, size: 128, align: 64)
!1281 = !{!1282}
!1282 = !DILocalVariable(arg: 1, scope: !1270, file: !1271, line: 823, type: !1274)
!1283 = !{!1284}
!1284 = !DITemplateTypeParameter(name: "T", type: !1275)
!1285 = !DILocation(line: 823, column: 1, scope: !1270)
!1286 = distinct !DISubprogram(name: "drop_glue<core::iter::adapters::map::map_fold::{closure_env#0}<&std::ffi::os_str::OsString, std::ffi::os_str::OsString, (), fn(&std::ffi::os_str::OsString) -> std::ffi::os_str::OsString, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<std::ffi::os_str::OsString, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<std::ffi::os_str::OsString, alloc::alloc::Global, core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>>>>", linkageName: "_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCINvNtNtNtB4_4iter8adapters3map8map_foldRNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringB1h_uNvYB1h_NtNtB4_5clone5Clone5cloneNCINvNvNtNtNtBK_6traits8iterator8Iterator8for_each4callB1h_NCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB3G_3VecB1h_E14extend_trustedINtNtBI_6cloned6ClonedINtNtNtB4_5slice4iter4IterB1h_EEE0E0E0ECscBbfQkuq0VR_6expand", scope: !214, file: !1271, line: 823, type: !1287, scopeLine: 823, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !1309, retainedNodes: !1307)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{null, !1289}
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::map::map_fold::{closure_env#0}<&std::ffi::os_str::OsString, std::ffi::os_str::OsString, (), fn(&std::ffi::os_str::OsString) -> std::ffi::os_str::OsString, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<std::ffi::os_str::OsString, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<std::ffi::os_str::OsString, alloc::alloc::Global, core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>>>", baseType: !1290, size: 64, align: 64, dwarfAddressSpace: 0)
!1290 = !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<&std::ffi::os_str::OsString, std::ffi::os_str::OsString, (), fn(&std::ffi::os_str::OsString) -> std::ffi::os_str::OsString, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<std::ffi::os_str::OsString, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<std::ffi::os_str::OsString, alloc::alloc::Global, core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>>>", scope: !1291, file: !2, size: 192, align: 64, elements: !1293, templateParams: !23, identifier: "b472a697764d369f90bef68523eaea7f")
!1291 = !DINamespace(name: "map_fold", scope: !1292)
!1292 = !DINamespace(name: "map", scope: !557)
!1293 = !{!1294, !1303}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1290, file: !2, baseType: !1295, size: 192, align: 64)
!1295 = !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<std::ffi::os_str::OsString, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<std::ffi::os_str::OsString, alloc::alloc::Global, core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>>", scope: !1296, file: !2, size: 192, align: 64, elements: !1301, templateParams: !23, identifier: "e493d14511d17819ed56d176efea7d95")
!1296 = !DINamespace(name: "call", scope: !1297)
!1297 = !DINamespace(name: "for_each", scope: !1298)
!1298 = !DINamespace(name: "Iterator", scope: !1299)
!1299 = !DINamespace(name: "iterator", scope: !1300)
!1300 = !DINamespace(name: "traits", scope: !558)
!1301 = !{!1302}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1295, file: !2, baseType: !1275, size: 192, align: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1290, file: !2, baseType: !1304, align: 8, offset: 192)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "fn(&std::ffi::os_str::OsString) -> std::ffi::os_str::OsString", baseType: !1305, align: 8, dwarfAddressSpace: 0)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!570, !588}
!1307 = !{!1308}
!1308 = !DILocalVariable(arg: 1, scope: !1286, file: !1271, line: 823, type: !1289)
!1309 = !{!1310}
!1310 = !DITemplateTypeParameter(name: "T", type: !1290)
!1311 = !DILocation(line: 823, column: 1, scope: !1286)
!1312 = distinct !DISubprogram(name: "drop_glue<core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<std::ffi::os_str::OsString, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<std::ffi::os_str::OsString, alloc::alloc::Global, core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>>>", linkageName: "_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCINvNvNtNtNtNtB4_4iter6traits8iterator8Iterator8for_each4callNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB2s_3VecB1B_E14extend_trustedINtNtNtBO_8adapters6cloned6ClonedINtNtNtB4_5slice4iter4IterB1B_EEE0E0ECscBbfQkuq0VR_6expand", scope: !214, file: !1271, line: 823, type: !1313, scopeLine: 823, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !1318, retainedNodes: !1316)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{null, !1315}
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<std::ffi::os_str::OsString, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<std::ffi::os_str::OsString, alloc::alloc::Global, core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>>", baseType: !1295, size: 64, align: 64, dwarfAddressSpace: 0)
!1316 = !{!1317}
!1317 = !DILocalVariable(arg: 1, scope: !1312, file: !1271, line: 823, type: !1315)
!1318 = !{!1319}
!1319 = !DITemplateTypeParameter(name: "T", type: !1295)
!1320 = !DILocation(line: 823, column: 1, scope: !1312)
!1321 = distinct !DISubprogram(name: "drop_glue<uu_expand::ParseError>", linkageName: "_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtCs9xOv1NcnHfv_9uu_expand10ParseErrorECscBbfQkuq0VR_6expand", scope: !214, file: !1271, line: 823, type: !1322, scopeLine: 823, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !1327, retainedNodes: !1325)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{null, !1324}
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut uu_expand::ParseError", baseType: !187, size: 64, align: 64, dwarfAddressSpace: 0)
!1325 = !{!1326}
!1326 = !DILocalVariable(arg: 1, scope: !1321, file: !1271, line: 823, type: !1324)
!1327 = !{!1328}
!1328 = !DITemplateTypeParameter(name: "T", type: !187)
!1329 = !DILocation(line: 823, column: 1, scope: !1321)
!1330 = distinct !DISubprogram(name: "drop_glue<uu_expand::Options>", linkageName: "_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtCs9xOv1NcnHfv_9uu_expand7OptionsECscBbfQkuq0VR_6expand", scope: !214, file: !1271, line: 823, type: !1331, scopeLine: 823, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !1354, retainedNodes: !1352)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{null, !1333}
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut uu_expand::Options", baseType: !1334, size: 64, align: 64, dwarfAddressSpace: 0)
!1334 = !DICompositeType(tag: DW_TAG_structure_type, name: "Options", scope: !188, file: !2, size: 448, align: 64, flags: DIFlagPrivate, elements: !1335, templateParams: !23, identifier: "d7a4faf04c15cbb375154ee5a726b2b1")
!1335 = !{!1336, !1337, !1348, !1350, !1351}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1334, file: !2, baseType: !1080, size: 192, align: 64, flags: DIFlagPrivate)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "tabstops", scope: !1334, file: !2, baseType: !1338, size: 192, align: 64, offset: 192, flags: DIFlagPrivate)
!1338 = !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<usize, alloc::alloc::Global>", scope: !202, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !1339, templateParams: !1346, identifier: "c9df80981456a65f927ff03a3e191608")
!1339 = !{!1340, !1347}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1338, file: !2, baseType: !1341, size: 128, align: 64, flags: DIFlagPrivate)
!1341 = !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<usize, alloc::alloc::Global>", scope: !206, file: !2, size: 128, align: 64, flags: DIFlagProtected, elements: !1342, templateParams: !1346, identifier: "d03eb2692440ff3884454f523c2ff649")
!1342 = !{!1343, !1344}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1341, file: !2, baseType: !209, size: 128, align: 64, flags: DIFlagPrivate)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !1341, file: !2, baseType: !1345, align: 8, offset: 128, flags: DIFlagPrivate)
!1345 = !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<usize>", scope: !228, file: !2, align: 8, flags: DIFlagPublic, elements: !23, templateParams: !1108, identifier: "5be729919dac23c7257ea6e68c494670")
!1346 = !{!1109, !239}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1338, file: !2, baseType: !9, size: 64, align: 64, offset: 128, flags: DIFlagPrivate)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "iflag", scope: !1334, file: !2, baseType: !1349, size: 8, align: 8, offset: 384, flags: DIFlagPrivate)
!1349 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !1334, file: !2, baseType: !1349, size: 8, align: 8, offset: 392, flags: DIFlagPrivate)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "remaining_mode", scope: !1334, file: !2, baseType: !455, size: 8, align: 8, offset: 400, flags: DIFlagPrivate)
!1352 = !{!1353}
!1353 = !DILocalVariable(arg: 1, scope: !1330, file: !1271, line: 823, type: !1333)
!1354 = !{!1355}
!1355 = !DITemplateTypeParameter(name: "T", type: !1334)
!1356 = !DILocation(line: 823, column: 1, scope: !1330)
!1357 = distinct !DISubprogram(name: "handle_clap_result<alloc::vec::Vec<std::ffi::os_str::OsString, alloc::alloc::Global>, std::ffi::os_str::OsString>", linkageName: "_RINvNtNtCs1iFJFqccjfm_6uucore4mods17clap_localization18handle_clap_resultINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringEB1F_ECscBbfQkuq0VR_6expand", scope: !1359, file: !1358, line: 394, type: !1360, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !2067, retainedNodes: !2064)
!1358 = !DIFile(filename: "src/uucore/src/lib/mods/clap_localization.rs", directory: "/workspaces/Thesis/.build/uutils-coreutils", checksumkind: CSK_MD5, checksum: "ef3bbf72b941f65004c34bcddaa2b0c3")
!1359 = !DINamespace(name: "clap_localization", scope: !781)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!1362, !1589, !1080}
!1362 = !DICompositeType(tag: DW_TAG_structure_type, name: "Result<clap_builder::parser::matches::arg_matches::ArgMatches, alloc::boxed::Box<dyn uucore::mods::error::UError, alloc::alloc::Global>>", scope: !596, file: !2, size: 832, align: 64, flags: DIFlagPublic, elements: !1363, templateParams: !23, identifier: "80c6bf15a994a2dc7f7d5ca33f294eae")
!1363 = !{!1364}
!1364 = !DICompositeType(tag: DW_TAG_variant_part, scope: !1362, file: !2, size: 832, align: 64, elements: !1365, templateParams: !23, identifier: "b29b55953fe03a22df364da64c676d93", discriminator: !1588)
!1365 = !{!1366, !1584}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !1364, file: !2, baseType: !1367, size: 832, align: 64)
!1367 = !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !1362, file: !2, size: 832, align: 64, flags: DIFlagPublic, elements: !1368, templateParams: !1582, identifier: "5bbbae2377d1872763c60a74bc52d42")
!1368 = !{!1369}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1367, file: !2, baseType: !1370, size: 832, align: 64, flags: DIFlagPublic)
!1370 = !DICompositeType(tag: DW_TAG_structure_type, name: "ArgMatches", scope: !1371, file: !2, size: 832, align: 64, flags: DIFlagPublic, elements: !1372, templateParams: !23, identifier: "bcdc4fbe6f80d0ad4990a6d65fc7b9de")
!1371 = !DINamespace(name: "arg_matches", scope: !462)
!1372 = !{!1373, !1399, !1412, !1563}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "valid_args", scope: !1370, file: !2, baseType: !1374, size: 192, align: 64, flags: DIFlagProtected)
!1374 = !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<clap_builder::util::id::Id, alloc::alloc::Global>", scope: !202, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !1375, templateParams: !1397, identifier: "fb88eb9ff0317dba7e0c139cd22ca01")
!1375 = !{!1376, !1398}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1374, file: !2, baseType: !1377, size: 128, align: 64, flags: DIFlagPrivate)
!1377 = !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<clap_builder::util::id::Id, alloc::alloc::Global>", scope: !206, file: !2, size: 128, align: 64, flags: DIFlagProtected, elements: !1378, templateParams: !1397, identifier: "94a38dd95df2bbfcff2c867b407ef6a6")
!1378 = !{!1379, !1380}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1377, file: !2, baseType: !209, size: 128, align: 64, flags: DIFlagPrivate)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !1377, file: !2, baseType: !1381, align: 8, offset: 128, flags: DIFlagPrivate)
!1381 = !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<clap_builder::util::id::Id>", scope: !228, file: !2, align: 8, flags: DIFlagPublic, elements: !23, templateParams: !1382, identifier: "6ee86e247a58c19db14a8f7c66580b")
!1382 = !{!1383}
!1383 = !DITemplateTypeParameter(name: "T", type: !1384)
!1384 = !DICompositeType(tag: DW_TAG_structure_type, name: "Id", scope: !1385, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !1387, templateParams: !23, identifier: "23ebb129242fcee065b2845536df215c")
!1385 = !DINamespace(name: "id", scope: !1386)
!1386 = !DINamespace(name: "util", scope: !464)
!1387 = !{!1388}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1384, file: !2, baseType: !1389, size: 128, align: 64, flags: DIFlagPrivate)
!1389 = !DICompositeType(tag: DW_TAG_structure_type, name: "Str", scope: !1390, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !1391, templateParams: !23, identifier: "3526e8a557e3e6381650e332cb48666c")
!1390 = !DINamespace(name: "str", scope: !471)
!1391 = !{!1392}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1389, file: !2, baseType: !1393, size: 128, align: 64, flags: DIFlagPrivate)
!1393 = !DICompositeType(tag: DW_TAG_structure_type, name: "Inner", scope: !1394, file: !2, size: 128, align: 64, flags: DIFlagProtected, elements: !1395, templateParams: !23, identifier: "5ff6fdf6f96ca37f9de864baa7a4b1ff")
!1394 = !DINamespace(name: "inner", scope: !1390)
!1395 = !{!1396}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1393, file: !2, baseType: !716, size: 128, align: 64, flags: DIFlagProtected)
!1397 = !{!1383, !239}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1374, file: !2, baseType: !9, size: 64, align: 64, offset: 128, flags: DIFlagPrivate)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "valid_subcommands", scope: !1370, file: !2, baseType: !1400, size: 192, align: 64, offset: 192, flags: DIFlagProtected)
!1400 = !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<clap_builder::builder::str::Str, alloc::alloc::Global>", scope: !202, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !1401, templateParams: !1410, identifier: "6951eb133c5388f5229c3f11aac886b8")
!1401 = !{!1402, !1411}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1400, file: !2, baseType: !1403, size: 128, align: 64, flags: DIFlagPrivate)
!1403 = !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<clap_builder::builder::str::Str, alloc::alloc::Global>", scope: !206, file: !2, size: 128, align: 64, flags: DIFlagProtected, elements: !1404, templateParams: !1410, identifier: "e94336c0180539a1a3d7ed440183ee97")
!1404 = !{!1405, !1406}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1403, file: !2, baseType: !209, size: 128, align: 64, flags: DIFlagPrivate)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !1403, file: !2, baseType: !1407, align: 8, offset: 128, flags: DIFlagPrivate)
!1407 = !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<clap_builder::builder::str::Str>", scope: !228, file: !2, align: 8, flags: DIFlagPublic, elements: !23, templateParams: !1408, identifier: "e80c85ed111a17a9388a4ac92d577f2d")
!1408 = !{!1409}
!1409 = !DITemplateTypeParameter(name: "T", type: !1389)
!1410 = !{!1409, !239}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1400, file: !2, baseType: !9, size: 64, align: 64, offset: 128, flags: DIFlagPrivate)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1370, file: !2, baseType: !1413, size: 384, align: 64, offset: 384, flags: DIFlagProtected)
!1413 = !DICompositeType(tag: DW_TAG_structure_type, name: "FlatMap<clap_builder::util::id::Id, clap_builder::parser::matches::matched_arg::MatchedArg>", scope: !1414, file: !2, size: 384, align: 64, flags: DIFlagProtected, elements: !1415, templateParams: !1560, identifier: "18917da9b1d3075bf3cbde0d636da1a4")
!1414 = !DINamespace(name: "flat_map", scope: !1386)
!1415 = !{!1416, !1417}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1413, file: !2, baseType: !1374, size: 192, align: 64, flags: DIFlagPrivate)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1413, file: !2, baseType: !1418, size: 192, align: 64, offset: 192, flags: DIFlagPrivate)
!1418 = !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<clap_builder::parser::matches::matched_arg::MatchedArg, alloc::alloc::Global>", scope: !202, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !1419, templateParams: !1558, identifier: "3458d54f51f073a4d344033e078e4d")
!1419 = !{!1420, !1559}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1418, file: !2, baseType: !1421, size: 128, align: 64, flags: DIFlagPrivate)
!1421 = !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<clap_builder::parser::matches::matched_arg::MatchedArg, alloc::alloc::Global>", scope: !206, file: !2, size: 128, align: 64, flags: DIFlagProtected, elements: !1422, templateParams: !1558, identifier: "8ad50efe5c86186feefe8383af0ac326")
!1422 = !{!1423, !1424}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1421, file: !2, baseType: !209, size: 128, align: 64, flags: DIFlagPrivate)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !1421, file: !2, baseType: !1425, align: 8, offset: 128, flags: DIFlagPrivate)
!1425 = !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<clap_builder::parser::matches::matched_arg::MatchedArg>", scope: !228, file: !2, align: 8, flags: DIFlagPublic, elements: !23, templateParams: !1426, identifier: "f3d4da35ab06cb3223824282be69b9df")
!1426 = !{!1427}
!1427 = !DITemplateTypeParameter(name: "T", type: !1428)
!1428 = !DICompositeType(tag: DW_TAG_structure_type, name: "MatchedArg", scope: !1429, file: !2, size: 896, align: 64, flags: DIFlagProtected, elements: !1430, templateParams: !23, identifier: "47399ddcaa316327c411c53b2bc5bd4a")
!1429 = !DINamespace(name: "matched_arg", scope: !462)
!1430 = !{!1431, !1445, !1446, !1470, !1544, !1557}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !1428, file: !2, baseType: !1432, size: 8, align: 8, offset: 840, flags: DIFlagPrivate)
!1432 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<clap_builder::parser::matches::value_source::ValueSource>", scope: !304, file: !2, size: 8, align: 8, flags: DIFlagPublic, elements: !1433, templateParams: !23, identifier: "acbb8cf7f7f29061c2f6777c5459e699")
!1433 = !{!1434}
!1434 = !DICompositeType(tag: DW_TAG_variant_part, scope: !1432, file: !2, size: 8, align: 8, elements: !1435, templateParams: !23, identifier: "2ec2f6021e0492b7ac0ef616d0b0d088", discriminator: !1444)
!1435 = !{!1436, !1440}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !1434, file: !2, baseType: !1437, size: 8, align: 8, extraData: i8 -1)
!1437 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !1432, file: !2, size: 8, align: 8, flags: DIFlagPublic, elements: !23, templateParams: !1438, identifier: "28595b62f484a21c4b346fb4a2a3dff5")
!1438 = !{!1439}
!1439 = !DITemplateTypeParameter(name: "T", type: !460)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !1434, file: !2, baseType: !1441, size: 8, align: 8)
!1441 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !1432, file: !2, size: 8, align: 8, flags: DIFlagPublic, elements: !1442, templateParams: !1438, identifier: "cf35cb9e0c6156fe4900c9b10eb842a")
!1442 = !{!1443}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1441, file: !2, baseType: !460, size: 8, align: 8, flags: DIFlagPublic)
!1444 = !DIDerivedType(tag: DW_TAG_member, scope: !1432, file: !2, baseType: !223, size: 8, align: 8, flags: DIFlagArtificial)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "indices", scope: !1428, file: !2, baseType: !1338, size: 192, align: 64, flags: DIFlagPrivate)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "type_id", scope: !1428, file: !2, baseType: !1447, size: 256, align: 64, offset: 576, flags: DIFlagPrivate)
!1447 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<clap_builder::util::any_value::AnyValueId>", scope: !304, file: !2, size: 256, align: 64, flags: DIFlagPublic, elements: !1448, templateParams: !23, identifier: "61074774c6ba148951e57fd6e136c472")
!1448 = !{!1449}
!1449 = !DICompositeType(tag: DW_TAG_variant_part, scope: !1447, file: !2, size: 256, align: 64, elements: !1450, templateParams: !23, identifier: "8a2b7c96c763c57a4d9ab5b03a7aa8b8", discriminator: !1469)
!1450 = !{!1451, !1465}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !1449, file: !2, baseType: !1452, size: 256, align: 64, extraData: i64 0)
!1452 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !1447, file: !2, size: 256, align: 64, flags: DIFlagPublic, elements: !23, templateParams: !1453, identifier: "6cdb295f811be344cf62a430b4da154")
!1453 = !{!1454}
!1454 = !DITemplateTypeParameter(name: "T", type: !1455)
!1455 = !DICompositeType(tag: DW_TAG_structure_type, name: "AnyValueId", scope: !1456, file: !2, size: 256, align: 64, flags: DIFlagPublic, elements: !1457, templateParams: !23, identifier: "33ec44699c70d3f56e6e215543e4b17c")
!1456 = !DINamespace(name: "any_value", scope: !1386)
!1457 = !{!1458, !1464}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "type_id", scope: !1455, file: !2, baseType: !1459, size: 128, align: 64, offset: 128, flags: DIFlagPrivate)
!1459 = !DICompositeType(tag: DW_TAG_structure_type, name: "TypeId", scope: !1460, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !1461, templateParams: !23, identifier: "bdf87c2f9a57ea2f72520b942ac046ea")
!1460 = !DINamespace(name: "any", scope: !215)
!1461 = !{!1462}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1459, file: !2, baseType: !1463, size: 128, align: 64, flags: DIFlagProtected)
!1463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 128, align: 64, elements: !726)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "type_name", scope: !1455, file: !2, baseType: !716, size: 128, align: 64, flags: DIFlagPrivate)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !1449, file: !2, baseType: !1466, size: 256, align: 64)
!1466 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !1447, file: !2, size: 256, align: 64, flags: DIFlagPublic, elements: !1467, templateParams: !1453, identifier: "4e36fff7bd98ea84d26c10f3755ff5b6")
!1467 = !{!1468}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1466, file: !2, baseType: !1455, size: 256, align: 64, flags: DIFlagPublic)
!1469 = !DIDerivedType(tag: DW_TAG_member, scope: !1447, file: !2, baseType: !261, size: 64, align: 64, flags: DIFlagArtificial)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !1428, file: !2, baseType: !1471, size: 192, align: 64, offset: 192, flags: DIFlagPrivate)
!1471 = !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<alloc::vec::Vec<clap_builder::util::any_value::AnyValue, alloc::alloc::Global>, alloc::alloc::Global>", scope: !202, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !1472, templateParams: !1542, identifier: "8f8801461a4491b7a803b550cd32c6e8")
!1472 = !{!1473, !1543}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1471, file: !2, baseType: !1474, size: 128, align: 64, flags: DIFlagPrivate)
!1474 = !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<alloc::vec::Vec<clap_builder::util::any_value::AnyValue, alloc::alloc::Global>, alloc::alloc::Global>", scope: !206, file: !2, size: 128, align: 64, flags: DIFlagProtected, elements: !1475, templateParams: !1542, identifier: "29174889b3a73009dd4ed1c9db4dc6a0")
!1475 = !{!1476, !1477}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1474, file: !2, baseType: !209, size: 128, align: 64, flags: DIFlagPrivate)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !1474, file: !2, baseType: !1478, align: 8, offset: 128, flags: DIFlagPrivate)
!1478 = !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<alloc::vec::Vec<clap_builder::util::any_value::AnyValue, alloc::alloc::Global>>", scope: !228, file: !2, align: 8, flags: DIFlagPublic, elements: !23, templateParams: !1479, identifier: "fd548f15a91930a84cf7b66719ae851")
!1479 = !{!1480}
!1480 = !DITemplateTypeParameter(name: "T", type: !1481)
!1481 = !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<clap_builder::util::any_value::AnyValue, alloc::alloc::Global>", scope: !202, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !1482, templateParams: !1540, identifier: "a48cc826861ef73075972c73500051f0")
!1482 = !{!1483, !1541}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1481, file: !2, baseType: !1484, size: 128, align: 64, flags: DIFlagPrivate)
!1484 = !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<clap_builder::util::any_value::AnyValue, alloc::alloc::Global>", scope: !206, file: !2, size: 128, align: 64, flags: DIFlagProtected, elements: !1485, templateParams: !1540, identifier: "c10ac14036bf18be19ac275fbcb524a4")
!1485 = !{!1486, !1487}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1484, file: !2, baseType: !209, size: 128, align: 64, flags: DIFlagPrivate)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !1484, file: !2, baseType: !1488, align: 8, offset: 128, flags: DIFlagPrivate)
!1488 = !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<clap_builder::util::any_value::AnyValue>", scope: !228, file: !2, align: 8, flags: DIFlagPublic, elements: !23, templateParams: !1489, identifier: "4941a376011f748529218162cf5e350c")
!1489 = !{!1490}
!1490 = !DITemplateTypeParameter(name: "T", type: !1491)
!1491 = !DICompositeType(tag: DW_TAG_structure_type, name: "AnyValue", scope: !1456, file: !2, size: 384, align: 64, flags: DIFlagProtected, elements: !1492, templateParams: !23, identifier: "854493751532f081fea2fa6eca8a40b8")
!1492 = !{!1493, !1539}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1491, file: !2, baseType: !1494, size: 128, align: 64, flags: DIFlagPrivate)
!1494 = !DICompositeType(tag: DW_TAG_structure_type, name: "Arc<(dyn core::any::Any + core::marker::Send + core::marker::Sync), alloc::alloc::Global>", scope: !1495, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !1496, templateParams: !1538, identifier: "20222ae2e1fb437d3632fdac07fcae2")
!1495 = !DINamespace(name: "sync", scope: !198)
!1496 = !{!1497, !1535, !1537}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1494, file: !2, baseType: !1498, size: 128, align: 64, flags: DIFlagPrivate)
!1498 = !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<alloc::sync::ArcInner<(dyn core::any::Any + core::marker::Send + core::marker::Sync)>>", scope: !219, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !1499, templateParams: !1533, identifier: "fe156541e76ffbebfa564c6dfd653030")
!1499 = !{!1500}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1498, file: !2, baseType: !1501, size: 128, align: 64, flags: DIFlagPrivate)
!1501 = !DICompositeType(tag: DW_TAG_structure_type, name: "*const alloc::sync::ArcInner<(dyn core::any::Any + core::marker::Send + core::marker::Sync)>", file: !2, size: 128, align: 64, elements: !1502, templateParams: !23, identifier: "b7d1372f186468f251a5dbabdfc13fd5")
!1502 = !{!1503, !1528}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1501, file: !2, baseType: !1504, size: 64, align: 64)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64, align: 64, dwarfAddressSpace: 0)
!1505 = !DICompositeType(tag: DW_TAG_structure_type, name: "ArcInner<(dyn core::any::Any + core::marker::Send + core::marker::Sync)>", scope: !1495, file: !2, size: 128, align: 64, flags: DIFlagPrivate, elements: !1506, templateParams: !1526, identifier: "2a4890ebe42ca40b6eb3639f89c118a9")
!1506 = !{!1507, !1523, !1524}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "strong", scope: !1505, file: !2, baseType: !1508, size: 64, align: 64, flags: DIFlagPrivate)
!1508 = !DICompositeType(tag: DW_TAG_structure_type, name: "Atomic<usize>", scope: !1509, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !1511, templateParams: !1108, identifier: "e4c3aeae9ce191df530eb79dafa8a665")
!1509 = !DINamespace(name: "atomic", scope: !1510)
!1510 = !DINamespace(name: "sync", scope: !215)
!1511 = !{!1512}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !1508, file: !2, baseType: !1513, size: 64, align: 64, flags: DIFlagPrivate)
!1513 = !DICompositeType(tag: DW_TAG_structure_type, name: "UnsafeCell<core::sync::atomic::private::Align8<usize>>", scope: !1514, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !1515, templateParams: !1521, identifier: "33623fb6fc3bc1feac80533128af8b")
!1514 = !DINamespace(name: "cell", scope: !215)
!1515 = !{!1516}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1513, file: !2, baseType: !1517, size: 64, align: 64, flags: DIFlagPrivate)
!1517 = !DICompositeType(tag: DW_TAG_structure_type, name: "Align8<usize>", scope: !1518, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !1519, templateParams: !1108, identifier: "105802d8d05e706c664f47c49b278d02")
!1518 = !DINamespace(name: "private", scope: !1509)
!1519 = !{!1520}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1517, file: !2, baseType: !9, size: 64, align: 64, flags: DIFlagPrivate)
!1521 = !{!1522}
!1522 = !DITemplateTypeParameter(name: "T", type: !1517)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "weak", scope: !1505, file: !2, baseType: !1508, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1505, file: !2, baseType: !1525, align: 8, offset: 128, flags: DIFlagPrivate)
!1525 = !DICompositeType(tag: DW_TAG_structure_type, name: "(dyn core::any::Any + core::marker::Send + core::marker::Sync)", file: !2, align: 8, elements: !23, identifier: "290022c7937a297ce82520b1e3adbba7")
!1526 = !{!1527}
!1527 = !DITemplateTypeParameter(name: "T", type: !1525)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1501, file: !2, baseType: !1529, size: 64, align: 64, offset: 64)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&[usize; 4]", baseType: !1530, size: 64, align: 64, dwarfAddressSpace: 0)
!1530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 256, align: 64, elements: !1531)
!1531 = !{!1532}
!1532 = !DISubrange(count: 4, lowerBound: 0)
!1533 = !{!1534}
!1534 = !DITemplateTypeParameter(name: "T", type: !1505)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "phantom", scope: !1494, file: !2, baseType: !1536, align: 8, offset: 128, flags: DIFlagPrivate)
!1536 = !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<alloc::sync::ArcInner<(dyn core::any::Any + core::marker::Send + core::marker::Sync)>>", scope: !228, file: !2, align: 8, flags: DIFlagPublic, elements: !23, templateParams: !1533, identifier: "d0fa3962efdc456e7ffd6a563322f933")
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1494, file: !2, baseType: !236, align: 8, offset: 128, flags: DIFlagPrivate)
!1538 = !{!1527, !239}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1491, file: !2, baseType: !1455, size: 256, align: 64, offset: 128, flags: DIFlagPrivate)
!1540 = !{!1490, !239}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1481, file: !2, baseType: !9, size: 64, align: 64, offset: 128, flags: DIFlagPrivate)
!1542 = !{!1480, !239}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1471, file: !2, baseType: !9, size: 64, align: 64, offset: 128, flags: DIFlagPrivate)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "raw_vals", scope: !1428, file: !2, baseType: !1545, size: 192, align: 64, offset: 384, flags: DIFlagPrivate)
!1545 = !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<alloc::vec::Vec<std::ffi::os_str::OsString, alloc::alloc::Global>, alloc::alloc::Global>", scope: !202, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !1546, templateParams: !1555, identifier: "1bb7719b3449c0f4948d158bb8f39e76")
!1546 = !{!1547, !1556}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1545, file: !2, baseType: !1548, size: 128, align: 64, flags: DIFlagPrivate)
!1548 = !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<alloc::vec::Vec<std::ffi::os_str::OsString, alloc::alloc::Global>, alloc::alloc::Global>", scope: !206, file: !2, size: 128, align: 64, flags: DIFlagProtected, elements: !1549, templateParams: !1555, identifier: "109f388054a988261764db174567ced8")
!1549 = !{!1550, !1551}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1548, file: !2, baseType: !209, size: 128, align: 64, flags: DIFlagPrivate)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !1548, file: !2, baseType: !1552, align: 8, offset: 128, flags: DIFlagPrivate)
!1552 = !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<alloc::vec::Vec<std::ffi::os_str::OsString, alloc::alloc::Global>>", scope: !228, file: !2, align: 8, flags: DIFlagPublic, elements: !23, templateParams: !1553, identifier: "80e1dc1eca6df24fb084e2c3249a2b33")
!1553 = !{!1554}
!1554 = !DITemplateTypeParameter(name: "T", type: !1080)
!1555 = !{!1554, !239}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1545, file: !2, baseType: !9, size: 64, align: 64, offset: 128, flags: DIFlagPrivate)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_case", scope: !1428, file: !2, baseType: !1349, size: 8, align: 8, offset: 832, flags: DIFlagPrivate)
!1558 = !{!1427, !239}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1418, file: !2, baseType: !9, size: 64, align: 64, offset: 128, flags: DIFlagPrivate)
!1560 = !{!1561, !1562}
!1561 = !DITemplateTypeParameter(name: "K", type: !1384)
!1562 = !DITemplateTypeParameter(name: "V", type: !1428)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "subcommand", scope: !1370, file: !2, baseType: !1564, size: 64, align: 64, offset: 768, flags: DIFlagProtected)
!1564 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<alloc::boxed::Box<clap_builder::parser::matches::arg_matches::SubCommand, alloc::alloc::Global>>", scope: !304, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !1565, templateParams: !23, identifier: "3507e492f986ac24e0844b8d5ae3678d")
!1565 = !{!1566}
!1566 = !DICompositeType(tag: DW_TAG_variant_part, scope: !1564, file: !2, size: 64, align: 64, elements: !1567, templateParams: !23, identifier: "268e08f093405398f1120755748d36a", discriminator: !1581)
!1567 = !{!1568, !1577}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !1566, file: !2, baseType: !1569, size: 64, align: 64, extraData: i64 0)
!1569 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !1564, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !23, templateParams: !1570, identifier: "b2cc1423ced9859a7cd5369d5a39a0af")
!1570 = !{!1571}
!1571 = !DITemplateTypeParameter(name: "T", type: !1572)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "alloc::boxed::Box<clap_builder::parser::matches::arg_matches::SubCommand, alloc::alloc::Global>", baseType: !1573, size: 64, align: 64, dwarfAddressSpace: 0)
!1573 = !DICompositeType(tag: DW_TAG_structure_type, name: "SubCommand", scope: !1371, file: !2, size: 1024, align: 64, flags: DIFlagProtected, elements: !1574, templateParams: !23, identifier: "3cbe3f3df684babee55dae1f99e61437")
!1574 = !{!1575, !1576}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1573, file: !2, baseType: !196, size: 192, align: 64, flags: DIFlagProtected)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "matches", scope: !1573, file: !2, baseType: !1370, size: 832, align: 64, offset: 192, flags: DIFlagProtected)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !1566, file: !2, baseType: !1578, size: 64, align: 64)
!1578 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !1564, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !1579, templateParams: !1570, identifier: "7bb00ca782567d0e3a04dd9178d8cce8")
!1579 = !{!1580}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1578, file: !2, baseType: !1572, size: 64, align: 64, flags: DIFlagPublic)
!1581 = !DIDerivedType(tag: DW_TAG_member, scope: !1564, file: !2, baseType: !261, size: 64, align: 64, flags: DIFlagArtificial)
!1582 = !{!1583, !606}
!1583 = !DITemplateTypeParameter(name: "T", type: !1370)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !1364, file: !2, baseType: !1585, size: 832, align: 64, extraData: i64 -1)
!1585 = !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !1362, file: !2, size: 832, align: 64, flags: DIFlagPublic, elements: !1586, templateParams: !1582, identifier: "2387c971095c2f4ce035a9166bab4f3b")
!1586 = !{!1587}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1585, file: !2, baseType: !607, size: 128, align: 64, offset: 64, flags: DIFlagPublic)
!1588 = !DIDerivedType(tag: DW_TAG_member, scope: !1362, file: !2, baseType: !261, size: 64, align: 64, flags: DIFlagArtificial)
!1589 = !DICompositeType(tag: DW_TAG_structure_type, name: "Command", scope: !1590, file: !2, size: 5696, align: 64, flags: DIFlagPublic, elements: !1591, templateParams: !23, identifier: "f18a3db772623f81538087e7e3907edd")
!1590 = !DINamespace(name: "command", scope: !471)
!1591 = !{!1592, !1593, !1605, !1619, !1631, !1632, !1633, !1634, !1635, !1653, !1654, !1655, !1656, !1657, !1658, !1675, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1703, !1704, !2005, !2018, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2063}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1589, file: !2, baseType: !1389, size: 128, align: 64, offset: 4480, flags: DIFlagPrivate)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "long_flag", scope: !1589, file: !2, baseType: !1594, size: 128, align: 64, offset: 4608, flags: DIFlagPrivate)
!1594 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<clap_builder::builder::str::Str>", scope: !304, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !1595, templateParams: !23, identifier: "2e391223d41c6fcbde90422a8e521ec2")
!1595 = !{!1596}
!1596 = !DICompositeType(tag: DW_TAG_variant_part, scope: !1594, file: !2, size: 128, align: 64, elements: !1597, templateParams: !23, identifier: "fcac57645de8539c220dd089a8569e3", discriminator: !1604)
!1597 = !{!1598, !1600}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !1596, file: !2, baseType: !1599, size: 128, align: 64, extraData: i64 0)
!1599 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !1594, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !23, templateParams: !1408, identifier: "998cb0f108c84d1bc80445c5e71557ee")
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !1596, file: !2, baseType: !1601, size: 128, align: 64)
!1601 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !1594, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !1602, templateParams: !1408, identifier: "591459141bbdae083de38d7f9bcb2c05")
!1602 = !{!1603}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1601, file: !2, baseType: !1389, size: 128, align: 64, flags: DIFlagPublic)
!1604 = !DIDerivedType(tag: DW_TAG_member, scope: !1594, file: !2, baseType: !261, size: 64, align: 64, flags: DIFlagArtificial)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "short_flag", scope: !1589, file: !2, baseType: !1606, size: 32, align: 32, offset: 5568, flags: DIFlagPrivate)
!1606 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<char>", scope: !304, file: !2, size: 32, align: 32, flags: DIFlagPublic, elements: !1607, templateParams: !23, identifier: "b4d5e6f993f8c104e5134ddf0e1346d7")
!1607 = !{!1608}
!1608 = !DICompositeType(tag: DW_TAG_variant_part, scope: !1606, file: !2, size: 32, align: 32, elements: !1609, templateParams: !23, identifier: "eceec66dce65235ed2c2df372e1b87dd", discriminator: !1618)
!1609 = !{!1610, !1614}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !1608, file: !2, baseType: !1611, size: 32, align: 32, extraData: i32 -1)
!1611 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !1606, file: !2, size: 32, align: 32, flags: DIFlagPublic, elements: !23, templateParams: !1612, identifier: "e50a17a47c0dcac56cc91de3b114804c")
!1612 = !{!1613}
!1613 = !DITemplateTypeParameter(name: "T", type: !337)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !1608, file: !2, baseType: !1615, size: 32, align: 32)
!1615 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !1606, file: !2, size: 32, align: 32, flags: DIFlagPublic, elements: !1616, templateParams: !1612, identifier: "5f6e9e6c167b0f7ec19216dc3b729698")
!1616 = !{!1617}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1615, file: !2, baseType: !337, size: 32, align: 32, flags: DIFlagPublic)
!1618 = !DIDerivedType(tag: DW_TAG_member, scope: !1606, file: !2, baseType: !391, size: 32, align: 32, flags: DIFlagArtificial)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "display_name", scope: !1589, file: !2, baseType: !1620, size: 192, align: 64, offset: 2176, flags: DIFlagPrivate)
!1620 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<alloc::string::String>", scope: !304, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !1621, templateParams: !23, identifier: "b650e3aeb3fd48f9dd0c73413dbd479")
!1621 = !{!1622}
!1622 = !DICompositeType(tag: DW_TAG_variant_part, scope: !1620, file: !2, size: 192, align: 64, elements: !1623, templateParams: !23, identifier: "4a66f8bfb24417918f68bbcfef95f8b1", discriminator: !1630)
!1623 = !{!1624, !1626}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !1622, file: !2, baseType: !1625, size: 192, align: 64, extraData: i64 -1)
!1625 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !1620, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !23, templateParams: !757, identifier: "1f5ac6510f95f18461e082e7b2c132a2")
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !1622, file: !2, baseType: !1627, size: 192, align: 64)
!1627 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !1620, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !1628, templateParams: !757, identifier: "a4cf4f31a16b39911e1519eda8ea68a5")
!1628 = !{!1629}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1627, file: !2, baseType: !196, size: 192, align: 64, flags: DIFlagPublic)
!1630 = !DIDerivedType(tag: DW_TAG_member, scope: !1620, file: !2, baseType: !261, size: 64, align: 64, flags: DIFlagArtificial)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "bin_name", scope: !1589, file: !2, baseType: !1620, size: 192, align: 64, offset: 2368, flags: DIFlagPrivate)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "author", scope: !1589, file: !2, baseType: !1594, size: 128, align: 64, offset: 4736, flags: DIFlagPrivate)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1589, file: !2, baseType: !1594, size: 128, align: 64, offset: 4864, flags: DIFlagPrivate)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "long_version", scope: !1589, file: !2, baseType: !1594, size: 128, align: 64, offset: 4992, flags: DIFlagPrivate)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "about", scope: !1589, file: !2, baseType: !1636, size: 192, align: 64, offset: 2560, flags: DIFlagPrivate)
!1636 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<clap_builder::builder::styled_str::StyledStr>", scope: !304, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !1637, templateParams: !23, identifier: "160fc5233980dc166ddeffcb0c188ef4")
!1637 = !{!1638}
!1638 = !DICompositeType(tag: DW_TAG_variant_part, scope: !1636, file: !2, size: 192, align: 64, elements: !1639, templateParams: !23, identifier: "421b1b279974779d0800ee6c16edbe", discriminator: !1652)
!1639 = !{!1640, !1648}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !1638, file: !2, baseType: !1641, size: 192, align: 64, extraData: i64 -1)
!1641 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !1636, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !23, templateParams: !1642, identifier: "65c1b70daec1d6cb198bcc6d95f47877")
!1642 = !{!1643}
!1643 = !DITemplateTypeParameter(name: "T", type: !1644)
!1644 = !DICompositeType(tag: DW_TAG_structure_type, name: "StyledStr", scope: !1645, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !1646, templateParams: !23, identifier: "b2a213784c7bbebc7c2c1f459e30cfbf")
!1645 = !DINamespace(name: "styled_str", scope: !471)
!1646 = !{!1647}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1644, file: !2, baseType: !196, size: 192, align: 64, flags: DIFlagPrivate)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !1638, file: !2, baseType: !1649, size: 192, align: 64)
!1649 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !1636, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !1650, templateParams: !1642, identifier: "9fd91c071d875a2fb9aed06437cf21e3")
!1650 = !{!1651}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1649, file: !2, baseType: !1644, size: 192, align: 64, flags: DIFlagPublic)
!1652 = !DIDerivedType(tag: DW_TAG_member, scope: !1636, file: !2, baseType: !261, size: 64, align: 64, flags: DIFlagArtificial)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "long_about", scope: !1589, file: !2, baseType: !1636, size: 192, align: 64, offset: 2752, flags: DIFlagPrivate)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "before_help", scope: !1589, file: !2, baseType: !1636, size: 192, align: 64, offset: 2944, flags: DIFlagPrivate)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "before_long_help", scope: !1589, file: !2, baseType: !1636, size: 192, align: 64, offset: 3136, flags: DIFlagPrivate)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "after_help", scope: !1589, file: !2, baseType: !1636, size: 192, align: 64, offset: 3328, flags: DIFlagPrivate)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "after_long_help", scope: !1589, file: !2, baseType: !1636, size: 192, align: 64, offset: 3520, flags: DIFlagPrivate)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "aliases", scope: !1589, file: !2, baseType: !1659, size: 192, align: 64, offset: 448, flags: DIFlagPrivate)
!1659 = !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<(clap_builder::builder::str::Str, bool), alloc::alloc::Global>", scope: !202, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !1660, templateParams: !1673, identifier: "6251ce735686f76dff4e65f27f677233")
!1660 = !{!1661, !1674}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1659, file: !2, baseType: !1662, size: 128, align: 64, flags: DIFlagPrivate)
!1662 = !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<(clap_builder::builder::str::Str, bool), alloc::alloc::Global>", scope: !206, file: !2, size: 128, align: 64, flags: DIFlagProtected, elements: !1663, templateParams: !1673, identifier: "bb22552213b047da8ecb62a0395dfb36")
!1663 = !{!1664, !1665}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1662, file: !2, baseType: !209, size: 128, align: 64, flags: DIFlagPrivate)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !1662, file: !2, baseType: !1666, align: 8, offset: 128, flags: DIFlagPrivate)
!1666 = !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<(clap_builder::builder::str::Str, bool)>", scope: !228, file: !2, align: 8, flags: DIFlagPublic, elements: !23, templateParams: !1667, identifier: "dc3062add5a296d4e1ae7e5afb3097ca")
!1667 = !{!1668}
!1668 = !DITemplateTypeParameter(name: "T", type: !1669)
!1669 = !DICompositeType(tag: DW_TAG_structure_type, name: "(clap_builder::builder::str::Str, bool)", file: !2, size: 192, align: 64, elements: !1670, templateParams: !23, identifier: "5693aee43186aa0fa1aaab97e39435f")
!1670 = !{!1671, !1672}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1669, file: !2, baseType: !1389, size: 128, align: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !1669, file: !2, baseType: !1349, size: 8, align: 8, offset: 128)
!1673 = !{!1668, !239}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1659, file: !2, baseType: !9, size: 64, align: 64, offset: 128, flags: DIFlagPrivate)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "short_flag_aliases", scope: !1589, file: !2, baseType: !1676, size: 192, align: 64, offset: 640, flags: DIFlagPrivate)
!1676 = !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<(char, bool), alloc::alloc::Global>", scope: !202, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !1677, templateParams: !1690, identifier: "e60a690ca0ee2cee8c4944f56688888b")
!1677 = !{!1678, !1691}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1676, file: !2, baseType: !1679, size: 128, align: 64, flags: DIFlagPrivate)
!1679 = !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<(char, bool), alloc::alloc::Global>", scope: !206, file: !2, size: 128, align: 64, flags: DIFlagProtected, elements: !1680, templateParams: !1690, identifier: "1538e48b434d8f94a9998d7f05633423")
!1680 = !{!1681, !1682}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1679, file: !2, baseType: !209, size: 128, align: 64, flags: DIFlagPrivate)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !1679, file: !2, baseType: !1683, align: 8, offset: 128, flags: DIFlagPrivate)
!1683 = !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<(char, bool)>", scope: !228, file: !2, align: 8, flags: DIFlagPublic, elements: !23, templateParams: !1684, identifier: "4bddb6624917afed1422a202f47f8064")
!1684 = !{!1685}
!1685 = !DITemplateTypeParameter(name: "T", type: !1686)
!1686 = !DICompositeType(tag: DW_TAG_structure_type, name: "(char, bool)", file: !2, size: 64, align: 32, elements: !1687, templateParams: !23, identifier: "23b612e9e1a9e610ca072c9f53b8f4c4")
!1687 = !{!1688, !1689}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1686, file: !2, baseType: !337, size: 32, align: 32)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !1686, file: !2, baseType: !1349, size: 8, align: 8, offset: 32)
!1690 = !{!1685, !239}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1676, file: !2, baseType: !9, size: 64, align: 64, offset: 128, flags: DIFlagPrivate)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "long_flag_aliases", scope: !1589, file: !2, baseType: !1659, size: 192, align: 64, offset: 832, flags: DIFlagPrivate)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "usage_str", scope: !1589, file: !2, baseType: !1636, size: 192, align: 64, offset: 3712, flags: DIFlagPrivate)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "usage_name", scope: !1589, file: !2, baseType: !1620, size: 192, align: 64, offset: 3904, flags: DIFlagPrivate)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "help_str", scope: !1589, file: !2, baseType: !1636, size: 192, align: 64, offset: 4096, flags: DIFlagPrivate)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "disp_ord", scope: !1589, file: !2, baseType: !1102, size: 128, align: 64, flags: DIFlagPrivate)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "template", scope: !1589, file: !2, baseType: !1636, size: 192, align: 64, offset: 4288, flags: DIFlagPrivate)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "settings", scope: !1589, file: !2, baseType: !1699, size: 32, align: 32, offset: 5600, flags: DIFlagPrivate)
!1699 = !DICompositeType(tag: DW_TAG_structure_type, name: "AppFlags", scope: !1700, file: !2, size: 32, align: 32, flags: DIFlagProtected, elements: !1701, templateParams: !23, identifier: "e0388005f1800ad07a250fcc490e15ce")
!1700 = !DINamespace(name: "app_settings", scope: !471)
!1701 = !{!1702}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1699, file: !2, baseType: !391, size: 32, align: 32, flags: DIFlagPrivate)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "g_settings", scope: !1589, file: !2, baseType: !1699, size: 32, align: 32, offset: 5632, flags: DIFlagPrivate)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1589, file: !2, baseType: !1705, size: 384, align: 64, offset: 1024, flags: DIFlagPrivate)
!1705 = !DICompositeType(tag: DW_TAG_structure_type, name: "MKeyMap", scope: !1706, file: !2, size: 384, align: 64, flags: DIFlagProtected, elements: !1707, templateParams: !23, identifier: "c4ea1c2f0d82cf9c6ff20371a6789eaf")
!1706 = !DINamespace(name: "mkeymap", scope: !464)
!1707 = !{!1708, !1971}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1705, file: !2, baseType: !1709, size: 192, align: 64, flags: DIFlagPrivate)
!1709 = !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<clap_builder::builder::arg::Arg, alloc::alloc::Global>", scope: !202, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !1710, templateParams: !1969, identifier: "bd4c33a8390546275fdf1bbd58d48261")
!1710 = !{!1711, !1970}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1709, file: !2, baseType: !1712, size: 128, align: 64, flags: DIFlagPrivate)
!1712 = !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<clap_builder::builder::arg::Arg, alloc::alloc::Global>", scope: !206, file: !2, size: 128, align: 64, flags: DIFlagProtected, elements: !1713, templateParams: !1969, identifier: "fc6d232a35a0d2f15babe2212ecab773")
!1713 = !{!1714, !1715}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1712, file: !2, baseType: !209, size: 128, align: 64, flags: DIFlagPrivate)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !1712, file: !2, baseType: !1716, align: 8, offset: 128, flags: DIFlagPrivate)
!1716 = !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<clap_builder::builder::arg::Arg>", scope: !228, file: !2, align: 8, flags: DIFlagPublic, elements: !23, templateParams: !1717, identifier: "ae1b1ee184e193c77ba5c4c4ca2d3e25")
!1717 = !{!1718}
!1718 = !DITemplateTypeParameter(name: "T", type: !1719)
!1719 = !DICompositeType(tag: DW_TAG_structure_type, name: "Arg", scope: !1720, file: !2, size: 4800, align: 64, flags: DIFlagPublic, elements: !1721, templateParams: !23, identifier: "87cf724471d0bd17393aabfc75e08951")
!1720 = !DINamespace(name: "arg", scope: !471)
!1721 = !{!1722, !1723, !1724, !1725, !1739, !1784, !1785, !1790, !1791, !1792, !1840, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1885, !1886, !1899, !1930, !1931, !1932, !1933, !1947}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1719, file: !2, baseType: !1384, size: 128, align: 64, offset: 4288, flags: DIFlagProtected)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "help", scope: !1719, file: !2, baseType: !1636, size: 192, align: 64, offset: 3904, flags: DIFlagProtected)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "long_help", scope: !1719, file: !2, baseType: !1636, size: 192, align: 64, offset: 4096, flags: DIFlagProtected)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1719, file: !2, baseType: !1726, size: 8, align: 8, offset: 4768, flags: DIFlagProtected)
!1726 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<clap_builder::builder::action::ArgAction>", scope: !304, file: !2, size: 8, align: 8, flags: DIFlagPublic, elements: !1727, templateParams: !23, identifier: "74eb47920e78a1b2963a188159222db0")
!1727 = !{!1728}
!1728 = !DICompositeType(tag: DW_TAG_variant_part, scope: !1726, file: !2, size: 8, align: 8, elements: !1729, templateParams: !23, identifier: "b8d2411ea9d3f7ead2f1d5387ef5fab4", discriminator: !1738)
!1729 = !{!1730, !1734}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !1728, file: !2, baseType: !1731, size: 8, align: 8, extraData: i8 -1)
!1731 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !1726, file: !2, size: 8, align: 8, flags: DIFlagPublic, elements: !23, templateParams: !1732, identifier: "b36ba344ad9346fe1427eb7f38a61b3f")
!1732 = !{!1733}
!1733 = !DITemplateTypeParameter(name: "T", type: !469)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !1728, file: !2, baseType: !1735, size: 8, align: 8)
!1735 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !1726, file: !2, size: 8, align: 8, flags: DIFlagPublic, elements: !1736, templateParams: !1732, identifier: "b14f38bd7459e21e9b14a4ed38b6a9a2")
!1736 = !{!1737}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1735, file: !2, baseType: !469, size: 8, align: 8, flags: DIFlagPublic)
!1738 = !DIDerivedType(tag: DW_TAG_member, scope: !1726, file: !2, baseType: !223, size: 8, align: 8, flags: DIFlagArtificial)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "value_parser", scope: !1719, file: !2, baseType: !1740, size: 192, align: 64, offset: 640, flags: DIFlagProtected)
!1740 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<clap_builder::builder::value_parser::ValueParser>", scope: !304, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !1741, templateParams: !23, identifier: "b18122044ca5039a8e3a3d3424aaae7f")
!1741 = !{!1742}
!1742 = !DICompositeType(tag: DW_TAG_variant_part, scope: !1740, file: !2, size: 192, align: 64, elements: !1743, templateParams: !23, identifier: "e3992fa27123d83656511eeb11e47d6e", discriminator: !1783)
!1743 = !{!1744, !1779}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !1742, file: !2, baseType: !1745, size: 192, align: 64, extraData: i64 -1)
!1745 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !1740, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !23, templateParams: !1746, identifier: "c308af6c44d7172a710c5d2e7a2c70a3")
!1746 = !{!1747}
!1747 = !DITemplateTypeParameter(name: "T", type: !1748)
!1748 = !DICompositeType(tag: DW_TAG_structure_type, name: "ValueParser", scope: !1749, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !1750, templateParams: !23, identifier: "46378e806d995e1f878ced0df3cee1e0")
!1749 = !DINamespace(name: "value_parser", scope: !471)
!1750 = !{!1751}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1748, file: !2, baseType: !1752, size: 192, align: 64, flags: DIFlagPrivate)
!1752 = !DICompositeType(tag: DW_TAG_structure_type, name: "ValueParserInner", scope: !1749, file: !2, size: 192, align: 64, flags: DIFlagPrivate, elements: !1753, templateParams: !23, identifier: "55b07fd550d676496d1be818ea499f45")
!1753 = !{!1754}
!1754 = !DICompositeType(tag: DW_TAG_variant_part, scope: !1752, file: !2, size: 192, align: 64, elements: !1755, templateParams: !23, identifier: "56f5106db08add298bc9a1d42ce74620", discriminator: !1778)
!1755 = !{!1756, !1758, !1760, !1762, !1764}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "Bool", scope: !1754, file: !2, baseType: !1757, size: 192, align: 64, extraData: i64 0)
!1757 = !DICompositeType(tag: DW_TAG_structure_type, name: "Bool", scope: !1752, file: !2, size: 192, align: 64, flags: DIFlagPrivate, elements: !23, identifier: "9170ca1af916b1386bbed3b33f497416")
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "String", scope: !1754, file: !2, baseType: !1759, size: 192, align: 64, extraData: i64 1)
!1759 = !DICompositeType(tag: DW_TAG_structure_type, name: "String", scope: !1752, file: !2, size: 192, align: 64, flags: DIFlagPrivate, elements: !23, identifier: "b16fdc7ab1de127696c86650f2d25f5f")
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "OsString", scope: !1754, file: !2, baseType: !1761, size: 192, align: 64, extraData: i64 2)
!1761 = !DICompositeType(tag: DW_TAG_structure_type, name: "OsString", scope: !1752, file: !2, size: 192, align: 64, flags: DIFlagPrivate, elements: !23, identifier: "45e27d81dc447a8924b7edc5566b9362")
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "PathBuf", scope: !1754, file: !2, baseType: !1763, size: 192, align: 64, extraData: i64 3)
!1763 = !DICompositeType(tag: DW_TAG_structure_type, name: "PathBuf", scope: !1752, file: !2, size: 192, align: 64, flags: DIFlagPrivate, elements: !23, identifier: "7626a234fb06d2c17b9f3adf349a12c0")
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "Other", scope: !1754, file: !2, baseType: !1765, size: 192, align: 64, extraData: i64 4)
!1765 = !DICompositeType(tag: DW_TAG_structure_type, name: "Other", scope: !1752, file: !2, size: 192, align: 64, flags: DIFlagPrivate, elements: !1766, templateParams: !23, identifier: "e7962c431685fe7c508806dfbd20a8ac")
!1766 = !{!1767}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1765, file: !2, baseType: !1768, size: 128, align: 64, offset: 64, flags: DIFlagPrivate)
!1768 = !DICompositeType(tag: DW_TAG_structure_type, name: "alloc::boxed::Box<dyn clap_builder::builder::value_parser::AnyValueParser, alloc::alloc::Global>", file: !2, size: 128, align: 64, elements: !1769, templateParams: !23, identifier: "ee57e05371b141b27742cc3f8e058a05")
!1769 = !{!1770, !1773}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1768, file: !2, baseType: !1771, size: 64, align: 64)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64, align: 64, dwarfAddressSpace: 0)
!1772 = !DICompositeType(tag: DW_TAG_structure_type, name: "dyn clap_builder::builder::value_parser::AnyValueParser", file: !2, align: 8, elements: !23, identifier: "9620897556792724ac7045bcd74917eb")
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1768, file: !2, baseType: !1774, size: 64, align: 64, offset: 64)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&[usize; 8]", baseType: !1775, size: 64, align: 64, dwarfAddressSpace: 0)
!1775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 512, align: 64, elements: !1776)
!1776 = !{!1777}
!1777 = !DISubrange(count: 8, lowerBound: 0)
!1778 = !DIDerivedType(tag: DW_TAG_member, scope: !1752, file: !2, baseType: !261, size: 64, align: 64, flags: DIFlagArtificial)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !1742, file: !2, baseType: !1780, size: 192, align: 64)
!1780 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !1740, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !1781, templateParams: !1746, identifier: "8788ba0165e76e39d05454573c454da8")
!1781 = !{!1782}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1780, file: !2, baseType: !1748, size: 192, align: 64, flags: DIFlagPublic)
!1783 = !DIDerivedType(tag: DW_TAG_member, scope: !1740, file: !2, baseType: !261, size: 64, align: 64, flags: DIFlagArtificial)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "conflicts", scope: !1719, file: !2, baseType: !1374, size: 192, align: 64, offset: 832, flags: DIFlagProtected)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "settings", scope: !1719, file: !2, baseType: !1786, size: 32, align: 32, offset: 4736, flags: DIFlagProtected)
!1786 = !DICompositeType(tag: DW_TAG_structure_type, name: "ArgFlags", scope: !1787, file: !2, size: 32, align: 32, flags: DIFlagProtected, elements: !1788, templateParams: !23, identifier: "944a1db6037b54e659a6abef2efc67a2")
!1787 = !DINamespace(name: "arg_settings", scope: !471)
!1788 = !{!1789}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1786, file: !2, baseType: !391, size: 32, align: 32, flags: DIFlagPrivate)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "overrides", scope: !1719, file: !2, baseType: !1374, size: 192, align: 64, offset: 1024, flags: DIFlagProtected)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1719, file: !2, baseType: !1374, size: 192, align: 64, offset: 1216, flags: DIFlagProtected)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "requires", scope: !1719, file: !2, baseType: !1793, size: 192, align: 64, offset: 1408, flags: DIFlagProtected)
!1793 = !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<(clap_builder::builder::arg_predicate::ArgPredicate, clap_builder::util::id::Id), alloc::alloc::Global>", scope: !202, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !1794, templateParams: !1838, identifier: "1d951e14210dd660a2c8b045ea1e80f4")
!1794 = !{!1795, !1839}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1793, file: !2, baseType: !1796, size: 128, align: 64, flags: DIFlagPrivate)
!1796 = !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<(clap_builder::builder::arg_predicate::ArgPredicate, clap_builder::util::id::Id), alloc::alloc::Global>", scope: !206, file: !2, size: 128, align: 64, flags: DIFlagProtected, elements: !1797, templateParams: !1838, identifier: "d792cbe3569215eceb667a82bafdcc85")
!1797 = !{!1798, !1799}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1796, file: !2, baseType: !209, size: 128, align: 64, flags: DIFlagPrivate)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !1796, file: !2, baseType: !1800, align: 8, offset: 128, flags: DIFlagPrivate)
!1800 = !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<(clap_builder::builder::arg_predicate::ArgPredicate, clap_builder::util::id::Id)>", scope: !228, file: !2, align: 8, flags: DIFlagPublic, elements: !23, templateParams: !1801, identifier: "8ec52cd221bb445a5adcb7cffc329ba2")
!1801 = !{!1802}
!1802 = !DITemplateTypeParameter(name: "T", type: !1803)
!1803 = !DICompositeType(tag: DW_TAG_structure_type, name: "(clap_builder::builder::arg_predicate::ArgPredicate, clap_builder::util::id::Id)", file: !2, size: 256, align: 64, elements: !1804, templateParams: !23, identifier: "5124320eb3f1eae0294c686ecb346ab")
!1804 = !{!1805, !1837}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1803, file: !2, baseType: !1806, size: 128, align: 64)
!1806 = !DICompositeType(tag: DW_TAG_structure_type, name: "ArgPredicate", scope: !1807, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !1808, templateParams: !23, identifier: "a6fefd62543b53dc9991f484d7af3d67")
!1807 = !DINamespace(name: "arg_predicate", scope: !471)
!1808 = !{!1809}
!1809 = !DICompositeType(tag: DW_TAG_variant_part, scope: !1806, file: !2, size: 128, align: 64, elements: !1810, templateParams: !23, identifier: "afb6a1d50dd7adbd23ddf15849ddc549", discriminator: !1836)
!1810 = !{!1811, !1813}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "IsPresent", scope: !1809, file: !2, baseType: !1812, size: 128, align: 64, extraData: i64 0)
!1812 = !DICompositeType(tag: DW_TAG_structure_type, name: "IsPresent", scope: !1806, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !23, identifier: "24f4702adc977d6699b558e3d57842f")
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "Equals", scope: !1809, file: !2, baseType: !1814, size: 128, align: 64)
!1814 = !DICompositeType(tag: DW_TAG_structure_type, name: "Equals", scope: !1806, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !1815, templateParams: !23, identifier: "6080663aebfc771bc44134a4353653f5")
!1815 = !{!1816}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1814, file: !2, baseType: !1817, size: 128, align: 64, flags: DIFlagPublic)
!1817 = !DICompositeType(tag: DW_TAG_structure_type, name: "OsStr", scope: !1818, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !1819, templateParams: !23, identifier: "fd16613c5747475e5a6a2ccaf2814a90")
!1818 = !DINamespace(name: "os_str", scope: !471)
!1819 = !{!1820}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1817, file: !2, baseType: !1821, size: 128, align: 64, flags: DIFlagPrivate)
!1821 = !DICompositeType(tag: DW_TAG_structure_type, name: "Inner", scope: !1822, file: !2, size: 128, align: 64, flags: DIFlagProtected, elements: !1823, templateParams: !23, identifier: "cbec1632ce4f997b516ea6087031ee04")
!1822 = !DINamespace(name: "inner", scope: !1818)
!1823 = !{!1824}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1821, file: !2, baseType: !1825, size: 128, align: 64, flags: DIFlagPrivate)
!1825 = !DICompositeType(tag: DW_TAG_structure_type, name: "&std::ffi::os_str::OsStr", file: !2, size: 128, align: 64, elements: !1826, templateParams: !23, identifier: "36ae6997e239d3645844778a8b7855ec")
!1826 = !{!1827, !1835}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !1825, file: !2, baseType: !1828, size: 64, align: 64)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64, align: 64, dwarfAddressSpace: 0)
!1829 = !DICompositeType(tag: DW_TAG_structure_type, name: "OsStr", scope: !571, file: !2, align: 8, flags: DIFlagPublic, elements: !1830, templateParams: !23, identifier: "e1f6433bbb36574f37a2f6c06b02a416")
!1830 = !{!1831}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1829, file: !2, baseType: !1832, align: 8, flags: DIFlagPrivate)
!1832 = !DICompositeType(tag: DW_TAG_structure_type, name: "Slice", scope: !576, file: !2, align: 8, flags: DIFlagPublic, elements: !1833, templateParams: !23, identifier: "9b18b7411a210f3518aece21a7d7dc5f")
!1833 = !{!1834}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1832, file: !2, baseType: !927, align: 8, flags: DIFlagPublic)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1825, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, scope: !1806, file: !2, baseType: !261, size: 64, align: 64, flags: DIFlagArtificial)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !1803, file: !2, baseType: !1384, size: 128, align: 64, offset: 128)
!1838 = !{!1802, !239}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1793, file: !2, baseType: !9, size: 64, align: 64, offset: 128, flags: DIFlagPrivate)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "r_ifs", scope: !1719, file: !2, baseType: !1841, size: 192, align: 64, offset: 1600, flags: DIFlagProtected)
!1841 = !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<(clap_builder::util::id::Id, clap_builder::builder::os_str::OsStr), alloc::alloc::Global>", scope: !202, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !1842, templateParams: !1855, identifier: "9e3395b40d740662a7610cd243bbf3a1")
!1842 = !{!1843, !1856}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1841, file: !2, baseType: !1844, size: 128, align: 64, flags: DIFlagPrivate)
!1844 = !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<(clap_builder::util::id::Id, clap_builder::builder::os_str::OsStr), alloc::alloc::Global>", scope: !206, file: !2, size: 128, align: 64, flags: DIFlagProtected, elements: !1845, templateParams: !1855, identifier: "2411c40f35a18d86592ac683130f25a")
!1845 = !{!1846, !1847}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1844, file: !2, baseType: !209, size: 128, align: 64, flags: DIFlagPrivate)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !1844, file: !2, baseType: !1848, align: 8, offset: 128, flags: DIFlagPrivate)
!1848 = !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<(clap_builder::util::id::Id, clap_builder::builder::os_str::OsStr)>", scope: !228, file: !2, align: 8, flags: DIFlagPublic, elements: !23, templateParams: !1849, identifier: "2a8923ffe5103066c26f8409b9af2ccc")
!1849 = !{!1850}
!1850 = !DITemplateTypeParameter(name: "T", type: !1851)
!1851 = !DICompositeType(tag: DW_TAG_structure_type, name: "(clap_builder::util::id::Id, clap_builder::builder::os_str::OsStr)", file: !2, size: 256, align: 64, elements: !1852, templateParams: !23, identifier: "35429a8dc30941662b35258bc25489b5")
!1852 = !{!1853, !1854}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1851, file: !2, baseType: !1384, size: 128, align: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !1851, file: !2, baseType: !1817, size: 128, align: 64, offset: 128)
!1855 = !{!1850, !239}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1841, file: !2, baseType: !9, size: 64, align: 64, offset: 128, flags: DIFlagPrivate)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "r_ifs_all", scope: !1719, file: !2, baseType: !1841, size: 192, align: 64, offset: 1792, flags: DIFlagProtected)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "r_unless", scope: !1719, file: !2, baseType: !1374, size: 192, align: 64, offset: 1984, flags: DIFlagProtected)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "r_unless_all", scope: !1719, file: !2, baseType: !1374, size: 192, align: 64, offset: 2176, flags: DIFlagProtected)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "short", scope: !1719, file: !2, baseType: !1606, size: 32, align: 32, offset: 4672, flags: DIFlagProtected)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "long", scope: !1719, file: !2, baseType: !1594, size: 128, align: 64, offset: 4416, flags: DIFlagProtected)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "aliases", scope: !1719, file: !2, baseType: !1659, size: 192, align: 64, offset: 2368, flags: DIFlagProtected)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "short_aliases", scope: !1719, file: !2, baseType: !1676, size: 192, align: 64, offset: 2560, flags: DIFlagProtected)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "disp_ord", scope: !1719, file: !2, baseType: !1102, size: 128, align: 64, flags: DIFlagProtected)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "val_names", scope: !1719, file: !2, baseType: !1400, size: 192, align: 64, offset: 2752, flags: DIFlagProtected)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !1719, file: !2, baseType: !1867, size: 192, align: 64, offset: 128, flags: DIFlagProtected)
!1867 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<clap_builder::builder::range::ValueRange>", scope: !304, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !1868, templateParams: !23, identifier: "12cc8b305d9fb25ad0063eb17e476945")
!1868 = !{!1869}
!1869 = !DICompositeType(tag: DW_TAG_variant_part, scope: !1867, file: !2, size: 192, align: 64, elements: !1870, templateParams: !23, identifier: "67d94aa1e4b692f44ffb8a03159219bb", discriminator: !1884)
!1870 = !{!1871, !1880}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !1869, file: !2, baseType: !1872, size: 192, align: 64, extraData: i64 0)
!1872 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !1867, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !23, templateParams: !1873, identifier: "b5d8fcc63343251094ab31a9ffd07e6c")
!1873 = !{!1874}
!1874 = !DITemplateTypeParameter(name: "T", type: !1875)
!1875 = !DICompositeType(tag: DW_TAG_structure_type, name: "ValueRange", scope: !1876, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !1877, templateParams: !23, identifier: "bb4d93906646508f53822337a9fa6d5c")
!1876 = !DINamespace(name: "range", scope: !471)
!1877 = !{!1878, !1879}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "start_inclusive", scope: !1875, file: !2, baseType: !9, size: 64, align: 64, flags: DIFlagPrivate)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "end_inclusive", scope: !1875, file: !2, baseType: !9, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !1869, file: !2, baseType: !1881, size: 192, align: 64, extraData: i64 1)
!1881 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !1867, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !1882, templateParams: !1873, identifier: "4e9fd4204f07e350fcdb3770185dc032")
!1882 = !{!1883}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1881, file: !2, baseType: !1875, size: 128, align: 64, offset: 64, flags: DIFlagPublic)
!1884 = !DIDerivedType(tag: DW_TAG_member, scope: !1867, file: !2, baseType: !261, size: 64, align: 64, flags: DIFlagArtificial)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "val_delim", scope: !1719, file: !2, baseType: !1606, size: 32, align: 32, offset: 4704, flags: DIFlagProtected)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "default_vals", scope: !1719, file: !2, baseType: !1887, size: 192, align: 64, offset: 2944, flags: DIFlagProtected)
!1887 = !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<clap_builder::builder::os_str::OsStr, alloc::alloc::Global>", scope: !202, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !1888, templateParams: !1897, identifier: "acba5fac43ac26197e5d515130942084")
!1888 = !{!1889, !1898}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1887, file: !2, baseType: !1890, size: 128, align: 64, flags: DIFlagPrivate)
!1890 = !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<clap_builder::builder::os_str::OsStr, alloc::alloc::Global>", scope: !206, file: !2, size: 128, align: 64, flags: DIFlagProtected, elements: !1891, templateParams: !1897, identifier: "b6fcad01dc375af6ea89a0edf7dcfe82")
!1891 = !{!1892, !1893}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1890, file: !2, baseType: !209, size: 128, align: 64, flags: DIFlagPrivate)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !1890, file: !2, baseType: !1894, align: 8, offset: 128, flags: DIFlagPrivate)
!1894 = !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<clap_builder::builder::os_str::OsStr>", scope: !228, file: !2, align: 8, flags: DIFlagPublic, elements: !23, templateParams: !1895, identifier: "47b49dd53dca95a85447afbda8c0de31")
!1895 = !{!1896}
!1896 = !DITemplateTypeParameter(name: "T", type: !1817)
!1897 = !{!1896, !239}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1887, file: !2, baseType: !9, size: 64, align: 64, offset: 128, flags: DIFlagPrivate)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "default_vals_ifs", scope: !1719, file: !2, baseType: !1900, size: 192, align: 64, offset: 3136, flags: DIFlagProtected)
!1900 = !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<(clap_builder::util::id::Id, clap_builder::builder::arg_predicate::ArgPredicate, core::option::Option<alloc::vec::Vec<clap_builder::builder::os_str::OsStr, alloc::alloc::Global>>), alloc::alloc::Global>", scope: !202, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !1901, templateParams: !1928, identifier: "b3f6db6c08f91228953fcaacc691c2d9")
!1901 = !{!1902, !1929}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1900, file: !2, baseType: !1903, size: 128, align: 64, flags: DIFlagPrivate)
!1903 = !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<(clap_builder::util::id::Id, clap_builder::builder::arg_predicate::ArgPredicate, core::option::Option<alloc::vec::Vec<clap_builder::builder::os_str::OsStr, alloc::alloc::Global>>), alloc::alloc::Global>", scope: !206, file: !2, size: 128, align: 64, flags: DIFlagProtected, elements: !1904, templateParams: !1928, identifier: "1da2164f2b2903d4756d83dcbcb0fd54")
!1904 = !{!1905, !1906}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1903, file: !2, baseType: !209, size: 128, align: 64, flags: DIFlagPrivate)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !1903, file: !2, baseType: !1907, align: 8, offset: 128, flags: DIFlagPrivate)
!1907 = !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<(clap_builder::util::id::Id, clap_builder::builder::arg_predicate::ArgPredicate, core::option::Option<alloc::vec::Vec<clap_builder::builder::os_str::OsStr, alloc::alloc::Global>>)>", scope: !228, file: !2, align: 8, flags: DIFlagPublic, elements: !23, templateParams: !1908, identifier: "baf8f104c3a6e680c6e6fab54c21c84e")
!1908 = !{!1909}
!1909 = !DITemplateTypeParameter(name: "T", type: !1910)
!1910 = !DICompositeType(tag: DW_TAG_structure_type, name: "(clap_builder::util::id::Id, clap_builder::builder::arg_predicate::ArgPredicate, core::option::Option<alloc::vec::Vec<clap_builder::builder::os_str::OsStr, alloc::alloc::Global>>)", file: !2, size: 448, align: 64, elements: !1911, templateParams: !23, identifier: "981c0548a7bdfeda3e24041112c62ec2")
!1911 = !{!1912, !1913, !1914}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1910, file: !2, baseType: !1384, size: 128, align: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !1910, file: !2, baseType: !1806, size: 128, align: 64, offset: 128)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "__2", scope: !1910, file: !2, baseType: !1915, size: 192, align: 64, offset: 256)
!1915 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<alloc::vec::Vec<clap_builder::builder::os_str::OsStr, alloc::alloc::Global>>", scope: !304, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !1916, templateParams: !23, identifier: "e2608d8f9dcab023bf9936efab70f2")
!1916 = !{!1917}
!1917 = !DICompositeType(tag: DW_TAG_variant_part, scope: !1915, file: !2, size: 192, align: 64, elements: !1918, templateParams: !23, identifier: "a1dd24f071fa4766100ccd852fa583be", discriminator: !1927)
!1918 = !{!1919, !1923}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !1917, file: !2, baseType: !1920, size: 192, align: 64, extraData: i64 -1)
!1920 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !1915, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !23, templateParams: !1921, identifier: "f61a17e82e0cc5bc60049a8144a51832")
!1921 = !{!1922}
!1922 = !DITemplateTypeParameter(name: "T", type: !1887)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !1917, file: !2, baseType: !1924, size: 192, align: 64)
!1924 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !1915, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !1925, templateParams: !1921, identifier: "825444a12b901b2c79a80e2b19cd20b4")
!1925 = !{!1926}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1924, file: !2, baseType: !1887, size: 192, align: 64, flags: DIFlagPublic)
!1927 = !DIDerivedType(tag: DW_TAG_member, scope: !1915, file: !2, baseType: !261, size: 64, align: 64, flags: DIFlagArtificial)
!1928 = !{!1909, !239}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1900, file: !2, baseType: !9, size: 64, align: 64, offset: 128, flags: DIFlagPrivate)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "default_missing_vals", scope: !1719, file: !2, baseType: !1887, size: 192, align: 64, offset: 3328, flags: DIFlagProtected)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "terminator", scope: !1719, file: !2, baseType: !1594, size: 128, align: 64, offset: 4544, flags: DIFlagProtected)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1719, file: !2, baseType: !1102, size: 128, align: 64, offset: 320, flags: DIFlagProtected)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "help_heading", scope: !1719, file: !2, baseType: !1934, size: 192, align: 64, offset: 448, flags: DIFlagProtected)
!1934 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<core::option::Option<clap_builder::builder::str::Str>>", scope: !304, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !1935, templateParams: !23, identifier: "cced3164f0d2b24076a132eae7d9ce73")
!1935 = !{!1936}
!1936 = !DICompositeType(tag: DW_TAG_variant_part, scope: !1934, file: !2, size: 192, align: 64, elements: !1937, templateParams: !23, identifier: "b86ab1ccab1339f57fa42fe4888e5095", discriminator: !1946)
!1937 = !{!1938, !1942}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !1936, file: !2, baseType: !1939, size: 192, align: 64, extraData: i64 0)
!1939 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !1934, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !23, templateParams: !1940, identifier: "13813fe9d7dabe909c313dbbbe0bf296")
!1940 = !{!1941}
!1941 = !DITemplateTypeParameter(name: "T", type: !1594)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !1936, file: !2, baseType: !1943, size: 192, align: 64, extraData: i64 1)
!1943 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !1934, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !1944, templateParams: !1940, identifier: "c9d3744b5a1b6cd57ae656dfafbe6ee1")
!1944 = !{!1945}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1943, file: !2, baseType: !1594, size: 128, align: 64, offset: 64, flags: DIFlagPublic)
!1946 = !DIDerivedType(tag: DW_TAG_member, scope: !1934, file: !2, baseType: !261, size: 64, align: 64, flags: DIFlagArtificial)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "ext", scope: !1719, file: !2, baseType: !1948, size: 384, align: 64, offset: 3520, flags: DIFlagProtected)
!1948 = !DICompositeType(tag: DW_TAG_structure_type, name: "Extensions", scope: !1949, file: !2, size: 384, align: 64, flags: DIFlagProtected, elements: !1950, templateParams: !23, identifier: "6f2feaddc544804ab64f9146f4fd0f41")
!1949 = !DINamespace(name: "ext", scope: !471)
!1950 = !{!1951}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !1948, file: !2, baseType: !1952, size: 384, align: 64, flags: DIFlagPrivate)
!1952 = !DICompositeType(tag: DW_TAG_structure_type, name: "FlatMap<clap_builder::util::any_value::AnyValueId, clap_builder::util::any_value::AnyValue>", scope: !1414, file: !2, size: 384, align: 64, flags: DIFlagProtected, elements: !1953, templateParams: !1966, identifier: "922f861943ab40a8b5f366eca2ba24c4")
!1953 = !{!1954, !1965}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1952, file: !2, baseType: !1955, size: 192, align: 64, flags: DIFlagPrivate)
!1955 = !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<clap_builder::util::any_value::AnyValueId, alloc::alloc::Global>", scope: !202, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !1956, templateParams: !1963, identifier: "9712981d8cce902d32574984e3b1fbca")
!1956 = !{!1957, !1964}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1955, file: !2, baseType: !1958, size: 128, align: 64, flags: DIFlagPrivate)
!1958 = !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<clap_builder::util::any_value::AnyValueId, alloc::alloc::Global>", scope: !206, file: !2, size: 128, align: 64, flags: DIFlagProtected, elements: !1959, templateParams: !1963, identifier: "195eda002c3e77957dbe6ed5d34f8420")
!1959 = !{!1960, !1961}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1958, file: !2, baseType: !209, size: 128, align: 64, flags: DIFlagPrivate)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !1958, file: !2, baseType: !1962, align: 8, offset: 128, flags: DIFlagPrivate)
!1962 = !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<clap_builder::util::any_value::AnyValueId>", scope: !228, file: !2, align: 8, flags: DIFlagPublic, elements: !23, templateParams: !1453, identifier: "c0839d2a4c2a5583830720ef5d3d42f3")
!1963 = !{!1454, !239}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1955, file: !2, baseType: !9, size: 64, align: 64, offset: 128, flags: DIFlagPrivate)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1952, file: !2, baseType: !1481, size: 192, align: 64, offset: 192, flags: DIFlagPrivate)
!1966 = !{!1967, !1968}
!1967 = !DITemplateTypeParameter(name: "K", type: !1455)
!1968 = !DITemplateTypeParameter(name: "V", type: !1491)
!1969 = !{!1718, !239}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1709, file: !2, baseType: !9, size: 64, align: 64, offset: 128, flags: DIFlagPrivate)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1705, file: !2, baseType: !1972, size: 192, align: 64, offset: 192, flags: DIFlagPrivate)
!1972 = !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<clap_builder::mkeymap::Key, alloc::alloc::Global>", scope: !202, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !1973, templateParams: !2003, identifier: "dc5725f61becc033e2627f2968f20cce")
!1973 = !{!1974, !2004}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1972, file: !2, baseType: !1975, size: 128, align: 64, flags: DIFlagPrivate)
!1975 = !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<clap_builder::mkeymap::Key, alloc::alloc::Global>", scope: !206, file: !2, size: 128, align: 64, flags: DIFlagProtected, elements: !1976, templateParams: !2003, identifier: "e79d4372b9eb6d1f9269a804ec61f9e")
!1976 = !{!1977, !1978}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1975, file: !2, baseType: !209, size: 128, align: 64, flags: DIFlagPrivate)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !1975, file: !2, baseType: !1979, align: 8, offset: 128, flags: DIFlagPrivate)
!1979 = !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<clap_builder::mkeymap::Key>", scope: !228, file: !2, align: 8, flags: DIFlagPublic, elements: !23, templateParams: !1980, identifier: "b49304a0c4b1a8947245d78b738312a")
!1980 = !{!1981}
!1981 = !DITemplateTypeParameter(name: "T", type: !1982)
!1982 = !DICompositeType(tag: DW_TAG_structure_type, name: "Key", scope: !1706, file: !2, size: 256, align: 64, flags: DIFlagProtected, elements: !1983, templateParams: !23, identifier: "1a51fb98969d0cc5f8bb9f99f85cddf3")
!1983 = !{!1984, !2002}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1982, file: !2, baseType: !1985, size: 192, align: 64, flags: DIFlagPrivate)
!1985 = !DICompositeType(tag: DW_TAG_structure_type, name: "KeyType", scope: !1706, file: !2, size: 192, align: 64, flags: DIFlagProtected, elements: !1986, templateParams: !23, identifier: "99a72e0ee0cc20b3945688d031e5d680")
!1986 = !{!1987}
!1987 = !DICompositeType(tag: DW_TAG_variant_part, scope: !1985, file: !2, size: 192, align: 64, elements: !1988, templateParams: !23, identifier: "d0733451e8dd58696791324e1b783e2b", discriminator: !2001)
!1988 = !{!1989, !1993, !1997}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "Short", scope: !1987, file: !2, baseType: !1990, size: 192, align: 64, extraData: i32 0)
!1990 = !DICompositeType(tag: DW_TAG_structure_type, name: "Short", scope: !1985, file: !2, size: 192, align: 64, flags: DIFlagProtected, elements: !1991, templateParams: !23, identifier: "184528d346d1420b8c45bfbba2e85d54")
!1991 = !{!1992}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1990, file: !2, baseType: !337, size: 32, align: 32, offset: 32, flags: DIFlagProtected)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "Long", scope: !1987, file: !2, baseType: !1994, size: 192, align: 64, extraData: i32 1)
!1994 = !DICompositeType(tag: DW_TAG_structure_type, name: "Long", scope: !1985, file: !2, size: 192, align: 64, flags: DIFlagProtected, elements: !1995, templateParams: !23, identifier: "87d350d7c0399865d8f4ab6cec132afa")
!1995 = !{!1996}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1994, file: !2, baseType: !1817, size: 128, align: 64, offset: 64, flags: DIFlagProtected)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "Position", scope: !1987, file: !2, baseType: !1998, size: 192, align: 64, extraData: i32 2)
!1998 = !DICompositeType(tag: DW_TAG_structure_type, name: "Position", scope: !1985, file: !2, size: 192, align: 64, flags: DIFlagProtected, elements: !1999, templateParams: !23, identifier: "2b59e4d78a81c64260090ee45004548b")
!1999 = !{!2000}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !1998, file: !2, baseType: !9, size: 64, align: 64, offset: 64, flags: DIFlagProtected)
!2001 = !DIDerivedType(tag: DW_TAG_member, scope: !1985, file: !2, baseType: !391, size: 32, align: 32, flags: DIFlagArtificial)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1982, file: !2, baseType: !9, size: 64, align: 64, offset: 192, flags: DIFlagPrivate)
!2003 = !{!1981, !239}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1972, file: !2, baseType: !9, size: 64, align: 64, offset: 128, flags: DIFlagPrivate)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "subcommands", scope: !1589, file: !2, baseType: !2006, size: 192, align: 64, offset: 1408, flags: DIFlagPrivate)
!2006 = !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<clap_builder::builder::command::Command, alloc::alloc::Global>", scope: !202, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !2007, templateParams: !2016, identifier: "2239e5e037a2ff3022df5cca91fc786c")
!2007 = !{!2008, !2017}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2006, file: !2, baseType: !2009, size: 128, align: 64, flags: DIFlagPrivate)
!2009 = !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<clap_builder::builder::command::Command, alloc::alloc::Global>", scope: !206, file: !2, size: 128, align: 64, flags: DIFlagProtected, elements: !2010, templateParams: !2016, identifier: "da8b2b4347b7843adca408ea88f4686")
!2010 = !{!2011, !2012}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !2009, file: !2, baseType: !209, size: 128, align: 64, flags: DIFlagPrivate)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !2009, file: !2, baseType: !2013, align: 8, offset: 128, flags: DIFlagPrivate)
!2013 = !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<clap_builder::builder::command::Command>", scope: !228, file: !2, align: 8, flags: DIFlagPublic, elements: !23, templateParams: !2014, identifier: "d1f1f7d63e622ebb3170ad97d0c37baf")
!2014 = !{!2015}
!2015 = !DITemplateTypeParameter(name: "T", type: !1589)
!2016 = !{!2015, !239}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2006, file: !2, baseType: !9, size: 64, align: 64, offset: 128, flags: DIFlagPrivate)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1589, file: !2, baseType: !2019, size: 192, align: 64, offset: 1600, flags: DIFlagPrivate)
!2019 = !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<clap_builder::builder::arg_group::ArgGroup, alloc::alloc::Global>", scope: !202, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !2020, templateParams: !2038, identifier: "6db9ced4e10b9d6a68be82624c386e2e")
!2020 = !{!2021, !2039}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2019, file: !2, baseType: !2022, size: 128, align: 64, flags: DIFlagPrivate)
!2022 = !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<clap_builder::builder::arg_group::ArgGroup, alloc::alloc::Global>", scope: !206, file: !2, size: 128, align: 64, flags: DIFlagProtected, elements: !2023, templateParams: !2038, identifier: "89184e845e644012697f337525b61211")
!2023 = !{!2024, !2025}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !2022, file: !2, baseType: !209, size: 128, align: 64, flags: DIFlagPrivate)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !2022, file: !2, baseType: !2026, align: 8, offset: 128, flags: DIFlagPrivate)
!2026 = !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<clap_builder::builder::arg_group::ArgGroup>", scope: !228, file: !2, align: 8, flags: DIFlagPublic, elements: !23, templateParams: !2027, identifier: "bc09221fc088194fd42371fef5c75f1f")
!2027 = !{!2028}
!2028 = !DITemplateTypeParameter(name: "T", type: !2029)
!2029 = !DICompositeType(tag: DW_TAG_structure_type, name: "ArgGroup", scope: !2030, file: !2, size: 768, align: 64, flags: DIFlagPublic, elements: !2031, templateParams: !23, identifier: "cfe6b51783e2cc994bd120234ef74be8")
!2030 = !DINamespace(name: "arg_group", scope: !471)
!2031 = !{!2032, !2033, !2034, !2035, !2036, !2037}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2029, file: !2, baseType: !1384, size: 128, align: 64, offset: 576, flags: DIFlagProtected)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2029, file: !2, baseType: !1374, size: 192, align: 64, flags: DIFlagProtected)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "required", scope: !2029, file: !2, baseType: !1349, size: 8, align: 8, offset: 704, flags: DIFlagProtected)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "requires", scope: !2029, file: !2, baseType: !1374, size: 192, align: 64, offset: 192, flags: DIFlagProtected)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "conflicts", scope: !2029, file: !2, baseType: !1374, size: 192, align: 64, offset: 384, flags: DIFlagProtected)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "multiple", scope: !2029, file: !2, baseType: !1349, size: 8, align: 8, offset: 712, flags: DIFlagProtected)
!2038 = !{!2028, !239}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2019, file: !2, baseType: !9, size: 64, align: 64, offset: 128, flags: DIFlagPrivate)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "current_help_heading", scope: !1589, file: !2, baseType: !1594, size: 128, align: 64, offset: 5120, flags: DIFlagPrivate)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "current_disp_ord", scope: !1589, file: !2, baseType: !1102, size: 128, align: 64, offset: 128, flags: DIFlagPrivate)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "subcommand_value_name", scope: !1589, file: !2, baseType: !1594, size: 128, align: 64, offset: 5248, flags: DIFlagPrivate)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "subcommand_heading", scope: !1589, file: !2, baseType: !1594, size: 128, align: 64, offset: 5376, flags: DIFlagPrivate)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "external_value_parser", scope: !1589, file: !2, baseType: !1740, size: 192, align: 64, offset: 256, flags: DIFlagPrivate)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "long_help_exists", scope: !1589, file: !2, baseType: !1349, size: 8, align: 8, offset: 5664, flags: DIFlagPrivate)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "deferred", scope: !1589, file: !2, baseType: !2047, size: 64, align: 64, offset: 5504, flags: DIFlagPrivate)
!2047 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<fn(clap_builder::builder::command::Command) -> clap_builder::builder::command::Command>", scope: !304, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !2048, templateParams: !23, identifier: "c8dbe71c11025e1cf15c4301e7fc6abf")
!2048 = !{!2049}
!2049 = !DICompositeType(tag: DW_TAG_variant_part, scope: !2047, file: !2, size: 64, align: 64, elements: !2050, templateParams: !23, identifier: "ec158c471adacedff3b18ab23b4d3038", discriminator: !2062)
!2050 = !{!2051, !2058}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !2049, file: !2, baseType: !2052, size: 64, align: 64, extraData: i64 0)
!2052 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !2047, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !23, templateParams: !2053, identifier: "bb67b97cfeb35872c807bb375c498842")
!2053 = !{!2054}
!2054 = !DITemplateTypeParameter(name: "T", type: !2055)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "fn(clap_builder::builder::command::Command) -> clap_builder::builder::command::Command", baseType: !2056, size: 64, align: 64, dwarfAddressSpace: 0)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!1589, !1589}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !2049, file: !2, baseType: !2059, size: 64, align: 64)
!2059 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !2047, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !2060, templateParams: !2053, identifier: "590f69e144717bded41cfd2993957749")
!2060 = !{!2061}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !2059, file: !2, baseType: !2055, size: 64, align: 64, flags: DIFlagPublic)
!2062 = !DIDerivedType(tag: DW_TAG_member, scope: !2047, file: !2, baseType: !261, size: 64, align: 64, flags: DIFlagArtificial)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "app_ext", scope: !1589, file: !2, baseType: !1948, size: 384, align: 64, offset: 1792, flags: DIFlagPrivate)
!2064 = !{!2065, !2066}
!2065 = !DILocalVariable(name: "cmd", arg: 1, scope: !1357, file: !1358, line: 394, type: !1589)
!2066 = !DILocalVariable(name: "itr", arg: 2, scope: !1357, file: !1358, line: 394, type: !1080)
!2067 = !{!2068, !582}
!2068 = !DITemplateTypeParameter(name: "I", type: !1080)
!2069 = !DILocation(line: 394, column: 33, scope: !1357)
!2070 = !DILocation(line: 394, column: 47, scope: !1357)
!2071 = !DILocation(line: 399, column: 5, scope: !1357)
!2072 = !DILocation(line: 400, column: 2, scope: !1357)
!2073 = distinct !DISubprogram(name: "__rust_begin_short_backtrace<fn(), ()>", linkageName: "_RINvNtNtCs9k3SxhrAWiO_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECscBbfQkuq0VR_6expand", scope: !2075, file: !2074, line: 162, type: !2076, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !2082, retainedNodes: !2078)
!2074 = !DIFile(filename: "library/std/src/sys/backtrace.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "0469076862be40bd9e65965440a24fae")
!2075 = !DINamespace(name: "backtrace", scope: !578)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{null, !20}
!2078 = !{!2079, !2080}
!2079 = !DILocalVariable(name: "f", arg: 1, scope: !2073, file: !2074, line: 162, type: !20)
!2080 = !DILocalVariable(name: "result", scope: !2081, file: !2074, line: 166, type: !7, align: 8)
!2081 = distinct !DILexicalBlock(scope: !2073, file: !2074, line: 166, column: 5)
!2082 = !{!2083, !605}
!2083 = !DITemplateTypeParameter(name: "F", type: !20)
!2084 = !DILocation(line: 166, column: 9, scope: !2081)
!2085 = !DILocation(line: 162, column: 43, scope: !2073)
!2086 = !DILocalVariable(name: "dummy", scope: !2087, file: !752, line: 490, type: !7, align: 8)
!2087 = distinct !DISubprogram(name: "black_box<()>", linkageName: "_RINvNtCsgxBkk5gSRhY_4core4hint9black_boxuECscBbfQkuq0VR_6expand", scope: !753, file: !752, line: 490, type: !2088, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !654, retainedNodes: !2090)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{null, !7}
!2090 = !{!2086}
!2091 = !DILocation(line: 490, column: 27, scope: !2087, inlinedAt: !2092)
!2092 = !DILocation(line: 169, column: 5, scope: !2081)
!2093 = !DILocation(line: 166, column: 18, scope: !2073)
!2094 = !DILocation(line: 491, column: 5, scope: !2087, inlinedAt: !2092)
!2095 = !{i64 22148235817562001}
!2096 = !DILocation(line: 172, column: 2, scope: !2073)
!2097 = distinct !DISubprogram(name: "uumain<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>", linkageName: "_RINvNvCs9xOv1NcnHfv_9uu_expand6uumain6uumainINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters6cloned6ClonedINtNtNtBP_5slice4iter4IterNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringEEECscBbfQkuq0VR_6expand", scope: !2098, file: !552, line: 210, type: !2099, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !737, retainedNodes: !2101)
!2098 = !DINamespace(name: "uumain", scope: !188)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!595, !555}
!2101 = !{!2102, !2103, !2105, !2125, !2127, !2143}
!2102 = !DILocalVariable(name: "args", arg: 1, scope: !2097, file: !552, line: 210, type: !555)
!2103 = !DILocalVariable(name: "matches", scope: !2104, file: !552, line: 211, type: !1370, align: 64)
!2104 = distinct !DILexicalBlock(scope: !2097, file: !552, line: 211, column: 5)
!2105 = !DILocalVariable(name: "residual", scope: !2106, file: !552, line: 212, type: !2107, align: 64)
!2106 = distinct !DILexicalBlock(scope: !2097, file: !552, line: 212, column: 98)
!2107 = !DICompositeType(tag: DW_TAG_structure_type, name: "Result<core::convert::Infallible, alloc::boxed::Box<dyn uucore::mods::error::UError, alloc::alloc::Global>>", scope: !596, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !2108, templateParams: !23, identifier: "eb10ac692fdd8ab9447b05572c56d627")
!2108 = !{!2109}
!2109 = !DICompositeType(tag: DW_TAG_variant_part, scope: !2107, file: !2, size: 128, align: 64, elements: !2110, templateParams: !23, identifier: "3c5db74b550a994a26ed722fdb68f8a5")
!2110 = !{!2111, !2121}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !2109, file: !2, baseType: !2112, size: 128, align: 64)
!2112 = !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !2107, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !2113, templateParams: !2119, identifier: "c1cbd37f860727274f3975bdcc1b07b3")
!2113 = !{!2114}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !2112, file: !2, baseType: !2115, align: 8, flags: DIFlagPublic)
!2115 = !DICompositeType(tag: DW_TAG_structure_type, name: "Infallible", scope: !2116, file: !2, align: 8, flags: DIFlagPublic, elements: !2117, templateParams: !23, identifier: "c71dedfc275045f6543db163f03bb81c")
!2116 = !DINamespace(name: "convert", scope: !215)
!2117 = !{!2118}
!2118 = !DICompositeType(tag: DW_TAG_variant_part, scope: !2115, file: !2, align: 8, elements: !23, identifier: "790f1ffea4bb36fbc4bea85c3bdf1435")
!2119 = !{!2120, !606}
!2120 = !DITemplateTypeParameter(name: "T", type: !2115)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !2109, file: !2, baseType: !2122, size: 128, align: 64)
!2122 = !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !2107, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !2123, templateParams: !2119, identifier: "c1cfc485231e66b46f656456ba977489")
!2123 = !{!2124}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !2122, file: !2, baseType: !607, size: 128, align: 64, flags: DIFlagPublic)
!2125 = !DILocalVariable(name: "val", scope: !2126, file: !552, line: 212, type: !1370, align: 64)
!2126 = distinct !DILexicalBlock(scope: !2097, file: !552, line: 212, column: 98)
!2127 = !DILocalVariable(name: "residual", scope: !2128, file: !552, line: 214, type: !2129, align: 64)
!2128 = distinct !DILexicalBlock(scope: !2104, file: !552, line: 214, column: 35)
!2129 = !DICompositeType(tag: DW_TAG_structure_type, name: "Result<core::convert::Infallible, uu_expand::ParseError>", scope: !596, file: !2, size: 384, align: 64, flags: DIFlagPublic, elements: !2130, templateParams: !23, identifier: "64dba975c71e38a4b04035acde0c4821")
!2130 = !{!2131}
!2131 = !DICompositeType(tag: DW_TAG_variant_part, scope: !2129, file: !2, size: 384, align: 64, elements: !2132, templateParams: !23, identifier: "77a1727454545436f0f342f3748c5625")
!2132 = !{!2133, !2139}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !2131, file: !2, baseType: !2134, size: 384, align: 64)
!2134 = !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !2129, file: !2, size: 384, align: 64, flags: DIFlagPublic, elements: !2135, templateParams: !2137, identifier: "a6f2cf647b1681df8881c75972188d11")
!2135 = !{!2136}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !2134, file: !2, baseType: !2115, align: 8, flags: DIFlagPublic)
!2137 = !{!2120, !2138}
!2138 = !DITemplateTypeParameter(name: "E", type: !187)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !2131, file: !2, baseType: !2140, size: 384, align: 64)
!2140 = !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !2129, file: !2, size: 384, align: 64, flags: DIFlagPublic, elements: !2141, templateParams: !2137, identifier: "1ebbc4e33f29a936d77fad0549db62d5")
!2141 = !{!2142}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !2140, file: !2, baseType: !187, size: 384, align: 64, flags: DIFlagPublic)
!2143 = !DILocalVariable(name: "val", scope: !2144, file: !552, line: 214, type: !1334, align: 64)
!2144 = distinct !DILexicalBlock(scope: !2104, file: !552, line: 214, column: 35)
!2145 = !DILocation(line: 210, column: 15, scope: !2097)
!2146 = !DILocation(line: 211, column: 9, scope: !2104)
!2147 = !DILocation(line: 212, column: 9, scope: !2126)
!2148 = !DILocation(line: 214, column: 35, scope: !2128)
!2149 = !DILocation(line: 214, column: 13, scope: !2144)
!2150 = !DILocation(line: 211, column: 9, scope: !2097)
!2151 = !DILocation(line: 212, column: 55, scope: !2097)
!2152 = !DILocation(line: 215, column: 1, scope: !2097)
!2153 = !DILocation(line: 212, column: 65, scope: !2097)
!2154 = !DILocation(line: 212, column: 82, scope: !2097)
!2155 = !DILocation(line: 212, column: 87, scope: !2097)
!2156 = !DILocation(line: 212, column: 97, scope: !2097)
!2157 = !DILocation(line: 212, column: 9, scope: !2097)
!2158 = !DILocation(line: 212, column: 98, scope: !2097)
!2159 = !DILocation(line: 212, column: 98, scope: !2106)
!2160 = !DILocation(line: 212, column: 9, scope: !2106)
!2161 = !DILocation(line: 214, column: 13, scope: !2104)
!2162 = !DILocation(line: 214, column: 35, scope: !2104)
!2163 = !DILocation(line: 214, column: 13, scope: !2128)
!2164 = !DILocation(line: 214, column: 5, scope: !2104)
!2165 = !DILocation(line: 214, column: 36, scope: !2104)
!2166 = !DILocation(line: 215, column: 2, scope: !2097)
!2167 = !DILocation(line: 210, column: 1, scope: !2097)
!2168 = !DILocation(line: 0, scope: !2169)
!2169 = !DILexicalBlockFile(scope: !2097, file: !2170, discriminator: 0)
!2170 = !DIFile(filename: "src/uu/expand/src/main.rs", directory: "/workspaces/Thesis/.build/uutils-coreutils", checksumkind: CSK_MD5, checksum: "d14ce9c34bd2ac7f8561fbf4a51b74d4")
!2171 = distinct !DISubprogram(name: "fold<std::ffi::os_str::OsString, (), core::iter::adapters::map::map_fold::{closure_env#0}<&std::ffi::os_str::OsString, std::ffi::os_str::OsString, (), fn(&std::ffi::os_str::OsString) -> std::ffi::os_str::OsString, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<std::ffi::os_str::OsString, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<std::ffi::os_str::OsString, alloc::alloc::Global, core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>>>>", linkageName: "_RINvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB7_4IterNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1F_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1z_8for_each4callBQ_NCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB47_3VecBQ_E14extend_trustedINtNtB2r_6cloned6ClonedBF_EE0E0E0ECscBbfQkuq0VR_6expand", scope: !2173, file: !2172, line: 259, type: !2174, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !2194, retainedNodes: !2176)
!2172 = !DIFile(filename: "library/core/src/slice/iter/macros.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "6f131da7b4682617ab29050495ed9a52")
!2173 = !DINamespace(name: "{impl#171}", scope: !562)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{null, !561, !7, !1290}
!2176 = !{!2177, !2178, !2179, !2180, !2182, !2184, !2186, !2188, !2190, !2192}
!2177 = !DILocalVariable(name: "self", arg: 1, scope: !2171, file: !2172, line: 259, type: !561)
!2178 = !DILocalVariable(name: "init", arg: 2, scope: !2171, file: !2172, line: 259, type: !7)
!2179 = !DILocalVariable(name: "f", arg: 3, scope: !2171, file: !2172, line: 259, type: !1290)
!2180 = !DILocalVariable(name: "len", scope: !2181, file: !2172, line: 29, type: !9, align: 64)
!2181 = distinct !DILexicalBlock(scope: !2171, file: !2172, line: 29, column: 13)
!2182 = !DILocalVariable(name: "end", scope: !2183, file: !2172, line: 33, type: !566, align: 64)
!2183 = distinct !DILexicalBlock(scope: !2171, file: !2172, line: 33, column: 13)
!2184 = !DILocalVariable(name: "acc", scope: !2185, file: !2172, line: 273, type: !7, align: 8)
!2185 = distinct !DILexicalBlock(scope: !2171, file: !2172, line: 273, column: 17)
!2186 = !DILocalVariable(name: "i", scope: !2187, file: !2172, line: 274, type: !9, align: 64)
!2187 = distinct !DILexicalBlock(scope: !2185, file: !2172, line: 274, column: 17)
!2188 = !DILocalVariable(name: "len", scope: !2189, file: !2172, line: 275, type: !9, align: 64)
!2189 = distinct !DILexicalBlock(scope: !2187, file: !2172, line: 275, column: 17)
!2190 = !DILocalVariable(name: "len", scope: !2191, file: !2172, line: 29, type: !9, align: 64)
!2191 = distinct !DILexicalBlock(scope: !2187, file: !2172, line: 29, column: 13)
!2192 = !DILocalVariable(name: "end", scope: !2193, file: !2172, line: 33, type: !566, align: 64)
!2193 = distinct !DILexicalBlock(scope: !2187, file: !2172, line: 33, column: 13)
!2194 = !{!582, !2195, !2196}
!2195 = !DITemplateTypeParameter(name: "B", type: !7)
!2196 = !DITemplateTypeParameter(name: "F", type: !1290)
!2197 = !DILocation(line: 259, column: 27, scope: !2171)
!2198 = !DILocation(line: 259, column: 33, scope: !2171)
!2199 = !DILocation(line: 259, column: 42, scope: !2171)
!2200 = !DILocation(line: 273, column: 21, scope: !2185)
!2201 = !DILocation(line: 274, column: 21, scope: !2187)
!2202 = !DILocalVariable(name: "self", arg: 1, scope: !2203, file: !2204, line: 961, type: !9)
!2203 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCsgxBkk5gSRhY_4core3numj13unchecked_add", scope: !2205, file: !2204, line: 961, type: !2206, scopeLine: 961, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !2208)
!2204 = !DIFile(filename: "library/core/src/num/uint_macros.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "0ccbfbe7fddb6564280e91d430f1b663")
!2205 = !DINamespace(name: "{impl#11}", scope: !232)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!9, !9, !9, !912}
!2208 = !{!2202, !2209}
!2209 = !DILocalVariable(name: "rhs", scope: !2203, file: !2204, line: 961, type: !9, align: 64)
!2210 = !DILocation(line: 961, column: 43, scope: !2203, inlinedAt: !2211)
!2211 = !DILocation(line: 283, column: 36, scope: !2189)
!2212 = !DILocation(line: 275, column: 21, scope: !2189)
!2213 = !DILocation(line: 29, column: 17, scope: !2191)
!2214 = !DILocation(line: 731, column: 13, scope: !2215, inlinedAt: !2226)
!2215 = distinct !DILexicalBlock(scope: !2217, file: !2216, line: 731, column: 9)
!2216 = !DIFile(filename: "library/core/src/ptr/const_ptr.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "7502698646a1d0fc6eeea1d3df03cef6")
!2217 = distinct !DISubprogram(name: "offset_from_unsigned<std::ffi::os_str::OsString>", linkageName: "_RNvMNtNtCsgxBkk5gSRhY_4core3ptr9const_ptrPNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsString20offset_from_unsignedCscBbfQkuq0VR_6expand", scope: !2218, file: !2216, line: 706, type: !2220, scopeLine: 706, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !581, retainedNodes: !2222)
!2218 = !DINamespace(name: "{impl#0}", scope: !2219)
!2219 = !DINamespace(name: "const_ptr", scope: !214)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!9, !569, !569, !912}
!2222 = !{!2223, !2224, !2225}
!2223 = !DILocalVariable(name: "self", arg: 1, scope: !2217, file: !2216, line: 706, type: !569)
!2224 = !DILocalVariable(name: "origin", arg: 2, scope: !2217, file: !2216, line: 706, type: !569)
!2225 = !DILocalVariable(name: "pointee_size", scope: !2215, file: !2216, line: 731, type: !9, align: 64)
!2226 = !DILocation(line: 892, column: 37, scope: !2227, inlinedAt: !2236)
!2227 = distinct !DISubprogram(name: "offset_from_unsigned<std::ffi::os_str::OsString>", linkageName: "_RNvMNtNtCsgxBkk5gSRhY_4core3ptr7mut_ptrONtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsString20offset_from_unsignedCscBbfQkuq0VR_6expand", scope: !2229, file: !2228, line: 887, type: !2231, scopeLine: 887, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !581, retainedNodes: !2233)
!2228 = !DIFile(filename: "library/core/src/ptr/mut_ptr.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "b801fd1545b7efabfd51f22bd5061ba6")
!2229 = !DINamespace(name: "{impl#0}", scope: !2230)
!2230 = !DINamespace(name: "mut_ptr", scope: !214)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{!9, !1141, !569, !912}
!2233 = !{!2234, !2235}
!2234 = !DILocalVariable(name: "self", arg: 1, scope: !2227, file: !2228, line: 887, type: !1141)
!2235 = !DILocalVariable(name: "origin", arg: 2, scope: !2227, file: !2228, line: 887, type: !569)
!2236 = !DILocation(line: 886, column: 32, scope: !2237, inlinedAt: !2244)
!2237 = distinct !DISubprogram(name: "offset_from_unsigned<std::ffi::os_str::OsString>", linkageName: "_RNvMs1_NtNtCsgxBkk5gSRhY_4core3ptr8non_nullINtB5_7NonNullNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringE20offset_from_unsignedCscBbfQkuq0VR_6expand", scope: !566, file: !970, line: 881, type: !2238, scopeLine: 881, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !581, declaration: !2240, retainedNodes: !2241)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!9, !566, !566}
!2240 = !DISubprogram(name: "offset_from_unsigned<std::ffi::os_str::OsString>", linkageName: "_RNvMs1_NtNtCsgxBkk5gSRhY_4core3ptr8non_nullINtB5_7NonNullNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringE20offset_from_unsignedCscBbfQkuq0VR_6expand", scope: !566, file: !970, line: 881, type: !2238, scopeLine: 881, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !581)
!2241 = !{!2242, !2243}
!2242 = !DILocalVariable(name: "self", arg: 1, scope: !2237, file: !970, line: 881, type: !566)
!2243 = !DILocalVariable(name: "subtracted", arg: 2, scope: !2237, file: !970, line: 881, type: !566)
!2244 = !DILocation(line: 57, column: 30, scope: !2193)
!2245 = !DILocation(line: 961, column: 49, scope: !2203, inlinedAt: !2211)
!2246 = !DILocation(line: 28, column: 12, scope: !2171)
!2247 = !DILocation(line: 33, column: 33, scope: !2171)
!2248 = !DILocation(line: 33, column: 17, scope: !2183)
!2249 = !DILocalVariable(name: "self", arg: 1, scope: !2250, file: !970, line: 1649, type: !2254)
!2250 = distinct !DISubprogram(name: "eq<std::ffi::os_str::OsString>", linkageName: "_RNvXsd_NtNtCsgxBkk5gSRhY_4core3ptr8non_nullINtB5_7NonNullNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringENtNtB9_3cmp9PartialEq2eqCscBbfQkuq0VR_6expand", scope: !2251, file: !970, line: 1649, type: !2252, scopeLine: 1649, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !581, retainedNodes: !2255)
!2251 = !DINamespace(name: "{impl#15}", scope: !219)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!1349, !2254, !2254}
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::ptr::non_null::NonNull<std::ffi::os_str::OsString>", baseType: !566, size: 64, align: 64, dwarfAddressSpace: 0)
!2255 = !{!2249, !2256}
!2256 = !DILocalVariable(name: "other", arg: 2, scope: !2250, file: !970, line: 1649, type: !2254)
!2257 = !DILocation(line: 1649, column: 11, scope: !2250, inlinedAt: !2258)
!2258 = !DILocation(line: 44, column: 20, scope: !2183)
!2259 = !DILocation(line: 1649, column: 18, scope: !2250, inlinedAt: !2258)
!2260 = !DILocation(line: 1650, column: 9, scope: !2250, inlinedAt: !2258)
!2261 = !DILocation(line: 28, column: 9, scope: !2171)
!2262 = !DILocation(line: 25, column: 86, scope: !2171)
!2263 = !DILocation(line: 273, column: 31, scope: !2171)
!2264 = !DILocation(line: 274, column: 29, scope: !2185)
!2265 = !DILocation(line: 28, column: 12, scope: !2187)
!2266 = !DILocation(line: 271, column: 28, scope: !2171)
!2267 = !DILocation(line: 289, column: 13, scope: !2171)
!2268 = !DILocation(line: 33, column: 33, scope: !2187)
!2269 = !DILocation(line: 33, column: 17, scope: !2193)
!2270 = !DILocation(line: 881, column: 46, scope: !2237, inlinedAt: !2244)
!2271 = !DILocalVariable(name: "self", arg: 1, scope: !2272, file: !970, line: 398, type: !566)
!2272 = distinct !DISubprogram(name: "as_ptr<std::ffi::os_str::OsString>", linkageName: "_RNvMs1_NtNtCsgxBkk5gSRhY_4core3ptr8non_nullINtB5_7NonNullNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringE6as_ptrCscBbfQkuq0VR_6expand", scope: !566, file: !970, line: 398, type: !1229, scopeLine: 398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !581, declaration: !1231, retainedNodes: !2273)
!2273 = !{!2271}
!2274 = !DILocation(line: 398, column: 25, scope: !2272, inlinedAt: !2275)
!2275 = !DILocation(line: 886, column: 23, scope: !2237, inlinedAt: !2244)
!2276 = !DILocation(line: 57, column: 51, scope: !2193)
!2277 = !DILocation(line: 881, column: 52, scope: !2237, inlinedAt: !2244)
!2278 = !DILocation(line: 398, column: 25, scope: !2272, inlinedAt: !2279)
!2279 = !DILocation(line: 886, column: 64, scope: !2237, inlinedAt: !2244)
!2280 = !DILocation(line: 404, column: 18, scope: !2272, inlinedAt: !2275)
!2281 = !DILocation(line: 887, column: 46, scope: !2227, inlinedAt: !2236)
!2282 = !DILocation(line: 886, column: 53, scope: !2237, inlinedAt: !2244)
!2283 = !DILocation(line: 887, column: 52, scope: !2227, inlinedAt: !2236)
!2284 = !DILocation(line: 706, column: 52, scope: !2217, inlinedAt: !2226)
!2285 = !DILocation(line: 892, column: 18, scope: !2227, inlinedAt: !2236)
!2286 = !DILocation(line: 706, column: 46, scope: !2217, inlinedAt: !2226)
!2287 = !DILocation(line: 77, column: 35, scope: !2288, inlinedAt: !2226)
!2288 = !DILexicalBlockFile(scope: !2217, file: !2289, discriminator: 0)
!2289 = !DIFile(filename: "library/core/src/ub_checks.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "8a26eb599fa825194a3e796d4688d4db")
!2290 = !DILocation(line: 78, column: 17, scope: !2288, inlinedAt: !2226)
!2291 = !DILocation(line: 77, column: 13, scope: !2288, inlinedAt: !2226)
!2292 = !DILocation(line: 732, column: 17, scope: !2215, inlinedAt: !2226)
!2293 = !DILocation(line: 732, column: 37, scope: !2215, inlinedAt: !2226)
!2294 = !DILocation(line: 734, column: 18, scope: !2215, inlinedAt: !2226)
!2295 = !DILocation(line: 28, column: 9, scope: !2187)
!2296 = !DILocation(line: 732, column: 9, scope: !2215, inlinedAt: !2226)
!2297 = !DILocation(line: 279, column: 29, scope: !2189)
!2298 = !DILocation(line: 279, column: 58, scope: !2189)
!2299 = !DILocalVariable(name: "self", arg: 1, scope: !2300, file: !970, line: 606, type: !566)
!2300 = distinct !DISubprogram(name: "add<std::ffi::os_str::OsString>", linkageName: "_RNvMs1_NtNtCsgxBkk5gSRhY_4core3ptr8non_nullINtB5_7NonNullNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringE3addCscBbfQkuq0VR_6expand", scope: !566, file: !970, line: 606, type: !2301, scopeLine: 606, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !581, declaration: !2303, retainedNodes: !2304)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!566, !566, !9}
!2303 = !DISubprogram(name: "add<std::ffi::os_str::OsString>", linkageName: "_RNvMs1_NtNtCsgxBkk5gSRhY_4core3ptr8non_nullINtB5_7NonNullNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringE3addCscBbfQkuq0VR_6expand", scope: !566, file: !970, line: 606, type: !2301, scopeLine: 606, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !581)
!2304 = !{!2299, !2305}
!2305 = !DILocalVariable(name: "count", arg: 2, scope: !2300, file: !970, line: 606, type: !9)
!2306 = !DILocation(line: 606, column: 29, scope: !2300, inlinedAt: !2307)
!2307 = !DILocation(line: 279, column: 67, scope: !2189)
!2308 = !DILocation(line: 279, column: 71, scope: !2189)
!2309 = !DILocation(line: 606, column: 35, scope: !2300, inlinedAt: !2307)
!2310 = !DILocation(line: 614, column: 28, scope: !2300, inlinedAt: !2307)
!2311 = !DILocation(line: 614, column: 18, scope: !2300, inlinedAt: !2307)
!2312 = !DILocation(line: 398, column: 25, scope: !2272, inlinedAt: !2313)
!2313 = !DILocation(line: 279, column: 74, scope: !2189)
!2314 = !DILocation(line: 279, column: 27, scope: !2189)
!2315 = !DILocation(line: 77, column: 35, scope: !2316, inlinedAt: !2211)
!2316 = !DILexicalBlockFile(scope: !2203, file: !2289, discriminator: 0)
!2317 = !DILocation(line: 78, column: 17, scope: !2316, inlinedAt: !2211)
!2318 = !DILocation(line: 973, column: 17, scope: !2203, inlinedAt: !2211)
!2319 = !DILocation(line: 283, column: 21, scope: !2189)
!2320 = !DILocation(line: 284, column: 24, scope: !2189)
!2321 = !DILocation(line: 284, column: 29, scope: !2189)
!2322 = !DILocation(line: 276, column: 17, scope: !2189)
!2323 = !DILocation(line: 289, column: 14, scope: !2171)
!2324 = !DILocation(line: 259, column: 13, scope: !2171)
!2325 = distinct !DISubprogram(name: "fold<core::slice::iter::Iter<std::ffi::os_str::OsString>, std::ffi::os_str::OsString, (), core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<std::ffi::os_str::OsString, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<std::ffi::os_str::OsString, alloc::alloc::Global, core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>>>", linkageName: "_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB2c_8for_each4callB1s_NCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB3s_3VecB1s_E14extend_trustedBP_E0E0ECscBbfQkuq0VR_6expand", scope: !2327, file: !2326, line: 57, type: !2328, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !2334, retainedNodes: !2330)
!2326 = !DIFile(filename: "library/core/src/iter/adapters/cloned.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "00dd36cbc5f69d55ca74d38df1b59eb4")
!2327 = !DINamespace(name: "{impl#1}", scope: !556)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{null, !555, !7, !1295}
!2330 = !{!2331, !2332, !2333}
!2331 = !DILocalVariable(name: "self", arg: 1, scope: !2325, file: !2326, line: 57, type: !555)
!2332 = !DILocalVariable(name: "init", arg: 2, scope: !2325, file: !2326, line: 57, type: !7)
!2333 = !DILocalVariable(name: "f", arg: 3, scope: !2325, file: !2326, line: 57, type: !1295)
!2334 = !{!590, !582, !2335, !2336}
!2335 = !DITemplateTypeParameter(name: "Acc", type: !7)
!2336 = !DITemplateTypeParameter(name: "F", type: !1295)
!2337 = !DILocation(line: 57, column: 21, scope: !2325)
!2338 = !DILocation(line: 57, column: 27, scope: !2325)
!2339 = !DILocation(line: 57, column: 38, scope: !2325)
!2340 = !DILocalVariable(name: "init", arg: 2, scope: !2341, file: !2342, line: 124, type: !7)
!2341 = distinct !DISubprogram(name: "fold<std::ffi::os_str::OsString, core::slice::iter::Iter<std::ffi::os_str::OsString>, fn(&std::ffi::os_str::OsString) -> std::ffi::os_str::OsString, (), core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<std::ffi::os_str::OsString, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<std::ffi::os_str::OsString, alloc::alloc::Global, core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>>>", linkageName: "_RINvXs0_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringENvYB1n_NtNtBc_5clone5Clone5cloneENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2D_8for_each4callB1n_NCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB3T_3VecB1n_E14extend_trustedINtNtB8_6cloned6ClonedBX_EE0E0ECscBbfQkuq0VR_6expand", scope: !2343, file: !2342, line: 124, type: !2344, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !2355, retainedNodes: !2352)
!2342 = !DIFile(filename: "library/core/src/iter/adapters/map.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "4c6778ae80de9d62520e12b61373153e")
!2343 = !DINamespace(name: "{impl#2}", scope: !1292)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{null, !2346, !7, !1295}
!2346 = !DICompositeType(tag: DW_TAG_structure_type, name: "Map<core::slice::iter::Iter<std::ffi::os_str::OsString>, fn(&std::ffi::os_str::OsString) -> std::ffi::os_str::OsString>", scope: !1292, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !2347, templateParams: !2350, identifier: "cec5b50920bf8ac07a84a9aff5282747")
!2347 = !{!2348, !2349}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !2346, file: !2, baseType: !561, size: 128, align: 64, flags: DIFlagProtected)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !2346, file: !2, baseType: !1304, align: 8, offset: 128, flags: DIFlagPrivate)
!2350 = !{!590, !2351}
!2351 = !DITemplateTypeParameter(name: "F", type: !1304)
!2352 = !{!2353, !2340, !2354}
!2353 = !DILocalVariable(name: "self", arg: 1, scope: !2341, file: !2342, line: 124, type: !2346)
!2354 = !DILocalVariable(name: "g", arg: 3, scope: !2341, file: !2342, line: 124, type: !1295)
!2355 = !{!2356, !590, !2351, !2335, !2357}
!2356 = !DITemplateTypeParameter(name: "B", type: !570)
!2357 = !DITemplateTypeParameter(name: "G", type: !1295)
!2358 = !DILocation(line: 124, column: 27, scope: !2341, inlinedAt: !2359)
!2359 = !DILocation(line: 61, column: 31, scope: !2325)
!2360 = !DILocation(line: 124, column: 38, scope: !2341, inlinedAt: !2359)
!2361 = !DILocalVariable(name: "g", arg: 2, scope: !2362, file: !2342, line: 86, type: !1295)
!2362 = distinct !DISubprogram(name: "map_fold<&std::ffi::os_str::OsString, std::ffi::os_str::OsString, (), fn(&std::ffi::os_str::OsString) -> std::ffi::os_str::OsString, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<std::ffi::os_str::OsString, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<std::ffi::os_str::OsString, alloc::alloc::Global, core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>>>", linkageName: "_RINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map8map_foldRNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringBT_uNvYBT_NtNtB8_5clone5Clone5cloneNCINvNvNtNtNtB6_6traits8iterator8Iterator8for_each4callBT_NCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB3f_3VecBT_E14extend_trustedINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IterBT_EEE0E0ECscBbfQkuq0VR_6expand", scope: !1292, file: !2342, line: 84, type: !2363, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !2367, retainedNodes: !2365)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!1290, !1304, !1295}
!2365 = !{!2366, !2361}
!2366 = !DILocalVariable(name: "f", scope: !2362, file: !2342, line: 85, type: !1304, align: 8)
!2367 = !{!587, !2356, !2335, !2368, !2369}
!2368 = !DITemplateTypeParameter(name: "impl FnMut(T) -> B", type: !1304)
!2369 = !DITemplateTypeParameter(name: "impl FnMut(Acc, B) -> Acc", type: !1295)
!2370 = !DILocation(line: 86, column: 5, scope: !2362, inlinedAt: !2371)
!2371 = !DILocation(line: 128, column: 30, scope: !2341, inlinedAt: !2359)
!2372 = !DILocation(line: 85, column: 5, scope: !2362, inlinedAt: !2371)
!2373 = !DILocation(line: 61, column: 9, scope: !2325)
!2374 = !DILocation(line: 61, column: 17, scope: !2325)
!2375 = !DILocation(line: 62, column: 5, scope: !2325)
!2376 = !DILocation(line: 124, column: 21, scope: !2341, inlinedAt: !2359)
!2377 = !DILocation(line: 61, column: 36, scope: !2325)
!2378 = !DILocation(line: 61, column: 42, scope: !2325)
!2379 = !DILocation(line: 88, column: 5, scope: !2362, inlinedAt: !2371)
!2380 = !DILocation(line: 128, column: 19, scope: !2341, inlinedAt: !2359)
!2381 = !DILocation(line: 62, column: 6, scope: !2325)
!2382 = !DILocation(line: 57, column: 5, scope: !2325)
!2383 = distinct !DISubprogram(name: "from_iter<std::ffi::os_str::OsString, core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>", linkageName: "_RINvXse_NtCs6i54tJFfzR_5alloc3vecINtB6_3VecNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringEINtNtNtNtCsgxBkk5gSRhY_4core4iter6traits7collect12FromIteratorBF_E9from_iterINtNtNtB1v_8adapters6cloned6ClonedINtNtNtB1x_5slice4iter4IterBF_EEECscBbfQkuq0VR_6expand", scope: !2384, file: !1079, line: 3940, type: !2385, scopeLine: 3940, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !2389, retainedNodes: !2387)
!2384 = !DINamespace(name: "{impl#16}", scope: !202)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!1080, !555}
!2387 = !{!2388}
!2388 = !DILocalVariable(name: "iter", arg: 1, scope: !2383, file: !1079, line: 3940, type: !555)
!2389 = !{!582, !2390}
!2390 = !DITemplateTypeParameter(name: "I", type: !555)
!2391 = !DILocation(line: 3940, column: 45, scope: !2383)
!2392 = !DILocation(line: 3941, column: 64, scope: !2383)
!2393 = !DILocation(line: 3941, column: 9, scope: !2383)
!2394 = !DILocation(line: 3942, column: 6, scope: !2383)
!2395 = distinct !DISubprogram(name: "map<core::slice::iter::Iter<std::ffi::os_str::OsString>, std::ffi::os_str::OsString, fn(&std::ffi::os_str::OsString) -> std::ffi::os_str::OsString>", linkageName: "_RINvYINtNtNtCsgxBkk5gSRhY_4core5slice4iter4IterNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator3mapBJ_NvYBJ_NtNtBa_5clone5Clone5cloneECscBbfQkuq0VR_6expand", scope: !1298, file: !2396, line: 831, type: !2397, scopeLine: 831, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !2402, retainedNodes: !2399)
!2396 = !DIFile(filename: "library/core/src/iter/traits/iterator.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "6989f56d6c292fa3b53b47a1cac95d8d")
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!2346, !561, !1304}
!2399 = !{!2400, !2401}
!2400 = !DILocalVariable(name: "self", arg: 1, scope: !2395, file: !2396, line: 831, type: !561)
!2401 = !DILocalVariable(name: "f", arg: 2, scope: !2395, file: !2396, line: 831, type: !1304)
!2402 = !{!2403, !2356, !2351}
!2403 = !DITemplateTypeParameter(name: "Self", type: !561)
!2404 = !DILocation(line: 831, column: 18, scope: !2395)
!2405 = !DILocation(line: 831, column: 24, scope: !2395)
!2406 = !DILocation(line: 837, column: 6, scope: !2395)
!2407 = distinct !DISubprogram(name: "collect<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>, alloc::vec::Vec<std::ffi::os_str::OsString, alloc::alloc::Global>>", linkageName: "_RINvYINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters6cloned6ClonedINtNtNtBc_5slice4iter4IterNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringEENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs6i54tJFfzR_5alloc3vec3VecB1n_EECscBbfQkuq0VR_6expand", scope: !1298, file: !2396, line: 2077, type: !2385, scopeLine: 2077, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !2419, retainedNodes: !2408)
!2408 = !{!2409, !2410, !2412, !2416}
!2409 = !DILocalVariable(name: "self", arg: 1, scope: !2407, file: !2396, line: 2077, type: !555)
!2410 = !DILocalVariable(name: "hint", scope: !2411, file: !2396, line: 2086, type: !1132, align: 64)
!2411 = distinct !DILexicalBlock(scope: !2407, file: !2396, line: 2086, column: 13)
!2412 = !DILocalVariable(name: "args", scope: !2413, file: !2396, line: 2087, type: !1128, align: 64)
!2413 = !DILexicalBlockFile(scope: !2414, file: !2396, discriminator: 0)
!2414 = distinct !DILexicalBlock(scope: !2411, file: !2415, line: 62, column: 38)
!2415 = !DIFile(filename: "library/core/src/panic.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "02ad459d08f675a3c3698211c6bb8fcd")
!2416 = !DILocalVariable(name: "args", scope: !2417, file: !2396, line: 2087, type: !637, align: 64)
!2417 = !DILexicalBlockFile(scope: !2418, file: !2396, discriminator: 0)
!2418 = distinct !DILexicalBlock(scope: !2414, file: !2415, line: 62, column: 38)
!2419 = !{!2420, !2421}
!2420 = !DITemplateTypeParameter(name: "Self", type: !555)
!2421 = !DITemplateTypeParameter(name: "B", type: !1080)
!2422 = !DILocation(line: 2077, column: 45, scope: !2407)
!2423 = !DILocation(line: 2090, column: 9, scope: !2407)
!2424 = !DILocation(line: 2091, column: 6, scope: !2407)
!2425 = distinct !DISubprogram(name: "for_each<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<std::ffi::os_str::OsString, alloc::alloc::Global, core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>>", linkageName: "_RINvYINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters6cloned6ClonedINtNtNtBc_5slice4iter4IterNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB2X_3VecB1n_E14extend_trustedB3_E0ECscBbfQkuq0VR_6expand", scope: !1298, file: !2396, line: 877, type: !2426, scopeLine: 877, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !2431, retainedNodes: !2428)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{null, !555, !1275}
!2428 = !{!2429, !2430}
!2429 = !DILocalVariable(name: "self", arg: 1, scope: !2425, file: !2396, line: 877, type: !555)
!2430 = !DILocalVariable(name: "f", arg: 2, scope: !2425, file: !2396, line: 877, type: !1275)
!2431 = !{!2420, !2432}
!2432 = !DITemplateTypeParameter(name: "F", type: !1275)
!2433 = !DILocation(line: 877, column: 20, scope: !2425)
!2434 = !DILocation(line: 877, column: 26, scope: !2425)
!2435 = !DILocalVariable(name: "f", arg: 1, scope: !2436, file: !2396, line: 883, type: !1275)
!2436 = distinct !DISubprogram(name: "call<std::ffi::os_str::OsString, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<std::ffi::os_str::OsString, alloc::alloc::Global, core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>>", linkageName: "_RINvNvNtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator8for_each4callNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB24_3VecB1d_E14extend_trustedINtNtNtBa_8adapters6cloned6ClonedINtNtNtBc_5slice4iter4IterB1d_EEE0ECscBbfQkuq0VR_6expand", scope: !1297, file: !2396, line: 883, type: !2437, scopeLine: 883, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !2440, retainedNodes: !2439)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!1295, !1275}
!2439 = !{!2435}
!2440 = !{!582, !2441}
!2441 = !DITemplateTypeParameter(name: "impl FnMut(T)", type: !1275)
!2442 = !DILocation(line: 883, column: 20, scope: !2436, inlinedAt: !2443)
!2443 = !DILocation(line: 887, column: 23, scope: !2425)
!2444 = !DILocation(line: 884, column: 13, scope: !2436, inlinedAt: !2443)
!2445 = !DILocation(line: 887, column: 14, scope: !2425)
!2446 = !DILocation(line: 888, column: 6, scope: !2425)
!2447 = distinct !DISubprogram(name: "{closure#0}<std::ffi::os_str::OsString, alloc::alloc::Global, core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>", linkageName: "_RNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB8_3VecNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringE14extend_trustedINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters6cloned6ClonedINtNtNtB1P_5slice4iter4IterBH_EEE0CscBbfQkuq0VR_6expand", scope: !1276, file: !1079, line: 4077, type: !2448, scopeLine: 4077, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !1094, retainedNodes: !2450)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{null, !1274, !570}
!2450 = !{!2451, !2452, !2453}
!2451 = !DILocalVariable(name: "element", arg: 2, scope: !2447, file: !1079, line: 4077, type: !570)
!2452 = !DILocalVariable(name: "ptr", scope: !2447, file: !1079, line: 4075, type: !1141, align: 64)
!2453 = !DILocalVariable(name: "local_len", scope: !2447, file: !1079, line: 4076, type: !1144, align: 64)
!2454 = !DILocation(line: 4075, column: 21, scope: !2447)
!2455 = !DILocation(line: 4076, column: 25, scope: !2447)
!2456 = !DILocation(line: 4077, column: 41, scope: !2447)
!2457 = !DILocation(line: 4078, column: 32, scope: !2447)
!2458 = !DILocation(line: 24, column: 9, scope: !2459, inlinedAt: !2464)
!2459 = distinct !DISubprogram(name: "current_len", linkageName: "_RNvMNtNtCs6i54tJFfzR_5alloc3vec15set_len_on_dropNtB2_12SetLenOnDrop11current_lenCscBbfQkuq0VR_6expand", scope: !1144, file: !1237, line: 23, type: !2460, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, declaration: !2463)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!9, !2462}
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&alloc::vec::set_len_on_drop::SetLenOnDrop", baseType: !1144, size: 64, align: 64, dwarfAddressSpace: 0)
!2463 = !DISubprogram(name: "current_len", linkageName: "_RNvMNtNtCs6i54tJFfzR_5alloc3vec15set_len_on_dropNtB2_12SetLenOnDrop11current_lenCscBbfQkuq0VR_6expand", scope: !1144, file: !1237, line: 23, type: !2460, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !23)
!2464 = !DILocation(line: 4078, column: 50, scope: !2447)
!2465 = !DILocation(line: 970, column: 18, scope: !2466, inlinedAt: !2469)
!2466 = distinct !DISubprogram(name: "add<std::ffi::os_str::OsString>", linkageName: "_RNvMNtNtCsgxBkk5gSRhY_4core3ptr7mut_ptrONtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsString3addCscBbfQkuq0VR_6expand", scope: !2229, file: !2228, line: 936, type: !2467, scopeLine: 936, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !581)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!1141, !1141, !9, !912}
!2469 = !DILocation(line: 4078, column: 36, scope: !2447)
!2470 = !DILocation(line: 1939, column: 41, scope: !2471, inlinedAt: !2474)
!2471 = distinct !DISubprogram(name: "write<std::ffi::os_str::OsString>", linkageName: "_RINvNtCsgxBkk5gSRhY_4core3ptr5writeNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringECscBbfQkuq0VR_6expand", scope: !214, file: !1271, line: 1916, type: !2472, scopeLine: 1916, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !581)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{null, !1141, !570, !912}
!2474 = !DILocation(line: 4078, column: 21, scope: !2447)
!2475 = !DILocation(line: 19, column: 9, scope: !2476, inlinedAt: !2481)
!2476 = distinct !DISubprogram(name: "increment_len", linkageName: "_RNvMNtNtCs6i54tJFfzR_5alloc3vec15set_len_on_dropNtB2_12SetLenOnDrop13increment_lenCscBbfQkuq0VR_6expand", scope: !1144, file: !1237, line: 18, type: !2477, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, declaration: !2480)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{null, !2479, !9}
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut alloc::vec::set_len_on_drop::SetLenOnDrop", baseType: !1144, size: 64, align: 64, dwarfAddressSpace: 0)
!2480 = !DISubprogram(name: "increment_len", linkageName: "_RNvMNtNtCs6i54tJFfzR_5alloc3vec15set_len_on_dropNtB2_12SetLenOnDrop13increment_lenCscBbfQkuq0VR_6expand", scope: !1144, file: !1237, line: 18, type: !2477, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !23)
!2481 = !DILocation(line: 4082, column: 31, scope: !2447)
!2482 = !DILocation(line: 4083, column: 18, scope: !2447)
!2483 = distinct !DISubprogram(name: "{closure#0}<()>", linkageName: "_RNCINvNtCs9k3SxhrAWiO_3std2rt10lang_startuE0CscBbfQkuq0VR_6expand", scope: !15, file: !1253, line: 206, type: !2484, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !654, retainedNodes: !2487)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!36, !2486}
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&std::rt::lang_start::{closure_env#0}<()>", baseType: !14, size: 64, align: 64, dwarfAddressSpace: 0)
!2487 = !{!2488}
!2488 = !DILocalVariable(name: "main", scope: !2483, file: !1253, line: 200, type: !20, align: 64)
!2489 = !DILocation(line: 200, column: 5, scope: !2483)
!2490 = !DILocation(line: 206, column: 70, scope: !2483)
!2491 = !DILocation(line: 206, column: 18, scope: !2483)
!2492 = !DILocation(line: 206, column: 76, scope: !2483)
!2493 = !DILocalVariable(name: "self", arg: 1, scope: !2494, file: !2495, line: 2288, type: !2496)
!2494 = distinct !DISubprogram(name: "to_i32", linkageName: "_RNvMsO_NtCs9k3SxhrAWiO_3std7processNtB5_8ExitCode6to_i32CscBbfQkuq0VR_6expand", scope: !2496, file: !2495, line: 2288, type: !2506, scopeLine: 2288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, declaration: !2508, retainedNodes: !2509)
!2495 = !DIFile(filename: "library/std/src/process.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "aa32a342ec19ed053728e871b78cbd51")
!2496 = !DICompositeType(tag: DW_TAG_structure_type, name: "ExitCode", scope: !2497, file: !2, size: 8, align: 8, flags: DIFlagPublic, elements: !2498, templateParams: !23, identifier: "d9b02d003121c22eb66bbe565e9b0525")
!2497 = !DINamespace(name: "process", scope: !17)
!2498 = !{!2499}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !2496, file: !2, baseType: !2500, size: 8, align: 8, flags: DIFlagPrivate)
!2500 = !DICompositeType(tag: DW_TAG_structure_type, name: "ExitCode", scope: !2501, file: !2, size: 8, align: 8, flags: DIFlagPublic, elements: !2504, templateParams: !23, identifier: "5ef517217aad03f63086f96609e2b3a9")
!2501 = !DINamespace(name: "common", scope: !2502)
!2502 = !DINamespace(name: "unix", scope: !2503)
!2503 = !DINamespace(name: "process", scope: !578)
!2504 = !{!2505}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !2500, file: !2, baseType: !223, size: 8, align: 8, flags: DIFlagPrivate)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!36, !2496}
!2508 = !DISubprogram(name: "to_i32", linkageName: "_RNvMsO_NtCs9k3SxhrAWiO_3std7processNtB5_8ExitCode6to_i32CscBbfQkuq0VR_6expand", scope: !2496, file: !2495, line: 2288, type: !2506, scopeLine: 2288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !23)
!2509 = !{!2493}
!2510 = !DILocation(line: 2288, column: 19, scope: !2494, inlinedAt: !2511)
!2511 = !DILocation(line: 206, column: 85, scope: !2483)
!2512 = !DILocation(line: 592, column: 9, scope: !2513, inlinedAt: !2519)
!2513 = distinct !DISubprogram(name: "as_i32", linkageName: "_RNvMs8_NtNtNtNtCs9k3SxhrAWiO_3std3sys7process4unix6commonNtB5_8ExitCode6as_i32CscBbfQkuq0VR_6expand", scope: !2500, file: !2514, line: 591, type: !2515, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, declaration: !2518)
!2514 = !DIFile(filename: "library/std/src/sys/process/unix/common.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "9ce13a63119e878727d165dd623553d1")
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!36, !2517}
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&std::sys::process::unix::common::ExitCode", baseType: !2500, size: 64, align: 64, dwarfAddressSpace: 0)
!2518 = !DISubprogram(name: "as_i32", linkageName: "_RNvMs8_NtNtNtNtCs9k3SxhrAWiO_3std3sys7process4unix6commonNtB5_8ExitCode6as_i32CscBbfQkuq0VR_6expand", scope: !2500, file: !2514, line: 591, type: !2515, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !23)
!2519 = !DILocation(line: 2289, column: 16, scope: !2494, inlinedAt: !2511)
!2520 = !DILocation(line: 206, column: 93, scope: !2483)
!2521 = distinct !DISubprogram(name: "{closure#0}<&std::ffi::os_str::OsString, std::ffi::os_str::OsString, (), fn(&std::ffi::os_str::OsString) -> std::ffi::os_str::OsString, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<std::ffi::os_str::OsString, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<std::ffi::os_str::OsString, alloc::alloc::Global, core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>>>", linkageName: "_RNCINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map8map_foldRNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB3h_3VecBV_E14extend_trustedINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0CscBbfQkuq0VR_6expand", scope: !1291, file: !2342, line: 88, type: !2522, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !2367, retainedNodes: !2524)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{null, !1289, !7, !588}
!2524 = !{!2525, !2526, !2527, !2528}
!2525 = !DILocalVariable(name: "acc", arg: 2, scope: !2521, file: !2342, line: 88, type: !7)
!2526 = !DILocalVariable(name: "elt", arg: 3, scope: !2521, file: !2342, line: 88, type: !588)
!2527 = !DILocalVariable(name: "g", scope: !2521, file: !2342, line: 86, type: !1295, align: 64)
!2528 = !DILocalVariable(name: "f", scope: !2521, file: !2342, line: 85, type: !1304, align: 8)
!2529 = !DILocation(line: 86, column: 9, scope: !2521)
!2530 = !DILocation(line: 85, column: 9, scope: !2521)
!2531 = !DILocation(line: 88, column: 11, scope: !2521)
!2532 = !DILocation(line: 88, column: 16, scope: !2521)
!2533 = !DILocation(line: 88, column: 23, scope: !2521)
!2534 = !DILocation(line: 88, column: 28, scope: !2521)
!2535 = !DILocation(line: 88, column: 34, scope: !2521)
!2536 = !DILocation(line: 88, column: 21, scope: !2521)
!2537 = !DILocation(line: 88, column: 35, scope: !2521)
!2538 = !DILocation(line: 88, column: 5, scope: !2521)
!2539 = distinct !DISubprogram(name: "{closure#0}<std::ffi::os_str::OsString, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<std::ffi::os_str::OsString, alloc::alloc::Global, core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>>", linkageName: "_RNCINvNvNtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator8for_each4callNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB26_3VecB1f_E14extend_trustedINtNtNtBc_8adapters6cloned6ClonedINtNtNtBe_5slice4iter4IterB1f_EEE0E0CscBbfQkuq0VR_6expand", scope: !1296, file: !2396, line: 884, type: !2540, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !2440, retainedNodes: !2542)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{null, !1315, !7, !570}
!2542 = !{!2543, !2544, !2545}
!2543 = !DILocalVariable(name: "item", arg: 3, scope: !2539, file: !2396, line: 884, type: !570)
!2544 = !DILocalVariable(name: "f", scope: !2539, file: !2396, line: 883, type: !1275, align: 64)
!2545 = !DILocalVariable(arg: 2, scope: !2539, file: !2396, line: 884, type: !7)
!2546 = !DILocation(line: 883, column: 24, scope: !2539)
!2547 = !DILocation(line: 884, column: 19, scope: !2539)
!2548 = !DILocation(line: 884, column: 23, scope: !2539)
!2549 = !DILocation(line: 884, column: 29, scope: !2539)
!2550 = !DILocation(line: 884, column: 36, scope: !2539)
!2551 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvCscBbfQkuq0VR_6expand4main0B3_", scope: !910, file: !2552, line: 219, type: !2553, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !2555)
!2552 = !DIFile(filename: "src/uucore/src/lib/lib.rs", directory: "/workspaces/Thesis/.build/uutils-coreutils", checksumkind: CSK_MD5, checksum: "fdeeaac35e6d4dd1e7b203fd76300937")
!2553 = !DISubroutineType(types: !2554)
!2554 = !{null, !909, !779}
!2555 = !{!2556, !2557, !2559, !2560, !2568, !2571, !2573, !2579, !2582}
!2556 = !DILocalVariable(name: "err", arg: 2, scope: !2551, file: !2552, line: 219, type: !779)
!2557 = !DILocalVariable(name: "err_msg", scope: !2558, file: !2552, line: 222, type: !883, align: 64)
!2558 = distinct !DILexicalBlock(scope: !2551, file: !2552, line: 221, column: 25)
!2559 = !DILocalVariable(name: "snippet", scope: !2558, file: !2552, line: 223, type: !196, align: 64)
!2560 = !DILocalVariable(name: "args", scope: !2561, file: !2552, line: 224, type: !2564, align: 64)
!2561 = !DILexicalBlockFile(scope: !2562, file: !2552, discriminator: 0)
!2562 = distinct !DILexicalBlock(scope: !2558, file: !2563, line: 224, column: 29)
!2563 = !DIFile(filename: "library/std/src/macros.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "26abf8ae8ca51b3eb357be487dda5082")
!2564 = !DICompositeType(tag: DW_TAG_structure_type, name: "(&alloc::string::String, &fluent_syntax::parser::errors::ParserError)", file: !2, size: 128, align: 64, elements: !2565, templateParams: !23, identifier: "dff51a42609cb499ce5b01af8c6be138")
!2565 = !{!2566, !2567}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !2564, file: !2, baseType: !270, size: 64, align: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !2564, file: !2, baseType: !987, size: 64, align: 64, offset: 64)
!2568 = !DILocalVariable(name: "args", scope: !2569, file: !2552, line: 224, type: !725, align: 64)
!2569 = !DILexicalBlockFile(scope: !2570, file: !2552, discriminator: 0)
!2570 = distinct !DILexicalBlock(scope: !2562, file: !2563, line: 224, column: 29)
!2571 = !DILocalVariable(name: "other", scope: !2572, file: !2552, line: 225, type: !779, align: 64)
!2572 = distinct !DILexicalBlock(scope: !2551, file: !2552, line: 225, column: 25)
!2573 = !DILocalVariable(name: "args", scope: !2574, file: !2552, line: 225, type: !2576, align: 64)
!2574 = !DILexicalBlockFile(scope: !2575, file: !2552, discriminator: 0)
!2575 = distinct !DILexicalBlock(scope: !2572, file: !2563, line: 224, column: 29)
!2576 = !DICompositeType(tag: DW_TAG_structure_type, name: "(&uucore::mods::locale::LocalizationError)", file: !2, size: 64, align: 64, elements: !2577, templateParams: !23, identifier: "8d1c78eaea60da563f2a987a83b3f48")
!2577 = !{!2578}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !2576, file: !2, baseType: !961, size: 64, align: 64)
!2579 = !DILocalVariable(name: "args", scope: !2580, file: !2552, line: 225, type: !637, align: 64)
!2580 = !DILexicalBlockFile(scope: !2581, file: !2552, discriminator: 0)
!2581 = distinct !DILexicalBlock(scope: !2575, file: !2563, line: 224, column: 29)
!2582 = !DILocalVariable(arg: 1, scope: !2551, file: !2552, line: 219, type: !909)
!2583 = !DILocation(line: 219, column: 33, scope: !2551)
!2584 = !DILocation(line: 219, column: 34, scope: !2551)
!2585 = !DILocation(line: 222, column: 36, scope: !2558)
!2586 = !DILocation(line: 223, column: 29, scope: !2558)
!2587 = !DILocation(line: 224, column: 30, scope: !2569)
!2588 = !DILocation(line: 225, column: 25, scope: !2572)
!2589 = !DILocation(line: 225, column: 34, scope: !2580)
!2590 = !DILocation(line: 220, column: 21, scope: !2551)
!2591 = !DILocation(line: 220, column: 27, scope: !2551)
!2592 = !DILocation(line: 222, column: 36, scope: !2551)
!2593 = !DILocation(line: 223, column: 29, scope: !2551)
!2594 = !DILocation(line: 224, column: 30, scope: !2558)
!2595 = !DILocation(line: 224, column: 30, scope: !2561)
!2596 = !DILocation(line: 225, column: 25, scope: !2551)
!2597 = !DILocation(line: 225, column: 34, scope: !2572)
!2598 = !DILocation(line: 225, column: 34, scope: !2574)
!2599 = !DILocation(line: 224, column: 92, scope: !2551)
!2600 = !DILocation(line: 228, column: 17, scope: !2551)
!2601 = !DILocation(line: 227, column: 21, scope: !2551)
!2602 = !DILocation(line: 225, column: 93, scope: !2551)
!2603 = distinct !DISubprogram(name: "call_once<std::rt::lang_start::{closure_env#0}<()>, ()>", linkageName: "_RNSNvYNCINvNtCs9k3SxhrAWiO_3std2rt10lang_startuE0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceuE9call_once6vtableCscBbfQkuq0VR_6expand", scope: !2605, file: !2604, line: 250, type: !2607, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !2613, retainedNodes: !2610)
!2604 = !DIFile(filename: "library/core/src/ops/function.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "ae01f833f82cd27aa916c99d95502941")
!2605 = !DINamespace(name: "FnOnce", scope: !2606)
!2606 = !DINamespace(name: "function", scope: !289)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{!36, !2609}
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut std::rt::lang_start::{closure_env#0}<()>", baseType: !14, size: 64, align: 64, dwarfAddressSpace: 0)
!2610 = !{!2611, !2612}
!2611 = !DILocalVariable(arg: 1, scope: !2603, file: !2604, line: 250, type: !2609)
!2612 = !DILocalVariable(arg: 2, scope: !2603, file: !2604, line: 250, type: !7)
!2613 = !{!2614, !2615}
!2614 = !DITemplateTypeParameter(name: "Self", type: !14)
!2615 = !DITemplateTypeParameter(name: "Args", type: !7)
!2616 = !DILocation(line: 250, column: 5, scope: !2603)
!2617 = distinct !DISubprogram(name: "main", linkageName: "_RNvCscBbfQkuq0VR_6expand4main", scope: !911, file: !2552, line: 209, type: !21, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagMainSubprogram, unit: !399, templateParams: !23, retainedNodes: !2618)
!2618 = !{!2619, !2621, !2624, !2631}
!2619 = !DILocalVariable(name: "code", scope: !2620, file: !2552, line: 231, type: !36, align: 32)
!2620 = distinct !DILexicalBlock(scope: !2617, file: !2552, line: 231, column: 13)
!2621 = !DILocalVariable(name: "e", scope: !2622, file: !2170, line: 6, type: !790, align: 64)
!2622 = !DILexicalBlockFile(scope: !2623, file: !2170, discriminator: 0)
!2623 = distinct !DILexicalBlock(scope: !2620, file: !2552, line: 250, column: 55)
!2624 = !DILocalVariable(name: "args", scope: !2625, file: !2170, line: 6, type: !2627, align: 64)
!2625 = !DILexicalBlockFile(scope: !2626, file: !2170, discriminator: 0)
!2626 = distinct !DILexicalBlock(scope: !2623, file: !2563, line: 224, column: 29)
!2627 = !DICompositeType(tag: DW_TAG_structure_type, name: "(&core::io::error::Error)", file: !2, size: 64, align: 64, elements: !2628, templateParams: !23, identifier: "6828d94a2e26695426f2130f38a8b7e")
!2628 = !{!2629}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !2627, file: !2, baseType: !2630, size: 64, align: 64)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::io::error::Error", baseType: !790, size: 64, align: 64, dwarfAddressSpace: 0)
!2631 = !DILocalVariable(name: "args", scope: !2632, file: !2170, line: 6, type: !637, align: 64)
!2632 = !DILexicalBlockFile(scope: !2633, file: !2170, discriminator: 0)
!2633 = distinct !DILexicalBlock(scope: !2626, file: !2563, line: 224, column: 29)
!2634 = !DILocation(line: 6, column: 1, scope: !2622)
!2635 = !DILocation(line: 6, column: 1, scope: !2632)
!2636 = !DILocation(line: 214, column: 13, scope: !2617)
!2637 = !DILocation(line: 217, column: 13, scope: !2617)
!2638 = !DILocation(line: 218, column: 40, scope: !2617)
!2639 = !DILocation(line: 218, column: 13, scope: !2617)
!2640 = !DILocation(line: 219, column: 18, scope: !2617)
!2641 = !DILocation(line: 231, column: 38, scope: !2617)
!2642 = !DILocation(line: 231, column: 24, scope: !2617)
!2643 = !DILocation(line: 231, column: 17, scope: !2620)
!2644 = !DILocation(line: 6, column: 1, scope: !2625)
!2645 = !DILocation(line: 234, column: 13, scope: !2620)
!2646 = !DILocation(line: 6, column: 1, scope: !2647)
!2647 = !DILexicalBlockFile(scope: !2620, file: !2170, discriminator: 0)
!2648 = !DILocation(line: 209, column: 9, scope: !2617)
!2649 = distinct !DISubprogram(name: "alloc_impl_runtime", linkageName: "_RNvMNtCs6i54tJFfzR_5alloc5allocNtB2_6Global18alloc_impl_runtimeCscBbfQkuq0VR_6expand", scope: !236, file: !2650, line: 205, type: !2651, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, declaration: !2686, retainedNodes: !2687)
!2650 = !DIFile(filename: "library/alloc/src/alloc.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "ef905b83ec52fae69f33008e0917a1ec")
!2651 = !DISubroutineType(types: !2652)
!2652 = !{!2653, !2678, !1349}
!2653 = !DICompositeType(tag: DW_TAG_structure_type, name: "Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>", scope: !596, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !2654, templateParams: !23, identifier: "e59d84893347aee01b1aa7580d967291")
!2654 = !{!2655}
!2655 = !DICompositeType(tag: DW_TAG_variant_part, scope: !2653, file: !2, size: 128, align: 64, elements: !2656, templateParams: !23, identifier: "a30eb170b560f264e75093aafe20193f", discriminator: !2677)
!2656 = !{!2657, !2673}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !2655, file: !2, baseType: !2658, size: 128, align: 64)
!2658 = !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !2653, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !2659, templateParams: !2668, identifier: "46e8dba0c6bb0f6933f634e3be32f9b4")
!2659 = !{!2660}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !2658, file: !2, baseType: !2661, size: 128, align: 64, flags: DIFlagPublic)
!2661 = !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<[u8]>", scope: !219, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !2662, templateParams: !925, identifier: "96ea02f253f31965c483fb8f23819")
!2662 = !{!2663}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2661, file: !2, baseType: !2664, size: 128, align: 64, flags: DIFlagPrivate)
!2664 = !DICompositeType(tag: DW_TAG_structure_type, name: "*const [u8]", file: !2, size: 128, align: 64, elements: !2665, templateParams: !23, identifier: "3e3ad86cd85de990a3ba2615930c5e50")
!2665 = !{!2666, !2667}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !2664, file: !2, baseType: !719, size: 64, align: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2664, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!2668 = !{!2669, !2670}
!2669 = !DITemplateTypeParameter(name: "T", type: !2661)
!2670 = !DITemplateTypeParameter(name: "E", type: !2671)
!2671 = !DICompositeType(tag: DW_TAG_structure_type, name: "AllocError", scope: !2672, file: !2, align: 8, flags: DIFlagPublic, elements: !23, identifier: "3e91aeabe8dde7695a6136aa28644e8d")
!2672 = !DINamespace(name: "alloc", scope: !215)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !2655, file: !2, baseType: !2674, size: 128, align: 64, extraData: i64 0)
!2674 = !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !2653, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !2675, templateParams: !2668, identifier: "2ff2a5f9bcaf4165b09939197a7161af")
!2675 = !{!2676}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !2674, file: !2, baseType: !2671, align: 8, flags: DIFlagPublic)
!2677 = !DIDerivedType(tag: DW_TAG_member, scope: !2653, file: !2, baseType: !261, size: 64, align: 64, flags: DIFlagArtificial)
!2678 = !DICompositeType(tag: DW_TAG_structure_type, name: "Layout", scope: !2679, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !2680, templateParams: !23, identifier: "460a20ea15cb381b8534f78e68407974")
!2679 = !DINamespace(name: "layout", scope: !2672)
!2680 = !{!2681, !2682}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2678, file: !2, baseType: !9, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2678, file: !2, baseType: !2683, size: 64, align: 64, flags: DIFlagPrivate)
!2683 = !DICompositeType(tag: DW_TAG_structure_type, name: "Alignment", scope: !483, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !2684, templateParams: !23, identifier: "4789236b7283a9b58738c6aa1b457a5a")
!2684 = !{!2685}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "_inner_repr_trick", scope: !2683, file: !2, baseType: !482, size: 64, align: 64, flags: DIFlagPrivate)
!2686 = !DISubprogram(name: "alloc_impl_runtime", linkageName: "_RNvMNtCs6i54tJFfzR_5alloc5allocNtB2_6Global18alloc_impl_runtimeCscBbfQkuq0VR_6expand", scope: !236, file: !2650, line: 205, type: !2651, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !23)
!2687 = !{!2688, !2689, !2690, !2692, !2695, !2697, !2712}
!2688 = !DILocalVariable(name: "layout", arg: 1, scope: !2649, file: !2650, line: 205, type: !2678)
!2689 = !DILocalVariable(name: "zeroed", arg: 2, scope: !2649, file: !2650, line: 205, type: !1349)
!2690 = !DILocalVariable(name: "size", scope: !2691, file: !2650, line: 209, type: !9, align: 64)
!2691 = distinct !DILexicalBlock(scope: !2649, file: !2650, line: 209, column: 13)
!2692 = !DILocalVariable(name: "raw_ptr", scope: !2693, file: !2650, line: 210, type: !2694, align: 64)
!2693 = distinct !DILexicalBlock(scope: !2691, file: !2650, line: 210, column: 17)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut u8", baseType: !223, size: 64, align: 64, dwarfAddressSpace: 0)
!2695 = !DILocalVariable(name: "ptr", scope: !2696, file: !2650, line: 211, type: !218, align: 64)
!2696 = distinct !DILexicalBlock(scope: !2693, file: !2650, line: 211, column: 17)
!2697 = !DILocalVariable(name: "residual", scope: !2698, file: !2650, line: 211, type: !2699, align: 8)
!2698 = distinct !DILexicalBlock(scope: !2693, file: !2650, line: 211, column: 66)
!2699 = !DICompositeType(tag: DW_TAG_structure_type, name: "Result<core::convert::Infallible, core::alloc::AllocError>", scope: !596, file: !2, align: 8, flags: DIFlagPublic, elements: !2700, templateParams: !23, identifier: "313fba7550441eb0f0f42d4dd233bb09")
!2700 = !{!2701}
!2701 = !DICompositeType(tag: DW_TAG_variant_part, scope: !2699, file: !2, align: 8, elements: !2702, templateParams: !23, identifier: "ee96b3571f6b8cfe8aa1eda5572d0a8")
!2702 = !{!2703, !2708}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !2701, file: !2, baseType: !2704, align: 8)
!2704 = !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !2699, file: !2, align: 8, flags: DIFlagPublic, elements: !2705, templateParams: !2707, identifier: "9fdf642612391f688ac9d78b9400573e")
!2705 = !{!2706}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !2704, file: !2, baseType: !2115, align: 8, flags: DIFlagPublic)
!2707 = !{!2120, !2670}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !2701, file: !2, baseType: !2709, align: 8)
!2709 = !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !2699, file: !2, align: 8, flags: DIFlagPublic, elements: !2710, templateParams: !2707, identifier: "d11bdfeb04f0bce756752cdba9597bba")
!2710 = !{!2711}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !2709, file: !2, baseType: !2671, align: 8, flags: DIFlagPublic)
!2712 = !DILocalVariable(name: "val", scope: !2713, file: !2650, line: 211, type: !218, align: 64)
!2713 = distinct !DILexicalBlock(scope: !2693, file: !2650, line: 211, column: 66)
!2714 = !DILocation(line: 205, column: 27, scope: !2649)
!2715 = !DILocalVariable(name: "layout", arg: 1, scope: !2716, file: !2650, line: 192, type: !2678)
!2716 = distinct !DISubprogram(name: "alloc_zeroed", linkageName: "_RNvNtCs6i54tJFfzR_5alloc5alloc12alloc_zeroedCscBbfQkuq0VR_6expand", scope: !237, file: !2650, line: 192, type: !2717, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !2719)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!2694, !2678}
!2719 = !{!2715}
!2720 = !DILocation(line: 192, column: 28, scope: !2716, inlinedAt: !2721)
!2721 = !DILocation(line: 210, column: 43, scope: !2691)
!2722 = !DILocalVariable(name: "layout", arg: 1, scope: !2723, file: !2650, line: 95, type: !2678)
!2723 = distinct !DISubprogram(name: "alloc", linkageName: "_RNvNtCs6i54tJFfzR_5alloc5alloc5allocCscBbfQkuq0VR_6expand", scope: !237, file: !2650, line: 95, type: !2717, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !2724)
!2724 = !{!2722}
!2725 = !DILocation(line: 95, column: 21, scope: !2723, inlinedAt: !2726)
!2726 = !DILocation(line: 210, column: 73, scope: !2691)
!2727 = !DILocation(line: 205, column: 43, scope: !2649)
!2728 = !DILocation(line: 210, column: 21, scope: !2693)
!2729 = !DILocalVariable(name: "ptr", arg: 1, scope: !2730, file: !970, line: 266, type: !2694)
!2730 = distinct !DISubprogram(name: "new<u8>", linkageName: "_RNvMs1_NtNtCsgxBkk5gSRhY_4core3ptr8non_nullINtB5_7NonNullhE3newCs8meAXs9AlSn_13fluent_bundle", scope: !218, file: !970, line: 266, type: !2731, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !224, declaration: !2746, retainedNodes: !2747)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!2733, !2694}
!2733 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<core::ptr::non_null::NonNull<u8>>", scope: !304, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !2734, templateParams: !23, identifier: "46530ea18256fc8060630940ba7f45a7")
!2734 = !{!2735}
!2735 = !DICompositeType(tag: DW_TAG_variant_part, scope: !2733, file: !2, size: 64, align: 64, elements: !2736, templateParams: !23, identifier: "5f439cbc121190644351b89e4e619815", discriminator: !2745)
!2736 = !{!2737, !2741}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !2735, file: !2, baseType: !2738, size: 64, align: 64, extraData: i64 0)
!2738 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !2733, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !23, templateParams: !2739, identifier: "5008a09e362b2c42ab82f675a1e549f3")
!2739 = !{!2740}
!2740 = !DITemplateTypeParameter(name: "T", type: !218)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !2735, file: !2, baseType: !2742, size: 64, align: 64)
!2742 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !2733, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !2743, templateParams: !2739, identifier: "90bda5e573c306fcaec77bcad30b7277")
!2743 = !{!2744}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !2742, file: !2, baseType: !218, size: 64, align: 64, flags: DIFlagPublic)
!2745 = !DIDerivedType(tag: DW_TAG_member, scope: !2733, file: !2, baseType: !261, size: 64, align: 64, flags: DIFlagArtificial)
!2746 = !DISubprogram(name: "new<u8>", linkageName: "_RNvMs1_NtNtCsgxBkk5gSRhY_4core3ptr8non_nullINtB5_7NonNullhE3newCs8meAXs9AlSn_13fluent_bundle", scope: !218, file: !970, line: 266, type: !2731, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !224)
!2747 = !{!2729}
!2748 = !DILocation(line: 266, column: 22, scope: !2730, inlinedAt: !2749)
!2749 = !DILocation(line: 211, column: 27, scope: !2693)
!2750 = !DILocalVariable(name: "self", arg: 1, scope: !2751, file: !2228, line: 22, type: !2694)
!2751 = distinct !DISubprogram(name: "is_null<u8>", linkageName: "_RNvMNtNtCsgxBkk5gSRhY_4core3ptr7mut_ptrOh7is_nullCscBbfQkuq0VR_6expand", scope: !2229, file: !2228, line: 22, type: !2752, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !224, retainedNodes: !2754)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!1349, !2694}
!2754 = !{!2750}
!2755 = !DILocation(line: 22, column: 26, scope: !2751, inlinedAt: !2756)
!2756 = !DILocation(line: 267, column: 17, scope: !2730, inlinedAt: !2749)
!2757 = !DILocalVariable(name: "ptr", arg: 1, scope: !2758, file: !970, line: 230, type: !2694)
!2758 = distinct !DISubprogram(name: "new_unchecked<u8>", linkageName: "_RNvMs1_NtNtCsgxBkk5gSRhY_4core3ptr8non_nullINtB5_7NonNullhE13new_uncheckedCscBbfQkuq0VR_6expand", scope: !218, file: !970, line: 230, type: !2759, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !224, declaration: !2761, retainedNodes: !2762)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!218, !2694, !912}
!2761 = !DISubprogram(name: "new_unchecked<u8>", linkageName: "_RNvMs1_NtNtCsgxBkk5gSRhY_4core3ptr8non_nullINtB5_7NonNullhE13new_uncheckedCscBbfQkuq0VR_6expand", scope: !218, file: !970, line: 230, type: !2759, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !224)
!2762 = !{!2757}
!2763 = !DILocation(line: 230, column: 39, scope: !2758, inlinedAt: !2764)
!2764 = !DILocation(line: 269, column: 27, scope: !2730, inlinedAt: !2749)
!2765 = !DILocalVariable(name: "self", arg: 1, scope: !2766, file: !768, line: 2175, type: !2787)
!2766 = distinct !DISubprogram(name: "branch<core::ptr::non_null::NonNull<u8>, core::alloc::AllocError>", linkageName: "_RNvXsp_NtCsgxBkk5gSRhY_4core6resultINtB5_6ResultINtNtNtB7_3ptr8non_null7NonNullhENtNtB7_5alloc10AllocErrorENtNtNtB7_3ops9try_trait3Try6branchCscBbfQkuq0VR_6expand", scope: !2767, file: !768, line: 2175, type: !2768, scopeLine: 2175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !2795, retainedNodes: !2801)
!2767 = !DINamespace(name: "{impl#27}", scope: !596)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!2770, !2787}
!2770 = !DICompositeType(tag: DW_TAG_structure_type, name: "ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<u8>>", scope: !2771, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !2772, templateParams: !23, identifier: "b37d982d9d397442315f9fd3cdba44db")
!2771 = !DINamespace(name: "control_flow", scope: !289)
!2772 = !{!2773}
!2773 = !DICompositeType(tag: DW_TAG_variant_part, scope: !2770, file: !2, size: 64, align: 64, elements: !2774, templateParams: !23, identifier: "4d9a652f3b3b5424bf9e5f599b5da5bf", discriminator: !2786)
!2774 = !{!2775, !2782}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "Continue", scope: !2773, file: !2, baseType: !2776, size: 64, align: 64)
!2776 = !DICompositeType(tag: DW_TAG_structure_type, name: "Continue", scope: !2770, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !2777, templateParams: !2779, identifier: "64057964ca3dd340ce0cdf2780500858")
!2777 = !{!2778}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !2776, file: !2, baseType: !218, size: 64, align: 64, flags: DIFlagPublic)
!2779 = !{!2780, !2781}
!2780 = !DITemplateTypeParameter(name: "B", type: !2699)
!2781 = !DITemplateTypeParameter(name: "C", type: !218)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "Break", scope: !2773, file: !2, baseType: !2783, size: 64, align: 64, extraData: i64 0)
!2783 = !DICompositeType(tag: DW_TAG_structure_type, name: "Break", scope: !2770, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !2784, templateParams: !2779, identifier: "31055886d2792b80e26b479d8ae4f3ab")
!2784 = !{!2785}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !2783, file: !2, baseType: !2699, align: 8, flags: DIFlagPublic)
!2786 = !DIDerivedType(tag: DW_TAG_member, scope: !2770, file: !2, baseType: !261, size: 64, align: 64, flags: DIFlagArtificial)
!2787 = !DICompositeType(tag: DW_TAG_structure_type, name: "Result<core::ptr::non_null::NonNull<u8>, core::alloc::AllocError>", scope: !596, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !2788, templateParams: !23, identifier: "5fbc6280460df880dff84a347031b868")
!2788 = !{!2789}
!2789 = !DICompositeType(tag: DW_TAG_variant_part, scope: !2787, file: !2, size: 64, align: 64, elements: !2790, templateParams: !23, identifier: "1dfe84d995e2c2ef515acf2537379eec", discriminator: !2800)
!2790 = !{!2791, !2796}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !2789, file: !2, baseType: !2792, size: 64, align: 64)
!2792 = !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !2787, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !2793, templateParams: !2795, identifier: "1e9525ba3598de512d0ba34fb7e64768")
!2793 = !{!2794}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !2792, file: !2, baseType: !218, size: 64, align: 64, flags: DIFlagPublic)
!2795 = !{!2740, !2670}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !2789, file: !2, baseType: !2797, size: 64, align: 64, extraData: i64 0)
!2797 = !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !2787, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !2798, templateParams: !2795, identifier: "17502e883c44f6c52d2a3863e1ac4b67")
!2798 = !{!2799}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !2797, file: !2, baseType: !2671, align: 8, flags: DIFlagPublic)
!2800 = !DIDerivedType(tag: DW_TAG_member, scope: !2787, file: !2, baseType: !261, size: 64, align: 64, flags: DIFlagArtificial)
!2801 = !{!2765, !2802, !2804}
!2802 = !DILocalVariable(name: "v", scope: !2803, file: !768, line: 2177, type: !218, align: 64)
!2803 = distinct !DILexicalBlock(scope: !2766, file: !768, line: 2177, column: 13)
!2804 = !DILocalVariable(name: "e", scope: !2805, file: !768, line: 2178, type: !2671, align: 8)
!2805 = distinct !DILexicalBlock(scope: !2766, file: !768, line: 2178, column: 13)
!2806 = !DILocation(line: 2175, column: 15, scope: !2766, inlinedAt: !2807)
!2807 = !DILocation(line: 211, column: 27, scope: !2808)
!2808 = !DILexicalBlockFile(scope: !2693, file: !2650, discriminator: 2)
!2809 = !DILocalVariable(name: "self", arg: 1, scope: !2810, file: !2811, line: 1333, type: !2733)
!2810 = distinct !DISubprogram(name: "ok_or<core::ptr::non_null::NonNull<u8>, core::alloc::AllocError>", linkageName: "_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtNtB5_3ptr8non_null7NonNullhEE5ok_orNtNtB5_5alloc10AllocErrorECscBbfQkuq0VR_6expand", scope: !2733, file: !2811, line: 1333, type: !2812, scopeLine: 1333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !2795, declaration: !2814, retainedNodes: !2815)
!2811 = !DIFile(filename: "library/core/src/option.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "449cc8c84fe08ecd2cb99614118648ca")
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!2787, !2733, !2671}
!2814 = !DISubprogram(name: "ok_or<core::ptr::non_null::NonNull<u8>, core::alloc::AllocError>", linkageName: "_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtNtB5_3ptr8non_null7NonNullhEE5ok_orNtNtB5_5alloc10AllocErrorECscBbfQkuq0VR_6expand", scope: !2733, file: !2811, line: 1333, type: !2812, scopeLine: 1333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !2795)
!2815 = !{!2809, !2816, !2817}
!2816 = !DILocalVariable(name: "err", scope: !2810, file: !2811, line: 1333, type: !2671, align: 8)
!2817 = !DILocalVariable(name: "v", scope: !2818, file: !2811, line: 1335, type: !218, align: 64)
!2818 = distinct !DILexicalBlock(scope: !2810, file: !2811, line: 1335, column: 13)
!2819 = !DILocation(line: 1333, column: 45, scope: !2810, inlinedAt: !2820)
!2820 = !DILocation(line: 211, column: 49, scope: !2693)
!2821 = !DILocation(line: 211, column: 66, scope: !2698)
!2822 = !DILocation(line: 1338, column: 35, scope: !2823, inlinedAt: !2831)
!2823 = distinct !DISubprogram(name: "cast_slice<u8>", linkageName: "_RNvMs2_NtNtCsgxBkk5gSRhY_4core3ptr8non_nullINtB5_7NonNullhE10cast_sliceCscBbfQkuq0VR_6expand", scope: !218, file: !970, line: 1338, type: !2824, scopeLine: 1338, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !224, declaration: !2826, retainedNodes: !2827)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!2661, !218, !9}
!2826 = !DISubprogram(name: "cast_slice<u8>", linkageName: "_RNvMs2_NtNtCsgxBkk5gSRhY_4core3ptr8non_nullINtB5_7NonNullhE10cast_sliceCscBbfQkuq0VR_6expand", scope: !218, file: !970, line: 1338, type: !2824, scopeLine: 1338, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !224)
!2827 = !{!2828, !2829, !2830}
!2828 = !DILocalVariable(name: "self", arg: 1, scope: !2823, file: !970, line: 1338, type: !218)
!2829 = !DILocalVariable(name: "len", scope: !2823, file: !970, line: 1338, type: !9, align: 64)
!2830 = !DILocalVariable(name: "len", arg: 2, scope: !2823, file: !970, line: 1338, type: !9)
!2831 = !DILocation(line: 207, column: 43, scope: !2649)
!2832 = !DILocation(line: 1381, column: 57, scope: !2833, inlinedAt: !2839)
!2833 = distinct !DISubprogram(name: "slice_from_raw_parts<u8>", linkageName: "_RNvMs4_NtNtCsgxBkk5gSRhY_4core3ptr8non_nullINtB5_7NonNullShE20slice_from_raw_partsCscBbfQkuq0VR_6expand", scope: !2661, file: !970, line: 1381, type: !2824, scopeLine: 1381, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !224, declaration: !2834, retainedNodes: !2835)
!2834 = !DISubprogram(name: "slice_from_raw_parts<u8>", linkageName: "_RNvMs4_NtNtCsgxBkk5gSRhY_4core3ptr8non_nullINtB5_7NonNullShE20slice_from_raw_partsCscBbfQkuq0VR_6expand", scope: !2661, file: !970, line: 1381, type: !2824, scopeLine: 1381, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !224)
!2835 = !{!2836, !2837, !2838}
!2836 = !DILocalVariable(name: "data", arg: 1, scope: !2833, file: !970, line: 1381, type: !218)
!2837 = !DILocalVariable(name: "len", scope: !2833, file: !970, line: 1381, type: !9, align: 64)
!2838 = !DILocalVariable(name: "len", arg: 2, scope: !2833, file: !970, line: 1381, type: !9)
!2839 = !DILocation(line: 1339, column: 9, scope: !2823, inlinedAt: !2831)
!2840 = !DILocation(line: 1682, column: 35, scope: !2841, inlinedAt: !2853)
!2841 = distinct !DISubprogram(name: "cast_slice<u8>", linkageName: "_RNvMs_NtNtCsgxBkk5gSRhY_4core3ptr7mut_ptrOh10cast_sliceCscBbfQkuq0VR_6expand", scope: !2842, file: !2228, line: 1682, type: !2843, scopeLine: 1682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !224, retainedNodes: !2849)
!2842 = !DINamespace(name: "{impl#1}", scope: !2230)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{!2845, !2694, !9}
!2845 = !DICompositeType(tag: DW_TAG_structure_type, name: "*mut [u8]", file: !2, size: 128, align: 64, elements: !2846, templateParams: !23, identifier: "20049ecbc58ea972513336b0f29f9791")
!2846 = !{!2847, !2848}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !2845, file: !2, baseType: !719, size: 64, align: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2845, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!2849 = !{!2850, !2851, !2852}
!2850 = !DILocalVariable(name: "self", arg: 1, scope: !2841, file: !2228, line: 1682, type: !2694)
!2851 = !DILocalVariable(name: "len", scope: !2841, file: !2228, line: 1682, type: !9, align: 64)
!2852 = !DILocalVariable(name: "len", arg: 2, scope: !2841, file: !2228, line: 1682, type: !9)
!2853 = !DILocation(line: 1383, column: 52, scope: !2833, inlinedAt: !2839)
!2854 = !DILocation(line: 1333, column: 51, scope: !2810, inlinedAt: !2820)
!2855 = !DILocation(line: 2178, column: 17, scope: !2805, inlinedAt: !2807)
!2856 = !DILocalVariable(name: "residual", scope: !2857, file: !768, line: 2190, type: !2699, align: 8)
!2857 = distinct !DISubprogram(name: "from_residual<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError, core::alloc::AllocError>", linkageName: "_RNvXsq_NtCsgxBkk5gSRhY_4core6resultINtB5_6ResultINtNtNtB7_3ptr8non_null7NonNullShENtNtB7_5alloc10AllocErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1i_EE13from_residualCscBbfQkuq0VR_6expand", scope: !2858, file: !768, line: 2190, type: !2859, scopeLine: 2190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !2864, retainedNodes: !2861)
!2858 = !DINamespace(name: "{impl#28}", scope: !596)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!2653, !2699, !912}
!2861 = !{!2856, !2862}
!2862 = !DILocalVariable(name: "e", scope: !2863, file: !768, line: 2192, type: !2671, align: 8)
!2863 = distinct !DILexicalBlock(scope: !2857, file: !768, line: 2192, column: 13)
!2864 = !{!2669, !2670, !2865}
!2865 = !DITemplateTypeParameter(name: "F", type: !2671)
!2866 = !DILocation(line: 2190, column: 22, scope: !2857, inlinedAt: !2867)
!2867 = !DILocation(line: 211, column: 27, scope: !2868)
!2868 = !DILexicalBlockFile(scope: !2698, file: !2650, discriminator: 4)
!2869 = !DILocation(line: 2192, column: 17, scope: !2863, inlinedAt: !2867)
!2870 = !DILocalVariable(name: "t", scope: !2871, file: !2872, line: 790, type: !2671, align: 8)
!2871 = distinct !DISubprogram(name: "from<core::alloc::AllocError>", linkageName: "_RNvXs2_NtCsgxBkk5gSRhY_4core7convertNtNtB7_5alloc10AllocErrorINtB5_4FromBy_E4fromCscBbfQkuq0VR_6expand", scope: !2873, file: !2872, line: 790, type: !2874, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !2877, retainedNodes: !2876)
!2872 = !DIFile(filename: "library/core/src/convert/mod.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "36ae519c88055cfff26b55442fab5b51")
!2873 = !DINamespace(name: "{impl#4}", scope: !2116)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{null, !2671}
!2876 = !{!2870}
!2877 = !{!2878}
!2878 = !DITemplateTypeParameter(name: "T", type: !2671)
!2879 = !DILocation(line: 790, column: 13, scope: !2871, inlinedAt: !2880)
!2880 = !DILocation(line: 2192, column: 27, scope: !2863, inlinedAt: !2867)
!2881 = !DILocalVariable(name: "self", arg: 1, scope: !2882, file: !2883, line: 175, type: !2886)
!2882 = distinct !DISubprogram(name: "size", linkageName: "_RNvMNtNtCsgxBkk5gSRhY_4core5alloc6layoutNtB2_6Layout4sizeCscBbfQkuq0VR_6expand", scope: !2678, file: !2883, line: 175, type: !2884, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, declaration: !2887, retainedNodes: !2888)
!2883 = !DIFile(filename: "library/core/src/alloc/layout.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "e9b0fa2b5eccd748fb6b1e11a9156468")
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!9, !2886}
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::alloc::layout::Layout", baseType: !2678, size: 64, align: 64, dwarfAddressSpace: 0)
!2887 = !DISubprogram(name: "size", linkageName: "_RNvMNtNtCsgxBkk5gSRhY_4core5alloc6layoutNtB2_6Layout4sizeCscBbfQkuq0VR_6expand", scope: !2678, file: !2883, line: 175, type: !2884, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !23)
!2888 = !{!2881}
!2889 = !DILocation(line: 175, column: 23, scope: !2882, inlinedAt: !2890)
!2890 = !DILocation(line: 206, column: 22, scope: !2649)
!2891 = !DILocation(line: 176, column: 9, scope: !2882, inlinedAt: !2890)
!2892 = !DILocation(line: 209, column: 13, scope: !2691)
!2893 = !DILocation(line: 1338, column: 35, scope: !2823, inlinedAt: !2894)
!2894 = !DILocation(line: 212, column: 24, scope: !2696)
!2895 = !DILocation(line: 1381, column: 57, scope: !2833, inlinedAt: !2896)
!2896 = !DILocation(line: 1339, column: 9, scope: !2897, inlinedAt: !2894)
!2897 = !DILexicalBlockFile(scope: !2823, file: !970, discriminator: 2)
!2898 = !DILocation(line: 1682, column: 35, scope: !2841, inlinedAt: !2899)
!2899 = !DILocation(line: 1383, column: 52, scope: !2900, inlinedAt: !2896)
!2900 = !DILexicalBlockFile(scope: !2833, file: !970, discriminator: 2)
!2901 = !DILocation(line: 206, column: 9, scope: !2649)
!2902 = !DILocalVariable(name: "self", arg: 1, scope: !2903, file: !2883, line: 270, type: !2886)
!2903 = distinct !DISubprogram(name: "dangling_ptr", linkageName: "_RNvMNtNtCsgxBkk5gSRhY_4core5alloc6layoutNtB2_6Layout12dangling_ptrCscBbfQkuq0VR_6expand", scope: !2678, file: !2883, line: 270, type: !2904, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, declaration: !2906, retainedNodes: !2907)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!218, !2886}
!2906 = !DISubprogram(name: "dangling_ptr", linkageName: "_RNvMNtNtCsgxBkk5gSRhY_4core5alloc6layoutNtB2_6Layout12dangling_ptrCscBbfQkuq0VR_6expand", scope: !2678, file: !2883, line: 270, type: !2904, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !23)
!2907 = !{!2902}
!2908 = !DILocation(line: 270, column: 31, scope: !2903, inlinedAt: !2909)
!2909 = !DILocation(line: 207, column: 28, scope: !2649)
!2910 = !DILocation(line: 100, column: 18, scope: !2911, inlinedAt: !2922)
!2911 = distinct !DISubprogram(name: "without_provenance<u8>", linkageName: "_RNvMs0_NtNtCsgxBkk5gSRhY_4core3ptr8non_nullINtB5_7NonNullhE18without_provenanceCscBbfQkuq0VR_6expand", scope: !218, file: !970, line: 98, type: !2912, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !224, declaration: !2921)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!218, !2914}
!2914 = !DICompositeType(tag: DW_TAG_structure_type, name: "NonZero<usize>", scope: !2915, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !2916, templateParams: !1108, identifier: "32e335ec5940778d30f85888a76f916a")
!2915 = !DINamespace(name: "nonzero", scope: !232)
!2916 = !{!2917}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !2914, file: !2, baseType: !2918, size: 64, align: 64, flags: DIFlagPrivate)
!2918 = !DICompositeType(tag: DW_TAG_structure_type, name: "NonZeroUsizeInner", scope: !231, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !2919, templateParams: !23, identifier: "91ae5158755adde7dcd350dcec5082d4")
!2919 = !{!2920}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !2918, file: !2, baseType: !9, size: 64, align: 64, flags: DIFlagPrivate)
!2921 = !DISubprogram(name: "without_provenance<u8>", linkageName: "_RNvMs0_NtNtCsgxBkk5gSRhY_4core3ptr8non_nullINtB5_7NonNullhE18without_provenanceCscBbfQkuq0VR_6expand", scope: !218, file: !970, line: 98, type: !2912, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !224)
!2922 = !DILocation(line: 271, column: 9, scope: !2903, inlinedAt: !2909)
!2923 = !DILocation(line: 1338, column: 29, scope: !2823, inlinedAt: !2831)
!2924 = !DILocation(line: 1381, column: 39, scope: !2833, inlinedAt: !2839)
!2925 = !DILocalVariable(name: "self", arg: 1, scope: !2926, file: !970, line: 398, type: !218)
!2926 = distinct !DISubprogram(name: "as_ptr<u8>", linkageName: "_RNvMs1_NtNtCsgxBkk5gSRhY_4core3ptr8non_nullINtB5_7NonNullhE6as_ptrCscBbfQkuq0VR_6expand", scope: !218, file: !970, line: 398, type: !2927, scopeLine: 398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !224, declaration: !2929, retainedNodes: !2930)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!2694, !218}
!2929 = !DISubprogram(name: "as_ptr<u8>", linkageName: "_RNvMs1_NtNtCsgxBkk5gSRhY_4core3ptr8non_nullINtB5_7NonNullhE6as_ptrCscBbfQkuq0VR_6expand", scope: !218, file: !970, line: 398, type: !2927, scopeLine: 398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !224)
!2930 = !{!2925}
!2931 = !DILocation(line: 398, column: 25, scope: !2926, inlinedAt: !2932)
!2932 = !DILocation(line: 1383, column: 43, scope: !2833, inlinedAt: !2839)
!2933 = !DILocation(line: 404, column: 18, scope: !2926, inlinedAt: !2932)
!2934 = !DILocation(line: 1682, column: 29, scope: !2841, inlinedAt: !2853)
!2935 = !DILocation(line: 133, column: 5, scope: !2936, inlinedAt: !2941)
!2936 = distinct !DISubprogram(name: "from_raw_parts_mut<[u8], u8>", linkageName: "_RINvNtNtCsgxBkk5gSRhY_4core3ptr8metadata18from_raw_parts_mutShhECscBbfQkuq0VR_6expand", scope: !2938, file: !2937, line: 129, type: !2843, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !2939)
!2937 = !DIFile(filename: "library/core/src/ptr/metadata.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "c85ba1a096992da0f69a2c5ff0eac593")
!2938 = !DINamespace(name: "metadata", scope: !214)
!2939 = !{!926, !2940}
!2940 = !DITemplateTypeParameter(name: "impl Thin", type: !223)
!2941 = !DILocation(line: 1236, column: 5, scope: !2942, inlinedAt: !2943)
!2942 = distinct !DISubprogram(name: "slice_from_raw_parts_mut<u8>", linkageName: "_RINvNtCsgxBkk5gSRhY_4core3ptr24slice_from_raw_parts_muthECscBbfQkuq0VR_6expand", scope: !214, file: !1271, line: 1235, type: !2843, scopeLine: 1235, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !224)
!2943 = !DILocation(line: 1683, column: 9, scope: !2841, inlinedAt: !2853)
!2944 = !DILocalVariable(name: "ptr", arg: 1, scope: !2945, file: !970, line: 230, type: !2845)
!2945 = distinct !DISubprogram(name: "new_unchecked<[u8]>", linkageName: "_RNvMs1_NtNtCsgxBkk5gSRhY_4core3ptr8non_nullINtB5_7NonNullShE13new_uncheckedCscBbfQkuq0VR_6expand", scope: !2661, file: !970, line: 230, type: !2946, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !925, declaration: !2948, retainedNodes: !2949)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{!2661, !2845, !912}
!2948 = !DISubprogram(name: "new_unchecked<[u8]>", linkageName: "_RNvMs1_NtNtCsgxBkk5gSRhY_4core3ptr8non_nullINtB5_7NonNullShE13new_uncheckedCscBbfQkuq0VR_6expand", scope: !2661, file: !970, line: 230, type: !2946, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !925)
!2949 = !{!2944}
!2950 = !DILocation(line: 230, column: 39, scope: !2945, inlinedAt: !2951)
!2951 = !DILocation(line: 1383, column: 18, scope: !2833, inlinedAt: !2839)
!2952 = !DILocation(line: 77, column: 35, scope: !2953, inlinedAt: !2951)
!2953 = !DILexicalBlockFile(scope: !2945, file: !2289, discriminator: 0)
!2954 = !DILocation(line: 210, column: 34, scope: !2691)
!2955 = !DILocation(line: 236, column: 33, scope: !2945, inlinedAt: !2951)
!2956 = !DILocation(line: 78, column: 17, scope: !2953, inlinedAt: !2951)
!2957 = !DILocation(line: 77, column: 13, scope: !2953, inlinedAt: !2951)
!2958 = !DILocation(line: 207, column: 18, scope: !2649)
!2959 = !DILocation(line: 207, column: 56, scope: !2649)
!2960 = !DILocation(line: 215, column: 6, scope: !2649)
!2961 = !DILocation(line: 99, column: 9, scope: !2723, inlinedAt: !2726)
!2962 = !DILocation(line: 175, column: 23, scope: !2882, inlinedAt: !2963)
!2963 = !DILocation(line: 101, column: 29, scope: !2723, inlinedAt: !2726)
!2964 = !DILocalVariable(name: "self", arg: 1, scope: !2965, file: !2883, line: 197, type: !2886)
!2965 = distinct !DISubprogram(name: "alignment", linkageName: "_RNvMNtNtCsgxBkk5gSRhY_4core5alloc6layoutNtB2_6Layout9alignmentCscBbfQkuq0VR_6expand", scope: !2678, file: !2883, line: 197, type: !2966, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, declaration: !2968, retainedNodes: !2969)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!2683, !2886}
!2968 = !DISubprogram(name: "alignment", linkageName: "_RNvMNtNtCsgxBkk5gSRhY_4core5alloc6layoutNtB2_6Layout9alignmentCscBbfQkuq0VR_6expand", scope: !2678, file: !2883, line: 197, type: !2966, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !23)
!2969 = !{!2964}
!2970 = !DILocation(line: 197, column: 28, scope: !2965, inlinedAt: !2971)
!2971 = !DILocation(line: 101, column: 44, scope: !2723, inlinedAt: !2726)
!2972 = !DILocation(line: 101, column: 9, scope: !2723, inlinedAt: !2726)
!2973 = !DILocation(line: 210, column: 31, scope: !2691)
!2974 = !DILocation(line: 196, column: 9, scope: !2716, inlinedAt: !2721)
!2975 = !DILocation(line: 175, column: 23, scope: !2882, inlinedAt: !2976)
!2976 = !DILocation(line: 198, column: 36, scope: !2716, inlinedAt: !2721)
!2977 = !DILocation(line: 197, column: 28, scope: !2965, inlinedAt: !2978)
!2978 = !DILocation(line: 198, column: 51, scope: !2716, inlinedAt: !2721)
!2979 = !DILocation(line: 198, column: 9, scope: !2716, inlinedAt: !2721)
!2980 = !DILocation(line: 159, column: 18, scope: !2981, inlinedAt: !2984)
!2981 = distinct !DISubprogram(name: "addr<u8>", linkageName: "_RNvMNtNtCsgxBkk5gSRhY_4core3ptr9const_ptrPh4addrCscBbfQkuq0VR_6expand", scope: !2218, file: !2216, line: 153, type: !2982, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !224)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!9, !222}
!2984 = !DILocation(line: 38, column: 21, scope: !2985, inlinedAt: !2991)
!2985 = !DILexicalBlockFile(scope: !2986, file: !2216, discriminator: 0)
!2986 = distinct !DISubprogram(name: "runtime", linkageName: "_RNvNvMNtNtCsgxBkk5gSRhY_4core3ptr9const_ptrPp7is_null7runtimeCscBbfQkuq0VR_6expand", scope: !2988, file: !2987, line: 2445, type: !2989, scopeLine: 2445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23)
!2987 = !DIFile(filename: "library/core/src/intrinsics/mod.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "4e82dfee9e66af24bdaba3dd46fe5959")
!2988 = !DINamespace(name: "is_null", scope: !2218)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!1349, !222}
!2991 = !DILocation(line: 2458, column: 9, scope: !2992, inlinedAt: !2995)
!2992 = !DILexicalBlockFile(scope: !2993, file: !2987, discriminator: 2)
!2993 = !DILexicalBlockFile(scope: !2994, file: !2987, discriminator: 0)
!2994 = distinct !DISubprogram(name: "is_null<u8>", linkageName: "_RNvMNtNtCsgxBkk5gSRhY_4core3ptr9const_ptrPh7is_nullCscBbfQkuq0VR_6expand", scope: !2218, file: !2216, line: 22, type: !2989, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !224)
!2995 = !DILocation(line: 23, column: 27, scope: !2751, inlinedAt: !2756)
!2996 = !DILocation(line: 267, column: 13, scope: !2730, inlinedAt: !2749)
!2997 = !DILocation(line: 271, column: 13, scope: !2730, inlinedAt: !2749)
!2998 = !DILocation(line: 1336, column: 21, scope: !2810, inlinedAt: !2820)
!2999 = !DILocation(line: 2192, column: 23, scope: !2863, inlinedAt: !2867)
!3000 = !DILocation(line: 77, column: 35, scope: !3001, inlinedAt: !2764)
!3001 = !DILexicalBlockFile(scope: !2758, file: !2289, discriminator: 0)
!3002 = !DILocation(line: 236, column: 33, scope: !2758, inlinedAt: !2764)
!3003 = !DILocation(line: 78, column: 17, scope: !3001, inlinedAt: !2764)
!3004 = !DILocation(line: 77, column: 13, scope: !3001, inlinedAt: !2764)
!3005 = !DILocation(line: 238, column: 13, scope: !2758, inlinedAt: !2764)
!3006 = !DILocation(line: 269, column: 13, scope: !2730, inlinedAt: !2749)
!3007 = !DILocation(line: 1335, column: 18, scope: !2810, inlinedAt: !2820)
!3008 = !DILocation(line: 1335, column: 18, scope: !2818, inlinedAt: !2820)
!3009 = !DILocation(line: 1335, column: 24, scope: !2818, inlinedAt: !2820)
!3010 = !DILocation(line: 2177, column: 16, scope: !2766, inlinedAt: !2807)
!3011 = !DILocation(line: 2177, column: 16, scope: !2803, inlinedAt: !2807)
!3012 = !DILocation(line: 2177, column: 22, scope: !2803, inlinedAt: !2807)
!3013 = !DILocation(line: 211, column: 21, scope: !2696)
!3014 = !DILocation(line: 211, column: 27, scope: !2713)
!3015 = !DILocation(line: 1338, column: 29, scope: !2823, inlinedAt: !2894)
!3016 = !DILocation(line: 1381, column: 39, scope: !2833, inlinedAt: !2896)
!3017 = !DILocation(line: 398, column: 25, scope: !2926, inlinedAt: !3018)
!3018 = !DILocation(line: 1383, column: 43, scope: !2900, inlinedAt: !2896)
!3019 = !DILocation(line: 404, column: 18, scope: !2926, inlinedAt: !3018)
!3020 = !DILocation(line: 1682, column: 29, scope: !2841, inlinedAt: !2899)
!3021 = !DILocation(line: 133, column: 5, scope: !2936, inlinedAt: !3022)
!3022 = !DILocation(line: 1236, column: 5, scope: !3023, inlinedAt: !3024)
!3023 = !DILexicalBlockFile(scope: !2942, file: !1271, discriminator: 2)
!3024 = !DILocation(line: 1683, column: 9, scope: !3025, inlinedAt: !2899)
!3025 = !DILexicalBlockFile(scope: !2841, file: !2228, discriminator: 2)
!3026 = !DILocation(line: 230, column: 39, scope: !2945, inlinedAt: !3027)
!3027 = !DILocation(line: 1383, column: 18, scope: !2900, inlinedAt: !2896)
!3028 = !DILocation(line: 77, column: 35, scope: !2953, inlinedAt: !3027)
!3029 = !DILocation(line: 78, column: 17, scope: !2953, inlinedAt: !3027)
!3030 = !DILocation(line: 77, column: 13, scope: !2953, inlinedAt: !3027)
!3031 = !DILocation(line: 212, column: 17, scope: !2696)
!3032 = !DILocation(line: 213, column: 13, scope: !2649)
!3033 = distinct !DISubprogram(name: "expect<(), nix::errno::consts::Errno>", linkageName: "_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtNtCsbRzQFPXpg46_3nix5errno6consts5ErrnoE6expectCscBbfQkuq0VR_6expand", scope: !3034, file: !768, line: 1177, type: !3049, scopeLine: 1177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !3042, declaration: !3051, retainedNodes: !3052)
!3034 = !DICompositeType(tag: DW_TAG_structure_type, name: "Result<(), nix::errno::consts::Errno>", scope: !596, file: !2, size: 32, align: 32, flags: DIFlagPublic, elements: !3035, templateParams: !23, identifier: "c489f65429d520c299447837e687cb9f")
!3035 = !{!3036}
!3036 = !DICompositeType(tag: DW_TAG_variant_part, scope: !3034, file: !2, size: 32, align: 32, elements: !3037, templateParams: !23, identifier: "d517af15206411c8547695d155f7406b", discriminator: !3048)
!3037 = !{!3038, !3044}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !3036, file: !2, baseType: !3039, size: 32, align: 32, extraData: i32 -1)
!3039 = !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !3034, file: !2, size: 32, align: 32, flags: DIFlagPublic, elements: !3040, templateParams: !3042, identifier: "eced6b05a08e14d82766a4f4c3f275e9")
!3040 = !{!3041}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !3039, file: !2, baseType: !7, align: 8, flags: DIFlagPublic)
!3042 = !{!605, !3043}
!3043 = !DITemplateTypeParameter(name: "E", type: !32)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !3036, file: !2, baseType: !3045, size: 32, align: 32)
!3045 = !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !3034, file: !2, size: 32, align: 32, flags: DIFlagPublic, elements: !3046, templateParams: !3042, identifier: "4f24b0cb2d062329be24d012d5451bb1")
!3046 = !{!3047}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !3045, file: !2, baseType: !32, size: 32, align: 32, flags: DIFlagPublic)
!3048 = !DIDerivedType(tag: DW_TAG_member, scope: !3034, file: !2, baseType: !391, size: 32, align: 32, flags: DIFlagArtificial)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{null, !3034, !716, !912}
!3051 = !DISubprogram(name: "expect<(), nix::errno::consts::Errno>", linkageName: "_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtNtCsbRzQFPXpg46_3nix5errno6consts5ErrnoE6expectCscBbfQkuq0VR_6expand", scope: !3034, file: !768, line: 1177, type: !3049, scopeLine: 1177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !3042)
!3052 = !{!3053, !3054, !3055, !3057}
!3053 = !DILocalVariable(name: "self", arg: 1, scope: !3033, file: !768, line: 1177, type: !3034)
!3054 = !DILocalVariable(name: "msg", arg: 2, scope: !3033, file: !768, line: 1177, type: !716)
!3055 = !DILocalVariable(name: "t", scope: !3056, file: !768, line: 1182, type: !7, align: 8)
!3056 = distinct !DILexicalBlock(scope: !3033, file: !768, line: 1182, column: 13)
!3057 = !DILocalVariable(name: "e", scope: !3058, file: !768, line: 1183, type: !32, align: 32)
!3058 = distinct !DILexicalBlock(scope: !3033, file: !768, line: 1183, column: 13)
!3059 = !DILocation(line: 1182, column: 16, scope: !3056)
!3060 = !DILocation(line: 1177, column: 19, scope: !3033)
!3061 = !DILocation(line: 1177, column: 25, scope: !3033)
!3062 = !DILocation(line: 1183, column: 17, scope: !3058)
!3063 = !DILocation(line: 1181, column: 15, scope: !3033)
!3064 = !DILocation(line: 1181, column: 9, scope: !3033)
!3065 = !DILocation(line: 1183, column: 17, scope: !3033)
!3066 = !DILocation(line: 1183, column: 23, scope: !3058)
!3067 = !DILocation(line: 1185, column: 6, scope: !3033)
!3068 = !DILocation(line: 1177, column: 5, scope: !3033)
!3069 = distinct !DISubprogram(name: "format", linkageName: "_RNvNtCs6i54tJFfzR_5alloc3fmt6formatCscBbfQkuq0VR_6expand", scope: !3071, file: !3070, line: 649, type: !3072, scopeLine: 649, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !3074)
!3070 = !DIFile(filename: "library/alloc/src/fmt.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "ff238ed6a2e10a790bec34161252a63b")
!3071 = !DINamespace(name: "fmt", scope: !198)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!196, !1011}
!3074 = !{!3075}
!3075 = !DILocalVariable(name: "args", arg: 1, scope: !3069, file: !3070, line: 649, type: !1011)
!3076 = !DILocation(line: 649, column: 15, scope: !3069)
!3077 = !DILocalVariable(name: "self", arg: 1, scope: !3078, file: !1010, line: 871, type: !3092)
!3078 = distinct !DISubprogram(name: "as_str", linkageName: "_RNvMs4_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Arguments6as_strCscBbfQkuq0VR_6expand", scope: !1011, file: !1010, line: 871, type: !3079, scopeLine: 871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, declaration: !3093, retainedNodes: !3094)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!3081, !3092}
!3081 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<&str>", scope: !304, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !3082, templateParams: !23, identifier: "9c7f54e1d2808423659e6d6ce6bc55dd")
!3082 = !{!3083}
!3083 = !DICompositeType(tag: DW_TAG_variant_part, scope: !3081, file: !2, size: 128, align: 64, elements: !3084, templateParams: !23, identifier: "316fd21783aef7a978252368c7b19ae3", discriminator: !3091)
!3084 = !{!3085, !3087}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !3083, file: !2, baseType: !3086, size: 128, align: 64, extraData: i64 0)
!3086 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !3081, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !23, templateParams: !934, identifier: "2a35234a6ab186e16a648b38051b5bd1")
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !3083, file: !2, baseType: !3088, size: 128, align: 64)
!3088 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !3081, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !3089, templateParams: !934, identifier: "3cba3bb9dcb0d74ccfd9a443e9002f3d")
!3089 = !{!3090}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !3088, file: !2, baseType: !716, size: 128, align: 64, flags: DIFlagPublic)
!3091 = !DIDerivedType(tag: DW_TAG_member, scope: !3081, file: !2, baseType: !261, size: 64, align: 64, flags: DIFlagArtificial)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::fmt::Arguments", baseType: !1011, size: 64, align: 64, dwarfAddressSpace: 0)
!3093 = !DISubprogram(name: "as_str", linkageName: "_RNvMs4_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Arguments6as_strCscBbfQkuq0VR_6expand", scope: !1011, file: !1010, line: 871, type: !3079, scopeLine: 871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !23)
!3094 = !{!3077, !3095}
!3095 = !DILocalVariable(name: "bits", scope: !3096, file: !1010, line: 877, type: !9, align: 64)
!3096 = distinct !DILexicalBlock(scope: !3078, file: !1010, line: 877, column: 9)
!3097 = !DILocation(line: 871, column: 25, scope: !3078, inlinedAt: !3098)
!3098 = !DILocation(line: 659, column: 10, scope: !3069)
!3099 = !DILocation(line: 877, column: 51, scope: !3078, inlinedAt: !3098)
!3100 = !DILocation(line: 877, column: 36, scope: !3078, inlinedAt: !3098)
!3101 = !DILocation(line: 877, column: 13, scope: !3096, inlinedAt: !3098)
!3102 = !DILocation(line: 878, column: 12, scope: !3096, inlinedAt: !3098)
!3103 = !DILocation(line: 882, column: 21, scope: !3096, inlinedAt: !3098)
!3104 = !DILocalVariable(name: "self", arg: 1, scope: !3105, file: !970, line: 398, type: !218)
!3105 = distinct !DISubprogram(name: "as_ptr<u8>", linkageName: "_RNvMs1_NtNtCsgxBkk5gSRhY_4core3ptr8non_nullINtB5_7NonNullhE6as_ptrCscBbfQkuq0VR_6expand", scope: !218, file: !970, line: 398, type: !2927, scopeLine: 398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !224, declaration: !2929, retainedNodes: !3106)
!3106 = !{!3104}
!3107 = !DILocation(line: 398, column: 25, scope: !3105, inlinedAt: !3108)
!3108 = !DILocation(line: 882, column: 35, scope: !3096, inlinedAt: !3098)
!3109 = !DILocalVariable(name: "data", arg: 1, scope: !3110, file: !3111, line: 124, type: !222)
!3110 = distinct !DISubprogram(name: "from_raw_parts<u8>", linkageName: "_RINvNtNtCsgxBkk5gSRhY_4core5slice3raw14from_raw_partshECs5bPnpBtHkbg_4libc", scope: !3112, file: !3111, line: 124, type: !3113, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !224, retainedNodes: !3115)
!3111 = !DIFile(filename: "library/core/src/slice/raw.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "1c257c0bb74a1862c3fb776eeea63ad9")
!3112 = !DINamespace(name: "raw", scope: !563)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!1200, !222, !9, !912}
!3115 = !{!3109, !3116}
!3116 = !DILocalVariable(name: "len", arg: 2, scope: !3110, file: !3111, line: 124, type: !9)
!3117 = !DILocation(line: 124, column: 43, scope: !3110, inlinedAt: !3118)
!3118 = !DILocation(line: 881, column: 42, scope: !3096, inlinedAt: !3098)
!3119 = !DILocalVariable(name: "data", arg: 1, scope: !3120, file: !1271, line: 1189, type: !222)
!3120 = distinct !DISubprogram(name: "slice_from_raw_parts<u8>", linkageName: "_RINvNtCsgxBkk5gSRhY_4core3ptr20slice_from_raw_partshECscBbfQkuq0VR_6expand", scope: !214, file: !1271, line: 1189, type: !3121, scopeLine: 1189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !224, retainedNodes: !3123)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!2664, !222, !9}
!3123 = !{!3119, !3124}
!3124 = !DILocalVariable(name: "len", arg: 2, scope: !3120, file: !1271, line: 1189, type: !9)
!3125 = !DILocation(line: 1189, column: 38, scope: !3120, inlinedAt: !3126)
!3126 = !DILocation(line: 139, column: 11, scope: !3110, inlinedAt: !3118)
!3127 = !DILocalVariable(name: "data_pointer", arg: 1, scope: !3128, file: !2937, line: 117, type: !222)
!3128 = distinct !DISubprogram(name: "from_raw_parts<[u8], u8>", linkageName: "_RINvNtNtCsgxBkk5gSRhY_4core3ptr8metadata14from_raw_partsShhECscBbfQkuq0VR_6expand", scope: !2938, file: !2937, line: 116, type: !3121, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !2939, retainedNodes: !3129)
!3129 = !{!3127}
!3130 = !DILocation(line: 117, column: 5, scope: !3128, inlinedAt: !3131)
!3131 = !DILocation(line: 1190, column: 5, scope: !3120, inlinedAt: !3126)
!3132 = !DILocation(line: 883, column: 21, scope: !3096, inlinedAt: !3098)
!3133 = !DILocation(line: 124, column: 59, scope: !3110, inlinedAt: !3118)
!3134 = !DILocation(line: 1189, column: 54, scope: !3120, inlinedAt: !3126)
!3135 = !DILocation(line: 77, column: 35, scope: !3136, inlinedAt: !3118)
!3136 = !DILexicalBlockFile(scope: !3110, file: !2289, discriminator: 0)
!3137 = !DILocation(line: 887, column: 13, scope: !3096, inlinedAt: !3098)
!3138 = !DILocation(line: 878, column: 9, scope: !3096, inlinedAt: !3098)
!3139 = !DILocation(line: 78, column: 17, scope: !3136, inlinedAt: !3118)
!3140 = !DILocation(line: 77, column: 13, scope: !3136, inlinedAt: !3118)
!3141 = !DILocation(line: 120, column: 5, scope: !3128, inlinedAt: !3131)
!3142 = !DILocalVariable(name: "v", arg: 1, scope: !3143, file: !3144, line: 178, type: !2664)
!3143 = distinct !DISubprogram(name: "from_utf8_unchecked", linkageName: "_RNvNtNtCsgxBkk5gSRhY_4core3str8converts19from_utf8_uncheckedCscBbfQkuq0VR_6expand", scope: !3145, file: !3144, line: 178, type: !3146, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !3148)
!3144 = !DIFile(filename: "library/core/src/str/converts.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "e9035c094c664ecc363abf0007689bcc")
!3145 = !DINamespace(name: "converts", scope: !1183)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!716, !1200}
!3148 = !{!3142}
!3149 = !DILocation(line: 178, column: 41, scope: !3143, inlinedAt: !3150)
!3150 = !DILocation(line: 881, column: 17, scope: !3096, inlinedAt: !3098)
!3151 = !DILocation(line: 880, column: 13, scope: !3096, inlinedAt: !3098)
!3152 = !DILocation(line: 659, column: 5, scope: !3069)
!3153 = !DILocation(line: 659, column: 19, scope: !3069)
!3154 = !DILocation(line: 660, column: 2, scope: !3069)
!3155 = distinct !DISubprogram(name: "box_new_uninit", linkageName: "_RNvNtCs6i54tJFfzR_5alloc5boxed14box_new_uninitCscBbfQkuq0VR_6expand", scope: !3157, file: !3156, line: 247, type: !2717, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !3158)
!3156 = !DIFile(filename: "library/alloc/src/boxed.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "5d444acb5eae77eac489ba4ad024db1b")
!3157 = !DINamespace(name: "boxed", scope: !198)
!3158 = !{!3159, !3160}
!3159 = !DILocalVariable(name: "layout", arg: 1, scope: !3155, file: !3156, line: 247, type: !2678)
!3160 = !DILocalVariable(name: "ptr", scope: !3161, file: !3156, line: 249, type: !2661, align: 64)
!3161 = distinct !DILexicalBlock(scope: !3155, file: !3156, line: 249, column: 9)
!3162 = !DILocation(line: 247, column: 19, scope: !3155)
!3163 = !DILocalVariable(name: "layout", arg: 2, scope: !3164, file: !2650, line: 448, type: !2678)
!3164 = distinct !DISubprogram(name: "allocate", linkageName: "_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator8allocateCscBbfQkuq0VR_6expand", scope: !3165, file: !2650, line: 448, type: !3166, scopeLine: 448, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !3169)
!3165 = !DINamespace(name: "{impl#1}", scope: !237)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!2653, !3168, !2678}
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&alloc::alloc::Global", baseType: !236, size: 64, align: 64, dwarfAddressSpace: 0)
!3169 = !{!3170, !3163}
!3170 = !DILocalVariable(name: "self", scope: !3164, file: !2650, line: 448, type: !3168, align: 64)
!3171 = !DILocation(line: 448, column: 24, scope: !3164, inlinedAt: !3172)
!3172 = !DILocation(line: 248, column: 18, scope: !3155)
!3173 = !DILocalVariable(name: "layout", arg: 2, scope: !3174, file: !2650, line: 331, type: !2678)
!3174 = distinct !DISubprogram(name: "alloc_impl", linkageName: "_RNvMNtCs6i54tJFfzR_5alloc5allocNtB2_6Global10alloc_implCscBbfQkuq0VR_6expand", scope: !236, file: !2650, line: 331, type: !3175, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, declaration: !3177, retainedNodes: !3178)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!2653, !3168, !2678, !1349}
!3177 = !DISubprogram(name: "alloc_impl", linkageName: "_RNvMNtCs6i54tJFfzR_5alloc5allocNtB2_6Global10alloc_implCscBbfQkuq0VR_6expand", scope: !236, file: !2650, line: 331, type: !3175, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !23)
!3178 = !{!3179, !3173, !3180}
!3179 = !DILocalVariable(name: "self", scope: !3174, file: !2650, line: 331, type: !3168, align: 64)
!3180 = !DILocalVariable(name: "zeroed", scope: !3174, file: !2650, line: 331, type: !1349, align: 8)
!3181 = !DILocation(line: 331, column: 32, scope: !3174, inlinedAt: !3182)
!3182 = !DILocation(line: 449, column: 14, scope: !3164, inlinedAt: !3172)
!3183 = !DILocation(line: 448, column: 17, scope: !3164, inlinedAt: !3172)
!3184 = !DILocation(line: 331, column: 25, scope: !3174, inlinedAt: !3182)
!3185 = !DILocation(line: 331, column: 48, scope: !3174, inlinedAt: !3182)
!3186 = !DILocation(line: 332, column: 9, scope: !3174, inlinedAt: !3182)
!3187 = !DILocation(line: 248, column: 11, scope: !3155)
!3188 = !DILocation(line: 248, column: 5, scope: !3155)
!3189 = !DILocation(line: 250, column: 19, scope: !3155)
!3190 = !DILocation(line: 249, column: 12, scope: !3155)
!3191 = !DILocation(line: 249, column: 12, scope: !3161)
!3192 = !DILocalVariable(name: "self", arg: 1, scope: !3193, file: !970, line: 1460, type: !2661)
!3193 = distinct !DISubprogram(name: "as_mut_ptr<u8>", linkageName: "_RNvMs4_NtNtCsgxBkk5gSRhY_4core3ptr8non_nullINtB5_7NonNullShE10as_mut_ptrCscBbfQkuq0VR_6expand", scope: !2661, file: !970, line: 1460, type: !3194, scopeLine: 1460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !224, declaration: !3196, retainedNodes: !3197)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!2694, !2661}
!3196 = !DISubprogram(name: "as_mut_ptr<u8>", linkageName: "_RNvMs4_NtNtCsgxBkk5gSRhY_4core3ptr8non_nullINtB5_7NonNullShE10as_mut_ptrCscBbfQkuq0VR_6expand", scope: !2661, file: !970, line: 1460, type: !3194, scopeLine: 1460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !224)
!3197 = !{!3192}
!3198 = !DILocation(line: 1460, column: 29, scope: !3193, inlinedAt: !3199)
!3199 = !DILocation(line: 249, column: 24, scope: !3161)
!3200 = !DILocation(line: 252, column: 2, scope: !3155)
!3201 = distinct !DISubprogram(name: "stderr", linkageName: "_RNvNtNtCs9k3SxhrAWiO_3std2io5stdio6stderrCscBbfQkuq0VR_6expand", scope: !3203, file: !3202, line: 966, type: !3205, scopeLine: 966, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23)
!3202 = !DIFile(filename: "library/std/src/io/stdio.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "65e8410dc5aa3d3ba361d96e08cd40ae")
!3203 = !DINamespace(name: "stdio", scope: !3204)
!3204 = !DINamespace(name: "io", scope: !17)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{!3207}
!3207 = !DICompositeType(tag: DW_TAG_structure_type, name: "Stderr", scope: !3203, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !3208, templateParams: !23, identifier: "4282cecb7ce9c8f7ec98c50e2147d0c1")
!3208 = !{!3209}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !3207, file: !2, baseType: !3210, size: 64, align: 64, flags: DIFlagPrivate)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&std::sync::reentrant_lock::ReentrantLock<core::cell::RefCell<std::io::stdio::StderrRaw>>", baseType: !3211, size: 64, align: 64, dwarfAddressSpace: 0)
!3211 = !DICompositeType(tag: DW_TAG_structure_type, name: "ReentrantLock<core::cell::RefCell<std::io::stdio::StderrRaw>>", scope: !3212, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !3214, templateParams: !3280, identifier: "8d22078984fa0e6e12e513e0ac4a8b3f")
!3212 = !DINamespace(name: "reentrant_lock", scope: !3213)
!3213 = !DINamespace(name: "sync", scope: !17)
!3214 = !{!3215, !3235, !3252, !3256}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3211, file: !2, baseType: !3216, size: 32, align: 32, offset: 64, flags: DIFlagPrivate)
!3216 = !DICompositeType(tag: DW_TAG_structure_type, name: "Mutex", scope: !3217, file: !2, size: 32, align: 32, flags: DIFlagPublic, elements: !3220, templateParams: !23, identifier: "770a110aa84a9501fe7d6bdad8b7a069")
!3217 = !DINamespace(name: "futex", scope: !3218)
!3218 = !DINamespace(name: "mutex", scope: !3219)
!3219 = !DINamespace(name: "sync", scope: !578)
!3220 = !{!3221}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3216, file: !2, baseType: !3222, size: 32, align: 32, flags: DIFlagPrivate)
!3222 = !DICompositeType(tag: DW_TAG_structure_type, name: "Atomic<u32>", scope: !1509, file: !2, size: 32, align: 32, flags: DIFlagPublic, elements: !3223, templateParams: !3231, identifier: "9fb0b2ab3a64185ea9984a78231b9f80")
!3223 = !{!3224}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !3222, file: !2, baseType: !3225, size: 32, align: 32, flags: DIFlagPrivate)
!3225 = !DICompositeType(tag: DW_TAG_structure_type, name: "UnsafeCell<core::sync::atomic::private::Align4<u32>>", scope: !1514, file: !2, size: 32, align: 32, flags: DIFlagPublic, elements: !3226, templateParams: !3233, identifier: "cd5bb0c46e9b465f55e1b621f8a446d1")
!3226 = !{!3227}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3225, file: !2, baseType: !3228, size: 32, align: 32, flags: DIFlagPrivate)
!3228 = !DICompositeType(tag: DW_TAG_structure_type, name: "Align4<u32>", scope: !1518, file: !2, size: 32, align: 32, flags: DIFlagPublic, elements: !3229, templateParams: !3231, identifier: "190a05f4c6c295e246e4832753b2e32")
!3229 = !{!3230}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !3228, file: !2, baseType: !391, size: 32, align: 32, flags: DIFlagPrivate)
!3231 = !{!3232}
!3232 = !DITemplateTypeParameter(name: "T", type: !391)
!3233 = !{!3234}
!3234 = !DITemplateTypeParameter(name: "T", type: !3228)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3211, file: !2, baseType: !3236, size: 64, align: 64, flags: DIFlagPrivate)
!3236 = !DICompositeType(tag: DW_TAG_structure_type, name: "Tid", scope: !3212, file: !2, size: 64, align: 64, flags: DIFlagPrivate, elements: !3237, templateParams: !23, identifier: "53b4530fb8a5061178bd4931d5b5b08f")
!3237 = !{!3238}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !3236, file: !2, baseType: !3239, size: 64, align: 64, flags: DIFlagPrivate)
!3239 = !DICompositeType(tag: DW_TAG_structure_type, name: "Atomic<u64>", scope: !1509, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !3240, templateParams: !3248, identifier: "722ffd79d662f4ee4c4bcd8e97d81f87")
!3240 = !{!3241}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !3239, file: !2, baseType: !3242, size: 64, align: 64, flags: DIFlagPrivate)
!3242 = !DICompositeType(tag: DW_TAG_structure_type, name: "UnsafeCell<core::sync::atomic::private::Align8<u64>>", scope: !1514, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !3243, templateParams: !3250, identifier: "1bfd5a1ec4581b417f412c8f6df29edd")
!3243 = !{!3244}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3242, file: !2, baseType: !3245, size: 64, align: 64, flags: DIFlagPrivate)
!3245 = !DICompositeType(tag: DW_TAG_structure_type, name: "Align8<u64>", scope: !1518, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !3246, templateParams: !3248, identifier: "6b9f49254d84f2701ec6966547bd2a0a")
!3246 = !{!3247}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !3245, file: !2, baseType: !261, size: 64, align: 64, flags: DIFlagPrivate)
!3248 = !{!3249}
!3249 = !DITemplateTypeParameter(name: "T", type: !261)
!3250 = !{!3251}
!3251 = !DITemplateTypeParameter(name: "T", type: !3245)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3211, file: !2, baseType: !3253, size: 32, align: 32, offset: 96, flags: DIFlagPrivate)
!3253 = !DICompositeType(tag: DW_TAG_structure_type, name: "UnsafeCell<u32>", scope: !1514, file: !2, size: 32, align: 32, flags: DIFlagPublic, elements: !3254, templateParams: !3231, identifier: "38c667150aa8cb633cb98e495528dd5f")
!3254 = !{!3255}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3253, file: !2, baseType: !391, size: 32, align: 32, flags: DIFlagPrivate)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3211, file: !2, baseType: !3257, size: 64, align: 64, offset: 128, flags: DIFlagPrivate)
!3257 = !DICompositeType(tag: DW_TAG_structure_type, name: "RefCell<std::io::stdio::StderrRaw>", scope: !1514, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !3258, templateParams: !3278, identifier: "33274d3c88e2368ec83c234184fbb1aa")
!3258 = !{!3259, !3268}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "borrow", scope: !3257, file: !2, baseType: !3260, size: 64, align: 64, flags: DIFlagPrivate)
!3260 = !DICompositeType(tag: DW_TAG_structure_type, name: "Cell<isize>", scope: !1514, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !3261, templateParams: !3266, identifier: "8dd025b8f7a8f2d7ed2991789f675776")
!3261 = !{!3262}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3260, file: !2, baseType: !3263, size: 64, align: 64, flags: DIFlagPrivate)
!3263 = !DICompositeType(tag: DW_TAG_structure_type, name: "UnsafeCell<isize>", scope: !1514, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !3264, templateParams: !3266, identifier: "c8eaf6b4692d57ffbee09cd35c514365")
!3264 = !{!3265}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3263, file: !2, baseType: !1256, size: 64, align: 64, flags: DIFlagPrivate)
!3266 = !{!3267}
!3267 = !DITemplateTypeParameter(name: "T", type: !1256)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3257, file: !2, baseType: !3269, align: 8, offset: 64, flags: DIFlagPrivate)
!3269 = !DICompositeType(tag: DW_TAG_structure_type, name: "UnsafeCell<std::io::stdio::StderrRaw>", scope: !1514, file: !2, align: 8, flags: DIFlagPublic, elements: !3270, templateParams: !3278, identifier: "af6fc5cca5943465961b54a990b635")
!3270 = !{!3271}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3269, file: !2, baseType: !3272, align: 8, flags: DIFlagPrivate)
!3272 = !DICompositeType(tag: DW_TAG_structure_type, name: "StderrRaw", scope: !3203, file: !2, align: 8, flags: DIFlagPrivate, elements: !3273, templateParams: !23, identifier: "99578e6a5ca9005293105cae28d40dcb")
!3273 = !{!3274}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !3272, file: !2, baseType: !3275, align: 8, flags: DIFlagPrivate)
!3275 = !DICompositeType(tag: DW_TAG_structure_type, name: "Stderr", scope: !3276, file: !2, align: 8, flags: DIFlagPublic, elements: !23, identifier: "36d899fd91a82642f404d4429bd45167")
!3276 = !DINamespace(name: "unix", scope: !3277)
!3277 = !DINamespace(name: "stdio", scope: !578)
!3278 = !{!3279}
!3279 = !DITemplateTypeParameter(name: "T", type: !3272)
!3280 = !{!3281}
!3281 = !DITemplateTypeParameter(name: "T", type: !3257)
!3282 = !DILocation(line: 974, column: 2, scope: !3201)
!3283 = distinct !DISubprogram(name: "precondition_check", linkageName: "_RNvNvMNtNtCsgxBkk5gSRhY_4core3ptr9const_ptrPp20offset_from_unsigned18precondition_checkCscBbfQkuq0VR_6expand", scope: !3284, file: !2289, line: 68, type: !3285, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !3287)
!3284 = !DINamespace(name: "offset_from_unsigned", scope: !2218)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{null, !6, !6, !912}
!3287 = !{!3288, !3289, !3290}
!3288 = !DILocalVariable(name: "this", arg: 1, scope: !3283, file: !2289, line: 68, type: !6)
!3289 = !DILocalVariable(name: "origin", arg: 2, scope: !3283, file: !2289, line: 68, type: !6)
!3290 = !DILocalVariable(name: "msg", scope: !3291, file: !2289, line: 70, type: !716, align: 64)
!3291 = distinct !DILexicalBlock(scope: !3283, file: !2289, line: 70, column: 21)
!3292 = !DILocation(line: 68, column: 43, scope: !3283)
!3293 = !DILocalVariable(name: "this", arg: 1, scope: !3294, file: !2216, line: 711, type: !6)
!3294 = distinct !DISubprogram(name: "runtime_ptr_ge", linkageName: "_RNvNvMNtNtCsgxBkk5gSRhY_4core3ptr9const_ptrPp20offset_from_unsigned14runtime_ptr_geCscBbfQkuq0VR_6expand", scope: !3284, file: !2216, line: 711, type: !3295, scopeLine: 711, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !3297)
!3295 = !DISubroutineType(types: !3296)
!3296 = !{!1349, !6, !6}
!3297 = !{!3293, !3298}
!3298 = !DILocalVariable(name: "origin", arg: 2, scope: !3294, file: !2216, line: 711, type: !6)
!3299 = !DILocation(line: 711, column: 33, scope: !3294, inlinedAt: !3300)
!3300 = !DILocation(line: 728, column: 18, scope: !3301)
!3301 = !DILexicalBlockFile(scope: !3283, file: !2216, discriminator: 0)
!3302 = !DILocation(line: 711, column: 50, scope: !3294, inlinedAt: !3300)
!3303 = !DILocation(line: 717, column: 21, scope: !3304, inlinedAt: !3307)
!3304 = !DILexicalBlockFile(scope: !3305, file: !2216, discriminator: 0)
!3305 = distinct !DISubprogram(name: "runtime", linkageName: "_RNvNvNvMNtNtCsgxBkk5gSRhY_4core3ptr9const_ptrPp20offset_from_unsigned14runtime_ptr_ge7runtimeCscBbfQkuq0VR_6expand", scope: !3306, file: !2987, line: 2445, type: !3295, scopeLine: 2445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23)
!3306 = !DINamespace(name: "runtime_ptr_ge", scope: !3284)
!3307 = !DILocation(line: 2458, column: 9, scope: !3308, inlinedAt: !3300)
!3308 = !DILexicalBlockFile(scope: !3294, file: !2987, discriminator: 0)
!3309 = !DILocation(line: 70, column: 31, scope: !3283)
!3310 = !DILocation(line: 70, column: 25, scope: !3291)
!3311 = !DILocalVariable(name: "s", arg: 1, scope: !3312, file: !1010, line: 815, type: !716)
!3312 = distinct !DISubprogram(name: "from_str", linkageName: "_RNvMs4_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Arguments8from_strCscBbfQkuq0VR_6expand", scope: !1011, file: !1010, line: 815, type: !1174, scopeLine: 815, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, declaration: !1176, retainedNodes: !3313)
!3313 = !{!3311}
!3314 = !DILocation(line: 815, column: 27, scope: !3312, inlinedAt: !3315)
!3315 = !DILocation(line: 73, column: 59, scope: !3291)
!3316 = !DILocalVariable(name: "self", arg: 1, scope: !3317, file: !1181, line: 589, type: !716)
!3317 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMNtCsgxBkk5gSRhY_4core3stre6as_ptr", scope: !1182, file: !1181, line: 589, type: !1184, scopeLine: 589, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !3318)
!3318 = !{!3316}
!3319 = !DILocation(line: 589, column: 25, scope: !3317, inlinedAt: !3320)
!3320 = !DILocation(line: 819, column: 44, scope: !3312, inlinedAt: !3315)
!3321 = !DILocalVariable(name: "self", arg: 1, scope: !3322, file: !1181, line: 154, type: !716)
!3322 = distinct !DISubprogram(name: "len", linkageName: "_RNvMNtCsgxBkk5gSRhY_4core3stre3lenCscBbfQkuq0VR_6expand", scope: !1182, file: !1181, line: 154, type: !1191, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !3323)
!3323 = !{!3321}
!3324 = !DILocation(line: 154, column: 22, scope: !3322, inlinedAt: !3325)
!3325 = !DILocation(line: 820, column: 40, scope: !3312, inlinedAt: !3315)
!3326 = !DILocalVariable(name: "self", arg: 1, scope: !3327, file: !1181, line: 513, type: !716)
!3327 = distinct !DISubprogram(name: "as_bytes", linkageName: "_RNvMNtCsgxBkk5gSRhY_4core3stre8as_bytes", scope: !1182, file: !1181, line: 513, type: !1198, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !3328)
!3328 = !{!3326}
!3329 = !DILocation(line: 513, column: 27, scope: !3327, inlinedAt: !3330)
!3330 = !DILocation(line: 155, column: 14, scope: !3322, inlinedAt: !3325)
!3331 = !DILocation(line: 73, column: 21, scope: !3291)
!3332 = !DILocation(line: 75, column: 14, scope: !3283)
!3333 = distinct !DISubprogram(name: "precondition_check", linkageName: "_RNvNvMs1_NtNtCsgxBkk5gSRhY_4core3ptr8non_nullINtB7_7NonNullpE13new_unchecked18precondition_checkCscBbfQkuq0VR_6expand", scope: !3334, file: !2289, line: 68, type: !3336, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !3339)
!3334 = !DINamespace(name: "new_unchecked", scope: !3335)
!3335 = !DINamespace(name: "{impl#3}", scope: !219)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{null, !3338, !912}
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut ()", baseType: !7, size: 64, align: 64, dwarfAddressSpace: 0)
!3339 = !{!3340, !3341}
!3340 = !DILocalVariable(name: "ptr", arg: 1, scope: !3333, file: !2289, line: 68, type: !3338)
!3341 = !DILocalVariable(name: "msg", scope: !3342, file: !2289, line: 70, type: !716, align: 64)
!3342 = distinct !DILexicalBlock(scope: !3333, file: !2289, line: 70, column: 21)
!3343 = !DILocation(line: 68, column: 43, scope: !3333)
!3344 = !DILocalVariable(name: "self", arg: 1, scope: !3345, file: !2228, line: 22, type: !3338)
!3345 = distinct !DISubprogram(name: "is_null<()>", linkageName: "_RNvMNtNtCsgxBkk5gSRhY_4core3ptr7mut_ptrOu7is_nullCscBbfQkuq0VR_6expand", scope: !2229, file: !2228, line: 22, type: !3346, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !654, retainedNodes: !3348)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{!1349, !3338}
!3348 = !{!3344}
!3349 = !DILocation(line: 22, column: 26, scope: !3345, inlinedAt: !3350)
!3350 = !DILocation(line: 236, column: 57, scope: !3351)
!3351 = !DILexicalBlockFile(scope: !3333, file: !970, discriminator: 0)
!3352 = !DILocation(line: 159, column: 18, scope: !3353, inlinedAt: !3354)
!3353 = distinct !DISubprogram(name: "addr<u8>", linkageName: "_RNvMNtNtCsgxBkk5gSRhY_4core3ptr9const_ptrPh4addrCscBbfQkuq0VR_6expand", scope: !2218, file: !2216, line: 153, type: !2982, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !224)
!3354 = !DILocation(line: 38, column: 21, scope: !3355, inlinedAt: !3357)
!3355 = !DILexicalBlockFile(scope: !3356, file: !2216, discriminator: 0)
!3356 = distinct !DISubprogram(name: "runtime", linkageName: "_RNvNvMNtNtCsgxBkk5gSRhY_4core3ptr9const_ptrPp7is_null7runtimeCscBbfQkuq0VR_6expand", scope: !2988, file: !2987, line: 2445, type: !2989, scopeLine: 2445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23)
!3357 = !DILocation(line: 2458, column: 9, scope: !3358, inlinedAt: !3362)
!3358 = !DILexicalBlockFile(scope: !3359, file: !2987, discriminator: 0)
!3359 = distinct !DISubprogram(name: "is_null<()>", linkageName: "_RNvMNtNtCsgxBkk5gSRhY_4core3ptr9const_ptrPu7is_nullCscBbfQkuq0VR_6expand", scope: !2218, file: !2216, line: 22, type: !3360, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !654)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!1349, !6}
!3362 = !DILocation(line: 23, column: 27, scope: !3345, inlinedAt: !3350)
!3363 = !DILocation(line: 236, column: 53, scope: !3351)
!3364 = !DILocation(line: 70, column: 31, scope: !3333)
!3365 = !DILocation(line: 70, column: 25, scope: !3342)
!3366 = !DILocalVariable(name: "s", arg: 1, scope: !3367, file: !1010, line: 815, type: !716)
!3367 = distinct !DISubprogram(name: "from_str", linkageName: "_RNvMs4_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Arguments8from_strCscBbfQkuq0VR_6expand", scope: !1011, file: !1010, line: 815, type: !1174, scopeLine: 815, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, declaration: !1176, retainedNodes: !3368)
!3368 = !{!3366}
!3369 = !DILocation(line: 815, column: 27, scope: !3367, inlinedAt: !3370)
!3370 = !DILocation(line: 73, column: 59, scope: !3342)
!3371 = !DILocalVariable(name: "self", arg: 1, scope: !3372, file: !1181, line: 589, type: !716)
!3372 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMNtCsgxBkk5gSRhY_4core3stre6as_ptr", scope: !1182, file: !1181, line: 589, type: !1184, scopeLine: 589, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !3373)
!3373 = !{!3371}
!3374 = !DILocation(line: 589, column: 25, scope: !3372, inlinedAt: !3375)
!3375 = !DILocation(line: 819, column: 44, scope: !3367, inlinedAt: !3370)
!3376 = !DILocalVariable(name: "self", arg: 1, scope: !3377, file: !1181, line: 154, type: !716)
!3377 = distinct !DISubprogram(name: "len", linkageName: "_RNvMNtCsgxBkk5gSRhY_4core3stre3lenCscBbfQkuq0VR_6expand", scope: !1182, file: !1181, line: 154, type: !1191, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !3378)
!3378 = !{!3376}
!3379 = !DILocation(line: 154, column: 22, scope: !3377, inlinedAt: !3380)
!3380 = !DILocation(line: 820, column: 40, scope: !3367, inlinedAt: !3370)
!3381 = !DILocalVariable(name: "self", arg: 1, scope: !3382, file: !1181, line: 513, type: !716)
!3382 = distinct !DISubprogram(name: "as_bytes", linkageName: "_RNvMNtCsgxBkk5gSRhY_4core3stre8as_bytes", scope: !1182, file: !1181, line: 513, type: !1198, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !3383)
!3383 = !{!3381}
!3384 = !DILocation(line: 513, column: 27, scope: !3382, inlinedAt: !3385)
!3385 = !DILocation(line: 155, column: 14, scope: !3377, inlinedAt: !3380)
!3386 = !DILocation(line: 73, column: 21, scope: !3342)
!3387 = !DILocation(line: 75, column: 14, scope: !3333)
!3388 = distinct !DISubprogram(name: "precondition_check", linkageName: "_RNvNvMs9_NtCsgxBkk5gSRhY_4core3numj13unchecked_add18precondition_checkCscBbfQkuq0VR_6expand", scope: !3389, file: !2289, line: 68, type: !3390, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !3392)
!3389 = !DINamespace(name: "unchecked_add", scope: !2205)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{null, !9, !9, !912}
!3392 = !{!3393, !3394, !3395}
!3393 = !DILocalVariable(name: "lhs", arg: 1, scope: !3388, file: !2289, line: 68, type: !9)
!3394 = !DILocalVariable(name: "rhs", arg: 2, scope: !3388, file: !2289, line: 68, type: !9)
!3395 = !DILocalVariable(name: "msg", scope: !3396, file: !2289, line: 70, type: !716, align: 64)
!3396 = distinct !DILexicalBlock(scope: !3388, file: !2289, line: 70, column: 21)
!3397 = !DILocation(line: 68, column: 43, scope: !3388)
!3398 = !DILocalVariable(name: "self", arg: 1, scope: !3399, file: !2204, line: 2949, type: !9)
!3399 = distinct !DISubprogram(name: "overflowing_add", linkageName: "_RNvMs9_NtCsgxBkk5gSRhY_4core3numj15overflowing_add", scope: !2205, file: !2204, line: 2949, type: !3400, scopeLine: 2949, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !3406)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{!3402, !9, !9}
!3402 = !DICompositeType(tag: DW_TAG_structure_type, name: "(usize, bool)", file: !2, size: 128, align: 64, elements: !3403, templateParams: !23, identifier: "9b4293e0ef5b1e8459731bc2d47b2dc5")
!3403 = !{!3404, !3405}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !3402, file: !2, baseType: !9, size: 64, align: 64)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !3402, file: !2, baseType: !1349, size: 8, align: 8, offset: 64)
!3406 = !{!3398, !3407}
!3407 = !DILocalVariable(name: "rhs", arg: 2, scope: !3399, file: !2204, line: 2949, type: !9)
!3408 = !DILocation(line: 2949, column: 38, scope: !3399, inlinedAt: !3409)
!3409 = !DILocation(line: 968, column: 27, scope: !3410)
!3410 = !DILexicalBlockFile(scope: !3388, file: !2204, discriminator: 0)
!3411 = !DILocation(line: 2949, column: 44, scope: !3399, inlinedAt: !3409)
!3412 = !DILocation(line: 2950, column: 26, scope: !3399, inlinedAt: !3409)
!3413 = !DILocation(line: 968, column: 23, scope: !3410)
!3414 = !DILocation(line: 75, column: 14, scope: !3388)
!3415 = !DILocation(line: 70, column: 31, scope: !3388)
!3416 = !DILocation(line: 70, column: 25, scope: !3396)
!3417 = !DILocalVariable(name: "s", arg: 1, scope: !3418, file: !1010, line: 815, type: !716)
!3418 = distinct !DISubprogram(name: "from_str", linkageName: "_RNvMs4_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Arguments8from_strCscBbfQkuq0VR_6expand", scope: !1011, file: !1010, line: 815, type: !1174, scopeLine: 815, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, declaration: !1176, retainedNodes: !3419)
!3419 = !{!3417}
!3420 = !DILocation(line: 815, column: 27, scope: !3418, inlinedAt: !3421)
!3421 = !DILocation(line: 73, column: 59, scope: !3396)
!3422 = !DILocalVariable(name: "self", arg: 1, scope: !3423, file: !1181, line: 589, type: !716)
!3423 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMNtCsgxBkk5gSRhY_4core3stre6as_ptr", scope: !1182, file: !1181, line: 589, type: !1184, scopeLine: 589, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !3424)
!3424 = !{!3422}
!3425 = !DILocation(line: 589, column: 25, scope: !3423, inlinedAt: !3426)
!3426 = !DILocation(line: 819, column: 44, scope: !3418, inlinedAt: !3421)
!3427 = !DILocalVariable(name: "self", arg: 1, scope: !3428, file: !1181, line: 154, type: !716)
!3428 = distinct !DISubprogram(name: "len", linkageName: "_RNvMNtCsgxBkk5gSRhY_4core3stre3lenCscBbfQkuq0VR_6expand", scope: !1182, file: !1181, line: 154, type: !1191, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !3429)
!3429 = !{!3427}
!3430 = !DILocation(line: 154, column: 22, scope: !3428, inlinedAt: !3431)
!3431 = !DILocation(line: 820, column: 40, scope: !3418, inlinedAt: !3421)
!3432 = !DILocalVariable(name: "self", arg: 1, scope: !3433, file: !1181, line: 513, type: !716)
!3433 = distinct !DISubprogram(name: "as_bytes", linkageName: "_RNvMNtCsgxBkk5gSRhY_4core3stre8as_bytes", scope: !1182, file: !1181, line: 513, type: !1198, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !3434)
!3434 = !{!3432}
!3435 = !DILocation(line: 513, column: 27, scope: !3433, inlinedAt: !3436)
!3436 = !DILocation(line: 155, column: 14, scope: !3428, inlinedAt: !3431)
!3437 = !DILocation(line: 73, column: 21, scope: !3396)
!3438 = distinct !DISubprogram(name: "precondition_check", linkageName: "_RNvNvNtNtCsgxBkk5gSRhY_4core5slice3raw14from_raw_parts18precondition_checkCscBbfQkuq0VR_6expand", scope: !3439, file: !2289, line: 68, type: !3440, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !3442)
!3439 = !DINamespace(name: "from_raw_parts", scope: !3112)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{null, !3338, !9, !9, !9, !912}
!3442 = !{!3443, !3444, !3445, !3446, !3447}
!3443 = !DILocalVariable(name: "data", arg: 1, scope: !3438, file: !2289, line: 68, type: !3338)
!3444 = !DILocalVariable(name: "size", arg: 2, scope: !3438, file: !2289, line: 68, type: !9)
!3445 = !DILocalVariable(name: "align", arg: 3, scope: !3438, file: !2289, line: 68, type: !9)
!3446 = !DILocalVariable(name: "len", arg: 4, scope: !3438, file: !2289, line: 68, type: !9)
!3447 = !DILocalVariable(name: "msg", scope: !3448, file: !2289, line: 70, type: !716, align: 64)
!3448 = distinct !DILexicalBlock(scope: !3438, file: !2289, line: 70, column: 21)
!3449 = !DILocation(line: 68, column: 43, scope: !3438)
!3450 = !DILocalVariable(name: "size", arg: 1, scope: !3451, file: !2289, line: 147, type: !9)
!3451 = distinct !DISubprogram(name: "is_valid_allocation_size", linkageName: "_RNvNtCsgxBkk5gSRhY_4core9ub_checks24is_valid_allocation_sizeCscBbfQkuq0VR_6expand", scope: !3452, file: !2289, line: 147, type: !3453, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !3455)
!3452 = !DINamespace(name: "ub_checks", scope: !215)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!1349, !9, !9}
!3455 = !{!3450, !3456, !3457}
!3456 = !DILocalVariable(name: "len", arg: 2, scope: !3451, file: !2289, line: 147, type: !9)
!3457 = !DILocalVariable(name: "max_len", scope: !3458, file: !2289, line: 148, type: !9, align: 64)
!3458 = distinct !DILexicalBlock(scope: !3451, file: !2289, line: 148, column: 5)
!3459 = !DILocation(line: 147, column: 46, scope: !3451, inlinedAt: !3460)
!3460 = !DILocation(line: 137, column: 20, scope: !3461)
!3461 = !DILexicalBlockFile(scope: !3438, file: !3111, discriminator: 0)
!3462 = !DILocalVariable(name: "align", arg: 2, scope: !3463, file: !2289, line: 120, type: !9)
!3463 = distinct !DISubprogram(name: "maybe_is_aligned_and_not_null", linkageName: "_RNvNtCsgxBkk5gSRhY_4core9ub_checks29maybe_is_aligned_and_not_nullCscBbfQkuq0VR_6expand", scope: !3452, file: !2289, line: 118, type: !3464, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !3466)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{!1349, !6, !9, !1349}
!3466 = !{!3467, !3462, !3468}
!3467 = !DILocalVariable(name: "ptr", arg: 1, scope: !3463, file: !2289, line: 119, type: !6)
!3468 = !DILocalVariable(name: "is_zst", scope: !3463, file: !2289, line: 121, type: !1349, align: 8)
!3469 = !DILocation(line: 120, column: 5, scope: !3463, inlinedAt: !3470)
!3470 = !DILocation(line: 136, column: 13, scope: !3461)
!3471 = !DILocalVariable(name: "align", arg: 2, scope: !3472, file: !2289, line: 134, type: !9)
!3472 = distinct !DISubprogram(name: "maybe_is_aligned", linkageName: "_RNvNtCsgxBkk5gSRhY_4core9ub_checks16maybe_is_alignedCscBbfQkuq0VR_6expand", scope: !3452, file: !2289, line: 134, type: !3473, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !3475)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{!1349, !6, !9}
!3475 = !{!3476, !3471}
!3476 = !DILocalVariable(name: "ptr", arg: 1, scope: !3472, file: !2289, line: 134, type: !6)
!3477 = !DILocation(line: 134, column: 54, scope: !3472, inlinedAt: !3478)
!3478 = !DILocation(line: 124, column: 5, scope: !3463, inlinedAt: !3470)
!3479 = !DILocalVariable(name: "align", arg: 2, scope: !3480, file: !2987, line: 2445, type: !9)
!3480 = distinct !DISubprogram(name: "runtime", linkageName: "_RNvNvNtCsgxBkk5gSRhY_4core9ub_checks16maybe_is_aligned7runtimeCscBbfQkuq0VR_6expand", scope: !3481, file: !2987, line: 2445, type: !3473, scopeLine: 2445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !3482)
!3481 = !DINamespace(name: "maybe_is_aligned", scope: !3452)
!3482 = !{!3483, !3479}
!3483 = !DILocalVariable(name: "ptr", arg: 1, scope: !3480, file: !2987, line: 2445, type: !6)
!3484 = !DILocation(line: 2445, column: 40, scope: !3480, inlinedAt: !3485)
!3485 = !DILocation(line: 2458, column: 9, scope: !3486, inlinedAt: !3478)
!3486 = !DILexicalBlockFile(scope: !3472, file: !2987, discriminator: 0)
!3487 = !DILocation(line: 147, column: 59, scope: !3451, inlinedAt: !3460)
!3488 = !DILocation(line: 148, column: 9, scope: !3458, inlinedAt: !3460)
!3489 = !DILocation(line: 121, column: 5, scope: !3463, inlinedAt: !3470)
!3490 = !DILocation(line: 136, column: 54, scope: !3461)
!3491 = !DILocation(line: 119, column: 5, scope: !3463, inlinedAt: !3470)
!3492 = !DILocation(line: 134, column: 38, scope: !3472, inlinedAt: !3478)
!3493 = !DILocalVariable(name: "self", arg: 1, scope: !3494, file: !2216, line: 22, type: !6)
!3494 = distinct !DISubprogram(name: "is_null<()>", linkageName: "_RNvMNtNtCsgxBkk5gSRhY_4core3ptr9const_ptrPu7is_nullCscBbfQkuq0VR_6expand", scope: !2218, file: !2216, line: 22, type: !3360, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !654, retainedNodes: !3495)
!3495 = !{!3493}
!3496 = !DILocation(line: 22, column: 26, scope: !3494, inlinedAt: !3497)
!3497 = !DILocation(line: 124, column: 53, scope: !3463, inlinedAt: !3470)
!3498 = !DILocation(line: 141, column: 17, scope: !3499, inlinedAt: !3485)
!3499 = !DILexicalBlockFile(scope: !3480, file: !2289, discriminator: 0)
!3500 = !DILocation(line: 68, column: 13, scope: !3438)
!3501 = !DILocation(line: 159, column: 18, scope: !3502, inlinedAt: !3503)
!3502 = distinct !DISubprogram(name: "addr<u8>", linkageName: "_RNvMNtNtCsgxBkk5gSRhY_4core3ptr9const_ptrPh4addrCscBbfQkuq0VR_6expand", scope: !2218, file: !2216, line: 153, type: !2982, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !224)
!3503 = !DILocation(line: 38, column: 21, scope: !3504, inlinedAt: !3506)
!3504 = !DILexicalBlockFile(scope: !3505, file: !2216, discriminator: 0)
!3505 = distinct !DISubprogram(name: "runtime", linkageName: "_RNvNvMNtNtCsgxBkk5gSRhY_4core3ptr9const_ptrPp7is_null7runtimeCscBbfQkuq0VR_6expand", scope: !2988, file: !2987, line: 2445, type: !2989, scopeLine: 2445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23)
!3506 = !DILocation(line: 2458, column: 9, scope: !3507, inlinedAt: !3497)
!3507 = !DILexicalBlockFile(scope: !3508, file: !2987, discriminator: 2)
!3508 = !DILexicalBlockFile(scope: !3494, file: !2987, discriminator: 0)
!3509 = !DILocation(line: 38, column: 17, scope: !3504, inlinedAt: !3506)
!3510 = !DILocation(line: 124, column: 48, scope: !3463, inlinedAt: !3470)
!3511 = !DILocation(line: 0, scope: !3512)
!3512 = !DILexicalBlockFile(scope: !3438, file: !2170, discriminator: 0)
!3513 = !DILocation(line: 148, column: 22, scope: !3451, inlinedAt: !3460)
!3514 = !DILocation(line: 70, column: 31, scope: !3438)
!3515 = !DILocation(line: 70, column: 25, scope: !3448)
!3516 = !DILocalVariable(name: "s", arg: 1, scope: !3517, file: !1010, line: 815, type: !716)
!3517 = distinct !DISubprogram(name: "from_str", linkageName: "_RNvMs4_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Arguments8from_strCscBbfQkuq0VR_6expand", scope: !1011, file: !1010, line: 815, type: !1174, scopeLine: 815, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, declaration: !1176, retainedNodes: !3518)
!3518 = !{!3516}
!3519 = !DILocation(line: 815, column: 27, scope: !3517, inlinedAt: !3520)
!3520 = !DILocation(line: 73, column: 59, scope: !3448)
!3521 = !DILocalVariable(name: "self", arg: 1, scope: !3522, file: !1181, line: 589, type: !716)
!3522 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMNtCsgxBkk5gSRhY_4core3stre6as_ptr", scope: !1182, file: !1181, line: 589, type: !1184, scopeLine: 589, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !3523)
!3523 = !{!3521}
!3524 = !DILocation(line: 589, column: 25, scope: !3522, inlinedAt: !3525)
!3525 = !DILocation(line: 819, column: 44, scope: !3517, inlinedAt: !3520)
!3526 = !DILocalVariable(name: "self", arg: 1, scope: !3527, file: !1181, line: 154, type: !716)
!3527 = distinct !DISubprogram(name: "len", linkageName: "_RNvMNtCsgxBkk5gSRhY_4core3stre3lenCscBbfQkuq0VR_6expand", scope: !1182, file: !1181, line: 154, type: !1191, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !3528)
!3528 = !{!3526}
!3529 = !DILocation(line: 154, column: 22, scope: !3527, inlinedAt: !3530)
!3530 = !DILocation(line: 820, column: 40, scope: !3517, inlinedAt: !3520)
!3531 = !DILocalVariable(name: "self", arg: 1, scope: !3532, file: !1181, line: 513, type: !716)
!3532 = distinct !DISubprogram(name: "as_bytes", linkageName: "_RNvMNtCsgxBkk5gSRhY_4core3stre8as_bytes", scope: !1182, file: !1181, line: 513, type: !1198, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !3533)
!3533 = !{!3531}
!3534 = !DILocation(line: 513, column: 27, scope: !3532, inlinedAt: !3535)
!3535 = !DILocation(line: 155, column: 14, scope: !3527, inlinedAt: !3530)
!3536 = !DILocation(line: 73, column: 21, scope: !3448)
!3537 = !DILocation(line: 148, column: 34, scope: !3451, inlinedAt: !3460)
!3538 = !DILocation(line: 148, column: 19, scope: !3451, inlinedAt: !3460)
!3539 = !DILocation(line: 148, column: 54, scope: !3451, inlinedAt: !3460)
!3540 = !DILocation(line: 149, column: 5, scope: !3458, inlinedAt: !3460)
!3541 = !DILocation(line: 75, column: 14, scope: !3438)
!3542 = distinct !DISubprogram(name: "from<uu_expand::ParseError>", linkageName: "_RNvXNtNtCs1iFJFqccjfm_6uucore4mods5errorINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtB2_6UErrorEL_EINtNtCsgxBkk5gSRhY_4core7convert4FromNtCs9xOv1NcnHfv_9uu_expand10ParseErrorE4fromCscBbfQkuq0VR_6expand", scope: !3544, file: !3543, line: 274, type: !3546, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !1327, retainedNodes: !3548)
!3543 = !DIFile(filename: "src/uucore/src/lib/mods/error.rs", directory: "/workspaces/Thesis/.build/uutils-coreutils", checksumkind: CSK_MD5, checksum: "2c88084a2f7a1c1c45f6113d429457fe")
!3544 = !DINamespace(name: "{impl#0}", scope: !3545)
!3545 = !DINamespace(name: "error", scope: !781)
!3546 = !DISubroutineType(types: !3547)
!3547 = !{!607, !187}
!3548 = !{!3549}
!3549 = !DILocalVariable(name: "t", arg: 1, scope: !3542, file: !3543, line: 274, type: !187)
!3550 = !DILocalVariable(name: "x", arg: 1, scope: !3551, file: !3156, line: 284, type: !187)
!3551 = distinct !DISubprogram(name: "new<uu_expand::ParseError>", linkageName: "_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxNtCs9xOv1NcnHfv_9uu_expand10ParseErrorE3newCscBbfQkuq0VR_6expand", scope: !3552, file: !3156, line: 284, type: !3553, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !1327, retainedNodes: !3556)
!3552 = !DINamespace(name: "{impl#0}", scope: !3157)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{!3555, !187}
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "alloc::boxed::Box<uu_expand::ParseError, alloc::alloc::Global>", baseType: !187, size: 64, align: 64, dwarfAddressSpace: 0)
!3556 = !{!3550, !3557}
!3557 = !DILocalVariable(name: "ptr", scope: !3558, file: !3156, line: 286, type: !3559, align: 64)
!3558 = distinct !DILexicalBlock(scope: !3551, file: !3156, line: 286, column: 9)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut uu_expand::ParseError", baseType: !187, size: 64, align: 64, dwarfAddressSpace: 0)
!3560 = !DILocation(line: 284, column: 16, scope: !3551, inlinedAt: !3561)
!3561 = distinct !DILocation(line: 275, column: 9, scope: !3542)
!3562 = !DILocation(line: 274, column: 13, scope: !3542)
!3563 = !DILocation(line: 275, column: 9, scope: !3542)
!3564 = !DILocation(line: 286, column: 19, scope: !3551, inlinedAt: !3561)
!3565 = !DILocation(line: 292, column: 5, scope: !3551, inlinedAt: !3561)
!3566 = !DILocation(line: 284, column: 5, scope: !3551, inlinedAt: !3561)
!3567 = !DILocation(line: 286, column: 13, scope: !3558, inlinedAt: !3561)
!3568 = !DILocation(line: 289, column: 56, scope: !3558, inlinedAt: !3561)
!3569 = !DILocation(line: 276, column: 6, scope: !3542)
!3570 = distinct !DISubprogram(name: "from_iter<std::ffi::os_str::OsString, core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>", linkageName: "_RNvXNtNtCs6i54tJFfzR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringEINtB2_12SpecFromIterBT_INtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters6cloned6ClonedINtNtNtB28_5slice4iter4IterBT_EEE9from_iterCscBbfQkuq0VR_6expand", scope: !3572, file: !3571, line: 32, type: !2385, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !2389, retainedNodes: !3574)
!3571 = !DIFile(filename: "library/alloc/src/vec/spec_from_iter.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "87e48553151b7c26b3585234ec8e05e7")
!3572 = !DINamespace(name: "{impl#0}", scope: !3573)
!3573 = !DINamespace(name: "spec_from_iter", scope: !202)
!3574 = !{!3575}
!3575 = !DILocalVariable(name: "iterator", arg: 1, scope: !3570, file: !3571, line: 32, type: !555)
!3576 = !DILocation(line: 32, column: 26, scope: !3570)
!3577 = !DILocation(line: 33, column: 9, scope: !3570)
!3578 = !DILocation(line: 34, column: 6, scope: !3570)
!3579 = distinct !DISubprogram(name: "into_iter<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>", linkageName: "_RNvXNtNtNtCsgxBkk5gSRhY_4core4iter6traits7collectINtNtNtB6_8adapters6cloned6ClonedINtNtNtB8_5slice4iter4IterNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringEENtB2_12IntoIterator9into_iterCscBbfQkuq0VR_6expand", scope: !3581, file: !3580, line: 322, type: !3583, scopeLine: 322, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !3587, retainedNodes: !3585)
!3580 = !DIFile(filename: "library/core/src/iter/traits/collect.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "3e8a2cf991721aa79f63dc12a99c1dee")
!3581 = !DINamespace(name: "{impl#0}", scope: !3582)
!3582 = !DINamespace(name: "collect", scope: !1300)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!555, !555}
!3585 = !{!3586}
!3586 = !DILocalVariable(name: "self", arg: 1, scope: !3579, file: !3580, line: 322, type: !555)
!3587 = !{!2390}
!3588 = !DILocation(line: 322, column: 18, scope: !3579)
!3589 = !DILocation(line: 324, column: 6, scope: !3579)
!3590 = distinct !DISubprogram(name: "ne", linkageName: "_RNvXs1y_NtCs6i54tJFfzR_5alloc6stringNtB6_6StringINtNtCsgxBkk5gSRhY_4core3cmp9PartialEqReE2neCscBbfQkuq0VR_6expand", scope: !3592, file: !3591, line: 2697, type: !3593, scopeLine: 2697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !3595)
!3591 = !DIFile(filename: "library/alloc/src/string.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "2ca2895f15a0a5ee1b6fa213beb8178e")
!3592 = !DINamespace(name: "{impl#98}", scope: !197)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{!1349, !270, !715}
!3595 = !{!3596, !3597}
!3596 = !DILocalVariable(name: "self", arg: 1, scope: !3590, file: !3591, line: 2697, type: !270)
!3597 = !DILocalVariable(name: "other", arg: 2, scope: !3590, file: !3591, line: 2697, type: !715)
!3598 = !DILocation(line: 2697, column: 19, scope: !3590)
!3599 = !DILocalVariable(name: "self", arg: 1, scope: !3600, file: !3591, line: 2828, type: !270)
!3600 = distinct !DISubprogram(name: "index<core::ops::range::RangeFull>", linkageName: "_RNvXsv_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringINtNtNtCsgxBkk5gSRhY_4core3ops5index5IndexNtNtBO_5range9RangeFullE5indexCs4VqSFjx4n5U_12clap_builder", scope: !3601, file: !3591, line: 2828, type: !3602, scopeLine: 2828, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !3607, retainedNodes: !3605)
!3601 = !DINamespace(name: "{impl#33}", scope: !197)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!716, !270, !3604, !912}
!3604 = !DICompositeType(tag: DW_TAG_structure_type, name: "RangeFull", scope: !288, file: !2, align: 8, flags: DIFlagPublic, elements: !23, identifier: "fbb7e9bb5d5838f5fccbbb4c35bc098")
!3605 = !{!3599, !3606}
!3606 = !DILocalVariable(name: "index", scope: !3600, file: !3591, line: 2828, type: !3604, align: 8)
!3607 = !{!3608}
!3608 = !DITemplateTypeParameter(name: "I", type: !3604)
!3609 = !DILocation(line: 2828, column: 14, scope: !3600, inlinedAt: !3610)
!3610 = !DILocation(line: 2698, column: 36, scope: !3590)
!3611 = !DILocalVariable(name: "self", arg: 1, scope: !3612, file: !3591, line: 1057, type: !270)
!3612 = distinct !DISubprogram(name: "as_str", linkageName: "_RNvMNtCs6i54tJFfzR_5alloc6stringNtB2_6String6as_strCscBbfQkuq0VR_6expand", scope: !196, file: !3591, line: 1057, type: !3613, scopeLine: 1057, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, declaration: !3615, retainedNodes: !3616)
!3613 = !DISubroutineType(types: !3614)
!3614 = !{!716, !270}
!3615 = !DISubprogram(name: "as_str", linkageName: "_RNvMNtCs6i54tJFfzR_5alloc6stringNtB2_6String6as_strCscBbfQkuq0VR_6expand", scope: !196, file: !3591, line: 1057, type: !3613, scopeLine: 1057, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !23)
!3616 = !{!3611}
!3617 = !DILocation(line: 1057, column: 25, scope: !3612, inlinedAt: !3618)
!3618 = !DILocation(line: 2829, column: 26, scope: !3600, inlinedAt: !3610)
!3619 = !DILocation(line: 2697, column: 26, scope: !3590)
!3620 = !DILocation(line: 2828, column: 21, scope: !3600, inlinedAt: !3610)
!3621 = !DILocalVariable(name: "index", scope: !3622, file: !3623, line: 62, type: !3604, align: 8)
!3622 = distinct !DISubprogram(name: "index<core::ops::range::RangeFull>", linkageName: "_RNvXs2_NtNtCsgxBkk5gSRhY_4core3str6traitseINtNtNtB9_3ops5index5IndexNtNtBJ_5range9RangeFullE5indexCscBbfQkuq0VR_6expand", scope: !3624, file: !3623, line: 62, type: !3626, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !3607, retainedNodes: !3628)
!3623 = !DIFile(filename: "library/core/src/str/traits.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "d8ae730ba1532c9b0c00bc889a42d36f")
!3624 = !DINamespace(name: "{impl#4}", scope: !3625)
!3625 = !DINamespace(name: "traits", scope: !1183)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{!716, !716, !3604, !912}
!3628 = !{!3629, !3621}
!3629 = !DILocalVariable(name: "self", arg: 1, scope: !3622, file: !3623, line: 62, type: !716)
!3630 = !DILocation(line: 62, column: 21, scope: !3622, inlinedAt: !3631)
!3631 = !DILocation(line: 2698, column: 48, scope: !3590)
!3632 = !DILocation(line: 615, column: 9, scope: !3633, inlinedAt: !3638)
!3633 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCs6i54tJFfzR_5alloc7raw_vecNtB6_11RawVecInner8non_nullhECscBbfQkuq0VR_6expand", scope: !209, file: !1209, line: 614, type: !3634, scopeLine: 614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !3637, declaration: !3636)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!218, !1212}
!3636 = !DISubprogram(name: "non_null<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCs6i54tJFfzR_5alloc7raw_vecNtB6_11RawVecInner8non_nullhECscBbfQkuq0VR_6expand", scope: !209, file: !1209, line: 614, type: !3634, scopeLine: 614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !3637)
!3637 = !{!239, !225}
!3638 = !DILocation(line: 610, column: 14, scope: !3639, inlinedAt: !3643)
!3639 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCs6i54tJFfzR_5alloc7raw_vecNtB6_11RawVecInner3ptrhECscBbfQkuq0VR_6expand", scope: !209, file: !1209, line: 609, type: !3640, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !3637, declaration: !3642)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!2694, !1212}
!3642 = !DISubprogram(name: "ptr<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCs6i54tJFfzR_5alloc7raw_vecNtB6_11RawVecInner3ptrhECscBbfQkuq0VR_6expand", scope: !209, file: !1209, line: 609, type: !3640, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !3637)
!3643 = !DILocation(line: 296, column: 20, scope: !3644, inlinedAt: !3649)
!3644 = distinct !DISubprogram(name: "ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechE3ptrCscBbfQkuq0VR_6expand", scope: !205, file: !1209, line: 295, type: !3645, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !241, declaration: !3648)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!2694, !3647}
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&alloc::raw_vec::RawVec<u8, alloc::alloc::Global>", baseType: !205, size: 64, align: 64, dwarfAddressSpace: 0)
!3648 = !DISubprogram(name: "ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechE3ptrCscBbfQkuq0VR_6expand", scope: !205, file: !1209, line: 295, type: !3645, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !241)
!3649 = !DILocation(line: 1977, column: 18, scope: !3650, inlinedAt: !3655)
!3650 = distinct !DISubprogram(name: "as_ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE6as_ptrCscBbfQkuq0VR_6expand", scope: !201, file: !1079, line: 1974, type: !3651, scopeLine: 1974, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !241, declaration: !3654)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{!222, !3653}
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&alloc::vec::Vec<u8, alloc::alloc::Global>", baseType: !201, size: 64, align: 64, dwarfAddressSpace: 0)
!3654 = !DISubprogram(name: "as_ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE6as_ptrCscBbfQkuq0VR_6expand", scope: !201, file: !1079, line: 1974, type: !3651, scopeLine: 1974, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !241)
!3655 = !DILocation(line: 1873, column: 76, scope: !3656, inlinedAt: !3660)
!3656 = distinct !DISubprogram(name: "as_slice<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE8as_sliceCscBbfQkuq0VR_6expand", scope: !201, file: !1079, line: 1856, type: !3657, scopeLine: 1856, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !241, declaration: !3659)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{!1200, !3653}
!3659 = !DISubprogram(name: "as_slice<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE8as_sliceCscBbfQkuq0VR_6expand", scope: !201, file: !1079, line: 1856, type: !3657, scopeLine: 1856, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !241)
!3660 = !DILocation(line: 1060, column: 52, scope: !3612, inlinedAt: !3618)
!3661 = !DILocation(line: 1873, column: 86, scope: !3656, inlinedAt: !3660)
!3662 = !DILocation(line: 181, column: 14, scope: !3663, inlinedAt: !3664)
!3663 = distinct !DISubprogram(name: "from_utf8_unchecked", linkageName: "_RNvNtNtCsgxBkk5gSRhY_4core3str8converts19from_utf8_uncheckedCscBbfQkuq0VR_6expand", scope: !3145, file: !3144, line: 178, type: !3146, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23)
!3664 = !DILocation(line: 1060, column: 18, scope: !3612, inlinedAt: !3618)
!3665 = !DILocalVariable(name: "slice", arg: 2, scope: !3666, file: !3623, line: 112, type: !716)
!3666 = distinct !DISubprogram(name: "index", linkageName: "_RNvXs4_NtNtCsgxBkk5gSRhY_4core3str6traitsNtNtNtB9_3ops5range9RangeFullINtNtNtB9_5slice5index10SliceIndexeE5indexCscBbfQkuq0VR_6expand", scope: !3667, file: !3623, line: 112, type: !3668, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !3670)
!3667 = !DINamespace(name: "{impl#6}", scope: !3625)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!716, !3604, !716, !912}
!3670 = !{!3665}
!3671 = !DILocation(line: 112, column: 20, scope: !3666, inlinedAt: !3672)
!3672 = !DILocation(line: 2829, column: 15, scope: !3600, inlinedAt: !3610)
!3673 = !DILocalVariable(name: "self", arg: 1, scope: !3674, file: !3675, line: 263, type: !716)
!3674 = distinct !DISubprogram(name: "ne<str, str>", linkageName: "_RNvYeNtNtCsgxBkk5gSRhY_4core3cmp9PartialEq2neCs4VqSFjx4n5U_12clap_builder", scope: !3676, file: !3675, line: 263, type: !3678, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !3682, retainedNodes: !3680)
!3675 = !DIFile(filename: "library/core/src/cmp.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "fdd440c32d9331fac13edfea24200374")
!3676 = !DINamespace(name: "PartialEq", scope: !3677)
!3677 = !DINamespace(name: "cmp", scope: !215)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{!1349, !716, !716}
!3680 = !{!3673, !3681}
!3681 = !DILocalVariable(name: "other", arg: 2, scope: !3674, file: !3675, line: 263, type: !716)
!3682 = !{!3683, !3684}
!3683 = !DITemplateTypeParameter(name: "Self", type: !927)
!3684 = !DITemplateTypeParameter(name: "Rhs", type: !927)
!3685 = !DILocation(line: 263, column: 11, scope: !3674, inlinedAt: !3686)
!3686 = !DILocation(line: 2698, column: 17, scope: !3590)
!3687 = !DILocalVariable(name: "self", arg: 1, scope: !3688, file: !3623, line: 29, type: !716)
!3688 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXs_NtNtCsgxBkk5gSRhY_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCscBbfQkuq0VR_6expand", scope: !3689, file: !3623, line: 29, type: !3678, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !3690)
!3689 = !DINamespace(name: "{impl#1}", scope: !3625)
!3690 = !{!3687, !3691}
!3691 = !DILocalVariable(name: "other", arg: 2, scope: !3688, file: !3623, line: 29, type: !716)
!3692 = !DILocation(line: 29, column: 11, scope: !3688, inlinedAt: !3693)
!3693 = !DILocation(line: 264, column: 15, scope: !3674, inlinedAt: !3686)
!3694 = !DILocalVariable(name: "self", arg: 1, scope: !3695, file: !1181, line: 513, type: !716)
!3695 = distinct !DISubprogram(name: "as_bytes", linkageName: "_RNvMNtCsgxBkk5gSRhY_4core3stre8as_bytes", scope: !1182, file: !1181, line: 513, type: !1198, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !3696)
!3696 = !{!3694}
!3697 = !DILocation(line: 513, column: 27, scope: !3695, inlinedAt: !3698)
!3698 = !DILocation(line: 30, column: 14, scope: !3688, inlinedAt: !3693)
!3699 = !DILocation(line: 2698, column: 43, scope: !3590)
!3700 = !DILocation(line: 62, column: 14, scope: !3622, inlinedAt: !3631)
!3701 = !DILocation(line: 112, column: 20, scope: !3666, inlinedAt: !3702)
!3702 = !DILocation(line: 63, column: 15, scope: !3622, inlinedAt: !3631)
!3703 = !DILocation(line: 263, column: 18, scope: !3674, inlinedAt: !3686)
!3704 = !DILocation(line: 29, column: 18, scope: !3688, inlinedAt: !3693)
!3705 = !DILocation(line: 513, column: 27, scope: !3695, inlinedAt: !3706)
!3706 = !DILocation(line: 30, column: 34, scope: !3688, inlinedAt: !3693)
!3707 = !DILocation(line: 515, column: 18, scope: !3695, inlinedAt: !3698)
!3708 = !DILocalVariable(name: "self", arg: 1, scope: !3709, file: !3710, line: 19, type: !1200)
!3709 = distinct !DISubprogram(name: "eq<u8, u8>", linkageName: "_RNvXNtNtCsgxBkk5gSRhY_4core5slice3cmpShNtNtB6_3cmp9PartialEq2eqCs5bPnpBtHkbg_4libc", scope: !3711, file: !3710, line: 19, type: !3713, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !3719, retainedNodes: !3715)
!3710 = !DIFile(filename: "library/core/src/slice/cmp.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "71afa653494a451ea5fc2f60264cd002")
!3711 = !DINamespace(name: "{impl#0}", scope: !3712)
!3712 = !DINamespace(name: "cmp", scope: !563)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!1349, !1200, !1200}
!3715 = !{!3708, !3716, !3717}
!3716 = !DILocalVariable(name: "other", arg: 2, scope: !3709, file: !3710, line: 19, type: !1200)
!3717 = !DILocalVariable(name: "len", scope: !3718, file: !3710, line: 20, type: !9, align: 64)
!3718 = distinct !DILexicalBlock(scope: !3709, file: !3710, line: 20, column: 9)
!3719 = !{!225, !3720}
!3720 = !DITemplateTypeParameter(name: "U", type: !223)
!3721 = !DILocation(line: 19, column: 11, scope: !3709, inlinedAt: !3722)
!3722 = !DILocation(line: 2123, column: 13, scope: !3723, inlinedAt: !3735)
!3723 = distinct !DISubprogram(name: "eq<[u8], [u8]>", linkageName: "_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsRShNtB7_9PartialEq2eqCscBbfQkuq0VR_6expand", scope: !3724, file: !3675, line: 2122, type: !3726, scopeLine: 2122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !3732, retainedNodes: !3729)
!3724 = !DINamespace(name: "{impl#9}", scope: !3725)
!3725 = !DINamespace(name: "impls", scope: !3677)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!1349, !3728, !3728}
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&&[u8]", baseType: !1200, size: 64, align: 64, dwarfAddressSpace: 0)
!3729 = !{!3730, !3731}
!3730 = !DILocalVariable(name: "self", arg: 1, scope: !3723, file: !3675, line: 2122, type: !3728)
!3731 = !DILocalVariable(name: "other", arg: 2, scope: !3723, file: !3675, line: 2122, type: !3728)
!3732 = !{!3733, !3734}
!3733 = !DITemplateTypeParameter(name: "A", type: !927)
!3734 = !DITemplateTypeParameter(name: "B", type: !927)
!3735 = !DILocation(line: 30, column: 9, scope: !3688, inlinedAt: !3693)
!3736 = !DILocalVariable(name: "self", arg: 1, scope: !3737, file: !3738, line: 728, type: !1200)
!3737 = distinct !DISubprogram(name: "as_ptr<u8>", linkageName: "_RNvMNtCsgxBkk5gSRhY_4core5sliceSh6as_ptrCscBbfQkuq0VR_6expand", scope: !3739, file: !3738, line: 728, type: !3740, scopeLine: 728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !224, retainedNodes: !3742)
!3738 = !DIFile(filename: "library/core/src/slice/mod.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "0e2876e145929ddccaef08a3691ff450")
!3739 = !DINamespace(name: "{impl#0}", scope: !563)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!222, !1200}
!3742 = !{!3736}
!3743 = !DILocation(line: 728, column: 25, scope: !3737, inlinedAt: !3744)
!3744 = !DILocation(line: 24, column: 61, scope: !3718, inlinedAt: !3722)
!3745 = !DILocation(line: 2122, column: 15, scope: !3723, inlinedAt: !3735)
!3746 = !DILocation(line: 515, column: 18, scope: !3695, inlinedAt: !3706)
!3747 = !DILocation(line: 19, column: 18, scope: !3709, inlinedAt: !3722)
!3748 = !DILocation(line: 728, column: 25, scope: !3737, inlinedAt: !3749)
!3749 = !DILocation(line: 24, column: 77, scope: !3718, inlinedAt: !3722)
!3750 = !DILocation(line: 2122, column: 22, scope: !3723, inlinedAt: !3735)
!3751 = !DILocation(line: 20, column: 19, scope: !3709, inlinedAt: !3722)
!3752 = !DILocation(line: 20, column: 13, scope: !3718, inlinedAt: !3722)
!3753 = !DILocalVariable(name: "len", arg: 3, scope: !3754, file: !3710, line: 151, type: !9)
!3754 = distinct !DISubprogram(name: "equal_same_length<u8, u8>", linkageName: "_RNvXs3_NtNtCsgxBkk5gSRhY_4core5slice3cmphINtB5_14SlicePartialEqhE17equal_same_lengthCs5bPnpBtHkbg_4libc", scope: !3755, file: !3710, line: 151, type: !3756, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !3763, retainedNodes: !3758)
!3755 = !DINamespace(name: "{impl#5}", scope: !3712)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!1349, !222, !222, !9}
!3758 = !{!3759, !3760, !3753, !3761}
!3759 = !DILocalVariable(name: "lhs", arg: 1, scope: !3754, file: !3710, line: 151, type: !222)
!3760 = !DILocalVariable(name: "rhs", arg: 2, scope: !3754, file: !3710, line: 151, type: !222)
!3761 = !DILocalVariable(name: "size", scope: !3762, file: !3710, line: 156, type: !9, align: 64)
!3762 = distinct !DILexicalBlock(scope: !3754, file: !3710, line: 156, column: 13)
!3763 = !{!3764, !3765}
!3764 = !DITemplateTypeParameter(name: "A", type: !223)
!3765 = !DITemplateTypeParameter(name: "B", type: !223)
!3766 = !DILocation(line: 151, column: 66, scope: !3754, inlinedAt: !3767)
!3767 = !DILocation(line: 24, column: 22, scope: !3718, inlinedAt: !3722)
!3768 = !DILocation(line: 156, column: 17, scope: !3762, inlinedAt: !3767)
!3769 = !DILocation(line: 21, column: 12, scope: !3718, inlinedAt: !3722)
!3770 = !DILocation(line: 26, column: 13, scope: !3718, inlinedAt: !3722)
!3771 = !DILocation(line: 21, column: 9, scope: !3718, inlinedAt: !3722)
!3772 = !DILocation(line: 729, column: 9, scope: !3737, inlinedAt: !3744)
!3773 = !DILocation(line: 151, column: 33, scope: !3754, inlinedAt: !3767)
!3774 = !DILocation(line: 729, column: 9, scope: !3737, inlinedAt: !3749)
!3775 = !DILocation(line: 151, column: 51, scope: !3754, inlinedAt: !3767)
!3776 = !DILocation(line: 157, column: 13, scope: !3762, inlinedAt: !3767)
!3777 = !DILocation(line: 264, column: 9, scope: !3674, inlinedAt: !3686)
!3778 = !DILocation(line: 2699, column: 14, scope: !3590)
!3779 = distinct !DISubprogram(name: "fmt", linkageName: "_RNvXs2_Cs9xOv1NcnHfv_9uu_expandNtB5_10ParseErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmtCscBbfQkuq0VR_6expand", scope: !3780, file: !552, line: 45, type: !3781, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !3784)
!3780 = !DINamespace(name: "{impl#4}", scope: !188)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!659, !3783, !675}
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&uu_expand::ParseError", baseType: !187, size: 64, align: 64, dwarfAddressSpace: 0)
!3784 = !{!3785, !3786, !3787, !3789, !3791, !3792, !3794}
!3785 = !DILocalVariable(name: "self", arg: 1, scope: !3779, file: !552, line: 45, type: !3783)
!3786 = !DILocalVariable(name: "f", arg: 2, scope: !3779, file: !552, line: 45, type: !675)
!3787 = !DILocalVariable(name: "__self_0", scope: !3788, file: !552, line: 48, type: !270, align: 64)
!3788 = distinct !DILexicalBlock(scope: !3779, file: !552, line: 45, column: 10)
!3789 = !DILocalVariable(name: "__self_0", scope: !3790, file: !552, line: 50, type: !270, align: 64)
!3790 = distinct !DILexicalBlock(scope: !3779, file: !552, line: 45, column: 10)
!3791 = !DILocalVariable(name: "__self_1", scope: !3790, file: !552, line: 50, type: !270, align: 64)
!3792 = !DILocalVariable(name: "__self_0", scope: !3793, file: !552, line: 52, type: !270, align: 64)
!3793 = distinct !DILexicalBlock(scope: !3779, file: !552, line: 45, column: 10)
!3794 = !DILocalVariable(name: "__self_0", scope: !3795, file: !552, line: 56, type: !270, align: 64)
!3795 = distinct !DILexicalBlock(scope: !3779, file: !552, line: 45, column: 10)
!3796 = !DILocation(line: 45, column: 10, scope: !3779)
!3797 = !DILocation(line: 48, column: 22, scope: !3788)
!3798 = !DILocation(line: 50, column: 41, scope: !3790)
!3799 = !DILocation(line: 52, column: 39, scope: !3793)
!3800 = !DILocation(line: 56, column: 21, scope: !3795)
!3801 = !DILocation(line: 48, column: 22, scope: !3779)
!3802 = !DILocation(line: 45, column: 10, scope: !3788)
!3803 = !DILocation(line: 50, column: 33, scope: !3779)
!3804 = !DILocation(line: 50, column: 33, scope: !3790)
!3805 = !DILocation(line: 50, column: 41, scope: !3779)
!3806 = !DILocation(line: 45, column: 10, scope: !3790)
!3807 = !DILocation(line: 52, column: 39, scope: !3779)
!3808 = !DILocation(line: 45, column: 10, scope: !3793)
!3809 = !DILocation(line: 56, column: 21, scope: !3779)
!3810 = !DILocation(line: 45, column: 10, scope: !3795)
!3811 = !DILocation(line: 45, column: 15, scope: !3779)
!3812 = distinct !DISubprogram(name: "fmt", linkageName: "_RNvXs2_NtNtCsbRzQFPXpg46_3nix5errno6constsNtB5_5ErrnoNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmtCscBbfQkuq0VR_6expand", scope: !3814, file: !3813, line: 1092, type: !3815, scopeLine: 1092, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !3818)
!3813 = !DIFile(filename: "src/errno.rs", directory: "/usr/local/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/nix-0.31.3", checksumkind: CSK_MD5, checksum: "7647744daa91be964b416c972f2d3610")
!3814 = !DINamespace(name: "{impl#4}", scope: !33)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!659, !3817, !675}
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&nix::errno::consts::Errno", baseType: !32, size: 64, align: 64, dwarfAddressSpace: 0)
!3818 = !{!3819, !3820}
!3819 = !DILocalVariable(name: "self", arg: 1, scope: !3812, file: !3813, line: 1092, type: !3817)
!3820 = !DILocalVariable(name: "f", arg: 2, scope: !3812, file: !3813, line: 1092, type: !675)
!3821 = !DILocation(line: 1092, column: 27, scope: !3812)
!3822 = !{!"address", !"read_provenance"}
!3823 = !DILocation(line: 1092, column: 31, scope: !3812)
!3824 = !DILocation(line: 1092, column: 32, scope: !3812)
!3825 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXs6_NtNtCs9k3SxhrAWiO_3std3ffi6os_strNtB5_8OsStringNtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCscBbfQkuq0VR_6expand", scope: !3827, file: !3826, line: 697, type: !1305, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !3828)
!3826 = !DIFile(filename: "library/std/src/ffi/os_str.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "9dd7eb6dcb910b91beaf0dec660be6f2")
!3827 = !DINamespace(name: "{impl#8}", scope: !571)
!3828 = !{!3829}
!3829 = !DILocalVariable(name: "self", arg: 1, scope: !3825, file: !3826, line: 697, type: !588)
!3830 = !DILocation(line: 697, column: 14, scope: !3825)
!3831 = !DILocalVariable(name: "self", arg: 1, scope: !3832, file: !3833, line: 73, type: !3837)
!3832 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXs5_NtNtNtCs9k3SxhrAWiO_3std3sys6os_str5bytesNtB5_3BufNtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCscBbfQkuq0VR_6expand", scope: !3834, file: !3833, line: 73, type: !3835, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !3838)
!3833 = !DIFile(filename: "library/std/src/sys/os_str/bytes.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "c28b11c2308cd45606834e84f40120b2")
!3834 = !DINamespace(name: "{impl#7}", scope: !576)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!575, !3837}
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&std::sys::os_str::bytes::Buf", baseType: !575, size: 64, align: 64, dwarfAddressSpace: 0)
!3838 = !{!3831}
!3839 = !DILocation(line: 73, column: 14, scope: !3832, inlinedAt: !3840)
!3840 = !DILocation(line: 698, column: 38, scope: !3825)
!3841 = !DILocation(line: 74, column: 33, scope: !3832, inlinedAt: !3840)
!3842 = !DILocation(line: 74, column: 9, scope: !3832, inlinedAt: !3840)
!3843 = !DILocation(line: 698, column: 9, scope: !3825)
!3844 = !DILocation(line: 699, column: 6, scope: !3825)
!3845 = distinct !DISubprogram(name: "report", linkageName: "_RNvXsU_NtCs9k3SxhrAWiO_3std7processuNtB5_11Termination6reportCscBbfQkuq0VR_6expand", scope: !3846, file: !2495, line: 2690, type: !3847, scopeLine: 2690, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !3849)
!3846 = !DINamespace(name: "{impl#58}", scope: !2497)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!2496, !7}
!3849 = !{!3850}
!3850 = !DILocalVariable(arg: 1, scope: !3845, file: !2495, line: 2690, type: !7)
!3851 = !DILocation(line: 2690, column: 15, scope: !3845)
!3852 = !DILocation(line: 2692, column: 6, scope: !3845)
!3853 = distinct !DISubprogram(name: "spec_extend<std::ffi::os_str::OsString, core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>, alloc::alloc::Global>", linkageName: "_RNvXs_NtNtCs6i54tJFfzR_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringEINtB4_10SpecExtendBS_INtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters6cloned6ClonedINtNtNtB25_5slice4iter4IterBS_EEE11spec_extendCscBbfQkuq0VR_6expand", scope: !3855, file: !3854, line: 26, type: !1090, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !3860, retainedNodes: !3857)
!3854 = !DIFile(filename: "library/alloc/src/vec/spec_extend.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "4ca86086df4f92d26bd5516641ae6bb5")
!3855 = !DINamespace(name: "{impl#1}", scope: !3856)
!3856 = !DINamespace(name: "spec_extend", scope: !202)
!3857 = !{!3858, !3859}
!3858 = !DILocalVariable(name: "self", arg: 1, scope: !3853, file: !3854, line: 26, type: !1092)
!3859 = !DILocalVariable(name: "iterator", arg: 2, scope: !3853, file: !3854, line: 26, type: !555)
!3860 = !{!582, !2390, !239}
!3861 = !DILocation(line: 26, column: 28, scope: !3853)
!3862 = !DILocation(line: 26, column: 39, scope: !3853)
!3863 = !DILocation(line: 27, column: 14, scope: !3853)
!3864 = !DILocation(line: 28, column: 6, scope: !3853)
!3865 = distinct !DISubprogram(name: "from_iter<std::ffi::os_str::OsString, core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>>", linkageName: "_RNvXs_NtNtCs6i54tJFfzR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringEINtB4_18SpecFromIterNestedB12_INtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters6cloned6ClonedINtNtNtB2o_5slice4iter4IterB12_EEE9from_iterCscBbfQkuq0VR_6expand", scope: !3867, file: !3866, line: 50, type: !2385, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !2389, retainedNodes: !3869)
!3866 = !DIFile(filename: "library/alloc/src/vec/spec_from_iter_nested.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "f1ca97f56309a9c2b99339993bd752ef")
!3867 = !DINamespace(name: "{impl#1}", scope: !3868)
!3868 = !DINamespace(name: "spec_from_iter_nested", scope: !202)
!3869 = !{!3870, !3871, !3873}
!3870 = !DILocalVariable(name: "iterator", arg: 1, scope: !3865, file: !3866, line: 50, type: !555)
!3871 = !DILocalVariable(name: "vector", scope: !3872, file: !3866, line: 51, type: !1080, align: 64)
!3872 = distinct !DILexicalBlock(scope: !3865, file: !3866, line: 51, column: 9)
!3873 = !DILocalVariable(name: "upper", scope: !3874, file: !3866, line: 52, type: !9, align: 64)
!3874 = distinct !DILexicalBlock(scope: !3865, file: !3866, line: 52, column: 13)
!3875 = !DILocation(line: 50, column: 18, scope: !3865)
!3876 = !DILocation(line: 51, column: 13, scope: !3872)
!3877 = !DILocalVariable(name: "alloc", scope: !3878, file: !1079, line: 974, type: !236, align: 8)
!3878 = distinct !DISubprogram(name: "with_capacity_in<std::ffi::os_str::OsString, alloc::alloc::Global>", linkageName: "_RNvMsF_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringE16with_capacity_inCscBbfQkuq0VR_6expand", scope: !1080, file: !1079, line: 974, type: !3879, scopeLine: 974, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !1088, declaration: !3881, retainedNodes: !3882)
!3879 = !DISubroutineType(types: !3880)
!3880 = !{!1080, !9, !236}
!3881 = !DISubprogram(name: "with_capacity_in<std::ffi::os_str::OsString, alloc::alloc::Global>", linkageName: "_RNvMsF_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringE16with_capacity_inCscBbfQkuq0VR_6expand", scope: !1080, file: !1079, line: 974, type: !3879, scopeLine: 974, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !1088)
!3882 = !{!3883, !3877}
!3883 = !DILocalVariable(name: "capacity", arg: 1, scope: !3878, file: !1079, line: 974, type: !9)
!3884 = !DILocation(line: 974, column: 46, scope: !3878, inlinedAt: !3885)
!3885 = !DILocation(line: 522, column: 9, scope: !3886, inlinedAt: !3892)
!3886 = distinct !DISubprogram(name: "with_capacity<std::ffi::os_str::OsString>", linkageName: "_RNvMNtCs6i54tJFfzR_5alloc3vecINtB2_3VecNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringE13with_capacityCs4VqSFjx4n5U_12clap_builder", scope: !1080, file: !1079, line: 521, type: !3887, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !581, declaration: !3889, retainedNodes: !3890)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!1080, !9}
!3889 = !DISubprogram(name: "with_capacity<std::ffi::os_str::OsString>", linkageName: "_RNvMNtCs6i54tJFfzR_5alloc3vecINtB2_3VecNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringE13with_capacityCs4VqSFjx4n5U_12clap_builder", scope: !1080, file: !1079, line: 521, type: !3887, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !581)
!3890 = !{!3891}
!3891 = !DILocalVariable(name: "capacity", arg: 1, scope: !3886, file: !1079, line: 521, type: !9)
!3892 = !DILocation(line: 52, column: 33, scope: !3874)
!3893 = !DILocalVariable(name: "alloc", scope: !3894, file: !1209, line: 175, type: !236, align: 8)
!3894 = distinct !DISubprogram(name: "with_capacity_in<std::ffi::os_str::OsString, alloc::alloc::Global>", linkageName: "_RNvMs4_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringE16with_capacity_inCscBbfQkuq0VR_6expand", scope: !1083, file: !1209, line: 175, type: !3895, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !1088, declaration: !3897, retainedNodes: !3898)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{!1083, !9, !236}
!3897 = !DISubprogram(name: "with_capacity_in<std::ffi::os_str::OsString, alloc::alloc::Global>", linkageName: "_RNvMs4_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringE16with_capacity_inCscBbfQkuq0VR_6expand", scope: !1083, file: !1209, line: 175, type: !3895, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !1088)
!3898 = !{!3899, !3893}
!3899 = !DILocalVariable(name: "capacity", arg: 1, scope: !3894, file: !1209, line: 175, type: !9)
!3900 = !DILocation(line: 175, column: 53, scope: !3894, inlinedAt: !3901)
!3901 = !DILocation(line: 975, column: 20, scope: !3878, inlinedAt: !3885)
!3902 = !DILocation(line: 51, column: 13, scope: !3865)
!3903 = !DILocation(line: 51, column: 41, scope: !3865)
!3904 = !DILocation(line: 62, column: 5, scope: !3865)
!3905 = !DILocation(line: 51, column: 32, scope: !3865)
!3906 = !DILocation(line: 51, column: 26, scope: !3865)
!3907 = !DILocation(line: 52, column: 22, scope: !3865)
!3908 = !DILocation(line: 52, column: 22, scope: !3874)
!3909 = !DILocation(line: 521, column: 32, scope: !3886, inlinedAt: !3892)
!3910 = !DILocation(line: 974, column: 29, scope: !3878, inlinedAt: !3885)
!3911 = !DILocation(line: 175, column: 36, scope: !3894, inlinedAt: !3901)
!3912 = !DILocation(line: 177, column: 20, scope: !3894, inlinedAt: !3901)
!3913 = !DILocation(line: 57, column: 18, scope: !3865)
!3914 = !DILocalVariable(name: "s", arg: 1, scope: !3915, file: !1010, line: 815, type: !716)
!3915 = distinct !DISubprogram(name: "from_str", linkageName: "_RNvMs4_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Arguments8from_strCscBbfQkuq0VR_6expand", scope: !1011, file: !1010, line: 815, type: !1174, scopeLine: 815, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, declaration: !1176, retainedNodes: !3916)
!3916 = !{!3914}
!3917 = !DILocation(line: 815, column: 27, scope: !3915, inlinedAt: !3913)
!3918 = !DILocalVariable(name: "self", arg: 1, scope: !3919, file: !1181, line: 589, type: !716)
!3919 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMNtCsgxBkk5gSRhY_4core3stre6as_ptr", scope: !1182, file: !1181, line: 589, type: !1184, scopeLine: 589, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !3920)
!3920 = !{!3918}
!3921 = !DILocation(line: 589, column: 25, scope: !3919, inlinedAt: !3922)
!3922 = !DILocation(line: 819, column: 44, scope: !3915, inlinedAt: !3913)
!3923 = !DILocalVariable(name: "self", arg: 1, scope: !3924, file: !1181, line: 154, type: !716)
!3924 = distinct !DISubprogram(name: "len", linkageName: "_RNvMNtCsgxBkk5gSRhY_4core3stre3lenCscBbfQkuq0VR_6expand", scope: !1182, file: !1181, line: 154, type: !1191, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !3925)
!3925 = !{!3923}
!3926 = !DILocation(line: 154, column: 22, scope: !3924, inlinedAt: !3927)
!3927 = !DILocation(line: 820, column: 40, scope: !3915, inlinedAt: !3913)
!3928 = !DILocalVariable(name: "self", arg: 1, scope: !3929, file: !1181, line: 513, type: !716)
!3929 = distinct !DISubprogram(name: "as_bytes", linkageName: "_RNvMNtCsgxBkk5gSRhY_4core3stre8as_bytes", scope: !1182, file: !1181, line: 513, type: !1198, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !3930)
!3930 = !{!3928}
!3931 = !DILocation(line: 513, column: 27, scope: !3929, inlinedAt: !3932)
!3932 = !DILocation(line: 155, column: 14, scope: !3924, inlinedAt: !3927)
!3933 = !DILocation(line: 975, column: 9, scope: !3878, inlinedAt: !3885)
!3934 = !DILocation(line: 60, column: 28, scope: !3872)
!3935 = !DILocation(line: 60, column: 16, scope: !3872)
!3936 = !DILocation(line: 61, column: 9, scope: !3872)
!3937 = !DILocation(line: 62, column: 6, scope: !3865)
!3938 = !DILocation(line: 50, column: 5, scope: !3865)
!3939 = distinct !DISubprogram(name: "fmt", linkageName: "_RNvXs_NtNtCslPRUPRFQ4qs_13fluent_syntax6parser6errorsNtB4_11ParserErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmtCscBbfQkuq0VR_6expand", scope: !3941, file: !3940, line: 95, type: !3942, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !3944)
!3940 = !DIFile(filename: "src/parser/errors.rs", directory: "/usr/local/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/fluent-syntax-0.12.0", checksumkind: CSK_MD5, checksum: "a7e251309215b4793159540ec604af0f")
!3941 = !DINamespace(name: "{impl#1}", scope: !327)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!659, !987, !675}
!3944 = !{!3945, !3946}
!3945 = !DILocalVariable(name: "self", arg: 1, scope: !3939, file: !3940, line: 95, type: !987)
!3946 = !DILocalVariable(name: "f", arg: 2, scope: !3939, file: !3940, line: 95, type: !675)
!3947 = !DILocation(line: 95, column: 17, scope: !3939)
!3948 = !DILocation(line: 99, column: 5, scope: !3939)
!3949 = !DILocation(line: 104, column: 5, scope: !3939)
!3950 = !DILocation(line: 95, column: 22, scope: !3939)
!3951 = distinct !DISubprogram(name: "size_hint<core::slice::iter::Iter<std::ffi::os_str::OsString>, std::ffi::os_str::OsString>", linkageName: "_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator9size_hintCscBbfQkuq0VR_6expand", scope: !2327, file: !2326, line: 44, type: !3952, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !3957, retainedNodes: !3955)
!3952 = !DISubroutineType(types: !3953)
!3953 = !{!1132, !3954}
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<std::ffi::os_str::OsString>>", baseType: !555, size: 64, align: 64, dwarfAddressSpace: 0)
!3955 = !{!3956}
!3956 = !DILocalVariable(name: "self", arg: 1, scope: !3951, file: !2326, line: 44, type: !3954)
!3957 = !{!590, !582}
!3958 = !DILocation(line: 44, column: 18, scope: !3951)
!3959 = !DILocation(line: 45, column: 17, scope: !3951)
!3960 = !DILocation(line: 46, column: 6, scope: !3951)
!3961 = distinct !DISubprogram(name: "branch<uu_expand::Options, uu_expand::ParseError>", linkageName: "_RNvXsp_NtCsgxBkk5gSRhY_4core6resultINtB5_6ResultNtCs9xOv1NcnHfv_9uu_expand7OptionsNtBM_10ParseErrorENtNtNtB7_3ops9try_trait3Try6branchCscBbfQkuq0VR_6expand", scope: !2767, file: !768, line: 2175, type: !3962, scopeLine: 2175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !3988, retainedNodes: !3994)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!3964, !3980}
!3964 = !DICompositeType(tag: DW_TAG_structure_type, name: "ControlFlow<core::result::Result<core::convert::Infallible, uu_expand::ParseError>, uu_expand::Options>", scope: !2771, file: !2, size: 448, align: 64, flags: DIFlagPublic, elements: !3965, templateParams: !23, identifier: "ef5fa91d3927dea8aaae9ebf6d1a0732")
!3965 = !{!3966}
!3966 = !DICompositeType(tag: DW_TAG_variant_part, scope: !3964, file: !2, size: 448, align: 64, elements: !3967, templateParams: !23, identifier: "b8ff59d496f9469473b7772654cb743a", discriminator: !3979)
!3967 = !{!3968, !3975}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "Continue", scope: !3966, file: !2, baseType: !3969, size: 448, align: 64)
!3969 = !DICompositeType(tag: DW_TAG_structure_type, name: "Continue", scope: !3964, file: !2, size: 448, align: 64, flags: DIFlagPublic, elements: !3970, templateParams: !3972, identifier: "3453ec885250b26cdec7c7f20e468c4f")
!3970 = !{!3971}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !3969, file: !2, baseType: !1334, size: 448, align: 64, flags: DIFlagPublic)
!3972 = !{!3973, !3974}
!3973 = !DITemplateTypeParameter(name: "B", type: !2129)
!3974 = !DITemplateTypeParameter(name: "C", type: !1334)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "Break", scope: !3966, file: !2, baseType: !3976, size: 448, align: 64, extraData: i64 -1)
!3976 = !DICompositeType(tag: DW_TAG_structure_type, name: "Break", scope: !3964, file: !2, size: 448, align: 64, flags: DIFlagPublic, elements: !3977, templateParams: !3972, identifier: "1a9f11124daf35e54a2e645068b08292")
!3977 = !{!3978}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !3976, file: !2, baseType: !2129, size: 384, align: 64, offset: 64, flags: DIFlagPublic)
!3979 = !DIDerivedType(tag: DW_TAG_member, scope: !3964, file: !2, baseType: !261, size: 64, align: 64, flags: DIFlagArtificial)
!3980 = !DICompositeType(tag: DW_TAG_structure_type, name: "Result<uu_expand::Options, uu_expand::ParseError>", scope: !596, file: !2, size: 448, align: 64, flags: DIFlagPublic, elements: !3981, templateParams: !23, identifier: "ffcdf71c131cfd2bb8d0824b473f2008")
!3981 = !{!3982}
!3982 = !DICompositeType(tag: DW_TAG_variant_part, scope: !3980, file: !2, size: 448, align: 64, elements: !3983, templateParams: !23, identifier: "736fa5fdc43060bd8f0d7676b32f3f63", discriminator: !3993)
!3983 = !{!3984, !3989}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !3982, file: !2, baseType: !3985, size: 448, align: 64)
!3985 = !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !3980, file: !2, size: 448, align: 64, flags: DIFlagPublic, elements: !3986, templateParams: !3988, identifier: "1effc3955f34fbc237c597882b52924")
!3986 = !{!3987}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !3985, file: !2, baseType: !1334, size: 448, align: 64, flags: DIFlagPublic)
!3988 = !{!1355, !2138}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !3982, file: !2, baseType: !3990, size: 448, align: 64, extraData: i64 -1)
!3990 = !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !3980, file: !2, size: 448, align: 64, flags: DIFlagPublic, elements: !3991, templateParams: !3988, identifier: "623df862602e99a311552668ce0e3884")
!3991 = !{!3992}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !3990, file: !2, baseType: !187, size: 384, align: 64, offset: 64, flags: DIFlagPublic)
!3993 = !DIDerivedType(tag: DW_TAG_member, scope: !3980, file: !2, baseType: !261, size: 64, align: 64, flags: DIFlagArtificial)
!3994 = !{!3995, !3996, !3998}
!3995 = !DILocalVariable(name: "self", arg: 1, scope: !3961, file: !768, line: 2175, type: !3980)
!3996 = !DILocalVariable(name: "v", scope: !3997, file: !768, line: 2177, type: !1334, align: 64)
!3997 = distinct !DILexicalBlock(scope: !3961, file: !768, line: 2177, column: 13)
!3998 = !DILocalVariable(name: "e", scope: !3999, file: !768, line: 2178, type: !187, align: 64)
!3999 = distinct !DILexicalBlock(scope: !3961, file: !768, line: 2178, column: 13)
!4000 = !DILocation(line: 2175, column: 15, scope: !3961)
!4001 = !DILocation(line: 2177, column: 16, scope: !3997)
!4002 = !DILocation(line: 2178, column: 17, scope: !3999)
!4003 = !DILocation(line: 2176, column: 15, scope: !3961)
!4004 = !DILocation(line: 2176, column: 9, scope: !3961)
!4005 = !DILocation(line: 2178, column: 17, scope: !3961)
!4006 = !DILocation(line: 2178, column: 42, scope: !3999)
!4007 = !DILocation(line: 2178, column: 23, scope: !3999)
!4008 = !DILocation(line: 2178, column: 48, scope: !3961)
!4009 = !DILocation(line: 2177, column: 16, scope: !3961)
!4010 = !DILocation(line: 2177, column: 22, scope: !3997)
!4011 = !DILocation(line: 2177, column: 45, scope: !3961)
!4012 = !DILocation(line: 2180, column: 6, scope: !3961)
!4013 = distinct !DISubprogram(name: "from_residual<(), uu_expand::ParseError, alloc::boxed::Box<dyn uucore::mods::error::UError, alloc::alloc::Global>>", linkageName: "_RNvXsq_NtCsgxBkk5gSRhY_4core6resultINtB5_6ResultuINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtCs1iFJFqccjfm_6uucore4mods5error6UErrorEL_EEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtCs9xOv1NcnHfv_9uu_expand10ParseErrorEE13from_residualCscBbfQkuq0VR_6expand", scope: !2858, file: !768, line: 2190, type: !4014, scopeLine: 2190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !4020, retainedNodes: !4016)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!595, !2129, !912}
!4016 = !{!4017, !4018}
!4017 = !DILocalVariable(name: "residual", arg: 1, scope: !4013, file: !768, line: 2190, type: !2129)
!4018 = !DILocalVariable(name: "e", scope: !4019, file: !768, line: 2192, type: !187, align: 64)
!4019 = distinct !DILexicalBlock(scope: !4013, file: !768, line: 2192, column: 13)
!4020 = !{!605, !2138, !4021}
!4021 = !DITemplateTypeParameter(name: "F", type: !607)
!4022 = !DILocation(line: 2190, column: 22, scope: !4013)
!4023 = !DILocation(line: 2192, column: 17, scope: !4019)
!4024 = !DILocation(line: 2192, column: 17, scope: !4013)
!4025 = !DILocation(line: 2192, column: 27, scope: !4019)
!4026 = !DILocation(line: 2194, column: 6, scope: !4013)
!4027 = distinct !DISubprogram(name: "fmt", linkageName: "_RNvXsr_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmtCscBbfQkuq0VR_6expand", scope: !4028, file: !3591, line: 2746, type: !4029, scopeLine: 2746, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !4031)
!4028 = !DINamespace(name: "{impl#29}", scope: !197)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!659, !270, !675}
!4031 = !{!4032, !4033}
!4032 = !DILocalVariable(name: "self", arg: 1, scope: !4027, file: !3591, line: 2746, type: !270)
!4033 = !DILocalVariable(name: "f", arg: 2, scope: !4027, file: !3591, line: 2746, type: !675)
!4034 = !DILocation(line: 2746, column: 12, scope: !4027)
!4035 = !DILocalVariable(name: "self", arg: 1, scope: !4036, file: !3591, line: 2849, type: !270)
!4036 = distinct !DISubprogram(name: "deref", linkageName: "_RNvXsx_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtNtCsgxBkk5gSRhY_4core3ops5deref5Deref5derefCscBbfQkuq0VR_6expand", scope: !4037, file: !3591, line: 2849, type: !3613, scopeLine: 2849, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, retainedNodes: !4038)
!4037 = !DINamespace(name: "{impl#35}", scope: !197)
!4038 = !{!4035}
!4039 = !DILocation(line: 2849, column: 14, scope: !4036, inlinedAt: !4040)
!4040 = !DILocation(line: 2747, column: 26, scope: !4027)
!4041 = !DILocalVariable(name: "self", arg: 1, scope: !4042, file: !3591, line: 1057, type: !270)
!4042 = distinct !DISubprogram(name: "as_str", linkageName: "_RNvMNtCs6i54tJFfzR_5alloc6stringNtB2_6String6as_strCscBbfQkuq0VR_6expand", scope: !196, file: !3591, line: 1057, type: !3613, scopeLine: 1057, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !23, declaration: !3615, retainedNodes: !4043)
!4043 = !{!4041}
!4044 = !DILocation(line: 1057, column: 25, scope: !4042, inlinedAt: !4045)
!4045 = !DILocation(line: 2850, column: 14, scope: !4036, inlinedAt: !4040)
!4046 = !DILocation(line: 2746, column: 19, scope: !4027)
!4047 = !DILocation(line: 615, column: 9, scope: !4048, inlinedAt: !4049)
!4048 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCs6i54tJFfzR_5alloc7raw_vecNtB6_11RawVecInner8non_nullhECscBbfQkuq0VR_6expand", scope: !209, file: !1209, line: 614, type: !3634, scopeLine: 614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !3637, declaration: !3636)
!4049 = !DILocation(line: 610, column: 14, scope: !4050, inlinedAt: !4051)
!4050 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCs6i54tJFfzR_5alloc7raw_vecNtB6_11RawVecInner3ptrhECscBbfQkuq0VR_6expand", scope: !209, file: !1209, line: 609, type: !3640, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !3637, declaration: !3642)
!4051 = !DILocation(line: 296, column: 20, scope: !4052, inlinedAt: !4053)
!4052 = distinct !DISubprogram(name: "ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechE3ptrCscBbfQkuq0VR_6expand", scope: !205, file: !1209, line: 295, type: !3645, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !241, declaration: !3648)
!4053 = !DILocation(line: 1977, column: 18, scope: !4054, inlinedAt: !4055)
!4054 = distinct !DISubprogram(name: "as_ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE6as_ptrCscBbfQkuq0VR_6expand", scope: !201, file: !1079, line: 1974, type: !3651, scopeLine: 1974, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !241, declaration: !3654)
!4055 = !DILocation(line: 1873, column: 76, scope: !4056, inlinedAt: !4057)
!4056 = distinct !DISubprogram(name: "as_slice<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE8as_sliceCscBbfQkuq0VR_6expand", scope: !201, file: !1079, line: 1856, type: !3657, scopeLine: 1856, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !241, declaration: !3659)
!4057 = !DILocation(line: 1060, column: 52, scope: !4042, inlinedAt: !4045)
!4058 = !DILocation(line: 1873, column: 86, scope: !4056, inlinedAt: !4057)
!4059 = !DILocation(line: 2747, column: 9, scope: !4027)
!4060 = !DILocation(line: 2748, column: 6, scope: !4027)
!4061 = distinct !DISubprogram(name: "call_once<fn(), ()>", linkageName: "_RNvYFEuINtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceuE9call_onceCscBbfQkuq0VR_6expand", scope: !2605, file: !2604, line: 250, type: !2076, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !4065, retainedNodes: !4062)
!4062 = !{!4063, !4064}
!4063 = !DILocalVariable(arg: 1, scope: !4061, file: !2604, line: 250, type: !20)
!4064 = !DILocalVariable(arg: 2, scope: !4061, file: !2604, line: 250, type: !7)
!4065 = !{!4066, !2615}
!4066 = !DITemplateTypeParameter(name: "Self", type: !20)
!4067 = !DILocation(line: 250, column: 5, scope: !4061)
!4068 = distinct !DISubprogram(name: "call_once<std::rt::lang_start::{closure_env#0}<()>, ()>", linkageName: "_RNvYNCINvNtCs9k3SxhrAWiO_3std2rt10lang_startuE0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceuE9call_onceCscBbfQkuq0VR_6expand", scope: !2605, file: !2604, line: 250, type: !4069, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !2613, retainedNodes: !4071)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!36, !14}
!4071 = !{!4072, !4073}
!4072 = !DILocalVariable(arg: 1, scope: !4068, file: !2604, line: 250, type: !14)
!4073 = !DILocalVariable(arg: 2, scope: !4068, file: !2604, line: 250, type: !7)
!4074 = !DILocation(line: 250, column: 5, scope: !4068)
!4075 = distinct !DISubprogram(name: "description<uu_expand::ParseError>", linkageName: "_RNvYNtCs9xOv1NcnHfv_9uu_expand10ParseErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCscBbfQkuq0VR_6expand", scope: !4077, file: !4076, line: 137, type: !4079, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !4083, retainedNodes: !4081)
!4076 = !DIFile(filename: "library/core/src/error.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "258b0c62d22813c2978ac1d984d5f9f9")
!4077 = !DINamespace(name: "Error", scope: !4078)
!4078 = !DINamespace(name: "error", scope: !215)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{!716, !3783}
!4081 = !{!4082}
!4082 = !DILocalVariable(name: "self", arg: 1, scope: !4075, file: !4076, line: 137, type: !3783)
!4083 = !{!4084}
!4084 = !DITemplateTypeParameter(name: "Self", type: !187)
!4085 = !DILocation(line: 137, column: 20, scope: !4075)
!4086 = !DILocation(line: 139, column: 6, scope: !4075)
!4087 = distinct !DISubprogram(name: "cause<uu_expand::ParseError>", linkageName: "_RNvYNtCs9xOv1NcnHfv_9uu_expand10ParseErrorNtNtCsgxBkk5gSRhY_4core5error5Error5causeCscBbfQkuq0VR_6expand", scope: !4077, file: !4076, line: 147, type: !4088, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !4083, retainedNodes: !4109)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{!4090, !3783}
!4090 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<&dyn core::error::Error>", scope: !304, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !4091, templateParams: !23, identifier: "a9398f76c4ff0739a9595a681c874d36")
!4091 = !{!4092}
!4092 = !DICompositeType(tag: DW_TAG_variant_part, scope: !4090, file: !2, size: 128, align: 64, elements: !4093, templateParams: !23, identifier: "fbfb171878bf45a151269c08a846587e", discriminator: !4108)
!4093 = !{!4094, !4104}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !4092, file: !2, baseType: !4095, size: 128, align: 64, extraData: i64 0)
!4095 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !4090, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !23, templateParams: !4096, identifier: "75c0f74cd6f3bad8a6ff1bc3c2b8fe8f")
!4096 = !{!4097}
!4097 = !DITemplateTypeParameter(name: "T", type: !4098)
!4098 = !DICompositeType(tag: DW_TAG_structure_type, name: "&dyn core::error::Error", file: !2, size: 128, align: 64, elements: !4099, templateParams: !23, identifier: "c9253a9ca8d49cf7e7ac3069cc2a53a3")
!4099 = !{!4100, !4103}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4098, file: !2, baseType: !4101, size: 64, align: 64)
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64, align: 64, dwarfAddressSpace: 0)
!4102 = !DICompositeType(tag: DW_TAG_structure_type, name: "dyn core::error::Error", file: !2, align: 8, elements: !23, identifier: "76bd08ea19e12c8d20b57541f63f4fdc")
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !4098, file: !2, baseType: !831, size: 64, align: 64, offset: 64)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !4092, file: !2, baseType: !4105, size: 128, align: 64)
!4105 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !4090, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !4106, templateParams: !4096, identifier: "a7964c8acb81cc829011c6f0eae281a9")
!4106 = !{!4107}
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !4105, file: !2, baseType: !4098, size: 128, align: 64, flags: DIFlagPublic)
!4108 = !DIDerivedType(tag: DW_TAG_member, scope: !4090, file: !2, baseType: !261, size: 64, align: 64, flags: DIFlagArtificial)
!4109 = !{!4110}
!4110 = !DILocalVariable(name: "self", arg: 1, scope: !4087, file: !4076, line: 147, type: !3783)
!4111 = !DILocation(line: 147, column: 14, scope: !4087)
!4112 = !DILocation(line: 148, column: 14, scope: !4087)
!4113 = !DILocation(line: 149, column: 6, scope: !4087)
!4114 = distinct !DISubprogram(name: "source<uu_expand::ParseError>", linkageName: "_RNvYNtCs9xOv1NcnHfv_9uu_expand10ParseErrorNtNtCsgxBkk5gSRhY_4core5error5Error6sourceCscBbfQkuq0VR_6expand", scope: !4077, file: !4076, line: 111, type: !4088, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !4083, retainedNodes: !4115)
!4115 = !{!4116}
!4116 = !DILocalVariable(name: "self", arg: 1, scope: !4114, file: !4076, line: 111, type: !3783)
!4117 = !DILocation(line: 111, column: 15, scope: !4114)
!4118 = !DILocation(line: 112, column: 9, scope: !4114)
!4119 = !DILocation(line: 113, column: 6, scope: !4114)
!4120 = distinct !DISubprogram(name: "provide<uu_expand::ParseError>", linkageName: "_RNvYNtCs9xOv1NcnHfv_9uu_expand10ParseErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideCscBbfQkuq0VR_6expand", scope: !4077, file: !4076, line: 260, type: !4121, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !4083, retainedNodes: !4142)
!4121 = !DISubroutineType(types: !4122)
!4122 = !{null, !3783, !4123}
!4123 = !DICompositeType(tag: DW_TAG_structure_type, name: "&mut core::error::Request", file: !2, size: 128, align: 64, elements: !4124, templateParams: !23, identifier: "e0cfb5450d6c429c3d01588f19396d22")
!4124 = !{!4125, !4137}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4123, file: !2, baseType: !4126, size: 64, align: 64)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64, align: 64, dwarfAddressSpace: 0)
!4127 = !DICompositeType(tag: DW_TAG_structure_type, name: "Request", scope: !4078, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !4128, templateParams: !23, identifier: "3f7bcaeb61bab0a79239fc32afebbaa7")
!4128 = !{!4129}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !4127, file: !2, baseType: !4130, size: 128, align: 64, flags: DIFlagPrivate)
!4130 = !DICompositeType(tag: DW_TAG_structure_type, name: "Tagged<dyn core::error::Erased>", scope: !4078, file: !2, size: 128, align: 64, flags: DIFlagPrivate, elements: !4131, templateParams: !4135, identifier: "365fb447e5d3f475381a5388f1d418ed")
!4131 = !{!4132, !4133}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "tag_id", scope: !4130, file: !2, baseType: !1459, size: 128, align: 64, flags: DIFlagPrivate)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4130, file: !2, baseType: !4134, align: 8, offset: 128, flags: DIFlagPrivate)
!4134 = !DICompositeType(tag: DW_TAG_structure_type, name: "dyn core::error::Erased", file: !2, align: 8, elements: !23, identifier: "f2b3ae0bc452b315a27159e04183bf0c")
!4135 = !{!4136}
!4136 = !DITemplateTypeParameter(name: "E", type: !4134)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !4123, file: !2, baseType: !4138, size: 64, align: 64, offset: 64)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&[usize; 3]", baseType: !4139, size: 64, align: 64, dwarfAddressSpace: 0)
!4139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 192, align: 64, elements: !4140)
!4140 = !{!4141}
!4141 = !DISubrange(count: 3, lowerBound: 0)
!4142 = !{!4143, !4144}
!4143 = !DILocalVariable(name: "self", arg: 1, scope: !4120, file: !4076, line: 260, type: !3783)
!4144 = !DILocalVariable(name: "request", arg: 2, scope: !4120, file: !4076, line: 260, type: !4123)
!4145 = !DILocation(line: 260, column: 20, scope: !4120)
!4146 = !DILocation(line: 260, column: 30, scope: !4120)
!4147 = !DILocation(line: 260, column: 59, scope: !4120)
!4148 = distinct !DISubprogram(name: "type_id<uu_expand::ParseError>", linkageName: "_RNvYNtCs9xOv1NcnHfv_9uu_expand10ParseErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idCscBbfQkuq0VR_6expand", scope: !4077, file: !4076, line: 122, type: !4149, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !4083, retainedNodes: !4153)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{!1459, !3783, !4151}
!4151 = !DICompositeType(tag: DW_TAG_structure_type, name: "Internal", scope: !4152, file: !2, align: 8, flags: DIFlagPublic, elements: !23, identifier: "ecc1cb6b75227157373f50e7efe436d2")
!4152 = !DINamespace(name: "private", scope: !4078)
!4153 = !{!4154, !4155}
!4154 = !DILocalVariable(name: "self", arg: 1, scope: !4148, file: !4076, line: 122, type: !3783)
!4155 = !DILocalVariable(arg: 2, scope: !4148, file: !4076, line: 122, type: !4151)
!4156 = !DILocation(line: 122, column: 16, scope: !4148)
!4157 = !DILocation(line: 122, column: 23, scope: !4148)
!4158 = !DILocation(line: 768, column: 9, scope: !4159, inlinedAt: !4164)
!4159 = distinct !DISubprogram(name: "of<uu_expand::ParseError>", linkageName: "_RINvMs8_NtCsgxBkk5gSRhY_4core3anyNtB6_6TypeId2ofNtCs9xOv1NcnHfv_9uu_expand10ParseErrorECscBbfQkuq0VR_6expand", scope: !1459, file: !4160, line: 767, type: !4161, scopeLine: 767, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !1327, declaration: !4163)
!4160 = !DIFile(filename: "library/core/src/any.rs", directory: "/rustc/48a229ceaefd4985c50990b14116b6d856af0985", checksumkind: CSK_MD5, checksum: "d9d6b9d8b337eba56c92301e41b89daa")
!4161 = !DISubroutineType(types: !4162)
!4162 = !{!1459}
!4163 = !DISubprogram(name: "of<uu_expand::ParseError>", linkageName: "_RINvMs8_NtCsgxBkk5gSRhY_4core3anyNtB6_6TypeId2ofNtCs9xOv1NcnHfv_9uu_expand10ParseErrorECscBbfQkuq0VR_6expand", scope: !1459, file: !4160, line: 767, type: !4161, scopeLine: 767, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !1327)
!4164 = !DILocation(line: 126, column: 9, scope: !4148)
!4165 = !DILocation(line: 127, column: 6, scope: !4148)
!4166 = distinct !DISubprogram(name: "code<uu_expand::ParseError>", linkageName: "_RNvYNtCs9xOv1NcnHfv_9uu_expand10ParseErrorNtNtNtCs1iFJFqccjfm_6uucore4mods5error6UError4codeCscBbfQkuq0VR_6expand", scope: !4167, file: !3543, line: 211, type: !4168, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !4083, retainedNodes: !4170)
!4167 = !DINamespace(name: "UError", scope: !3545)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{!36, !3783}
!4170 = !{!4171}
!4171 = !DILocalVariable(name: "self", arg: 1, scope: !4166, file: !3543, line: 211, type: !3783)
!4172 = !DILocation(line: 211, column: 13, scope: !4166)
!4173 = !DILocation(line: 213, column: 6, scope: !4166)
!4174 = distinct !DISubprogram(name: "usage<uu_expand::ParseError>", linkageName: "_RNvYNtCs9xOv1NcnHfv_9uu_expand10ParseErrorNtNtNtCs1iFJFqccjfm_6uucore4mods5error6UError5usageCscBbfQkuq0VR_6expand", scope: !4167, file: !3543, line: 265, type: !4175, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !4083, retainedNodes: !4177)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{!1349, !3783}
!4177 = !{!4178}
!4178 = !DILocalVariable(name: "self", arg: 1, scope: !4174, file: !3543, line: 265, type: !3783)
!4179 = !DILocation(line: 265, column: 14, scope: !4174)
!4180 = !DILocation(line: 267, column: 6, scope: !4174)
!4181 = distinct !DISubprogram(name: "call_mut<fn(&std::ffi::os_str::OsString) -> std::ffi::os_str::OsString, (&std::ffi::os_str::OsString)>", linkageName: "_RNvYNvYNtNtNtCs9k3SxhrAWiO_3std3ffi6os_str8OsStringNtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneINtNtNtBR_3ops8function5FnMutTRB5_EE8call_mutCscBbfQkuq0VR_6expand", scope: !4182, file: !2604, line: 166, type: !4183, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, templateParams: !4192, retainedNodes: !4186)
!4182 = !DINamespace(name: "FnMut", scope: !2606)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{!570, !4185, !588}
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut fn(&std::ffi::os_str::OsString) -> std::ffi::os_str::OsString", baseType: !1304, size: 64, align: 64, dwarfAddressSpace: 0)
!4186 = !{!4187, !4188}
!4187 = !DILocalVariable(arg: 1, scope: !4181, file: !2604, line: 166, type: !4185)
!4188 = !DILocalVariable(arg: 2, scope: !4181, file: !2604, line: 166, type: !4189)
!4189 = !DICompositeType(tag: DW_TAG_structure_type, name: "(&std::ffi::os_str::OsString)", file: !2, size: 64, align: 64, elements: !4190, templateParams: !23, identifier: "7f0ffcecd82287ab7e89b33ae2532c7")
!4190 = !{!4191}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !4189, file: !2, baseType: !588, size: 64, align: 64)
!4192 = !{!4193, !4194}
!4193 = !DITemplateTypeParameter(name: "Self", type: !1304)
!4194 = !DITemplateTypeParameter(name: "Args", type: !4189)
!4195 = !DILocation(line: 166, column: 5, scope: !4181)
