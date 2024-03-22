# 1 "../FalconHLS/code_hls/fft.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 338 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/tools/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot/etc/autopilot_ssdm_op.h" 1
# 316 "/tools/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot/etc/autopilot_ssdm_op.h"
    void _ssdm_op_IfRead() __attribute__ ((nothrow));
    void _ssdm_op_IfWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanWrite() __attribute__ ((nothrow));


    void _ssdm_StreamRead() __attribute__ ((nothrow));
    void _ssdm_StreamWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanWrite() __attribute__ ((nothrow));
    void _ssdm_op_ReadReq() __attribute__ ((nothrow));
    void _ssdm_op_Read() __attribute__ ((nothrow));
    void _ssdm_op_WriteReq() __attribute__ ((nothrow));
    void _ssdm_op_Write() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_NbReadReq() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_CanReadReq() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_NbWriteReq() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_CanWriteReq() __attribute__ ((nothrow));




    void _ssdm_op_MemShiftRead() __attribute__ ((nothrow));

    void _ssdm_op_PrintNone() __attribute__ ((nothrow));
    void _ssdm_op_PrintInt() __attribute__ ((nothrow));
    void _ssdm_op_PrintDouble() __attribute__ ((nothrow));

    void _ssdm_op_Wait() __attribute__ ((nothrow));
    void _ssdm_op_Poll() __attribute__ ((nothrow));

    void _ssdm_op_Return() __attribute__ ((nothrow));


    void _ssdm_op_SpecSynModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecTopModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDecl() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDef() __attribute__ ((nothrow));
    void _ssdm_op_SpecPort() __attribute__ ((nothrow));
    void _ssdm_op_SpecConnection() __attribute__ ((nothrow));
    void _ssdm_op_SpecChannel() __attribute__ ((nothrow));
    void _ssdm_op_SpecSensitive() __attribute__ ((nothrow));
    void _ssdm_op_SpecModuleInst() __attribute__ ((nothrow));
    void _ssdm_op_SpecPortMap() __attribute__ ((nothrow));

    void _ssdm_op_SpecReset() __attribute__ ((nothrow));

    void _ssdm_op_SpecPlatform() __attribute__ ((nothrow));
    void _ssdm_op_SpecClockDomain() __attribute__ ((nothrow));
    void _ssdm_op_SpecPowerDomain() __attribute__ ((nothrow));

    int _ssdm_op_SpecRegionBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecRegionEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopName() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopTripCount() __attribute__ ((nothrow));

    int _ssdm_op_SpecStateBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecStateEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecInterface() __attribute__ ((nothrow));

    void _ssdm_op_SpecPipeline() __attribute__ ((nothrow));
    void _ssdm_op_SpecDataflowPipeline() __attribute__ ((nothrow));


    void _ssdm_op_SpecLatency() __attribute__ ((nothrow));
    void _ssdm_op_SpecParallel() __attribute__ ((nothrow));
    void _ssdm_op_SpecProtocol() __attribute__ ((nothrow));
    void _ssdm_op_SpecOccurrence() __attribute__ ((nothrow));

    void _ssdm_op_SpecResource() __attribute__ ((nothrow));
    void _ssdm_op_SpecResourceLimit() __attribute__ ((nothrow));
    void _ssdm_op_SpecCHCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecFUCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIFCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIPCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecKeepValue() __attribute__ ((nothrow));
    void _ssdm_op_SpecMemCore() __attribute__ ((nothrow));

    void _ssdm_op_SpecExt() __attribute__ ((nothrow));




    void _ssdm_SpecArrayDimSize() __attribute__ ((nothrow));

    void _ssdm_RegionBegin() __attribute__ ((nothrow));
    void _ssdm_RegionEnd() __attribute__ ((nothrow));

    void _ssdm_Unroll() __attribute__ ((nothrow));
    void _ssdm_UnrollRegion() __attribute__ ((nothrow));

    void _ssdm_InlineAll() __attribute__ ((nothrow));
    void _ssdm_InlineLoop() __attribute__ ((nothrow));
    void _ssdm_Inline() __attribute__ ((nothrow));
    void _ssdm_InlineSelf() __attribute__ ((nothrow));
    void _ssdm_InlineRegion() __attribute__ ((nothrow));

    void _ssdm_SpecArrayMap() __attribute__ ((nothrow));
    void _ssdm_SpecArrayPartition() __attribute__ ((nothrow));
    void _ssdm_SpecArrayReshape() __attribute__ ((nothrow));

    void _ssdm_SpecStream() __attribute__ ((nothrow));

    void _ssdm_op_SpecStable() __attribute__ ((nothrow));
    void _ssdm_op_SpecStableContent() __attribute__ ((nothrow));

    void _ssdm_op_SpecBindPort() __attribute__ ((nothrow));

    void _ssdm_op_SpecPipoDepth() __attribute__ ((nothrow));

    void _ssdm_SpecExpr() __attribute__ ((nothrow));
    void _ssdm_SpecExprBalance() __attribute__ ((nothrow));

    void _ssdm_SpecDependence() __attribute__ ((nothrow));

    void _ssdm_SpecLoopMerge() __attribute__ ((nothrow));
    void _ssdm_SpecLoopFlatten() __attribute__ ((nothrow));
    void _ssdm_SpecLoopRewind() __attribute__ ((nothrow));

    void _ssdm_SpecFuncInstantiation() __attribute__ ((nothrow));
    void _ssdm_SpecFuncBuffer() __attribute__ ((nothrow));
    void _ssdm_SpecFuncExtract() __attribute__ ((nothrow));
    void _ssdm_SpecConstant() __attribute__ ((nothrow));

    void _ssdm_DataPack() __attribute__ ((nothrow));
    void _ssdm_SpecDataPack() __attribute__ ((nothrow));

    void _ssdm_op_SpecBitsMap() __attribute__ ((nothrow));
    void _ssdm_op_SpecLicense() __attribute__ ((nothrow));
# 2 "<built-in>" 2
# 1 "../FalconHLS/code_hls/fft.c" 2
# 1 "../FalconHLS/code_hls/header.h" 1
# 1 "/tools/Xilinx/Vitis_HLS/2022.1/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stdint.h" 1 3
# 63 "/tools/Xilinx/Vitis_HLS/2022.1/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stdint.h" 3
# 1 "/usr/include/stdint.h" 1 3 4
# 26 "/usr/include/stdint.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
# 33 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 439 "/usr/include/features.h" 3 4
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 440 "/usr/include/features.h" 2 3 4
# 461 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 1 3 4
# 452 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 453 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/long-double.h" 1 3 4
# 454 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
# 462 "/usr/include/features.h" 2 3 4
# 485 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 1 3 4
# 10 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h" 1 3 4
# 11 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 2 3 4
# 486 "/usr/include/features.h" 2 3 4
# 34 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 2 3 4
# 27 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 1 3 4
# 29 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4


typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;


typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;

typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;






typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;



typedef long int __quad_t;
typedef unsigned long int __u_quad_t;







typedef long int __intmax_t;
typedef unsigned long int __uintmax_t;
# 141 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/typesizes.h" 1 3 4
# 142 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/time64.h" 1 3 4
# 143 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4


typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;

typedef int __daddr_t;
typedef int __key_t;


typedef int __clockid_t;


typedef void * __timer_t;


typedef long int __blksize_t;




typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;


typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;


typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;


typedef long int __fsword_t;

typedef long int __ssize_t;


typedef long int __syscall_slong_t;

typedef unsigned long int __syscall_ulong_t;



typedef __off64_t __loff_t;
typedef char *__caddr_t;


typedef long int __intptr_t;


typedef unsigned int __socklen_t;




typedef int __sig_atomic_t;
# 28 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wchar.h" 1 3 4
# 29 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 30 "/usr/include/stdint.h" 2 3 4




# 1 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h" 3 4
typedef __int8_t int8_t;
typedef __int16_t int16_t;
typedef __int32_t int32_t;
typedef __int64_t int64_t;
# 35 "/usr/include/stdint.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h" 3 4
typedef __uint8_t uint8_t;
typedef __uint16_t uint16_t;
typedef __uint32_t uint32_t;
typedef __uint64_t uint64_t;
# 38 "/usr/include/stdint.h" 2 3 4





typedef __int_least8_t int_least8_t;
typedef __int_least16_t int_least16_t;
typedef __int_least32_t int_least32_t;
typedef __int_least64_t int_least64_t;


typedef __uint_least8_t uint_least8_t;
typedef __uint_least16_t uint_least16_t;
typedef __uint_least32_t uint_least32_t;
typedef __uint_least64_t uint_least64_t;





typedef signed char int_fast8_t;

typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
# 71 "/usr/include/stdint.h" 3 4
typedef unsigned char uint_fast8_t;

typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
# 87 "/usr/include/stdint.h" 3 4
typedef long int intptr_t;


typedef unsigned long int uintptr_t;
# 101 "/usr/include/stdint.h" 3 4
typedef __intmax_t intmax_t;
typedef __uintmax_t uintmax_t;
# 64 "/tools/Xilinx/Vitis_HLS/2022.1/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stdint.h" 2 3
# 2 "../FalconHLS/code_hls/header.h" 2
# 1 "/usr/include/stdlib.h" 1 3 4
# 25 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
# 26 "/usr/include/stdlib.h" 2 3 4





# 1 "/tools/Xilinx/Vitis_HLS/2022.1/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stddef.h" 1 3 4
# 62 "/tools/Xilinx/Vitis_HLS/2022.1/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 90 "/tools/Xilinx/Vitis_HLS/2022.1/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stddef.h" 3 4
typedef int wchar_t;
# 32 "/usr/include/stdlib.h" 2 3 4







# 1 "/usr/include/x86_64-linux-gnu/bits/waitflags.h" 1 3 4
# 52 "/usr/include/x86_64-linux-gnu/bits/waitflags.h" 3 4
typedef enum
{
  P_ALL,
  P_PID,
  P_PGID
} idtype_t;
# 40 "/usr/include/stdlib.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/waitstatus.h" 1 3 4
# 41 "/usr/include/stdlib.h" 2 3 4
# 55 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/floatn.h" 1 3 4
# 120 "/usr/include/x86_64-linux-gnu/bits/floatn.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/long-double.h" 1 3 4
# 25 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 2 3 4
# 214 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 3 4
typedef float _Float32;
# 251 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 3 4
typedef double _Float64;
# 268 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 3 4
typedef double _Float32x;
# 285 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 3 4
typedef long double _Float64x;
# 121 "/usr/include/x86_64-linux-gnu/bits/floatn.h" 2 3 4
# 56 "/usr/include/stdlib.h" 2 3 4


typedef struct
  {
    int quot;
    int rem;
  } div_t;



typedef struct
  {
    long int quot;
    long int rem;
  } ldiv_t;





__extension__ typedef struct
  {
    long long int quot;
    long long int rem;
  } lldiv_t;
# 97 "/usr/include/stdlib.h" 3 4
extern size_t __ctype_get_mb_cur_max (void) __attribute__ ((__nothrow__ )) ;



extern double atof (const char *__nptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern int atoi (const char *__nptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern long int atol (const char *__nptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;



__extension__ extern long long int atoll (const char *__nptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;



extern double strtod (const char *__restrict __nptr,
        char **__restrict __endptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern float strtof (const char *__restrict __nptr,
       char **__restrict __endptr) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));

extern long double strtold (const char *__restrict __nptr,
       char **__restrict __endptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 176 "/usr/include/stdlib.h" 3 4
extern long int strtol (const char *__restrict __nptr,
   char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));

extern unsigned long int strtoul (const char *__restrict __nptr,
      char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



__extension__
extern long long int strtoq (const char *__restrict __nptr,
        char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));

__extension__
extern unsigned long long int strtouq (const char *__restrict __nptr,
           char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));




__extension__
extern long long int strtoll (const char *__restrict __nptr,
         char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));

__extension__
extern unsigned long long int strtoull (const char *__restrict __nptr,
     char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 385 "/usr/include/stdlib.h" 3 4
extern char *l64a (long int __n) __attribute__ ((__nothrow__ )) ;


extern long int a64l (const char *__s)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;





# 1 "/usr/include/x86_64-linux-gnu/sys/types.h" 1 3 4
# 33 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;


typedef __loff_t loff_t;




typedef __ino_t ino_t;
# 59 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef __dev_t dev_t;




typedef __gid_t gid_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __uid_t uid_t;





typedef __off_t off_t;
# 97 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef __pid_t pid_t;





typedef __id_t id_t;




typedef __ssize_t ssize_t;





typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;





typedef __key_t key_t;





# 1 "/usr/include/x86_64-linux-gnu/bits/types/clock_t.h" 1 3 4






typedef __clock_t clock_t;
# 127 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4

# 1 "/usr/include/x86_64-linux-gnu/bits/types/clockid_t.h" 1 3 4






typedef __clockid_t clockid_t;
# 129 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h" 1 3 4






typedef __time_t time_t;
# 130 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/timer_t.h" 1 3 4






typedef __timer_t timer_t;
# 131 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4
# 144 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 1 "/tools/Xilinx/Vitis_HLS/2022.1/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stddef.h" 1 3 4
# 145 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4



typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;







typedef __uint8_t u_int8_t;
typedef __uint16_t u_int16_t;
typedef __uint32_t u_int32_t;
typedef __uint64_t u_int64_t;


typedef int register_t __attribute__ ((__mode__ (__word__)));
# 176 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 1 "/usr/include/endian.h" 1 3 4
# 24 "/usr/include/endian.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/endian.h" 1 3 4
# 35 "/usr/include/x86_64-linux-gnu/bits/endian.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/endianness.h" 1 3 4
# 36 "/usr/include/x86_64-linux-gnu/bits/endian.h" 2 3 4
# 25 "/usr/include/endian.h" 2 3 4
# 35 "/usr/include/endian.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 1 3 4
# 33 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 3 4
static __inline __uint16_t
__bswap_16 (__uint16_t __bsx)
{



  return ((__uint16_t) ((((__bsx) >> 8) & 0xff) | (((__bsx) & 0xff) << 8)));

}






static __inline __uint32_t
__bswap_32 (__uint32_t __bsx)
{



  return ((((__bsx) & 0xff000000u) >> 24) | (((__bsx) & 0x00ff0000u) >> 8) | (((__bsx) & 0x0000ff00u) << 8) | (((__bsx) & 0x000000ffu) << 24));

}
# 69 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 3 4
__extension__ static __inline __uint64_t
__bswap_64 (__uint64_t __bsx)
{



  return ((((__bsx) & 0xff00000000000000ull) >> 56) | (((__bsx) & 0x00ff000000000000ull) >> 40) | (((__bsx) & 0x0000ff0000000000ull) >> 24) | (((__bsx) & 0x000000ff00000000ull) >> 8) | (((__bsx) & 0x00000000ff000000ull) << 8) | (((__bsx) & 0x0000000000ff0000ull) << 24) | (((__bsx) & 0x000000000000ff00ull) << 40) | (((__bsx) & 0x00000000000000ffull) << 56));

}
# 36 "/usr/include/endian.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/uintn-identity.h" 1 3 4
# 32 "/usr/include/x86_64-linux-gnu/bits/uintn-identity.h" 3 4
static __inline __uint16_t
__uint16_identity (__uint16_t __x)
{
  return __x;
}

static __inline __uint32_t
__uint32_identity (__uint32_t __x)
{
  return __x;
}

static __inline __uint64_t
__uint64_identity (__uint64_t __x)
{
  return __x;
}
# 37 "/usr/include/endian.h" 2 3 4
# 177 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/sys/select.h" 1 3 4
# 30 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/select.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/select.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 23 "/usr/include/x86_64-linux-gnu/bits/select.h" 2 3 4
# 31 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/bits/types/sigset_t.h" 1 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h" 1 3 4




typedef struct
{
  unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
} __sigset_t;
# 5 "/usr/include/x86_64-linux-gnu/bits/types/sigset_t.h" 2 3 4


typedef __sigset_t sigset_t;
# 34 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h" 1 3 4







struct timeval
{
  __time_t tv_sec;
  __suseconds_t tv_usec;
};
# 38 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4

# 1 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h" 1 3 4
# 10 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h" 3 4
struct timespec
{
  __time_t tv_sec;



  __syscall_slong_t tv_nsec;
# 26 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h" 3 4
};
# 40 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4



typedef __suseconds_t suseconds_t;





typedef long int __fd_mask;
# 59 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
typedef struct
  {






    __fd_mask __fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];


  } fd_set;






typedef __fd_mask fd_mask;
# 101 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
extern int select (int __nfds, fd_set *__restrict __readfds,
     fd_set *__restrict __writefds,
     fd_set *__restrict __exceptfds,
     struct timeval *__restrict __timeout);
# 113 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
extern int pselect (int __nfds, fd_set *__restrict __readfds,
      fd_set *__restrict __writefds,
      fd_set *__restrict __exceptfds,
      const struct timespec *__restrict __timeout,
      const __sigset_t *__restrict __sigmask);
# 180 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4





typedef __blksize_t blksize_t;






typedef __blkcnt_t blkcnt_t;



typedef __fsblkcnt_t fsblkcnt_t;



typedef __fsfilcnt_t fsfilcnt_t;
# 227 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 1 3 4
# 23 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 1 3 4
# 44 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes-arch.h" 1 3 4
# 21 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes-arch.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes-arch.h" 2 3 4
# 45 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 2 3 4




typedef struct __pthread_internal_list
{
  struct __pthread_internal_list *__prev;
  struct __pthread_internal_list *__next;
} __pthread_list_t;

typedef struct __pthread_internal_slist
{
  struct __pthread_internal_slist *__next;
} __pthread_slist_t;
# 74 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h" 3 4
struct __pthread_mutex_s
{
  int __lock;
  unsigned int __count;
  int __owner;

  unsigned int __nusers;



  int __kind;

  short __spins;
  short __elision;
  __pthread_list_t __list;
# 53 "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h" 3 4
};
# 75 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 2 3 4
# 87 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/struct_rwlock.h" 1 3 4
# 23 "/usr/include/x86_64-linux-gnu/bits/struct_rwlock.h" 3 4
struct __pthread_rwlock_arch_t
{
  unsigned int __readers;
  unsigned int __writers;
  unsigned int __wrphase_futex;
  unsigned int __writers_futex;
  unsigned int __pad3;
  unsigned int __pad4;

  int __cur_writer;
  int __shared;
  signed char __rwelision;




  unsigned char __pad1[7];


  unsigned long int __pad2;


  unsigned int __flags;
# 55 "/usr/include/x86_64-linux-gnu/bits/struct_rwlock.h" 3 4
};
# 88 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 2 3 4




struct __pthread_cond_s
{
  __extension__ union
  {
    __extension__ unsigned long long int __wseq;
    struct
    {
      unsigned int __low;
      unsigned int __high;
    } __wseq32;
  };
  __extension__ union
  {
    __extension__ unsigned long long int __g1_start;
    struct
    {
      unsigned int __low;
      unsigned int __high;
    } __g1_start32;
  };
  unsigned int __g_refs[2] ;
  unsigned int __g_size[2];
  unsigned int __g1_orig_size;
  unsigned int __wrefs;
  unsigned int __g_signals[2];
};
# 24 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 2 3 4



typedef unsigned long int pthread_t;




typedef union
{
  char __size[4];
  int __align;
} pthread_mutexattr_t;




typedef union
{
  char __size[4];
  int __align;
} pthread_condattr_t;



typedef unsigned int pthread_key_t;



typedef int pthread_once_t;


union pthread_attr_t
{
  char __size[56];
  long int __align;
};

typedef union pthread_attr_t pthread_attr_t;




typedef union
{
  struct __pthread_mutex_s __data;
  char __size[40];
  long int __align;
} pthread_mutex_t;


typedef union
{
  struct __pthread_cond_s __data;
  char __size[48];
  __extension__ long long int __align;
} pthread_cond_t;





typedef union
{
  struct __pthread_rwlock_arch_t __data;
  char __size[56];
  long int __align;
} pthread_rwlock_t;

typedef union
{
  char __size[8];
  long int __align;
} pthread_rwlockattr_t;





typedef volatile int pthread_spinlock_t;




typedef union
{
  char __size[32];
  long int __align;
} pthread_barrier_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_barrierattr_t;
# 228 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4
# 395 "/usr/include/stdlib.h" 2 3 4






extern long int random (void) __attribute__ ((__nothrow__ ));


extern void srandom (unsigned int __seed) __attribute__ ((__nothrow__ ));





extern char *initstate (unsigned int __seed, char *__statebuf,
   size_t __statelen) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));



extern char *setstate (char *__statebuf) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));







struct random_data
  {
    int32_t *fptr;
    int32_t *rptr;
    int32_t *state;
    int rand_type;
    int rand_deg;
    int rand_sep;
    int32_t *end_ptr;
  };

extern int random_r (struct random_data *__restrict __buf,
       int32_t *__restrict __result) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));

extern int srandom_r (unsigned int __seed, struct random_data *__buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));

extern int initstate_r (unsigned int __seed, char *__restrict __statebuf,
   size_t __statelen,
   struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 4)));

extern int setstate_r (char *__restrict __statebuf,
         struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));





extern int rand (void) __attribute__ ((__nothrow__ ));

extern void srand (unsigned int __seed) __attribute__ ((__nothrow__ ));



extern int rand_r (unsigned int *__seed) __attribute__ ((__nothrow__ ));







extern double drand48 (void) __attribute__ ((__nothrow__ ));
extern double erand48 (unsigned short int __xsubi[3]) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern long int lrand48 (void) __attribute__ ((__nothrow__ ));
extern long int nrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern long int mrand48 (void) __attribute__ ((__nothrow__ ));
extern long int jrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern void srand48 (long int __seedval) __attribute__ ((__nothrow__ ));
extern unsigned short int *seed48 (unsigned short int __seed16v[3])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern void lcong48 (unsigned short int __param[7]) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));





struct drand48_data
  {
    unsigned short int __x[3];
    unsigned short int __old_x[3];
    unsigned short int __c;
    unsigned short int __init;
    __extension__ unsigned long long int __a;

  };


extern int drand48_r (struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int erand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int lrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int nrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int mrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int jrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int srand48_r (long int __seedval, struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));

extern int seed48_r (unsigned short int __seed16v[3],
       struct drand48_data *__buffer) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));

extern int lcong48_r (unsigned short int __param[7],
        struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));




extern void *malloc (size_t __size) __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__))
                                         ;

extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;






extern void *realloc (void *__ptr, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__warn_unused_result__)) ;







extern void *reallocarray (void *__ptr, size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__warn_unused_result__))
                                      ;



extern void free (void *__ptr) __attribute__ ((__nothrow__ ));



# 1 "/usr/include/alloca.h" 1 3 4
# 24 "/usr/include/alloca.h" 3 4
# 1 "/tools/Xilinx/Vitis_HLS/2022.1/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stddef.h" 1 3 4
# 25 "/usr/include/alloca.h" 2 3 4







extern void *alloca (size_t __size) __attribute__ ((__nothrow__ ));
# 569 "/usr/include/stdlib.h" 2 3 4





extern void *valloc (size_t __size) __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__))
                                         ;




extern int posix_memalign (void **__memptr, size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
# 591 "/usr/include/stdlib.h" 3 4
extern void abort (void) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));



extern int atexit (void (*__func) (void)) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 610 "/usr/include/stdlib.h" 3 4
extern int on_exit (void (*__func) (int __status, void *__arg), void *__arg)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));





extern void exit (int __status) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
# 629 "/usr/include/stdlib.h" 3 4
extern void _Exit (int __status) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));




extern char *getenv (const char *__name) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
# 647 "/usr/include/stdlib.h" 3 4
extern int putenv (char *__string) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));





extern int setenv (const char *__name, const char *__value, int __replace)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));


extern int unsetenv (const char *__name) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));






extern int clearenv (void) __attribute__ ((__nothrow__ ));
# 675 "/usr/include/stdlib.h" 3 4
extern char *mktemp (char *__template) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 688 "/usr/include/stdlib.h" 3 4
extern int mkstemp (char *__template) __attribute__ ((__nonnull__ (1))) ;
# 710 "/usr/include/stdlib.h" 3 4
extern int mkstemps (char *__template, int __suffixlen) __attribute__ ((__nonnull__ (1))) ;
# 731 "/usr/include/stdlib.h" 3 4
extern char *mkdtemp (char *__template) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
# 784 "/usr/include/stdlib.h" 3 4
extern int system (const char *__command) ;
# 800 "/usr/include/stdlib.h" 3 4
extern char *realpath (const char *__restrict __name,
         char *__restrict __resolved) __attribute__ ((__nothrow__ )) ;






typedef int (*__compar_fn_t) (const void *, const void *);
# 820 "/usr/include/stdlib.h" 3 4
extern void *bsearch (const void *__key, const void *__base,
        size_t __nmemb, size_t __size, __compar_fn_t __compar)
     __attribute__ ((__nonnull__ (1, 2, 5))) ;







extern void qsort (void *__base, size_t __nmemb, size_t __size,
     __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 4)));
# 840 "/usr/include/stdlib.h" 3 4
extern int abs (int __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;
extern long int labs (long int __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;


__extension__ extern long long int llabs (long long int __x)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;






extern div_t div (int __numer, int __denom)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;
extern ldiv_t ldiv (long int __numer, long int __denom)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;


__extension__ extern lldiv_t lldiv (long long int __numer,
        long long int __denom)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;
# 872 "/usr/include/stdlib.h" 3 4
extern char *ecvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4))) ;




extern char *fcvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4))) ;




extern char *gcvt (double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3))) ;




extern char *qecvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qfcvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qgcvt (long double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3))) ;




extern int ecvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int fcvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4, 5)));

extern int qecvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int qfcvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4, 5)));





extern int mblen (const char *__s, size_t __n) __attribute__ ((__nothrow__ ));


extern int mbtowc (wchar_t *__restrict __pwc,
     const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ ));


extern int wctomb (char *__s, wchar_t __wchar) __attribute__ ((__nothrow__ ));



extern size_t mbstowcs (wchar_t *__restrict __pwcs,
   const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ ));

extern size_t wcstombs (char *__restrict __s,
   const wchar_t *__restrict __pwcs, size_t __n)
     __attribute__ ((__nothrow__ ));







extern int rpmatch (const char *__response) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
# 957 "/usr/include/stdlib.h" 3 4
extern int getsubopt (char **__restrict __optionp,
        char *const *__restrict __tokens,
        char **__restrict __valuep)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2, 3))) ;
# 1003 "/usr/include/stdlib.h" 3 4
extern int getloadavg (double __loadavg[], int __nelem)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 1013 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h" 1 3 4
# 1014 "/usr/include/stdlib.h" 2 3 4
# 3 "../FalconHLS/code_hls/header.h" 2
# 1 "/usr/include/string.h" 1 3 4
# 26 "/usr/include/string.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
# 27 "/usr/include/string.h" 2 3 4






# 1 "/tools/Xilinx/Vitis_HLS/2022.1/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stddef.h" 1 3 4
# 34 "/usr/include/string.h" 2 3 4
# 43 "/usr/include/string.h" 3 4
extern void *memcpy (void *__restrict __dest, const void *__restrict __src,
       size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern void *memmove (void *__dest, const void *__src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));





extern void *memccpy (void *__restrict __dest, const void *__restrict __src,
        int __c, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));




extern void *memset (void *__s, int __c, size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int memcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 91 "/usr/include/string.h" 3 4
extern void *memchr (const void *__s, int __c, size_t __n)
      __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 122 "/usr/include/string.h" 3 4
extern char *strcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern char *strcat (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncat (char *__restrict __dest, const char *__restrict __src,
        size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int strcmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern int strncmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strcoll (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern size_t strxfrm (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));




# 1 "/usr/include/x86_64-linux-gnu/bits/types/locale_t.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/types/locale_t.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/__locale_t.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/types/__locale_t.h" 3 4
struct __locale_struct
{

  struct __locale_data *__locales[13];


  const unsigned short int *__ctype_b;
  const int *__ctype_tolower;
  const int *__ctype_toupper;


  const char *__names[13];
};

typedef struct __locale_struct *__locale_t;
# 23 "/usr/include/x86_64-linux-gnu/bits/types/locale_t.h" 2 3 4

typedef __locale_t locale_t;
# 154 "/usr/include/string.h" 2 3 4


extern int strcoll_l (const char *__s1, const char *__s2, locale_t __l)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));


extern size_t strxfrm_l (char *__dest, const char *__src, size_t __n,
    locale_t __l) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 4)));





extern char *strdup (const char *__s)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));






extern char *strndup (const char *__string, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));
# 226 "/usr/include/string.h" 3 4
extern char *strchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 253 "/usr/include/string.h" 3 4
extern char *strrchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 273 "/usr/include/string.h" 3 4
extern size_t strcspn (const char *__s, const char *__reject)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern size_t strspn (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 303 "/usr/include/string.h" 3 4
extern char *strpbrk (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 330 "/usr/include/string.h" 3 4
extern char *strstr (const char *__haystack, const char *__needle)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));




extern char *strtok (char *__restrict __s, const char *__restrict __delim)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));



extern char *__strtok_r (char *__restrict __s,
    const char *__restrict __delim,
    char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));

extern char *strtok_r (char *__restrict __s, const char *__restrict __delim,
         char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));
# 385 "/usr/include/string.h" 3 4
extern size_t strlen (const char *__s)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));




extern size_t strnlen (const char *__string, size_t __maxlen)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));




extern char *strerror (int __errnum) __attribute__ ((__nothrow__ ));
# 410 "/usr/include/string.h" 3 4
extern int strerror_r (int __errnum, char *__buf, size_t __buflen) __asm__ ("" "__xpg_strerror_r") __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
# 428 "/usr/include/string.h" 3 4
extern char *strerror_l (int __errnum, locale_t __l) __attribute__ ((__nothrow__ ));




# 1 "/usr/include/strings.h" 1 3 4
# 23 "/usr/include/strings.h" 3 4
# 1 "/tools/Xilinx/Vitis_HLS/2022.1/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stddef.h" 1 3 4
# 24 "/usr/include/strings.h" 2 3 4
# 34 "/usr/include/strings.h" 3 4
extern int bcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern void bcopy (const void *__src, void *__dest, size_t __n)
  __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern void bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 68 "/usr/include/strings.h" 3 4
extern char *index (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 96 "/usr/include/strings.h" 3 4
extern char *rindex (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));






extern int ffs (int __i) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));





extern int ffsl (long int __l) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
__extension__ extern int ffsll (long long int __ll)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__));



extern int strcasecmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strncasecmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));






extern int strcasecmp_l (const char *__s1, const char *__s2, locale_t __loc)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));



extern int strncasecmp_l (const char *__s1, const char *__s2,
     size_t __n, locale_t __loc)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 4)));
# 433 "/usr/include/string.h" 2 3 4



extern void explicit_bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern char *strsep (char **__restrict __stringp,
       const char *__restrict __delim)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));




extern char *strsignal (int __sig) __attribute__ ((__nothrow__ ));


extern char *__stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));



extern char *__stpncpy (char *__restrict __dest,
   const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
# 4 "../FalconHLS/code_hls/header.h" 2
# 1 "/usr/include/stdio.h" 1 3 4
# 27 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
# 28 "/usr/include/stdio.h" 2 3 4





# 1 "/tools/Xilinx/Vitis_HLS/2022.1/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stddef.h" 1 3 4
# 34 "/usr/include/stdio.h" 2 3 4


# 1 "/tools/Xilinx/Vitis_HLS/2022.1/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stdarg.h" 1 3 4
# 30 "/tools/Xilinx/Vitis_HLS/2022.1/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stdarg.h" 3 4
typedef __builtin_va_list va_list;
# 48 "/tools/Xilinx/Vitis_HLS/2022.1/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 37 "/usr/include/stdio.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h" 1 3 4




# 1 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h" 1 3 4
# 13 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h" 3 4
typedef struct
{
  int __count;
  union
  {
    unsigned int __wch;
    char __wchb[4];
  } __value;
} __mbstate_t;
# 6 "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h" 2 3 4




typedef struct _G_fpos_t
{
  __off_t __pos;
  __mbstate_t __state;
} __fpos_t;
# 40 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/__fpos64_t.h" 1 3 4
# 10 "/usr/include/x86_64-linux-gnu/bits/types/__fpos64_t.h" 3 4
typedef struct _G_fpos64_t
{
  __off64_t __pos;
  __mbstate_t __state;
} __fpos64_t;
# 41 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h" 1 3 4



struct _IO_FILE;
typedef struct _IO_FILE __FILE;
# 42 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h" 1 3 4



struct _IO_FILE;


typedef struct _IO_FILE FILE;
# 43 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h" 1 3 4
# 35 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h" 3 4
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;




typedef void _IO_lock_t;





struct _IO_FILE
{
  int _flags;


  char *_IO_read_ptr;
  char *_IO_read_end;
  char *_IO_read_base;
  char *_IO_write_base;
  char *_IO_write_ptr;
  char *_IO_write_end;
  char *_IO_buf_base;
  char *_IO_buf_end;


  char *_IO_save_base;
  char *_IO_backup_base;
  char *_IO_save_end;

  struct _IO_marker *_markers;

  struct _IO_FILE *_chain;

  int _fileno;
  int _flags2;
  __off_t _old_offset;


  unsigned short _cur_column;
  signed char _vtable_offset;
  char _shortbuf[1];

  _IO_lock_t *_lock;







  __off64_t _offset;

  struct _IO_codecvt *_codecvt;
  struct _IO_wide_data *_wide_data;
  struct _IO_FILE *_freeres_list;
  void *_freeres_buf;
  size_t __pad5;
  int _mode;

  char _unused2[15 * sizeof (int) - 4 * sizeof (void *) - sizeof (size_t)];
};
# 44 "/usr/include/stdio.h" 2 3 4








typedef __gnuc_va_list va_list;
# 84 "/usr/include/stdio.h" 3 4
typedef __fpos_t fpos_t;
# 133 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/stdio_lim.h" 1 3 4
# 134 "/usr/include/stdio.h" 2 3 4



extern FILE *stdin;
extern FILE *stdout;
extern FILE *stderr;






extern int remove (const char *__filename) __attribute__ ((__nothrow__ ));

extern int rename (const char *__old, const char *__new) __attribute__ ((__nothrow__ ));



extern int renameat (int __oldfd, const char *__old, int __newfd,
       const char *__new) __attribute__ ((__nothrow__ ));
# 173 "/usr/include/stdio.h" 3 4
extern FILE *tmpfile (void) ;
# 187 "/usr/include/stdio.h" 3 4
extern char *tmpnam (char *__s) __attribute__ ((__nothrow__ )) ;




extern char *tmpnam_r (char *__s) __attribute__ ((__nothrow__ )) ;
# 204 "/usr/include/stdio.h" 3 4
extern char *tempnam (const char *__dir, const char *__pfx)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;







extern int fclose (FILE *__stream);




extern int fflush (FILE *__stream);
# 227 "/usr/include/stdio.h" 3 4
extern int fflush_unlocked (FILE *__stream);
# 246 "/usr/include/stdio.h" 3 4
extern FILE *fopen (const char *__restrict __filename,
      const char *__restrict __modes) ;




extern FILE *freopen (const char *__restrict __filename,
        const char *__restrict __modes,
        FILE *__restrict __stream) ;
# 279 "/usr/include/stdio.h" 3 4
extern FILE *fdopen (int __fd, const char *__modes) __attribute__ ((__nothrow__ )) ;
# 292 "/usr/include/stdio.h" 3 4
extern FILE *fmemopen (void *__s, size_t __len, const char *__modes)
  __attribute__ ((__nothrow__ )) ;




extern FILE *open_memstream (char **__bufloc, size_t *__sizeloc) __attribute__ ((__nothrow__ )) ;





extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) __attribute__ ((__nothrow__ ));



extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
      int __modes, size_t __n) __attribute__ ((__nothrow__ ));




extern void setbuffer (FILE *__restrict __stream, char *__restrict __buf,
         size_t __size) __attribute__ ((__nothrow__ ));


extern void setlinebuf (FILE *__stream) __attribute__ ((__nothrow__ ));







extern int fprintf (FILE *__restrict __stream,
      const char *__restrict __format, ...);




extern int printf (const char *__restrict __format, ...);

extern int sprintf (char *__restrict __s,
      const char *__restrict __format, ...) __attribute__ ((__nothrow__));





extern int vfprintf (FILE *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg);




extern int vprintf (const char *__restrict __format, __gnuc_va_list __arg);

extern int vsprintf (char *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg) __attribute__ ((__nothrow__));



extern int snprintf (char *__restrict __s, size_t __maxlen,
       const char *__restrict __format, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 4)));

extern int vsnprintf (char *__restrict __s, size_t __maxlen,
        const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 0)));
# 379 "/usr/include/stdio.h" 3 4
extern int vdprintf (int __fd, const char *__restrict __fmt,
       __gnuc_va_list __arg)
     __attribute__ ((__format__ (__printf__, 2, 0)));
extern int dprintf (int __fd, const char *__restrict __fmt, ...)
     __attribute__ ((__format__ (__printf__, 2, 3)));







extern int fscanf (FILE *__restrict __stream,
     const char *__restrict __format, ...) ;




extern int scanf (const char *__restrict __format, ...) ;

extern int sscanf (const char *__restrict __s,
     const char *__restrict __format, ...) __attribute__ ((__nothrow__ ));






extern int fscanf (FILE *__restrict __stream, const char *__restrict __format, ...) __asm__ ("" "__isoc99_fscanf") ;


extern int scanf (const char *__restrict __format, ...) __asm__ ("" "__isoc99_scanf") ;

extern int sscanf (const char *__restrict __s, const char *__restrict __format, ...) __asm__ ("" "__isoc99_sscanf") __attribute__ ((__nothrow__ ));
# 432 "/usr/include/stdio.h" 3 4
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format,
      __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 2, 0))) ;





extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 1, 0))) ;


extern int vsscanf (const char *__restrict __s,
      const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__ )) __attribute__ ((__format__ (__scanf__, 2, 0)));




extern int vfscanf (FILE *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vfscanf")



     __attribute__ ((__format__ (__scanf__, 2, 0))) ;
extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vscanf")

     __attribute__ ((__format__ (__scanf__, 1, 0))) ;
extern int vsscanf (const char *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vsscanf") __attribute__ ((__nothrow__ ))



     __attribute__ ((__format__ (__scanf__, 2, 0)));
# 485 "/usr/include/stdio.h" 3 4
extern int fgetc (FILE *__stream);
extern int getc (FILE *__stream);





extern int getchar (void);






extern int getc_unlocked (FILE *__stream);
extern int getchar_unlocked (void);
# 510 "/usr/include/stdio.h" 3 4
extern int fgetc_unlocked (FILE *__stream);
# 521 "/usr/include/stdio.h" 3 4
extern int fputc (int __c, FILE *__stream);
extern int putc (int __c, FILE *__stream);





extern int putchar (int __c);
# 537 "/usr/include/stdio.h" 3 4
extern int fputc_unlocked (int __c, FILE *__stream);







extern int putc_unlocked (int __c, FILE *__stream);
extern int putchar_unlocked (int __c);






extern int getw (FILE *__stream);


extern int putw (int __w, FILE *__stream);







extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
          ;
# 577 "/usr/include/stdio.h" 3 4
extern char *gets (char *__s) __attribute__ ((__deprecated__));
# 603 "/usr/include/stdio.h" 3 4
extern __ssize_t __getdelim (char **__restrict __lineptr,
                             size_t *__restrict __n, int __delimiter,
                             FILE *__restrict __stream) ;
extern __ssize_t getdelim (char **__restrict __lineptr,
                           size_t *__restrict __n, int __delimiter,
                           FILE *__restrict __stream) ;







extern __ssize_t getline (char **__restrict __lineptr,
                          size_t *__restrict __n,
                          FILE *__restrict __stream) ;







extern int fputs (const char *__restrict __s, FILE *__restrict __stream);





extern int puts (const char *__s);






extern int ungetc (int __c, FILE *__stream);






extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream) ;




extern size_t fwrite (const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s);
# 673 "/usr/include/stdio.h" 3 4
extern size_t fread_unlocked (void *__restrict __ptr, size_t __size,
         size_t __n, FILE *__restrict __stream) ;
extern size_t fwrite_unlocked (const void *__restrict __ptr, size_t __size,
          size_t __n, FILE *__restrict __stream);







extern int fseek (FILE *__stream, long int __off, int __whence);




extern long int ftell (FILE *__stream) ;




extern void rewind (FILE *__stream);
# 707 "/usr/include/stdio.h" 3 4
extern int fseeko (FILE *__stream, __off_t __off, int __whence);




extern __off_t ftello (FILE *__stream) ;
# 731 "/usr/include/stdio.h" 3 4
extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos);




extern int fsetpos (FILE *__stream, const fpos_t *__pos);
# 757 "/usr/include/stdio.h" 3 4
extern void clearerr (FILE *__stream) __attribute__ ((__nothrow__ ));

extern int feof (FILE *__stream) __attribute__ ((__nothrow__ )) ;

extern int ferror (FILE *__stream) __attribute__ ((__nothrow__ )) ;



extern void clearerr_unlocked (FILE *__stream) __attribute__ ((__nothrow__ ));
extern int feof_unlocked (FILE *__stream) __attribute__ ((__nothrow__ )) ;
extern int ferror_unlocked (FILE *__stream) __attribute__ ((__nothrow__ )) ;







extern void perror (const char *__s);






# 1 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h" 1 3 4
# 26 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h" 3 4
extern int sys_nerr;
extern const char *const sys_errlist[];
# 782 "/usr/include/stdio.h" 2 3 4




extern int fileno (FILE *__stream) __attribute__ ((__nothrow__ )) ;




extern int fileno_unlocked (FILE *__stream) __attribute__ ((__nothrow__ )) ;
# 800 "/usr/include/stdio.h" 3 4
extern FILE *popen (const char *__command, const char *__modes) ;





extern int pclose (FILE *__stream);





extern char *ctermid (char *__s) __attribute__ ((__nothrow__ ));
# 840 "/usr/include/stdio.h" 3 4
extern void flockfile (FILE *__stream) __attribute__ ((__nothrow__ ));



extern int ftrylockfile (FILE *__stream) __attribute__ ((__nothrow__ )) ;


extern void funlockfile (FILE *__stream) __attribute__ ((__nothrow__ ));
# 858 "/usr/include/stdio.h" 3 4
extern int __uflow (FILE *);
extern int __overflow (FILE *, int);
# 5 "../FalconHLS/code_hls/header.h" 2
# 1 "/tools/Xilinx/Vitis_HLS/2022.1/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/inttypes.h" 1 3
# 30 "/tools/Xilinx/Vitis_HLS/2022.1/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/inttypes.h" 3
# 1 "/usr/include/inttypes.h" 1 3 4
# 34 "/usr/include/inttypes.h" 3 4
typedef int __gwchar_t;
# 271 "/usr/include/inttypes.h" 3 4
typedef struct
  {
    long int quot;
    long int rem;
  } imaxdiv_t;
# 290 "/usr/include/inttypes.h" 3 4
extern intmax_t imaxabs (intmax_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern imaxdiv_t imaxdiv (intmax_t __numer, intmax_t __denom)
      __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern intmax_t strtoimax (const char *__restrict __nptr,
      char **__restrict __endptr, int __base) __attribute__ ((__nothrow__ ));


extern uintmax_t strtoumax (const char *__restrict __nptr,
       char ** __restrict __endptr, int __base) __attribute__ ((__nothrow__ ));


extern intmax_t wcstoimax (const __gwchar_t *__restrict __nptr,
      __gwchar_t **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ ));


extern uintmax_t wcstoumax (const __gwchar_t *__restrict __nptr,
       __gwchar_t ** __restrict __endptr, int __base)
     __attribute__ ((__nothrow__ ));
# 31 "/tools/Xilinx/Vitis_HLS/2022.1/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/inttypes.h" 2 3
# 6 "../FalconHLS/code_hls/header.h" 2
# 1 "/tools/Xilinx/Vitis_HLS/2022.1/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stdbool.h" 1 3
# 7 "../FalconHLS/code_hls/header.h" 2
# 1 "/usr/include/math.h" 1 3 4
# 27 "/usr/include/math.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
# 28 "/usr/include/math.h" 2 3 4
# 40 "/usr/include/math.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/math-vector.h" 1 3 4
# 25 "/usr/include/x86_64-linux-gnu/bits/math-vector.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/libm-simd-decl-stubs.h" 1 3 4
# 26 "/usr/include/x86_64-linux-gnu/bits/math-vector.h" 2 3 4
# 41 "/usr/include/math.h" 2 3 4
# 138 "/usr/include/math.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/flt-eval-method.h" 1 3 4
# 139 "/usr/include/math.h" 2 3 4
# 149 "/usr/include/math.h" 3 4
typedef float float_t;
typedef double double_t;
# 190 "/usr/include/math.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/fp-logb.h" 1 3 4
# 191 "/usr/include/math.h" 2 3 4
# 233 "/usr/include/math.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/fp-fast.h" 1 3 4
# 234 "/usr/include/math.h" 2 3 4
# 289 "/usr/include/math.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h" 1 3 4
# 21 "/usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h" 3 4
extern int __fpclassify (double __value) __attribute__ ((__nothrow__ ))
     __attribute__ ((__const__));


extern int __signbit (double __value) __attribute__ ((__nothrow__ ))
     __attribute__ ((__const__));



extern int __isinf (double __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern int __finite (double __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern int __isnan (double __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern int __iseqsig (double __x, double __y) __attribute__ ((__nothrow__ ));


extern int __issignaling (double __value) __attribute__ ((__nothrow__ ))
     __attribute__ ((__const__));
# 290 "/usr/include/math.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 1 3 4
# 53 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern double acos (double __x) __attribute__ ((__nothrow__ )); extern double __acos (double __x) __attribute__ ((__nothrow__ ));

extern double asin (double __x) __attribute__ ((__nothrow__ )); extern double __asin (double __x) __attribute__ ((__nothrow__ ));

extern double atan (double __x) __attribute__ ((__nothrow__ )); extern double __atan (double __x) __attribute__ ((__nothrow__ ));

extern double atan2 (double __y, double __x) __attribute__ ((__nothrow__ )); extern double __atan2 (double __y, double __x) __attribute__ ((__nothrow__ ));


 extern double cos (double __x) __attribute__ ((__nothrow__ )); extern double __cos (double __x) __attribute__ ((__nothrow__ ));

 extern double sin (double __x) __attribute__ ((__nothrow__ )); extern double __sin (double __x) __attribute__ ((__nothrow__ ));

extern double tan (double __x) __attribute__ ((__nothrow__ )); extern double __tan (double __x) __attribute__ ((__nothrow__ ));




extern double cosh (double __x) __attribute__ ((__nothrow__ )); extern double __cosh (double __x) __attribute__ ((__nothrow__ ));

extern double sinh (double __x) __attribute__ ((__nothrow__ )); extern double __sinh (double __x) __attribute__ ((__nothrow__ ));

extern double tanh (double __x) __attribute__ ((__nothrow__ )); extern double __tanh (double __x) __attribute__ ((__nothrow__ ));
# 85 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern double acosh (double __x) __attribute__ ((__nothrow__ )); extern double __acosh (double __x) __attribute__ ((__nothrow__ ));

extern double asinh (double __x) __attribute__ ((__nothrow__ )); extern double __asinh (double __x) __attribute__ ((__nothrow__ ));

extern double atanh (double __x) __attribute__ ((__nothrow__ )); extern double __atanh (double __x) __attribute__ ((__nothrow__ ));





 extern double exp (double __x) __attribute__ ((__nothrow__ )); extern double __exp (double __x) __attribute__ ((__nothrow__ ));


extern double frexp (double __x, int *__exponent) __attribute__ ((__nothrow__ )); extern double __frexp (double __x, int *__exponent) __attribute__ ((__nothrow__ ));


extern double ldexp (double __x, int __exponent) __attribute__ ((__nothrow__ )); extern double __ldexp (double __x, int __exponent) __attribute__ ((__nothrow__ ));


 extern double log (double __x) __attribute__ ((__nothrow__ )); extern double __log (double __x) __attribute__ ((__nothrow__ ));


extern double log10 (double __x) __attribute__ ((__nothrow__ )); extern double __log10 (double __x) __attribute__ ((__nothrow__ ));


extern double modf (double __x, double *__iptr) __attribute__ ((__nothrow__ )); extern double __modf (double __x, double *__iptr) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
# 119 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern double expm1 (double __x) __attribute__ ((__nothrow__ )); extern double __expm1 (double __x) __attribute__ ((__nothrow__ ));


extern double log1p (double __x) __attribute__ ((__nothrow__ )); extern double __log1p (double __x) __attribute__ ((__nothrow__ ));


extern double logb (double __x) __attribute__ ((__nothrow__ )); extern double __logb (double __x) __attribute__ ((__nothrow__ ));




extern double exp2 (double __x) __attribute__ ((__nothrow__ )); extern double __exp2 (double __x) __attribute__ ((__nothrow__ ));


extern double log2 (double __x) __attribute__ ((__nothrow__ )); extern double __log2 (double __x) __attribute__ ((__nothrow__ ));






 extern double pow (double __x, double __y) __attribute__ ((__nothrow__ )); extern double __pow (double __x, double __y) __attribute__ ((__nothrow__ ));


extern double sqrt (double __x) __attribute__ ((__nothrow__ )); extern double __sqrt (double __x) __attribute__ ((__nothrow__ ));



extern double hypot (double __x, double __y) __attribute__ ((__nothrow__ )); extern double __hypot (double __x, double __y) __attribute__ ((__nothrow__ ));




extern double cbrt (double __x) __attribute__ ((__nothrow__ )); extern double __cbrt (double __x) __attribute__ ((__nothrow__ ));






extern double ceil (double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __ceil (double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern double fabs (double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __fabs (double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern double floor (double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __floor (double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern double fmod (double __x, double __y) __attribute__ ((__nothrow__ )); extern double __fmod (double __x, double __y) __attribute__ ((__nothrow__ ));
# 177 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern int isinf (double __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));




extern int finite (double __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern double drem (double __x, double __y) __attribute__ ((__nothrow__ )); extern double __drem (double __x, double __y) __attribute__ ((__nothrow__ ));



extern double significand (double __x) __attribute__ ((__nothrow__ )); extern double __significand (double __x) __attribute__ ((__nothrow__ ));






extern double copysign (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __copysign (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));




extern double nan (const char *__tagb) __attribute__ ((__nothrow__ )); extern double __nan (const char *__tagb) __attribute__ ((__nothrow__ ));
# 211 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern int isnan (double __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));





extern double j0 (double) __attribute__ ((__nothrow__ )); extern double __j0 (double) __attribute__ ((__nothrow__ ));
extern double j1 (double) __attribute__ ((__nothrow__ )); extern double __j1 (double) __attribute__ ((__nothrow__ ));
extern double jn (int, double) __attribute__ ((__nothrow__ )); extern double __jn (int, double) __attribute__ ((__nothrow__ ));
extern double y0 (double) __attribute__ ((__nothrow__ )); extern double __y0 (double) __attribute__ ((__nothrow__ ));
extern double y1 (double) __attribute__ ((__nothrow__ )); extern double __y1 (double) __attribute__ ((__nothrow__ ));
extern double yn (int, double) __attribute__ ((__nothrow__ )); extern double __yn (int, double) __attribute__ ((__nothrow__ ));





extern double erf (double) __attribute__ ((__nothrow__ )); extern double __erf (double) __attribute__ ((__nothrow__ ));
extern double erfc (double) __attribute__ ((__nothrow__ )); extern double __erfc (double) __attribute__ ((__nothrow__ ));
extern double lgamma (double) __attribute__ ((__nothrow__ )); extern double __lgamma (double) __attribute__ ((__nothrow__ ));




extern double tgamma (double) __attribute__ ((__nothrow__ )); extern double __tgamma (double) __attribute__ ((__nothrow__ ));





extern double gamma (double) __attribute__ ((__nothrow__ )); extern double __gamma (double) __attribute__ ((__nothrow__ ));







extern double lgamma_r (double, int *__signgamp) __attribute__ ((__nothrow__ )); extern double __lgamma_r (double, int *__signgamp) __attribute__ ((__nothrow__ ));






extern double rint (double __x) __attribute__ ((__nothrow__ )); extern double __rint (double __x) __attribute__ ((__nothrow__ ));


extern double nextafter (double __x, double __y) __attribute__ ((__nothrow__ )); extern double __nextafter (double __x, double __y) __attribute__ ((__nothrow__ ));

extern double nexttoward (double __x, long double __y) __attribute__ ((__nothrow__ )); extern double __nexttoward (double __x, long double __y) __attribute__ ((__nothrow__ ));
# 272 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern double remainder (double __x, double __y) __attribute__ ((__nothrow__ )); extern double __remainder (double __x, double __y) __attribute__ ((__nothrow__ ));



extern double scalbn (double __x, int __n) __attribute__ ((__nothrow__ )); extern double __scalbn (double __x, int __n) __attribute__ ((__nothrow__ ));



extern int ilogb (double __x) __attribute__ ((__nothrow__ )); extern int __ilogb (double __x) __attribute__ ((__nothrow__ ));
# 290 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern double scalbln (double __x, long int __n) __attribute__ ((__nothrow__ )); extern double __scalbln (double __x, long int __n) __attribute__ ((__nothrow__ ));



extern double nearbyint (double __x) __attribute__ ((__nothrow__ )); extern double __nearbyint (double __x) __attribute__ ((__nothrow__ ));



extern double round (double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __round (double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));



extern double trunc (double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __trunc (double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));




extern double remquo (double __x, double __y, int *__quo) __attribute__ ((__nothrow__ )); extern double __remquo (double __x, double __y, int *__quo) __attribute__ ((__nothrow__ ));






extern long int lrint (double __x) __attribute__ ((__nothrow__ )); extern long int __lrint (double __x) __attribute__ ((__nothrow__ ));
__extension__
extern long long int llrint (double __x) __attribute__ ((__nothrow__ )); extern long long int __llrint (double __x) __attribute__ ((__nothrow__ ));



extern long int lround (double __x) __attribute__ ((__nothrow__ )); extern long int __lround (double __x) __attribute__ ((__nothrow__ ));
__extension__
extern long long int llround (double __x) __attribute__ ((__nothrow__ )); extern long long int __llround (double __x) __attribute__ ((__nothrow__ ));



extern double fdim (double __x, double __y) __attribute__ ((__nothrow__ )); extern double __fdim (double __x, double __y) __attribute__ ((__nothrow__ ));


extern double fmax (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __fmax (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern double fmin (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __fmin (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern double fma (double __x, double __y, double __z) __attribute__ ((__nothrow__ )); extern double __fma (double __x, double __y, double __z) __attribute__ ((__nothrow__ ));
# 400 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern double scalb (double __x, double __n) __attribute__ ((__nothrow__ )); extern double __scalb (double __x, double __n) __attribute__ ((__nothrow__ ));
# 291 "/usr/include/math.h" 2 3 4
# 306 "/usr/include/math.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h" 1 3 4
# 21 "/usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h" 3 4
extern int __fpclassifyf (float __value) __attribute__ ((__nothrow__ ))
     __attribute__ ((__const__));


extern int __signbitf (float __value) __attribute__ ((__nothrow__ ))
     __attribute__ ((__const__));



extern int __isinff (float __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern int __finitef (float __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern int __isnanf (float __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern int __iseqsigf (float __x, float __y) __attribute__ ((__nothrow__ ));


extern int __issignalingf (float __value) __attribute__ ((__nothrow__ ))
     __attribute__ ((__const__));
# 307 "/usr/include/math.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 1 3 4
# 53 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern float acosf (float __x) __attribute__ ((__nothrow__ )); extern float __acosf (float __x) __attribute__ ((__nothrow__ ));

extern float asinf (float __x) __attribute__ ((__nothrow__ )); extern float __asinf (float __x) __attribute__ ((__nothrow__ ));

extern float atanf (float __x) __attribute__ ((__nothrow__ )); extern float __atanf (float __x) __attribute__ ((__nothrow__ ));

extern float atan2f (float __y, float __x) __attribute__ ((__nothrow__ )); extern float __atan2f (float __y, float __x) __attribute__ ((__nothrow__ ));


 extern float cosf (float __x) __attribute__ ((__nothrow__ )); extern float __cosf (float __x) __attribute__ ((__nothrow__ ));

 extern float sinf (float __x) __attribute__ ((__nothrow__ )); extern float __sinf (float __x) __attribute__ ((__nothrow__ ));

extern float tanf (float __x) __attribute__ ((__nothrow__ )); extern float __tanf (float __x) __attribute__ ((__nothrow__ ));




extern float coshf (float __x) __attribute__ ((__nothrow__ )); extern float __coshf (float __x) __attribute__ ((__nothrow__ ));

extern float sinhf (float __x) __attribute__ ((__nothrow__ )); extern float __sinhf (float __x) __attribute__ ((__nothrow__ ));

extern float tanhf (float __x) __attribute__ ((__nothrow__ )); extern float __tanhf (float __x) __attribute__ ((__nothrow__ ));
# 85 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern float acoshf (float __x) __attribute__ ((__nothrow__ )); extern float __acoshf (float __x) __attribute__ ((__nothrow__ ));

extern float asinhf (float __x) __attribute__ ((__nothrow__ )); extern float __asinhf (float __x) __attribute__ ((__nothrow__ ));

extern float atanhf (float __x) __attribute__ ((__nothrow__ )); extern float __atanhf (float __x) __attribute__ ((__nothrow__ ));





 extern float expf (float __x) __attribute__ ((__nothrow__ )); extern float __expf (float __x) __attribute__ ((__nothrow__ ));


extern float frexpf (float __x, int *__exponent) __attribute__ ((__nothrow__ )); extern float __frexpf (float __x, int *__exponent) __attribute__ ((__nothrow__ ));


extern float ldexpf (float __x, int __exponent) __attribute__ ((__nothrow__ )); extern float __ldexpf (float __x, int __exponent) __attribute__ ((__nothrow__ ));


 extern float logf (float __x) __attribute__ ((__nothrow__ )); extern float __logf (float __x) __attribute__ ((__nothrow__ ));


extern float log10f (float __x) __attribute__ ((__nothrow__ )); extern float __log10f (float __x) __attribute__ ((__nothrow__ ));


extern float modff (float __x, float *__iptr) __attribute__ ((__nothrow__ )); extern float __modff (float __x, float *__iptr) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
# 119 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern float expm1f (float __x) __attribute__ ((__nothrow__ )); extern float __expm1f (float __x) __attribute__ ((__nothrow__ ));


extern float log1pf (float __x) __attribute__ ((__nothrow__ )); extern float __log1pf (float __x) __attribute__ ((__nothrow__ ));


extern float logbf (float __x) __attribute__ ((__nothrow__ )); extern float __logbf (float __x) __attribute__ ((__nothrow__ ));




extern float exp2f (float __x) __attribute__ ((__nothrow__ )); extern float __exp2f (float __x) __attribute__ ((__nothrow__ ));


extern float log2f (float __x) __attribute__ ((__nothrow__ )); extern float __log2f (float __x) __attribute__ ((__nothrow__ ));






 extern float powf (float __x, float __y) __attribute__ ((__nothrow__ )); extern float __powf (float __x, float __y) __attribute__ ((__nothrow__ ));


extern float sqrtf (float __x) __attribute__ ((__nothrow__ )); extern float __sqrtf (float __x) __attribute__ ((__nothrow__ ));



extern float hypotf (float __x, float __y) __attribute__ ((__nothrow__ )); extern float __hypotf (float __x, float __y) __attribute__ ((__nothrow__ ));




extern float cbrtf (float __x) __attribute__ ((__nothrow__ )); extern float __cbrtf (float __x) __attribute__ ((__nothrow__ ));






extern float ceilf (float __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __ceilf (float __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern float fabsf (float __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __fabsf (float __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern float floorf (float __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __floorf (float __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern float fmodf (float __x, float __y) __attribute__ ((__nothrow__ )); extern float __fmodf (float __x, float __y) __attribute__ ((__nothrow__ ));
# 177 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern int isinff (float __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));




extern int finitef (float __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern float dremf (float __x, float __y) __attribute__ ((__nothrow__ )); extern float __dremf (float __x, float __y) __attribute__ ((__nothrow__ ));



extern float significandf (float __x) __attribute__ ((__nothrow__ )); extern float __significandf (float __x) __attribute__ ((__nothrow__ ));






extern float copysignf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __copysignf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));




extern float nanf (const char *__tagb) __attribute__ ((__nothrow__ )); extern float __nanf (const char *__tagb) __attribute__ ((__nothrow__ ));
# 211 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern int isnanf (float __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));





extern float j0f (float) __attribute__ ((__nothrow__ )); extern float __j0f (float) __attribute__ ((__nothrow__ ));
extern float j1f (float) __attribute__ ((__nothrow__ )); extern float __j1f (float) __attribute__ ((__nothrow__ ));
extern float jnf (int, float) __attribute__ ((__nothrow__ )); extern float __jnf (int, float) __attribute__ ((__nothrow__ ));
extern float y0f (float) __attribute__ ((__nothrow__ )); extern float __y0f (float) __attribute__ ((__nothrow__ ));
extern float y1f (float) __attribute__ ((__nothrow__ )); extern float __y1f (float) __attribute__ ((__nothrow__ ));
extern float ynf (int, float) __attribute__ ((__nothrow__ )); extern float __ynf (int, float) __attribute__ ((__nothrow__ ));





extern float erff (float) __attribute__ ((__nothrow__ )); extern float __erff (float) __attribute__ ((__nothrow__ ));
extern float erfcf (float) __attribute__ ((__nothrow__ )); extern float __erfcf (float) __attribute__ ((__nothrow__ ));
extern float lgammaf (float) __attribute__ ((__nothrow__ )); extern float __lgammaf (float) __attribute__ ((__nothrow__ ));




extern float tgammaf (float) __attribute__ ((__nothrow__ )); extern float __tgammaf (float) __attribute__ ((__nothrow__ ));





extern float gammaf (float) __attribute__ ((__nothrow__ )); extern float __gammaf (float) __attribute__ ((__nothrow__ ));







extern float lgammaf_r (float, int *__signgamp) __attribute__ ((__nothrow__ )); extern float __lgammaf_r (float, int *__signgamp) __attribute__ ((__nothrow__ ));






extern float rintf (float __x) __attribute__ ((__nothrow__ )); extern float __rintf (float __x) __attribute__ ((__nothrow__ ));


extern float nextafterf (float __x, float __y) __attribute__ ((__nothrow__ )); extern float __nextafterf (float __x, float __y) __attribute__ ((__nothrow__ ));

extern float nexttowardf (float __x, long double __y) __attribute__ ((__nothrow__ )); extern float __nexttowardf (float __x, long double __y) __attribute__ ((__nothrow__ ));
# 272 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern float remainderf (float __x, float __y) __attribute__ ((__nothrow__ )); extern float __remainderf (float __x, float __y) __attribute__ ((__nothrow__ ));



extern float scalbnf (float __x, int __n) __attribute__ ((__nothrow__ )); extern float __scalbnf (float __x, int __n) __attribute__ ((__nothrow__ ));



extern int ilogbf (float __x) __attribute__ ((__nothrow__ )); extern int __ilogbf (float __x) __attribute__ ((__nothrow__ ));
# 290 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern float scalblnf (float __x, long int __n) __attribute__ ((__nothrow__ )); extern float __scalblnf (float __x, long int __n) __attribute__ ((__nothrow__ ));



extern float nearbyintf (float __x) __attribute__ ((__nothrow__ )); extern float __nearbyintf (float __x) __attribute__ ((__nothrow__ ));



extern float roundf (float __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __roundf (float __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));



extern float truncf (float __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __truncf (float __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));




extern float remquof (float __x, float __y, int *__quo) __attribute__ ((__nothrow__ )); extern float __remquof (float __x, float __y, int *__quo) __attribute__ ((__nothrow__ ));






extern long int lrintf (float __x) __attribute__ ((__nothrow__ )); extern long int __lrintf (float __x) __attribute__ ((__nothrow__ ));
__extension__
extern long long int llrintf (float __x) __attribute__ ((__nothrow__ )); extern long long int __llrintf (float __x) __attribute__ ((__nothrow__ ));



extern long int lroundf (float __x) __attribute__ ((__nothrow__ )); extern long int __lroundf (float __x) __attribute__ ((__nothrow__ ));
__extension__
extern long long int llroundf (float __x) __attribute__ ((__nothrow__ )); extern long long int __llroundf (float __x) __attribute__ ((__nothrow__ ));



extern float fdimf (float __x, float __y) __attribute__ ((__nothrow__ )); extern float __fdimf (float __x, float __y) __attribute__ ((__nothrow__ ));


extern float fmaxf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __fmaxf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern float fminf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __fminf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern float fmaf (float __x, float __y, float __z) __attribute__ ((__nothrow__ )); extern float __fmaf (float __x, float __y, float __z) __attribute__ ((__nothrow__ ));
# 400 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern float scalbf (float __x, float __n) __attribute__ ((__nothrow__ )); extern float __scalbf (float __x, float __n) __attribute__ ((__nothrow__ ));
# 308 "/usr/include/math.h" 2 3 4
# 349 "/usr/include/math.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h" 1 3 4
# 21 "/usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h" 3 4
extern int __fpclassifyl (long double __value) __attribute__ ((__nothrow__ ))
     __attribute__ ((__const__));


extern int __signbitl (long double __value) __attribute__ ((__nothrow__ ))
     __attribute__ ((__const__));



extern int __isinfl (long double __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern int __finitel (long double __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern int __isnanl (long double __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern int __iseqsigl (long double __x, long double __y) __attribute__ ((__nothrow__ ));


extern int __issignalingl (long double __value) __attribute__ ((__nothrow__ ))
     __attribute__ ((__const__));
# 350 "/usr/include/math.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 1 3 4
# 53 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern long double acosl (long double __x) __attribute__ ((__nothrow__ )); extern long double __acosl (long double __x) __attribute__ ((__nothrow__ ));

extern long double asinl (long double __x) __attribute__ ((__nothrow__ )); extern long double __asinl (long double __x) __attribute__ ((__nothrow__ ));

extern long double atanl (long double __x) __attribute__ ((__nothrow__ )); extern long double __atanl (long double __x) __attribute__ ((__nothrow__ ));

extern long double atan2l (long double __y, long double __x) __attribute__ ((__nothrow__ )); extern long double __atan2l (long double __y, long double __x) __attribute__ ((__nothrow__ ));


 extern long double cosl (long double __x) __attribute__ ((__nothrow__ )); extern long double __cosl (long double __x) __attribute__ ((__nothrow__ ));

 extern long double sinl (long double __x) __attribute__ ((__nothrow__ )); extern long double __sinl (long double __x) __attribute__ ((__nothrow__ ));

extern long double tanl (long double __x) __attribute__ ((__nothrow__ )); extern long double __tanl (long double __x) __attribute__ ((__nothrow__ ));




extern long double coshl (long double __x) __attribute__ ((__nothrow__ )); extern long double __coshl (long double __x) __attribute__ ((__nothrow__ ));

extern long double sinhl (long double __x) __attribute__ ((__nothrow__ )); extern long double __sinhl (long double __x) __attribute__ ((__nothrow__ ));

extern long double tanhl (long double __x) __attribute__ ((__nothrow__ )); extern long double __tanhl (long double __x) __attribute__ ((__nothrow__ ));
# 85 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern long double acoshl (long double __x) __attribute__ ((__nothrow__ )); extern long double __acoshl (long double __x) __attribute__ ((__nothrow__ ));

extern long double asinhl (long double __x) __attribute__ ((__nothrow__ )); extern long double __asinhl (long double __x) __attribute__ ((__nothrow__ ));

extern long double atanhl (long double __x) __attribute__ ((__nothrow__ )); extern long double __atanhl (long double __x) __attribute__ ((__nothrow__ ));





 extern long double expl (long double __x) __attribute__ ((__nothrow__ )); extern long double __expl (long double __x) __attribute__ ((__nothrow__ ));


extern long double frexpl (long double __x, int *__exponent) __attribute__ ((__nothrow__ )); extern long double __frexpl (long double __x, int *__exponent) __attribute__ ((__nothrow__ ));


extern long double ldexpl (long double __x, int __exponent) __attribute__ ((__nothrow__ )); extern long double __ldexpl (long double __x, int __exponent) __attribute__ ((__nothrow__ ));


 extern long double logl (long double __x) __attribute__ ((__nothrow__ )); extern long double __logl (long double __x) __attribute__ ((__nothrow__ ));


extern long double log10l (long double __x) __attribute__ ((__nothrow__ )); extern long double __log10l (long double __x) __attribute__ ((__nothrow__ ));


extern long double modfl (long double __x, long double *__iptr) __attribute__ ((__nothrow__ )); extern long double __modfl (long double __x, long double *__iptr) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
# 119 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern long double expm1l (long double __x) __attribute__ ((__nothrow__ )); extern long double __expm1l (long double __x) __attribute__ ((__nothrow__ ));


extern long double log1pl (long double __x) __attribute__ ((__nothrow__ )); extern long double __log1pl (long double __x) __attribute__ ((__nothrow__ ));


extern long double logbl (long double __x) __attribute__ ((__nothrow__ )); extern long double __logbl (long double __x) __attribute__ ((__nothrow__ ));




extern long double exp2l (long double __x) __attribute__ ((__nothrow__ )); extern long double __exp2l (long double __x) __attribute__ ((__nothrow__ ));


extern long double log2l (long double __x) __attribute__ ((__nothrow__ )); extern long double __log2l (long double __x) __attribute__ ((__nothrow__ ));






 extern long double powl (long double __x, long double __y) __attribute__ ((__nothrow__ )); extern long double __powl (long double __x, long double __y) __attribute__ ((__nothrow__ ));


extern long double sqrtl (long double __x) __attribute__ ((__nothrow__ )); extern long double __sqrtl (long double __x) __attribute__ ((__nothrow__ ));



extern long double hypotl (long double __x, long double __y) __attribute__ ((__nothrow__ )); extern long double __hypotl (long double __x, long double __y) __attribute__ ((__nothrow__ ));




extern long double cbrtl (long double __x) __attribute__ ((__nothrow__ )); extern long double __cbrtl (long double __x) __attribute__ ((__nothrow__ ));






extern long double ceill (long double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __ceill (long double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern long double fabsl (long double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __fabsl (long double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern long double floorl (long double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __floorl (long double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern long double fmodl (long double __x, long double __y) __attribute__ ((__nothrow__ )); extern long double __fmodl (long double __x, long double __y) __attribute__ ((__nothrow__ ));
# 177 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern int isinfl (long double __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));




extern int finitel (long double __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern long double dreml (long double __x, long double __y) __attribute__ ((__nothrow__ )); extern long double __dreml (long double __x, long double __y) __attribute__ ((__nothrow__ ));



extern long double significandl (long double __x) __attribute__ ((__nothrow__ )); extern long double __significandl (long double __x) __attribute__ ((__nothrow__ ));






extern long double copysignl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __copysignl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));




extern long double nanl (const char *__tagb) __attribute__ ((__nothrow__ )); extern long double __nanl (const char *__tagb) __attribute__ ((__nothrow__ ));
# 211 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern int isnanl (long double __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));





extern long double j0l (long double) __attribute__ ((__nothrow__ )); extern long double __j0l (long double) __attribute__ ((__nothrow__ ));
extern long double j1l (long double) __attribute__ ((__nothrow__ )); extern long double __j1l (long double) __attribute__ ((__nothrow__ ));
extern long double jnl (int, long double) __attribute__ ((__nothrow__ )); extern long double __jnl (int, long double) __attribute__ ((__nothrow__ ));
extern long double y0l (long double) __attribute__ ((__nothrow__ )); extern long double __y0l (long double) __attribute__ ((__nothrow__ ));
extern long double y1l (long double) __attribute__ ((__nothrow__ )); extern long double __y1l (long double) __attribute__ ((__nothrow__ ));
extern long double ynl (int, long double) __attribute__ ((__nothrow__ )); extern long double __ynl (int, long double) __attribute__ ((__nothrow__ ));





extern long double erfl (long double) __attribute__ ((__nothrow__ )); extern long double __erfl (long double) __attribute__ ((__nothrow__ ));
extern long double erfcl (long double) __attribute__ ((__nothrow__ )); extern long double __erfcl (long double) __attribute__ ((__nothrow__ ));
extern long double lgammal (long double) __attribute__ ((__nothrow__ )); extern long double __lgammal (long double) __attribute__ ((__nothrow__ ));




extern long double tgammal (long double) __attribute__ ((__nothrow__ )); extern long double __tgammal (long double) __attribute__ ((__nothrow__ ));





extern long double gammal (long double) __attribute__ ((__nothrow__ )); extern long double __gammal (long double) __attribute__ ((__nothrow__ ));







extern long double lgammal_r (long double, int *__signgamp) __attribute__ ((__nothrow__ )); extern long double __lgammal_r (long double, int *__signgamp) __attribute__ ((__nothrow__ ));






extern long double rintl (long double __x) __attribute__ ((__nothrow__ )); extern long double __rintl (long double __x) __attribute__ ((__nothrow__ ));


extern long double nextafterl (long double __x, long double __y) __attribute__ ((__nothrow__ )); extern long double __nextafterl (long double __x, long double __y) __attribute__ ((__nothrow__ ));

extern long double nexttowardl (long double __x, long double __y) __attribute__ ((__nothrow__ )); extern long double __nexttowardl (long double __x, long double __y) __attribute__ ((__nothrow__ ));
# 272 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern long double remainderl (long double __x, long double __y) __attribute__ ((__nothrow__ )); extern long double __remainderl (long double __x, long double __y) __attribute__ ((__nothrow__ ));



extern long double scalbnl (long double __x, int __n) __attribute__ ((__nothrow__ )); extern long double __scalbnl (long double __x, int __n) __attribute__ ((__nothrow__ ));



extern int ilogbl (long double __x) __attribute__ ((__nothrow__ )); extern int __ilogbl (long double __x) __attribute__ ((__nothrow__ ));
# 290 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern long double scalblnl (long double __x, long int __n) __attribute__ ((__nothrow__ )); extern long double __scalblnl (long double __x, long int __n) __attribute__ ((__nothrow__ ));



extern long double nearbyintl (long double __x) __attribute__ ((__nothrow__ )); extern long double __nearbyintl (long double __x) __attribute__ ((__nothrow__ ));



extern long double roundl (long double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __roundl (long double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));



extern long double truncl (long double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __truncl (long double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));




extern long double remquol (long double __x, long double __y, int *__quo) __attribute__ ((__nothrow__ )); extern long double __remquol (long double __x, long double __y, int *__quo) __attribute__ ((__nothrow__ ));






extern long int lrintl (long double __x) __attribute__ ((__nothrow__ )); extern long int __lrintl (long double __x) __attribute__ ((__nothrow__ ));
__extension__
extern long long int llrintl (long double __x) __attribute__ ((__nothrow__ )); extern long long int __llrintl (long double __x) __attribute__ ((__nothrow__ ));



extern long int lroundl (long double __x) __attribute__ ((__nothrow__ )); extern long int __lroundl (long double __x) __attribute__ ((__nothrow__ ));
__extension__
extern long long int llroundl (long double __x) __attribute__ ((__nothrow__ )); extern long long int __llroundl (long double __x) __attribute__ ((__nothrow__ ));



extern long double fdiml (long double __x, long double __y) __attribute__ ((__nothrow__ )); extern long double __fdiml (long double __x, long double __y) __attribute__ ((__nothrow__ ));


extern long double fmaxl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __fmaxl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern long double fminl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __fminl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern long double fmal (long double __x, long double __y, long double __z) __attribute__ ((__nothrow__ )); extern long double __fmal (long double __x, long double __y, long double __z) __attribute__ ((__nothrow__ ));
# 400 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern long double scalbl (long double __x, long double __n) __attribute__ ((__nothrow__ )); extern long double __scalbl (long double __x, long double __n) __attribute__ ((__nothrow__ ));
# 351 "/usr/include/math.h" 2 3 4
# 773 "/usr/include/math.h" 3 4
extern int signgam;
# 853 "/usr/include/math.h" 3 4
enum
  {
    FP_NAN =

      0,
    FP_INFINITE =

      1,
    FP_ZERO =

      2,
    FP_SUBNORMAL =

      3,
    FP_NORMAL =

      4
  };
# 8 "../FalconHLS/code_hls/header.h" 2



typedef double fpr;

typedef struct {
 union {
  uint64_t A[25];
  uint8_t dbuf[200];
 } st;
 uint64_t dptr;
} inner_shake256_context;



typedef struct {
 union {
  uint8_t d[512];
  uint64_t dummy_u64;
 } buf;
 size_t ptr;
 union {
  uint8_t d[256];
  uint64_t dummy_u64;
 } state;
 int type;
} prng;

typedef struct {
 prng p;
 fpr sigma_min;
} sampler_context;

int static global_cnt = -1;
double static *tree_base_address;
double static *base_address;





uint32_t mq_montymul(uint32_t x, uint32_t y);
uint32_t mq_add(uint32_t x, uint32_t y);
uint32_t mq_sub(uint32_t x, uint32_t y);
uint32_t mq_rshift1(uint32_t x);
uint32_t mq_conv_small(int x);
uint32_t mq_montysqr(uint32_t x);
uint32_t mq_div_12289(uint32_t x, uint32_t y);
void mq_NTT(uint16_t *a, unsigned logn);
void mq_iNTT(uint16_t *a, unsigned logn);
int compute_public(uint16_t *h, const int8_t *f, const int8_t *g, unsigned logn, uint8_t *tmp);
int complete_private(int8_t *G, const int8_t *f, const int8_t *g, const int8_t *F, unsigned logn, uint8_t *tmp);
void to_ntt_monty(uint16_t *h, unsigned logn);
int verify_raw(const uint16_t c0[], const int16_t s2[], const uint16_t h[], unsigned logn,uint8_t *tmp);
void test_vrfy_inner(const uint16_t *h, const char *sig_in, const char *msg_in, const char *nonce_in);
size_t hextobin(uint8_t *buf, size_t max_len, const char *src);
int is_invertible( const int16_t *s2, unsigned logn, uint8_t *tmp);
int verify_recover(uint16_t *h, const uint16_t *c0, const int16_t *s1, const int16_t *s2, unsigned logn, uint8_t *tmp);



size_t modq_encode(void *out, size_t max_out_len, const uint16_t *x, unsigned logn);
size_t trim_i16_decode(int16_t *x, unsigned logn, unsigned bits,const void *in, size_t max_in_len);




void i_shake256_init(inner_shake256_context *sc);
void i_shake256_inject(inner_shake256_context *sc, const uint8_t *in, size_t len);
void i_shake256_extract(inner_shake256_context *sc, uint8_t *out, size_t len);
void i_shake256_flip(inner_shake256_context *sc);
void process_block(uint64_t *state);







void hash_to_point_vartime(inner_shake256_context *sc, uint16_t *x, unsigned logn);
void hash_to_point_ct(inner_shake256_context *sc, uint16_t *x, unsigned logn, uint8_t *tmp);
int is_short(const int16_t *s1, const int16_t *s2, unsigned logn);
int is_short_half(uint32_t sqn, const int16_t *s2, unsigned logn);







uint64_t get_rng_u64(inner_shake256_context *rng);
int mkgauss(inner_shake256_context *rng, unsigned logn);
void poly_small_mkgauss(inner_shake256_context *rng, int8_t *f, unsigned logn);
uint32_t poly_small_sqnorm(const int8_t *f, unsigned logn);
void poly_small_to_fp(fpr *x, const int8_t *f, unsigned logn);
void keygen(int8_t f_out[1024], int8_t g_out[1024], int8_t F_upper_out[1024], int8_t G_upper_out[1024], uint16_t h_out[1024], uint8_t nonce[48]);
void make_fg(uint32_t *data, const int8_t *f, const int8_t *g, unsigned logn, unsigned depth, int out_ntt);
uint32_t modp_set(int32_t x, uint32_t p);
uint32_t modp_ninv31(uint32_t p);
void modp_mkgm2(uint32_t *gm, uint32_t *igm, unsigned logn, uint32_t g, uint32_t p, uint32_t p0i);
uint32_t modp_R2(uint32_t p, uint32_t p0i);
int solve_NTRU_all(unsigned logn_top, const int8_t *f, const int8_t *g, unsigned depth, uint32_t *tmp, uint32_t *tmp2);
int solve_NTRU(unsigned logn, int8_t *F_upper, int8_t *G_upper, const int8_t *f, const int8_t *g, int lim, uint32_t *tmp2);
void modp_NTT2_ext(uint32_t a[1024], size_t stride, const uint32_t gm[1024], unsigned logn, uint32_t p, uint32_t p0i);
void modp_iNTT2_ext(uint32_t a[2048], size_t stride, const uint32_t igm[1024], unsigned logn, uint32_t p, uint32_t p0i);





fpr fpr_of(int64_t i);
fpr fpr_scaled(int64_t i, int sc);
fpr FPR(double v);
fpr fpr_sqrt(fpr x);
fpr fpr_sqr(fpr x);
fpr fpr_div(fpr x, fpr y);
fpr fpr_mul(fpr x, fpr y);
fpr fpr_add(fpr x, fpr y);
fpr fpr_double(fpr x);
fpr fpr_inv(fpr x);
fpr fpr_neg(fpr x);
fpr fpr_sub(fpr x, fpr y);
int fpr_lt(fpr x, fpr y);
int64_t fpr_rint(fpr x);
uint64_t fpr_ulsh(uint64_t x, int n);
int64_t fpr_irsh(int64_t x, int n);
uint64_t fpr_ursh(uint64_t x, int n);
uint64_t fpr_expm_p63(fpr x, fpr ccs);
fpr fpr_half(fpr x);
int64_t fpr_trunc(fpr x);
int64_t fpr_floor(fpr x);





void FFT(fpr f[1024], unsigned logn);
void FFT_streaming(fpr f[1024], unsigned logn);
void iFFT_streaming(fpr f[1024], unsigned logn);
void iFFT_stage(fpr in_r[], fpr in_i[],fpr out_r[],fpr out_i[], int hn, int dt, int t, int hm);
void iFFT_top(fpr f[1024]);


void FFT_stage(fpr in_r[512], fpr in_i[512],fpr out_r[512],fpr out_i[512], int hm, int ht, int t, int m);
void FFT_top(fpr f[1024]);
void poly_invnorm2_fft(fpr *d, const fpr *a, const fpr *b, unsigned logn);
void poly_adj_fft(fpr *a, unsigned logn);
void poly_mulconst(fpr *a, fpr x, unsigned logn);
void poly_mul_autoadj_fft(fpr *a, const fpr *b, unsigned logn);
void iFFT(fpr *f, unsigned logn);
void poly_add(fpr *a, const fpr *b, unsigned logn);
void poly_mul_fft(fpr * a, const fpr * b, unsigned logn);
void poly_add_muladj_fft(fpr * d, const fpr * F, const fpr * G, const fpr * f, const fpr * g, unsigned logn);
void poly_sub(fpr *a, const fpr *b, unsigned logn);
void poly_div_autoadj_fft(fpr *a, const fpr *b, unsigned logn);
void poly_split_fft(fpr * f0, fpr * f1, const fpr * f, unsigned logn);
void poly_merge_fft(fpr * f, const fpr * f0, const fpr * f1, unsigned logn);
void poly_mulselfadj_fft(fpr *a, unsigned logn);
void poly_muladj_fft(fpr * a, const fpr * b, unsigned logn);
void poly_LDLmv_fft(fpr * d11, fpr * l10, const fpr * g00, const fpr * g01, const fpr * g11, unsigned logn);
void poly_LDL_fft(const fpr * g00, fpr * g01, fpr * g11, unsigned logn);
void poly_neg(fpr *a, unsigned logn);





void expand_privkey(fpr *expanded_key,const int8_t *f, const int8_t *g, const int8_t *F_upper, const int8_t *G_upper);
void sign_dyn(int16_t *sig, inner_shake256_context *rng, const int8_t *f, const int8_t *g, const int8_t *F, const int8_t *G, const uint16_t *hm, unsigned logn, uint8_t *tmp);
void sign_tree(int16_t sig[1024], fpr expanded_key[15360], uint16_t hm[1024], uint8_t msg[50], uint8_t seed[48]);
void sign_tree_expand(int16_t sig[1024], const int8_t f[1024], const int8_t g[1024], const int8_t F_upper[1024], const int8_t G_upper[], uint16_t hm[1024], uint8_t seed[48]);
int64_t sampler(void *ctx, fpr mu, fpr isigma);
int64_t gaussian0_sampler(prng *p);
void ffLDL_fft_inner(fpr * tree, fpr * g0, fpr * g1, unsigned logn, fpr * tmp);

void ffSampling_fft_dyntree(void *samp_ctx, fpr *t0, fpr *t1, fpr *g00, fpr *g01, fpr *g11, unsigned orig_logn, unsigned logn, fpr *tmp);
void sampler_test(fpr mu[2048], fpr issigma[2048],int64_t res[2048], fpr dss[2048], fpr a[2048], fpr b[2048], fpr c[2048], fpr d[2048], fpr e[2048], char nonce[7], uint8_t msg[50]);
void ffSampling_fft_test(fpr *tree, fpr t0[1024], fpr t1[1024], fpr tx[1024], fpr ty[1024]);
void decompose_fpr(fpr *mu_in, fpr out[11], int out_int[3], int64_t out_64[1]);
void bug(double *in, double *out, double *out2, int32_t *out_int);






void prng_init(prng *p, inner_shake256_context *src);
void prng_refill(prng *p);
void prng_get_bytes(prng *p, void *dst, size_t len);
uint64_t prng_get_u64(prng *p);
unsigned prng_get_u8(prng *p);
# 207 "../FalconHLS/code_hls/header.h"
static const fpr fpr_q = 12289.0;
static const fpr fpr_inverse_of_q = 1.0 / 12289.0;
static const fpr fpr_inv_2sqrsigma0 = .150865048875372721532312163019;
static const fpr fpr_inv_sigma[] = {
 0.0,
 0.0069054793295940891952143765991630516,
 0.0068102267767177975961393730687908629,
 0.0067188101910722710707826117910434131,
 0.0065883354370073665545865037227681924,
 0.0064651781207602900738053897763485516,
 0.0063486788828078995327741182928037856,
 0.0062382586529084374473367528433697537,
 0.0061334065020930261548984001431770281,
 0.0060336696681577241031668062510953022,
 0.0059386453095331159950250124336477482
};
static const fpr fpr_sigma_min[] = {
 0.0,
 1.1165085072329102588881898380334015,
 1.1321247692325272405718031785357108,
 1.1475285353733668684571123112513188,
 1.1702540788534828939713084716509250,
 1.1925466358390344011122170489094133,
 1.2144300507766139921088487776957699,
 1.2359260567719808790104525941706723,
 1.2570545284063214162779743112075080,
 1.2778336969128335860256340575729042,
 1.2982803343442918539708792538826807
};
static const fpr fpr_log2 = 0.69314718055994530941723212146;
static const fpr fpr_inv_log2 = 1.4426950408889634073599246810;
static const fpr fpr_bnorm_max = 16822.4121;
static const fpr fpr_zero = 0.0;
static const fpr fpr_one = 1.0;
static const fpr fpr_two = 2.0;
static const fpr fpr_onehalf = 0.5;
static const fpr fpr_invsqrt2 = 0.707106781186547524400844362105;
static const fpr fpr_invsqrt8 = 0.353553390593273762200422181052;
static const fpr fpr_ptwo31 = 2147483648.0;
static const fpr fpr_ptwo31m1 = 2147483647.0;
static const fpr fpr_mtwo31m1 = -2147483647.0;
static const fpr fpr_ptwo63m1 = 9223372036854775807.0;
static const fpr fpr_mtwo63m1 = -9223372036854775807.0;
static const fpr fpr_ptwo63 = 9223372036854775808.0;
# 287 "../FalconHLS/code_hls/header.h"
static const uint8_t max_fg_bits[] = {
 0,
 8,
 8,
 8,
 8,
 8,
 7,
 7,
 6,
 6,
 5
};

static const uint8_t max_FG_bits[] = {
 0,
 8,
 8,
 8,
 8,
 8,
 8,
 8,
 8,
 8,
 8
};
# 344 "../FalconHLS/code_hls/header.h"
static const uint8_t max_sig_bits[] = {
 0,
 10,
 11,
 11,
 12,
 12,
 12,
 12,
 12,
 12,
 12
};



static const fpr fpr_gm_tab[] = {
 0, 0,
 -0.000000000000000000000000000, 1.000000000000000000000000000,
  0.707106781186547524400844362, 0.707106781186547524400844362,
 -0.707106781186547524400844362, 0.707106781186547524400844362,
  0.923879532511286756128183189, 0.382683432365089771728459984,
 -0.382683432365089771728459984, 0.923879532511286756128183189,
  0.382683432365089771728459984, 0.923879532511286756128183189,
 -0.923879532511286756128183189, 0.382683432365089771728459984,
  0.980785280403230449126182236, 0.195090322016128267848284868,
 -0.195090322016128267848284868, 0.980785280403230449126182236,
  0.555570233019602224742830814, 0.831469612302545237078788378,
 -0.831469612302545237078788378, 0.555570233019602224742830814,
  0.831469612302545237078788378, 0.555570233019602224742830814,
 -0.555570233019602224742830814, 0.831469612302545237078788378,
  0.195090322016128267848284868, 0.980785280403230449126182236,
 -0.980785280403230449126182236, 0.195090322016128267848284868,
  0.995184726672196886244836953, 0.098017140329560601994195564,
 -0.098017140329560601994195564, 0.995184726672196886244836953,
  0.634393284163645498215171613, 0.773010453362736960810906610,
 -0.773010453362736960810906610, 0.634393284163645498215171613,
  0.881921264348355029712756864, 0.471396736825997648556387626,
 -0.471396736825997648556387626, 0.881921264348355029712756864,
  0.290284677254462367636192376, 0.956940335732208864935797887,
 -0.956940335732208864935797887, 0.290284677254462367636192376,
  0.956940335732208864935797887, 0.290284677254462367636192376,
 -0.290284677254462367636192376, 0.956940335732208864935797887,
  0.471396736825997648556387626, 0.881921264348355029712756864,
 -0.881921264348355029712756864, 0.471396736825997648556387626,
  0.773010453362736960810906610, 0.634393284163645498215171613,
 -0.634393284163645498215171613, 0.773010453362736960810906610,
  0.098017140329560601994195564, 0.995184726672196886244836953,
 -0.995184726672196886244836953, 0.098017140329560601994195564,
  0.998795456205172392714771605, 0.049067674327418014254954977,
 -0.049067674327418014254954977, 0.998795456205172392714771605,
  0.671558954847018400625376850, 0.740951125354959091175616897,
 -0.740951125354959091175616897, 0.671558954847018400625376850,
  0.903989293123443331586200297, 0.427555093430282094320966857,
 -0.427555093430282094320966857, 0.903989293123443331586200297,
  0.336889853392220050689253213, 0.941544065183020778412509403,
 -0.941544065183020778412509403, 0.336889853392220050689253213,
  0.970031253194543992603984207, 0.242980179903263889948274162,
 -0.242980179903263889948274162, 0.970031253194543992603984207,
  0.514102744193221726593693839, 0.857728610000272069902269984,
 -0.857728610000272069902269984, 0.514102744193221726593693839,
  0.803207531480644909806676513, 0.595699304492433343467036529,
 -0.595699304492433343467036529, 0.803207531480644909806676513,
  0.146730474455361751658850130, 0.989176509964780973451673738,
 -0.989176509964780973451673738, 0.146730474455361751658850130,
  0.989176509964780973451673738, 0.146730474455361751658850130,
 -0.146730474455361751658850130, 0.989176509964780973451673738,
  0.595699304492433343467036529, 0.803207531480644909806676513,
 -0.803207531480644909806676513, 0.595699304492433343467036529,
  0.857728610000272069902269984, 0.514102744193221726593693839,
 -0.514102744193221726593693839, 0.857728610000272069902269984,
  0.242980179903263889948274162, 0.970031253194543992603984207,
 -0.970031253194543992603984207, 0.242980179903263889948274162,
  0.941544065183020778412509403, 0.336889853392220050689253213,
 -0.336889853392220050689253213, 0.941544065183020778412509403,
  0.427555093430282094320966857, 0.903989293123443331586200297,
 -0.903989293123443331586200297, 0.427555093430282094320966857,
  0.740951125354959091175616897, 0.671558954847018400625376850,
 -0.671558954847018400625376850, 0.740951125354959091175616897,
  0.049067674327418014254954977, 0.998795456205172392714771605,
 -0.998795456205172392714771605, 0.049067674327418014254954977,
  0.999698818696204220115765650, 0.024541228522912288031734529,
 -0.024541228522912288031734529, 0.999698818696204220115765650,
  0.689540544737066924616730630, 0.724247082951466920941069243,
 -0.724247082951466920941069243, 0.689540544737066924616730630,
  0.914209755703530654635014829, 0.405241314004989870908481306,
 -0.405241314004989870908481306, 0.914209755703530654635014829,
  0.359895036534988148775104572, 0.932992798834738887711660256,
 -0.932992798834738887711660256, 0.359895036534988148775104572,
  0.975702130038528544460395766, 0.219101240156869797227737547,
 -0.219101240156869797227737547, 0.975702130038528544460395766,
  0.534997619887097210663076905, 0.844853565249707073259571205,
 -0.844853565249707073259571205, 0.534997619887097210663076905,
  0.817584813151583696504920884, 0.575808191417845300745972454,
 -0.575808191417845300745972454, 0.817584813151583696504920884,
  0.170961888760301226363642357, 0.985277642388941244774018433,
 -0.985277642388941244774018433, 0.170961888760301226363642357,
  0.992479534598709998156767252, 0.122410675199216198498704474,
 -0.122410675199216198498704474, 0.992479534598709998156767252,
  0.615231590580626845484913563, 0.788346427626606262009164705,
 -0.788346427626606262009164705, 0.615231590580626845484913563,
  0.870086991108711418652292404, 0.492898192229784036873026689,
 -0.492898192229784036873026689, 0.870086991108711418652292404,
  0.266712757474898386325286515, 0.963776065795439866686464356,
 -0.963776065795439866686464356, 0.266712757474898386325286515,
  0.949528180593036667195936074, 0.313681740398891476656478846,
 -0.313681740398891476656478846, 0.949528180593036667195936074,
  0.449611329654606600046294579, 0.893224301195515320342416447,
 -0.893224301195515320342416447, 0.449611329654606600046294579,
  0.757208846506484547575464054, 0.653172842953776764084203014,
 -0.653172842953776764084203014, 0.757208846506484547575464054,
  0.073564563599667423529465622, 0.997290456678690216135597140,
 -0.997290456678690216135597140, 0.073564563599667423529465622,
  0.997290456678690216135597140, 0.073564563599667423529465622,
 -0.073564563599667423529465622, 0.997290456678690216135597140,
  0.653172842953776764084203014, 0.757208846506484547575464054,
 -0.757208846506484547575464054, 0.653172842953776764084203014,
  0.893224301195515320342416447, 0.449611329654606600046294579,
 -0.449611329654606600046294579, 0.893224301195515320342416447,
  0.313681740398891476656478846, 0.949528180593036667195936074,
 -0.949528180593036667195936074, 0.313681740398891476656478846,
  0.963776065795439866686464356, 0.266712757474898386325286515,
 -0.266712757474898386325286515, 0.963776065795439866686464356,
  0.492898192229784036873026689, 0.870086991108711418652292404,
 -0.870086991108711418652292404, 0.492898192229784036873026689,
  0.788346427626606262009164705, 0.615231590580626845484913563,
 -0.615231590580626845484913563, 0.788346427626606262009164705,
  0.122410675199216198498704474, 0.992479534598709998156767252,
 -0.992479534598709998156767252, 0.122410675199216198498704474,
  0.985277642388941244774018433, 0.170961888760301226363642357,
 -0.170961888760301226363642357, 0.985277642388941244774018433,
  0.575808191417845300745972454, 0.817584813151583696504920884,
 -0.817584813151583696504920884, 0.575808191417845300745972454,
  0.844853565249707073259571205, 0.534997619887097210663076905,
 -0.534997619887097210663076905, 0.844853565249707073259571205,
  0.219101240156869797227737547, 0.975702130038528544460395766,
 -0.975702130038528544460395766, 0.219101240156869797227737547,
  0.932992798834738887711660256, 0.359895036534988148775104572,
 -0.359895036534988148775104572, 0.932992798834738887711660256,
  0.405241314004989870908481306, 0.914209755703530654635014829,
 -0.914209755703530654635014829, 0.405241314004989870908481306,
  0.724247082951466920941069243, 0.689540544737066924616730630,
 -0.689540544737066924616730630, 0.724247082951466920941069243,
  0.024541228522912288031734529, 0.999698818696204220115765650,
 -0.999698818696204220115765650, 0.024541228522912288031734529,
  0.999924701839144540921646491, 0.012271538285719926079408262,
 -0.012271538285719926079408262, 0.999924701839144540921646491,
  0.698376249408972853554813503, 0.715730825283818654125532623,
 -0.715730825283818654125532623, 0.698376249408972853554813503,
  0.919113851690057743908477789, 0.393992040061048108596188661,
 -0.393992040061048108596188661, 0.919113851690057743908477789,
  0.371317193951837543411934967, 0.928506080473215565937167396,
 -0.928506080473215565937167396, 0.371317193951837543411934967,
  0.978317370719627633106240097, 0.207111376192218549708116020,
 -0.207111376192218549708116020, 0.978317370719627633106240097,
  0.545324988422046422313987347, 0.838224705554838043186996856,
 -0.838224705554838043186996856, 0.545324988422046422313987347,
  0.824589302785025264474803737, 0.565731810783613197389765011,
 -0.565731810783613197389765011, 0.824589302785025264474803737,
  0.183039887955140958516532578, 0.983105487431216327180301155,
 -0.983105487431216327180301155, 0.183039887955140958516532578,
  0.993906970002356041546922813, 0.110222207293883058807899140,
 -0.110222207293883058807899140, 0.993906970002356041546922813,
  0.624859488142386377084072816, 0.780737228572094478301588484,
 -0.780737228572094478301588484, 0.624859488142386377084072816,
  0.876070094195406607095844268, 0.482183772079122748517344481,
 -0.482183772079122748517344481, 0.876070094195406607095844268,
  0.278519689385053105207848526, 0.960430519415565811199035138,
 -0.960430519415565811199035138, 0.278519689385053105207848526,
  0.953306040354193836916740383, 0.302005949319228067003463232,
 -0.302005949319228067003463232, 0.953306040354193836916740383,
  0.460538710958240023633181487, 0.887639620402853947760181617,
 -0.887639620402853947760181617, 0.460538710958240023633181487,
  0.765167265622458925888815999, 0.643831542889791465068086063,
 -0.643831542889791465068086063, 0.765167265622458925888815999,
  0.085797312344439890461556332, 0.996312612182778012627226190,
 -0.996312612182778012627226190, 0.085797312344439890461556332,
  0.998118112900149207125155861, 0.061320736302208577782614593,
 -0.061320736302208577782614593, 0.998118112900149207125155861,
  0.662415777590171761113069817, 0.749136394523459325469203257,
 -0.749136394523459325469203257, 0.662415777590171761113069817,
  0.898674465693953843041976744, 0.438616238538527637647025738,
 -0.438616238538527637647025738, 0.898674465693953843041976744,
  0.325310292162262934135954708, 0.945607325380521325730945387,
 -0.945607325380521325730945387, 0.325310292162262934135954708,
  0.966976471044852109087220226, 0.254865659604514571553980779,
 -0.254865659604514571553980779, 0.966976471044852109087220226,
  0.503538383725717558691867071, 0.863972856121586737918147054,
 -0.863972856121586737918147054, 0.503538383725717558691867071,
  0.795836904608883536262791915, 0.605511041404325513920626941,
 -0.605511041404325513920626941, 0.795836904608883536262791915,
  0.134580708507126186316358409, 0.990902635427780025108237011,
 -0.990902635427780025108237011, 0.134580708507126186316358409,
  0.987301418157858382399815802, 0.158858143333861441684385360,
 -0.158858143333861441684385360, 0.987301418157858382399815802,
  0.585797857456438860328080838, 0.810457198252594791726703434,
 -0.810457198252594791726703434, 0.585797857456438860328080838,
  0.851355193105265142261290312, 0.524589682678468906215098464,
 -0.524589682678468906215098464, 0.851355193105265142261290312,
  0.231058108280671119643236018, 0.972939952205560145467720114,
 -0.972939952205560145467720114, 0.231058108280671119643236018,
  0.937339011912574923201899593, 0.348418680249434568419308588,
 -0.348418680249434568419308588, 0.937339011912574923201899593,
  0.416429560097637182562598911, 0.909167983090522376563884788,
 -0.909167983090522376563884788, 0.416429560097637182562598911,
  0.732654271672412834615546649, 0.680600997795453050594430464,
 -0.680600997795453050594430464, 0.732654271672412834615546649,
  0.036807222941358832324332691, 0.999322384588349500896221011,
 -0.999322384588349500896221011, 0.036807222941358832324332691,
  0.999322384588349500896221011, 0.036807222941358832324332691,
 -0.036807222941358832324332691, 0.999322384588349500896221011,
  0.680600997795453050594430464, 0.732654271672412834615546649,
 -0.732654271672412834615546649, 0.680600997795453050594430464,
  0.909167983090522376563884788, 0.416429560097637182562598911,
 -0.416429560097637182562598911, 0.909167983090522376563884788,
  0.348418680249434568419308588, 0.937339011912574923201899593,
 -0.937339011912574923201899593, 0.348418680249434568419308588,
  0.972939952205560145467720114, 0.231058108280671119643236018,
 -0.231058108280671119643236018, 0.972939952205560145467720114,
  0.524589682678468906215098464, 0.851355193105265142261290312,
 -0.851355193105265142261290312, 0.524589682678468906215098464,
  0.810457198252594791726703434, 0.585797857456438860328080838,
 -0.585797857456438860328080838, 0.810457198252594791726703434,
  0.158858143333861441684385360, 0.987301418157858382399815802,
 -0.987301418157858382399815802, 0.158858143333861441684385360,
  0.990902635427780025108237011, 0.134580708507126186316358409,
 -0.134580708507126186316358409, 0.990902635427780025108237011,
  0.605511041404325513920626941, 0.795836904608883536262791915,
 -0.795836904608883536262791915, 0.605511041404325513920626941,
  0.863972856121586737918147054, 0.503538383725717558691867071,
 -0.503538383725717558691867071, 0.863972856121586737918147054,
  0.254865659604514571553980779, 0.966976471044852109087220226,
 -0.966976471044852109087220226, 0.254865659604514571553980779,
  0.945607325380521325730945387, 0.325310292162262934135954708,
 -0.325310292162262934135954708, 0.945607325380521325730945387,
  0.438616238538527637647025738, 0.898674465693953843041976744,
 -0.898674465693953843041976744, 0.438616238538527637647025738,
  0.749136394523459325469203257, 0.662415777590171761113069817,
 -0.662415777590171761113069817, 0.749136394523459325469203257,
  0.061320736302208577782614593, 0.998118112900149207125155861,
 -0.998118112900149207125155861, 0.061320736302208577782614593,
  0.996312612182778012627226190, 0.085797312344439890461556332,
 -0.085797312344439890461556332, 0.996312612182778012627226190,
  0.643831542889791465068086063, 0.765167265622458925888815999,
 -0.765167265622458925888815999, 0.643831542889791465068086063,
  0.887639620402853947760181617, 0.460538710958240023633181487,
 -0.460538710958240023633181487, 0.887639620402853947760181617,
  0.302005949319228067003463232, 0.953306040354193836916740383,
 -0.953306040354193836916740383, 0.302005949319228067003463232,
  0.960430519415565811199035138, 0.278519689385053105207848526,
 -0.278519689385053105207848526, 0.960430519415565811199035138,
  0.482183772079122748517344481, 0.876070094195406607095844268,
 -0.876070094195406607095844268, 0.482183772079122748517344481,
  0.780737228572094478301588484, 0.624859488142386377084072816,
 -0.624859488142386377084072816, 0.780737228572094478301588484,
  0.110222207293883058807899140, 0.993906970002356041546922813,
 -0.993906970002356041546922813, 0.110222207293883058807899140,
  0.983105487431216327180301155, 0.183039887955140958516532578,
 -0.183039887955140958516532578, 0.983105487431216327180301155,
  0.565731810783613197389765011, 0.824589302785025264474803737,
 -0.824589302785025264474803737, 0.565731810783613197389765011,
  0.838224705554838043186996856, 0.545324988422046422313987347,
 -0.545324988422046422313987347, 0.838224705554838043186996856,
  0.207111376192218549708116020, 0.978317370719627633106240097,
 -0.978317370719627633106240097, 0.207111376192218549708116020,
  0.928506080473215565937167396, 0.371317193951837543411934967,
 -0.371317193951837543411934967, 0.928506080473215565937167396,
  0.393992040061048108596188661, 0.919113851690057743908477789,
 -0.919113851690057743908477789, 0.393992040061048108596188661,
  0.715730825283818654125532623, 0.698376249408972853554813503,
 -0.698376249408972853554813503, 0.715730825283818654125532623,
  0.012271538285719926079408262, 0.999924701839144540921646491,
 -0.999924701839144540921646491, 0.012271538285719926079408262,
  0.999981175282601142656990438, 0.006135884649154475359640235,
 -0.006135884649154475359640235, 0.999981175282601142656990438,
  0.702754744457225302452914421, 0.711432195745216441522130290,
 -0.711432195745216441522130290, 0.702754744457225302452914421,
  0.921514039342041943465396332, 0.388345046698826291624993541,
 -0.388345046698826291624993541, 0.921514039342041943465396332,
  0.377007410216418256726567823, 0.926210242138311341974793388,
 -0.926210242138311341974793388, 0.377007410216418256726567823,
  0.979569765685440534439326110, 0.201104634842091911558443546,
 -0.201104634842091911558443546, 0.979569765685440534439326110,
  0.550457972936604802977289893, 0.834862874986380056304401383,
 -0.834862874986380056304401383, 0.550457972936604802977289893,
  0.828045045257755752067527592, 0.560661576197336023839710223,
 -0.560661576197336023839710223, 0.828045045257755752067527592,
  0.189068664149806212754997837, 0.981963869109555264072848154,
 -0.981963869109555264072848154, 0.189068664149806212754997837,
  0.994564570734255452119106243, 0.104121633872054579120943880,
 -0.104121633872054579120943880, 0.994564570734255452119106243,
  0.629638238914927025372981341, 0.776888465673232450040827983,
 -0.776888465673232450040827983, 0.629638238914927025372981341,
  0.879012226428633477831323711, 0.476799230063322133342158117,
 -0.476799230063322133342158117, 0.879012226428633477831323711,
  0.284407537211271843618310615, 0.958703474895871555374645792,
 -0.958703474895871555374645792, 0.284407537211271843618310615,
  0.955141168305770721498157712, 0.296150888243623824121786128,
 -0.296150888243623824121786128, 0.955141168305770721498157712,
  0.465976495767966177902756065, 0.884797098430937780104007041,
 -0.884797098430937780104007041, 0.465976495767966177902756065,
  0.769103337645579639346626069, 0.639124444863775743801488193,
 -0.639124444863775743801488193, 0.769103337645579639346626069,
  0.091908956497132728624990979, 0.995767414467659793982495643,
 -0.995767414467659793982495643, 0.091908956497132728624990979,
  0.998475580573294752208559038, 0.055195244349689939809447526,
 -0.055195244349689939809447526, 0.998475580573294752208559038,
  0.666999922303637506650154222, 0.745057785441465962407907310,
 -0.745057785441465962407907310, 0.666999922303637506650154222,
  0.901348847046022014570746093, 0.433093818853151968484222638,
 -0.433093818853151968484222638, 0.901348847046022014570746093,
  0.331106305759876401737190737, 0.943593458161960361495301445,
 -0.943593458161960361495301445, 0.331106305759876401737190737,
  0.968522094274417316221088329, 0.248927605745720168110682816,
 -0.248927605745720168110682816, 0.968522094274417316221088329,
  0.508830142543107036931749324, 0.860866938637767279344583877,
 -0.860866938637767279344583877, 0.508830142543107036931749324,
  0.799537269107905033500246232, 0.600616479383868926653875896,
 -0.600616479383868926653875896, 0.799537269107905033500246232,
  0.140658239332849230714788846, 0.990058210262297105505906464,
 -0.990058210262297105505906464, 0.140658239332849230714788846,
  0.988257567730749491404792538, 0.152797185258443427720336613,
 -0.152797185258443427720336613, 0.988257567730749491404792538,
  0.590759701858874228423887908, 0.806847553543799272206514313,
 -0.806847553543799272206514313, 0.590759701858874228423887908,
  0.854557988365400520767862276, 0.519355990165589587361829932,
 -0.519355990165589587361829932, 0.854557988365400520767862276,
  0.237023605994367206867735915, 0.971503890986251775537099622,
 -0.971503890986251775537099622, 0.237023605994367206867735915,
  0.939459223602189911962669246, 0.342660717311994397592781983,
 -0.342660717311994397592781983, 0.939459223602189911962669246,
  0.422000270799799685941287941, 0.906595704514915365332960588,
 -0.906595704514915365332960588, 0.422000270799799685941287941,
  0.736816568877369875090132520, 0.676092703575315960360419228,
 -0.676092703575315960360419228, 0.736816568877369875090132520,
  0.042938256934940823077124540, 0.999077727752645382888781997,
 -0.999077727752645382888781997, 0.042938256934940823077124540,
  0.999529417501093163079703322, 0.030674803176636625934021028,
 -0.030674803176636625934021028, 0.999529417501093163079703322,
  0.685083667772700381362052545, 0.728464390448225196492035438,
 -0.728464390448225196492035438, 0.685083667772700381362052545,
  0.911706032005429851404397325, 0.410843171057903942183466675,
 -0.410843171057903942183466675, 0.911706032005429851404397325,
  0.354163525420490382357395796, 0.935183509938947577642207480,
 -0.935183509938947577642207480, 0.354163525420490382357395796,
  0.974339382785575860518721668, 0.225083911359792835991642120,
 -0.225083911359792835991642120, 0.974339382785575860518721668,
  0.529803624686294668216054671, 0.848120344803297251279133563,
 -0.848120344803297251279133563, 0.529803624686294668216054671,
  0.814036329705948361654516690, 0.580813958095764545075595272,
 -0.580813958095764545075595272, 0.814036329705948361654516690,
  0.164913120489969921418189113, 0.986308097244598647863297524,
 -0.986308097244598647863297524, 0.164913120489969921418189113,
  0.991709753669099522860049931, 0.128498110793793172624415589,
 -0.128498110793793172624415589, 0.991709753669099522860049931,
  0.610382806276309452716352152, 0.792106577300212351782342879,
 -0.792106577300212351782342879, 0.610382806276309452716352152,
  0.867046245515692651480195629, 0.498227666972781852410983869,
 -0.498227666972781852410983869, 0.867046245515692651480195629,
  0.260794117915275518280186509, 0.965394441697689374550843858,
 -0.965394441697689374550843858, 0.260794117915275518280186509,
  0.947585591017741134653387321, 0.319502030816015677901518272,
 -0.319502030816015677901518272, 0.947585591017741134653387321,
  0.444122144570429231642069418, 0.895966249756185155914560282,
 -0.895966249756185155914560282, 0.444122144570429231642069418,
  0.753186799043612482483430486, 0.657806693297078656931182264,
 -0.657806693297078656931182264, 0.753186799043612482483430486,
  0.067443919563664057897972422, 0.997723066644191609848546728,
 -0.997723066644191609848546728, 0.067443919563664057897972422,
  0.996820299291165714972629398, 0.079682437971430121147120656,
 -0.079682437971430121147120656, 0.996820299291165714972629398,
  0.648514401022112445084560551, 0.761202385484261814029709836,
 -0.761202385484261814029709836, 0.648514401022112445084560551,
  0.890448723244757889952150560, 0.455083587126343823535869268,
 -0.455083587126343823535869268, 0.890448723244757889952150560,
  0.307849640041534893682063646, 0.951435020969008369549175569,
 -0.951435020969008369549175569, 0.307849640041534893682063646,
  0.962121404269041595429604316, 0.272621355449948984493347477,
 -0.272621355449948984493347477, 0.962121404269041595429604316,
  0.487550160148435954641485027, 0.873094978418290098636085973,
 -0.873094978418290098636085973, 0.487550160148435954641485027,
  0.784556597155575233023892575, 0.620057211763289178646268191,
 -0.620057211763289178646268191, 0.784556597155575233023892575,
  0.116318630911904767252544319, 0.993211949234794533104601012,
 -0.993211949234794533104601012, 0.116318630911904767252544319,
  0.984210092386929073193874387, 0.177004220412148756196839844,
 -0.177004220412148756196839844, 0.984210092386929073193874387,
  0.570780745886967280232652864, 0.821102514991104679060430820,
 -0.821102514991104679060430820, 0.570780745886967280232652864,
  0.841554977436898409603499520, 0.540171472729892881297845480,
 -0.540171472729892881297845480, 0.841554977436898409603499520,
  0.213110319916091373967757518, 0.977028142657754351485866211,
 -0.977028142657754351485866211, 0.213110319916091373967757518,
  0.930766961078983731944872340, 0.365612997804773870011745909,
 -0.365612997804773870011745909, 0.930766961078983731944872340,
  0.399624199845646828544117031, 0.916679059921042663116457013,
 -0.916679059921042663116457013, 0.399624199845646828544117031,
  0.720002507961381629076682999, 0.693971460889654009003734389,
 -0.693971460889654009003734389, 0.720002507961381629076682999,
  0.018406729905804820927366313, 0.999830581795823422015722275,
 -0.999830581795823422015722275, 0.018406729905804820927366313,
  0.999830581795823422015722275, 0.018406729905804820927366313,
 -0.018406729905804820927366313, 0.999830581795823422015722275,
  0.693971460889654009003734389, 0.720002507961381629076682999,
 -0.720002507961381629076682999, 0.693971460889654009003734389,
  0.916679059921042663116457013, 0.399624199845646828544117031,
 -0.399624199845646828544117031, 0.916679059921042663116457013,
  0.365612997804773870011745909, 0.930766961078983731944872340,
 -0.930766961078983731944872340, 0.365612997804773870011745909,
  0.977028142657754351485866211, 0.213110319916091373967757518,
 -0.213110319916091373967757518, 0.977028142657754351485866211,
  0.540171472729892881297845480, 0.841554977436898409603499520,
 -0.841554977436898409603499520, 0.540171472729892881297845480,
  0.821102514991104679060430820, 0.570780745886967280232652864,
 -0.570780745886967280232652864, 0.821102514991104679060430820,
  0.177004220412148756196839844, 0.984210092386929073193874387,
 -0.984210092386929073193874387, 0.177004220412148756196839844,
  0.993211949234794533104601012, 0.116318630911904767252544319,
 -0.116318630911904767252544319, 0.993211949234794533104601012,
  0.620057211763289178646268191, 0.784556597155575233023892575,
 -0.784556597155575233023892575, 0.620057211763289178646268191,
  0.873094978418290098636085973, 0.487550160148435954641485027,
 -0.487550160148435954641485027, 0.873094978418290098636085973,
  0.272621355449948984493347477, 0.962121404269041595429604316,
 -0.962121404269041595429604316, 0.272621355449948984493347477,
  0.951435020969008369549175569, 0.307849640041534893682063646,
 -0.307849640041534893682063646, 0.951435020969008369549175569,
  0.455083587126343823535869268, 0.890448723244757889952150560,
 -0.890448723244757889952150560, 0.455083587126343823535869268,
  0.761202385484261814029709836, 0.648514401022112445084560551,
 -0.648514401022112445084560551, 0.761202385484261814029709836,
  0.079682437971430121147120656, 0.996820299291165714972629398,
 -0.996820299291165714972629398, 0.079682437971430121147120656,
  0.997723066644191609848546728, 0.067443919563664057897972422,
 -0.067443919563664057897972422, 0.997723066644191609848546728,
  0.657806693297078656931182264, 0.753186799043612482483430486,
 -0.753186799043612482483430486, 0.657806693297078656931182264,
  0.895966249756185155914560282, 0.444122144570429231642069418,
 -0.444122144570429231642069418, 0.895966249756185155914560282,
  0.319502030816015677901518272, 0.947585591017741134653387321,
 -0.947585591017741134653387321, 0.319502030816015677901518272,
  0.965394441697689374550843858, 0.260794117915275518280186509,
 -0.260794117915275518280186509, 0.965394441697689374550843858,
  0.498227666972781852410983869, 0.867046245515692651480195629,
 -0.867046245515692651480195629, 0.498227666972781852410983869,
  0.792106577300212351782342879, 0.610382806276309452716352152,
 -0.610382806276309452716352152, 0.792106577300212351782342879,
  0.128498110793793172624415589, 0.991709753669099522860049931,
 -0.991709753669099522860049931, 0.128498110793793172624415589,
  0.986308097244598647863297524, 0.164913120489969921418189113,
 -0.164913120489969921418189113, 0.986308097244598647863297524,
  0.580813958095764545075595272, 0.814036329705948361654516690,
 -0.814036329705948361654516690, 0.580813958095764545075595272,
  0.848120344803297251279133563, 0.529803624686294668216054671,
 -0.529803624686294668216054671, 0.848120344803297251279133563,
  0.225083911359792835991642120, 0.974339382785575860518721668,
 -0.974339382785575860518721668, 0.225083911359792835991642120,
  0.935183509938947577642207480, 0.354163525420490382357395796,
 -0.354163525420490382357395796, 0.935183509938947577642207480,
  0.410843171057903942183466675, 0.911706032005429851404397325,
 -0.911706032005429851404397325, 0.410843171057903942183466675,
  0.728464390448225196492035438, 0.685083667772700381362052545,
 -0.685083667772700381362052545, 0.728464390448225196492035438,
  0.030674803176636625934021028, 0.999529417501093163079703322,
 -0.999529417501093163079703322, 0.030674803176636625934021028,
  0.999077727752645382888781997, 0.042938256934940823077124540,
 -0.042938256934940823077124540, 0.999077727752645382888781997,
  0.676092703575315960360419228, 0.736816568877369875090132520,
 -0.736816568877369875090132520, 0.676092703575315960360419228,
  0.906595704514915365332960588, 0.422000270799799685941287941,
 -0.422000270799799685941287941, 0.906595704514915365332960588,
  0.342660717311994397592781983, 0.939459223602189911962669246,
 -0.939459223602189911962669246, 0.342660717311994397592781983,
  0.971503890986251775537099622, 0.237023605994367206867735915,
 -0.237023605994367206867735915, 0.971503890986251775537099622,
  0.519355990165589587361829932, 0.854557988365400520767862276,
 -0.854557988365400520767862276, 0.519355990165589587361829932,
  0.806847553543799272206514313, 0.590759701858874228423887908,
 -0.590759701858874228423887908, 0.806847553543799272206514313,
  0.152797185258443427720336613, 0.988257567730749491404792538,
 -0.988257567730749491404792538, 0.152797185258443427720336613,
  0.990058210262297105505906464, 0.140658239332849230714788846,
 -0.140658239332849230714788846, 0.990058210262297105505906464,
  0.600616479383868926653875896, 0.799537269107905033500246232,
 -0.799537269107905033500246232, 0.600616479383868926653875896,
  0.860866938637767279344583877, 0.508830142543107036931749324,
 -0.508830142543107036931749324, 0.860866938637767279344583877,
  0.248927605745720168110682816, 0.968522094274417316221088329,
 -0.968522094274417316221088329, 0.248927605745720168110682816,
  0.943593458161960361495301445, 0.331106305759876401737190737,
 -0.331106305759876401737190737, 0.943593458161960361495301445,
  0.433093818853151968484222638, 0.901348847046022014570746093,
 -0.901348847046022014570746093, 0.433093818853151968484222638,
  0.745057785441465962407907310, 0.666999922303637506650154222,
 -0.666999922303637506650154222, 0.745057785441465962407907310,
  0.055195244349689939809447526, 0.998475580573294752208559038,
 -0.998475580573294752208559038, 0.055195244349689939809447526,
  0.995767414467659793982495643, 0.091908956497132728624990979,
 -0.091908956497132728624990979, 0.995767414467659793982495643,
  0.639124444863775743801488193, 0.769103337645579639346626069,
 -0.769103337645579639346626069, 0.639124444863775743801488193,
  0.884797098430937780104007041, 0.465976495767966177902756065,
 -0.465976495767966177902756065, 0.884797098430937780104007041,
  0.296150888243623824121786128, 0.955141168305770721498157712,
 -0.955141168305770721498157712, 0.296150888243623824121786128,
  0.958703474895871555374645792, 0.284407537211271843618310615,
 -0.284407537211271843618310615, 0.958703474895871555374645792,
  0.476799230063322133342158117, 0.879012226428633477831323711,
 -0.879012226428633477831323711, 0.476799230063322133342158117,
  0.776888465673232450040827983, 0.629638238914927025372981341,
 -0.629638238914927025372981341, 0.776888465673232450040827983,
  0.104121633872054579120943880, 0.994564570734255452119106243,
 -0.994564570734255452119106243, 0.104121633872054579120943880,
  0.981963869109555264072848154, 0.189068664149806212754997837,
 -0.189068664149806212754997837, 0.981963869109555264072848154,
  0.560661576197336023839710223, 0.828045045257755752067527592,
 -0.828045045257755752067527592, 0.560661576197336023839710223,
  0.834862874986380056304401383, 0.550457972936604802977289893,
 -0.550457972936604802977289893, 0.834862874986380056304401383,
  0.201104634842091911558443546, 0.979569765685440534439326110,
 -0.979569765685440534439326110, 0.201104634842091911558443546,
  0.926210242138311341974793388, 0.377007410216418256726567823,
 -0.377007410216418256726567823, 0.926210242138311341974793388,
  0.388345046698826291624993541, 0.921514039342041943465396332,
 -0.921514039342041943465396332, 0.388345046698826291624993541,
  0.711432195745216441522130290, 0.702754744457225302452914421,
 -0.702754744457225302452914421, 0.711432195745216441522130290,
  0.006135884649154475359640235, 0.999981175282601142656990438,
 -0.999981175282601142656990438, 0.006135884649154475359640235,
  0.999995293809576171511580126, 0.003067956762965976270145365,
 -0.003067956762965976270145365, 0.999995293809576171511580126,
  0.704934080375904908852523758, 0.709272826438865651316533772,
 -0.709272826438865651316533772, 0.704934080375904908852523758,
  0.922701128333878570437264227, 0.385516053843918864075607949,
 -0.385516053843918864075607949, 0.922701128333878570437264227,
  0.379847208924051170576281147, 0.925049240782677590302371869,
 -0.925049240782677590302371869, 0.379847208924051170576281147,
  0.980182135968117392690210009, 0.198098410717953586179324918,
 -0.198098410717953586179324918, 0.980182135968117392690210009,
  0.553016705580027531764226988, 0.833170164701913186439915922,
 -0.833170164701913186439915922, 0.553016705580027531764226988,
  0.829761233794523042469023765, 0.558118531220556115693702964,
 -0.558118531220556115693702964, 0.829761233794523042469023765,
  0.192080397049892441679288205, 0.981379193313754574318224190,
 -0.981379193313754574318224190, 0.192080397049892441679288205,
  0.994879330794805620591166107, 0.101069862754827824987887585,
 -0.101069862754827824987887585, 0.994879330794805620591166107,
  0.632018735939809021909403706, 0.774953106594873878359129282,
 -0.774953106594873878359129282, 0.632018735939809021909403706,
  0.880470889052160770806542929, 0.474100214650550014398580015,
 -0.474100214650550014398580015, 0.880470889052160770806542929,
  0.287347459544729526477331841, 0.957826413027532890321037029,
 -0.957826413027532890321037029, 0.287347459544729526477331841,
  0.956045251349996443270479823, 0.293219162694258650606608599,
 -0.293219162694258650606608599, 0.956045251349996443270479823,
  0.468688822035827933697617870, 0.883363338665731594736308015,
 -0.883363338665731594736308015, 0.468688822035827933697617870,
  0.771060524261813773200605759, 0.636761861236284230413943435,
 -0.636761861236284230413943435, 0.771060524261813773200605759,
  0.094963495329638998938034312, 0.995480755491926941769171600,
 -0.995480755491926941769171600, 0.094963495329638998938034312,
  0.998640218180265222418199049, 0.052131704680283321236358216,
 -0.052131704680283321236358216, 0.998640218180265222418199049,
  0.669282588346636065720696366, 0.743007952135121693517362293,
 -0.743007952135121693517362293, 0.669282588346636065720696366,
  0.902673318237258806751502391, 0.430326481340082633908199031,
 -0.430326481340082633908199031, 0.902673318237258806751502391,
  0.333999651442009404650865481, 0.942573197601446879280758735,
 -0.942573197601446879280758735, 0.333999651442009404650865481,
  0.969281235356548486048290738, 0.245955050335794611599924709,
 -0.245955050335794611599924709, 0.969281235356548486048290738,
  0.511468850437970399504391001, 0.859301818357008404783582139,
 -0.859301818357008404783582139, 0.511468850437970399504391001,
  0.801376171723140219430247777, 0.598160706996342311724958652,
 -0.598160706996342311724958652, 0.801376171723140219430247777,
  0.143695033150294454819773349, 0.989622017463200834623694454,
 -0.989622017463200834623694454, 0.143695033150294454819773349,
  0.988721691960323767604516485, 0.149764534677321517229695737,
 -0.149764534677321517229695737, 0.988721691960323767604516485,
  0.593232295039799808047809426, 0.805031331142963597922659282,
 -0.805031331142963597922659282, 0.593232295039799808047809426,
  0.856147328375194481019630732, 0.516731799017649881508753876,
 -0.516731799017649881508753876, 0.856147328375194481019630732,
  0.240003022448741486568922365, 0.970772140728950302138169611,
 -0.970772140728950302138169611, 0.240003022448741486568922365,
  0.940506070593268323787291309, 0.339776884406826857828825803,
 -0.339776884406826857828825803, 0.940506070593268323787291309,
  0.424779681209108833357226189, 0.905296759318118774354048329,
 -0.905296759318118774354048329, 0.424779681209108833357226189,
  0.738887324460615147933116508, 0.673829000378756060917568372,
 -0.673829000378756060917568372, 0.738887324460615147933116508,
  0.046003182130914628814301788, 0.998941293186856850633930266,
 -0.998941293186856850633930266, 0.046003182130914628814301788,
  0.999618822495178597116830637, 0.027608145778965741612354872,
 -0.027608145778965741612354872, 0.999618822495178597116830637,
  0.687315340891759108199186948, 0.726359155084345976817494315,
 -0.726359155084345976817494315, 0.687315340891759108199186948,
  0.912962190428398164628018233, 0.408044162864978680820747499,
 -0.408044162864978680820747499, 0.912962190428398164628018233,
  0.357030961233430032614954036, 0.934092550404258914729877883,
 -0.934092550404258914729877883, 0.357030961233430032614954036,
  0.975025345066994146844913468, 0.222093620973203534094094721,
 -0.222093620973203534094094721, 0.975025345066994146844913468,
  0.532403127877197971442805218, 0.846490938774052078300544488,
 -0.846490938774052078300544488, 0.532403127877197971442805218,
  0.815814410806733789010772660, 0.578313796411655563342245019,
 -0.578313796411655563342245019, 0.815814410806733789010772660,
  0.167938294974731178054745536, 0.985797509167567424700995000,
 -0.985797509167567424700995000, 0.167938294974731178054745536,
  0.992099313142191757112085445, 0.125454983411546238542336453,
 -0.125454983411546238542336453, 0.992099313142191757112085445,
  0.612810082429409703935211936, 0.790230221437310055030217152,
 -0.790230221437310055030217152, 0.612810082429409703935211936,
  0.868570705971340895340449876, 0.495565261825772531150266670,
 -0.495565261825772531150266670, 0.868570705971340895340449876,
  0.263754678974831383611349322, 0.964589793289812723836432159,
 -0.964589793289812723836432159, 0.263754678974831383611349322,
  0.948561349915730288158494826, 0.316593375556165867243047035,
 -0.316593375556165867243047035, 0.948561349915730288158494826,
  0.446868840162374195353044389, 0.894599485631382678433072126,
 -0.894599485631382678433072126, 0.446868840162374195353044389,
  0.755201376896536527598710756, 0.655492852999615385312679701,
 -0.655492852999615385312679701, 0.755201376896536527598710756,
  0.070504573389613863027351471, 0.997511456140303459699448390,
 -0.997511456140303459699448390, 0.070504573389613863027351471,
  0.997060070339482978987989949, 0.076623861392031492278332463,
 -0.076623861392031492278332463, 0.997060070339482978987989949,
  0.650846684996380915068975573, 0.759209188978388033485525443,
 -0.759209188978388033485525443, 0.650846684996380915068975573,
  0.891840709392342727796478697, 0.452349587233770874133026703,
 -0.452349587233770874133026703, 0.891840709392342727796478697,
  0.310767152749611495835997250, 0.950486073949481721759926101,
 -0.950486073949481721759926101, 0.310767152749611495835997250,
  0.962953266873683886347921481, 0.269668325572915106525464462,
 -0.269668325572915106525464462, 0.962953266873683886347921481,
  0.490226483288291154229598449, 0.871595086655951034842481435,
 -0.871595086655951034842481435, 0.490226483288291154229598449,
  0.786455213599085757522319464, 0.617647307937803932403979402,
 -0.617647307937803932403979402, 0.786455213599085757522319464,
  0.119365214810991364593637790, 0.992850414459865090793563344,
 -0.992850414459865090793563344, 0.119365214810991364593637790,
  0.984748501801904218556553176, 0.173983873387463827950700807,
 -0.173983873387463827950700807, 0.984748501801904218556553176,
  0.573297166698042212820171239, 0.819347520076796960824689637,
 -0.819347520076796960824689637, 0.573297166698042212820171239,
  0.843208239641845437161743865, 0.537587076295645482502214932,
 -0.537587076295645482502214932, 0.843208239641845437161743865,
  0.216106797076219509948385131, 0.976369731330021149312732194,
 -0.976369731330021149312732194, 0.216106797076219509948385131,
  0.931884265581668106718557199, 0.362755724367397216204854462,
 -0.362755724367397216204854462, 0.931884265581668106718557199,
  0.402434650859418441082533934, 0.915448716088267819566431292,
 -0.915448716088267819566431292, 0.402434650859418441082533934,
  0.722128193929215321243607198, 0.691759258364157774906734132,
 -0.691759258364157774906734132, 0.722128193929215321243607198,
  0.021474080275469507418374898, 0.999769405351215321657617036,
 -0.999769405351215321657617036, 0.021474080275469507418374898,
  0.999882347454212525633049627, 0.015339206284988101044151868,
 -0.015339206284988101044151868, 0.999882347454212525633049627,
  0.696177131491462944788582591, 0.717870045055731736211325329,
 -0.717870045055731736211325329, 0.696177131491462944788582591,
  0.917900775621390457642276297, 0.396809987416710328595290911,
 -0.396809987416710328595290911, 0.917900775621390457642276297,
  0.368466829953372331712746222, 0.929640895843181265457918066,
 -0.929640895843181265457918066, 0.368466829953372331712746222,
  0.977677357824509979943404762, 0.210111836880469621717489972,
 -0.210111836880469621717489972, 0.977677357824509979943404762,
  0.542750784864515906586768661, 0.839893794195999504583383987,
 -0.839893794195999504583383987, 0.542750784864515906586768661,
  0.822849781375826332046780034, 0.568258952670131549790548489,
 -0.568258952670131549790548489, 0.822849781375826332046780034,
  0.180022901405699522679906590, 0.983662419211730274396237776,
 -0.983662419211730274396237776, 0.180022901405699522679906590,
  0.993564135520595333782021697, 0.113270952177564349018228733,
 -0.113270952177564349018228733, 0.993564135520595333782021697,
  0.622461279374149972519166721, 0.782650596166575738458949301,
 -0.782650596166575738458949301, 0.622461279374149972519166721,
  0.874586652278176112634431897, 0.484869248000791101822951699,
 -0.484869248000791101822951699, 0.874586652278176112634431897,
  0.275571819310958163076425168, 0.961280485811320641748659653,
 -0.961280485811320641748659653, 0.275571819310958163076425168,
  0.952375012719765858529893608, 0.304929229735402406490728633,
 -0.304929229735402406490728633, 0.952375012719765858529893608,
  0.457813303598877221904961155, 0.889048355854664562540777729,
 -0.889048355854664562540777729, 0.457813303598877221904961155,
  0.763188417263381271704838297, 0.646176012983316364832802220,
 -0.646176012983316364832802220, 0.763188417263381271704838297,
  0.082740264549375693111987083, 0.996571145790554847093566910,
 -0.996571145790554847093566910, 0.082740264549375693111987083,
  0.997925286198596012623025462, 0.064382630929857460819324537,
 -0.064382630929857460819324537, 0.997925286198596012623025462,
  0.660114342067420478559490747, 0.751165131909686411205819422,
 -0.751165131909686411205819422, 0.660114342067420478559490747,
  0.897324580705418281231391836, 0.441371268731716692879988968,
 -0.441371268731716692879988968, 0.897324580705418281231391836,
  0.322407678801069848384807478, 0.946600913083283570044599823,
 -0.946600913083283570044599823, 0.322407678801069848384807478,
  0.966190003445412555433832961, 0.257831102162159005614471295,
 -0.257831102162159005614471295, 0.966190003445412555433832961,
  0.500885382611240786241285004, 0.865513624090569082825488358,
 -0.865513624090569082825488358, 0.500885382611240786241285004,
  0.793975477554337164895083757, 0.607949784967773667243642671,
 -0.607949784967773667243642671, 0.793975477554337164895083757,
  0.131540028702883111103387493, 0.991310859846115418957349799,
 -0.991310859846115418957349799, 0.131540028702883111103387493,
  0.986809401814185476970235952, 0.161886393780111837641387995,
 -0.161886393780111837641387995, 0.986809401814185476970235952,
  0.583308652937698294392830961, 0.812250586585203913049744181,
 -0.812250586585203913049744181, 0.583308652937698294392830961,
  0.849741768000852489471268395, 0.527199134781901348464274575,
 -0.527199134781901348464274575, 0.849741768000852489471268395,
  0.228072083170885739254457379, 0.973644249650811925318383912,
 -0.973644249650811925318383912, 0.228072083170885739254457379,
  0.936265667170278246576310996, 0.351292756085567125601307623,
 -0.351292756085567125601307623, 0.936265667170278246576310996,
  0.413638312238434547471944324, 0.910441292258067196934095369,
 -0.910441292258067196934095369, 0.413638312238434547471944324,
  0.730562769227827561177758850, 0.682845546385248068164596123,
 -0.682845546385248068164596123, 0.730562769227827561177758850,
  0.033741171851377584833716112, 0.999430604555461772019008327,
 -0.999430604555461772019008327, 0.033741171851377584833716112,
  0.999204758618363895492950001, 0.039872927587739811128578738,
 -0.039872927587739811128578738, 0.999204758618363895492950001,
  0.678350043129861486873655042, 0.734738878095963464563223604,
 -0.734738878095963464563223604, 0.678350043129861486873655042,
  0.907886116487666212038681480, 0.419216888363223956433010020,
 -0.419216888363223956433010020, 0.907886116487666212038681480,
  0.345541324963989065539191723, 0.938403534063108112192420774,
 -0.938403534063108112192420774, 0.345541324963989065539191723,
  0.972226497078936305708321144, 0.234041958583543423191242045,
 -0.234041958583543423191242045, 0.972226497078936305708321144,
  0.521975292937154342694258318, 0.852960604930363657746588082,
 -0.852960604930363657746588082, 0.521975292937154342694258318,
  0.808656181588174991946968128, 0.588281548222645304786439813,
 -0.588281548222645304786439813, 0.808656181588174991946968128,
  0.155828397654265235743101486, 0.987784141644572154230969032,
 -0.987784141644572154230969032, 0.155828397654265235743101486,
  0.990485084256457037998682243, 0.137620121586486044948441663,
 -0.137620121586486044948441663, 0.990485084256457037998682243,
  0.603066598540348201693430617, 0.797690840943391108362662755,
 -0.797690840943391108362662755, 0.603066598540348201693430617,
  0.862423956111040538690933878, 0.506186645345155291048942344,
 -0.506186645345155291048942344, 0.862423956111040538690933878,
  0.251897818154216950498106628, 0.967753837093475465243391912,
 -0.967753837093475465243391912, 0.251897818154216950498106628,
  0.944604837261480265659265493, 0.328209843579092526107916817,
 -0.328209843579092526107916817, 0.944604837261480265659265493,
  0.435857079922255491032544080, 0.900015892016160228714535267,
 -0.900015892016160228714535267, 0.435857079922255491032544080,
  0.747100605980180144323078847, 0.664710978203344868130324985,
 -0.664710978203344868130324985, 0.747100605980180144323078847,
  0.058258264500435759613979782, 0.998301544933892840738782163,
 -0.998301544933892840738782163, 0.058258264500435759613979782,
  0.996044700901251989887944810, 0.088853552582524596561586535,
 -0.088853552582524596561586535, 0.996044700901251989887944810,
  0.641481012808583151988739898, 0.767138911935820381181694573,
 -0.767138911935820381181694573, 0.641481012808583151988739898,
  0.886222530148880631647990821, 0.463259783551860197390719637,
 -0.463259783551860197390719637, 0.886222530148880631647990821,
  0.299079826308040476750336973, 0.954228095109105629780430732,
 -0.954228095109105629780430732, 0.299079826308040476750336973,
  0.959571513081984528335528181, 0.281464937925757984095231007,
 -0.281464937925757984095231007, 0.959571513081984528335528181,
  0.479493757660153026679839798, 0.877545290207261291668470750,
 -0.877545290207261291668470750, 0.479493757660153026679839798,
  0.778816512381475953374724325, 0.627251815495144113509622565,
 -0.627251815495144113509622565, 0.778816512381475953374724325,
  0.107172424956808849175529148, 0.994240449453187946358413442,
 -0.994240449453187946358413442, 0.107172424956808849175529148,
  0.982539302287441255907040396, 0.186055151663446648105438304,
 -0.186055151663446648105438304, 0.982539302287441255907040396,
  0.563199344013834115007363772, 0.826321062845663480311195452,
 -0.826321062845663480311195452, 0.563199344013834115007363772,
  0.836547727223511984524285790, 0.547894059173100165608820571,
 -0.547894059173100165608820571, 0.836547727223511984524285790,
  0.204108966092816874181696950, 0.978948175319062194715480124,
 -0.978948175319062194715480124, 0.204108966092816874181696950,
  0.927362525650401087274536959, 0.374164062971457997104393020,
 -0.374164062971457997104393020, 0.927362525650401087274536959,
  0.391170384302253888687512949, 0.920318276709110566440076541,
 -0.920318276709110566440076541, 0.391170384302253888687512949,
  0.713584868780793592903125099, 0.700568793943248366792866380,
 -0.700568793943248366792866380, 0.713584868780793592903125099,
  0.009203754782059819315102378, 0.999957644551963866333120920,
 -0.999957644551963866333120920, 0.009203754782059819315102378,
  0.999957644551963866333120920, 0.009203754782059819315102378,
 -0.009203754782059819315102378, 0.999957644551963866333120920,
  0.700568793943248366792866380, 0.713584868780793592903125099,
 -0.713584868780793592903125099, 0.700568793943248366792866380,
  0.920318276709110566440076541, 0.391170384302253888687512949,
 -0.391170384302253888687512949, 0.920318276709110566440076541,
  0.374164062971457997104393020, 0.927362525650401087274536959,
 -0.927362525650401087274536959, 0.374164062971457997104393020,
  0.978948175319062194715480124, 0.204108966092816874181696950,
 -0.204108966092816874181696950, 0.978948175319062194715480124,
  0.547894059173100165608820571, 0.836547727223511984524285790,
 -0.836547727223511984524285790, 0.547894059173100165608820571,
  0.826321062845663480311195452, 0.563199344013834115007363772,
 -0.563199344013834115007363772, 0.826321062845663480311195452,
  0.186055151663446648105438304, 0.982539302287441255907040396,
 -0.982539302287441255907040396, 0.186055151663446648105438304,
  0.994240449453187946358413442, 0.107172424956808849175529148,
 -0.107172424956808849175529148, 0.994240449453187946358413442,
  0.627251815495144113509622565, 0.778816512381475953374724325,
 -0.778816512381475953374724325, 0.627251815495144113509622565,
  0.877545290207261291668470750, 0.479493757660153026679839798,
 -0.479493757660153026679839798, 0.877545290207261291668470750,
  0.281464937925757984095231007, 0.959571513081984528335528181,
 -0.959571513081984528335528181, 0.281464937925757984095231007,
  0.954228095109105629780430732, 0.299079826308040476750336973,
 -0.299079826308040476750336973, 0.954228095109105629780430732,
  0.463259783551860197390719637, 0.886222530148880631647990821,
 -0.886222530148880631647990821, 0.463259783551860197390719637,
  0.767138911935820381181694573, 0.641481012808583151988739898,
 -0.641481012808583151988739898, 0.767138911935820381181694573,
  0.088853552582524596561586535, 0.996044700901251989887944810,
 -0.996044700901251989887944810, 0.088853552582524596561586535,
  0.998301544933892840738782163, 0.058258264500435759613979782,
 -0.058258264500435759613979782, 0.998301544933892840738782163,
  0.664710978203344868130324985, 0.747100605980180144323078847,
 -0.747100605980180144323078847, 0.664710978203344868130324985,
  0.900015892016160228714535267, 0.435857079922255491032544080,
 -0.435857079922255491032544080, 0.900015892016160228714535267,
  0.328209843579092526107916817, 0.944604837261480265659265493,
 -0.944604837261480265659265493, 0.328209843579092526107916817,
  0.967753837093475465243391912, 0.251897818154216950498106628,
 -0.251897818154216950498106628, 0.967753837093475465243391912,
  0.506186645345155291048942344, 0.862423956111040538690933878,
 -0.862423956111040538690933878, 0.506186645345155291048942344,
  0.797690840943391108362662755, 0.603066598540348201693430617,
 -0.603066598540348201693430617, 0.797690840943391108362662755,
  0.137620121586486044948441663, 0.990485084256457037998682243,
 -0.990485084256457037998682243, 0.137620121586486044948441663,
  0.987784141644572154230969032, 0.155828397654265235743101486,
 -0.155828397654265235743101486, 0.987784141644572154230969032,
  0.588281548222645304786439813, 0.808656181588174991946968128,
 -0.808656181588174991946968128, 0.588281548222645304786439813,
  0.852960604930363657746588082, 0.521975292937154342694258318,
 -0.521975292937154342694258318, 0.852960604930363657746588082,
  0.234041958583543423191242045, 0.972226497078936305708321144,
 -0.972226497078936305708321144, 0.234041958583543423191242045,
  0.938403534063108112192420774, 0.345541324963989065539191723,
 -0.345541324963989065539191723, 0.938403534063108112192420774,
  0.419216888363223956433010020, 0.907886116487666212038681480,
 -0.907886116487666212038681480, 0.419216888363223956433010020,
  0.734738878095963464563223604, 0.678350043129861486873655042,
 -0.678350043129861486873655042, 0.734738878095963464563223604,
  0.039872927587739811128578738, 0.999204758618363895492950001,
 -0.999204758618363895492950001, 0.039872927587739811128578738,
  0.999430604555461772019008327, 0.033741171851377584833716112,
 -0.033741171851377584833716112, 0.999430604555461772019008327,
  0.682845546385248068164596123, 0.730562769227827561177758850,
 -0.730562769227827561177758850, 0.682845546385248068164596123,
  0.910441292258067196934095369, 0.413638312238434547471944324,
 -0.413638312238434547471944324, 0.910441292258067196934095369,
  0.351292756085567125601307623, 0.936265667170278246576310996,
 -0.936265667170278246576310996, 0.351292756085567125601307623,
  0.973644249650811925318383912, 0.228072083170885739254457379,
 -0.228072083170885739254457379, 0.973644249650811925318383912,
  0.527199134781901348464274575, 0.849741768000852489471268395,
 -0.849741768000852489471268395, 0.527199134781901348464274575,
  0.812250586585203913049744181, 0.583308652937698294392830961,
 -0.583308652937698294392830961, 0.812250586585203913049744181,
  0.161886393780111837641387995, 0.986809401814185476970235952,
 -0.986809401814185476970235952, 0.161886393780111837641387995,
  0.991310859846115418957349799, 0.131540028702883111103387493,
 -0.131540028702883111103387493, 0.991310859846115418957349799,
  0.607949784967773667243642671, 0.793975477554337164895083757,
 -0.793975477554337164895083757, 0.607949784967773667243642671,
  0.865513624090569082825488358, 0.500885382611240786241285004,
 -0.500885382611240786241285004, 0.865513624090569082825488358,
  0.257831102162159005614471295, 0.966190003445412555433832961,
 -0.966190003445412555433832961, 0.257831102162159005614471295,
  0.946600913083283570044599823, 0.322407678801069848384807478,
 -0.322407678801069848384807478, 0.946600913083283570044599823,
  0.441371268731716692879988968, 0.897324580705418281231391836,
 -0.897324580705418281231391836, 0.441371268731716692879988968,
  0.751165131909686411205819422, 0.660114342067420478559490747,
 -0.660114342067420478559490747, 0.751165131909686411205819422,
  0.064382630929857460819324537, 0.997925286198596012623025462,
 -0.997925286198596012623025462, 0.064382630929857460819324537,
  0.996571145790554847093566910, 0.082740264549375693111987083,
 -0.082740264549375693111987083, 0.996571145790554847093566910,
  0.646176012983316364832802220, 0.763188417263381271704838297,
 -0.763188417263381271704838297, 0.646176012983316364832802220,
  0.889048355854664562540777729, 0.457813303598877221904961155,
 -0.457813303598877221904961155, 0.889048355854664562540777729,
  0.304929229735402406490728633, 0.952375012719765858529893608,
 -0.952375012719765858529893608, 0.304929229735402406490728633,
  0.961280485811320641748659653, 0.275571819310958163076425168,
 -0.275571819310958163076425168, 0.961280485811320641748659653,
  0.484869248000791101822951699, 0.874586652278176112634431897,
 -0.874586652278176112634431897, 0.484869248000791101822951699,
  0.782650596166575738458949301, 0.622461279374149972519166721,
 -0.622461279374149972519166721, 0.782650596166575738458949301,
  0.113270952177564349018228733, 0.993564135520595333782021697,
 -0.993564135520595333782021697, 0.113270952177564349018228733,
  0.983662419211730274396237776, 0.180022901405699522679906590,
 -0.180022901405699522679906590, 0.983662419211730274396237776,
  0.568258952670131549790548489, 0.822849781375826332046780034,
 -0.822849781375826332046780034, 0.568258952670131549790548489,
  0.839893794195999504583383987, 0.542750784864515906586768661,
 -0.542750784864515906586768661, 0.839893794195999504583383987,
  0.210111836880469621717489972, 0.977677357824509979943404762,
 -0.977677357824509979943404762, 0.210111836880469621717489972,
  0.929640895843181265457918066, 0.368466829953372331712746222,
 -0.368466829953372331712746222, 0.929640895843181265457918066,
  0.396809987416710328595290911, 0.917900775621390457642276297,
 -0.917900775621390457642276297, 0.396809987416710328595290911,
  0.717870045055731736211325329, 0.696177131491462944788582591,
 -0.696177131491462944788582591, 0.717870045055731736211325329,
  0.015339206284988101044151868, 0.999882347454212525633049627,
 -0.999882347454212525633049627, 0.015339206284988101044151868,
  0.999769405351215321657617036, 0.021474080275469507418374898,
 -0.021474080275469507418374898, 0.999769405351215321657617036,
  0.691759258364157774906734132, 0.722128193929215321243607198,
 -0.722128193929215321243607198, 0.691759258364157774906734132,
  0.915448716088267819566431292, 0.402434650859418441082533934,
 -0.402434650859418441082533934, 0.915448716088267819566431292,
  0.362755724367397216204854462, 0.931884265581668106718557199,
 -0.931884265581668106718557199, 0.362755724367397216204854462,
  0.976369731330021149312732194, 0.216106797076219509948385131,
 -0.216106797076219509948385131, 0.976369731330021149312732194,
  0.537587076295645482502214932, 0.843208239641845437161743865,
 -0.843208239641845437161743865, 0.537587076295645482502214932,
  0.819347520076796960824689637, 0.573297166698042212820171239,
 -0.573297166698042212820171239, 0.819347520076796960824689637,
  0.173983873387463827950700807, 0.984748501801904218556553176,
 -0.984748501801904218556553176, 0.173983873387463827950700807,
  0.992850414459865090793563344, 0.119365214810991364593637790,
 -0.119365214810991364593637790, 0.992850414459865090793563344,
  0.617647307937803932403979402, 0.786455213599085757522319464,
 -0.786455213599085757522319464, 0.617647307937803932403979402,
  0.871595086655951034842481435, 0.490226483288291154229598449,
 -0.490226483288291154229598449, 0.871595086655951034842481435,
  0.269668325572915106525464462, 0.962953266873683886347921481,
 -0.962953266873683886347921481, 0.269668325572915106525464462,
  0.950486073949481721759926101, 0.310767152749611495835997250,
 -0.310767152749611495835997250, 0.950486073949481721759926101,
  0.452349587233770874133026703, 0.891840709392342727796478697,
 -0.891840709392342727796478697, 0.452349587233770874133026703,
  0.759209188978388033485525443, 0.650846684996380915068975573,
 -0.650846684996380915068975573, 0.759209188978388033485525443,
  0.076623861392031492278332463, 0.997060070339482978987989949,
 -0.997060070339482978987989949, 0.076623861392031492278332463,
  0.997511456140303459699448390, 0.070504573389613863027351471,
 -0.070504573389613863027351471, 0.997511456140303459699448390,
  0.655492852999615385312679701, 0.755201376896536527598710756,
 -0.755201376896536527598710756, 0.655492852999615385312679701,
  0.894599485631382678433072126, 0.446868840162374195353044389,
 -0.446868840162374195353044389, 0.894599485631382678433072126,
  0.316593375556165867243047035, 0.948561349915730288158494826,
 -0.948561349915730288158494826, 0.316593375556165867243047035,
  0.964589793289812723836432159, 0.263754678974831383611349322,
 -0.263754678974831383611349322, 0.964589793289812723836432159,
  0.495565261825772531150266670, 0.868570705971340895340449876,
 -0.868570705971340895340449876, 0.495565261825772531150266670,
  0.790230221437310055030217152, 0.612810082429409703935211936,
 -0.612810082429409703935211936, 0.790230221437310055030217152,
  0.125454983411546238542336453, 0.992099313142191757112085445,
 -0.992099313142191757112085445, 0.125454983411546238542336453,
  0.985797509167567424700995000, 0.167938294974731178054745536,
 -0.167938294974731178054745536, 0.985797509167567424700995000,
  0.578313796411655563342245019, 0.815814410806733789010772660,
 -0.815814410806733789010772660, 0.578313796411655563342245019,
  0.846490938774052078300544488, 0.532403127877197971442805218,
 -0.532403127877197971442805218, 0.846490938774052078300544488,
  0.222093620973203534094094721, 0.975025345066994146844913468,
 -0.975025345066994146844913468, 0.222093620973203534094094721,
  0.934092550404258914729877883, 0.357030961233430032614954036,
 -0.357030961233430032614954036, 0.934092550404258914729877883,
  0.408044162864978680820747499, 0.912962190428398164628018233,
 -0.912962190428398164628018233, 0.408044162864978680820747499,
  0.726359155084345976817494315, 0.687315340891759108199186948,
 -0.687315340891759108199186948, 0.726359155084345976817494315,
  0.027608145778965741612354872, 0.999618822495178597116830637,
 -0.999618822495178597116830637, 0.027608145778965741612354872,
  0.998941293186856850633930266, 0.046003182130914628814301788,
 -0.046003182130914628814301788, 0.998941293186856850633930266,
  0.673829000378756060917568372, 0.738887324460615147933116508,
 -0.738887324460615147933116508, 0.673829000378756060917568372,
  0.905296759318118774354048329, 0.424779681209108833357226189,
 -0.424779681209108833357226189, 0.905296759318118774354048329,
  0.339776884406826857828825803, 0.940506070593268323787291309,
 -0.940506070593268323787291309, 0.339776884406826857828825803,
  0.970772140728950302138169611, 0.240003022448741486568922365,
 -0.240003022448741486568922365, 0.970772140728950302138169611,
  0.516731799017649881508753876, 0.856147328375194481019630732,
 -0.856147328375194481019630732, 0.516731799017649881508753876,
  0.805031331142963597922659282, 0.593232295039799808047809426,
 -0.593232295039799808047809426, 0.805031331142963597922659282,
  0.149764534677321517229695737, 0.988721691960323767604516485,
 -0.988721691960323767604516485, 0.149764534677321517229695737,
  0.989622017463200834623694454, 0.143695033150294454819773349,
 -0.143695033150294454819773349, 0.989622017463200834623694454,
  0.598160706996342311724958652, 0.801376171723140219430247777,
 -0.801376171723140219430247777, 0.598160706996342311724958652,
  0.859301818357008404783582139, 0.511468850437970399504391001,
 -0.511468850437970399504391001, 0.859301818357008404783582139,
  0.245955050335794611599924709, 0.969281235356548486048290738,
 -0.969281235356548486048290738, 0.245955050335794611599924709,
  0.942573197601446879280758735, 0.333999651442009404650865481,
 -0.333999651442009404650865481, 0.942573197601446879280758735,
  0.430326481340082633908199031, 0.902673318237258806751502391,
 -0.902673318237258806751502391, 0.430326481340082633908199031,
  0.743007952135121693517362293, 0.669282588346636065720696366,
 -0.669282588346636065720696366, 0.743007952135121693517362293,
  0.052131704680283321236358216, 0.998640218180265222418199049,
 -0.998640218180265222418199049, 0.052131704680283321236358216,
  0.995480755491926941769171600, 0.094963495329638998938034312,
 -0.094963495329638998938034312, 0.995480755491926941769171600,
  0.636761861236284230413943435, 0.771060524261813773200605759,
 -0.771060524261813773200605759, 0.636761861236284230413943435,
  0.883363338665731594736308015, 0.468688822035827933697617870,
 -0.468688822035827933697617870, 0.883363338665731594736308015,
  0.293219162694258650606608599, 0.956045251349996443270479823,
 -0.956045251349996443270479823, 0.293219162694258650606608599,
  0.957826413027532890321037029, 0.287347459544729526477331841,
 -0.287347459544729526477331841, 0.957826413027532890321037029,
  0.474100214650550014398580015, 0.880470889052160770806542929,
 -0.880470889052160770806542929, 0.474100214650550014398580015,
  0.774953106594873878359129282, 0.632018735939809021909403706,
 -0.632018735939809021909403706, 0.774953106594873878359129282,
  0.101069862754827824987887585, 0.994879330794805620591166107,
 -0.994879330794805620591166107, 0.101069862754827824987887585,
  0.981379193313754574318224190, 0.192080397049892441679288205,
 -0.192080397049892441679288205, 0.981379193313754574318224190,
  0.558118531220556115693702964, 0.829761233794523042469023765,
 -0.829761233794523042469023765, 0.558118531220556115693702964,
  0.833170164701913186439915922, 0.553016705580027531764226988,
 -0.553016705580027531764226988, 0.833170164701913186439915922,
  0.198098410717953586179324918, 0.980182135968117392690210009,
 -0.980182135968117392690210009, 0.198098410717953586179324918,
  0.925049240782677590302371869, 0.379847208924051170576281147,
 -0.379847208924051170576281147, 0.925049240782677590302371869,
  0.385516053843918864075607949, 0.922701128333878570437264227,
 -0.922701128333878570437264227, 0.385516053843918864075607949,
  0.709272826438865651316533772, 0.704934080375904908852523758,
 -0.704934080375904908852523758, 0.709272826438865651316533772,
  0.003067956762965976270145365, 0.999995293809576171511580126,
 -0.999995293809576171511580126, 0.003067956762965976270145365
};

static const fpr fpr_p2_tab[] = {
 2.00000000000,
 1.00000000000,
 0.50000000000,
 0.25000000000,
 0.12500000000,
 0.06250000000,
 0.03125000000,
 0.01562500000,
 0.00781250000,
 0.00390625000,
 0.00195312500
};

static const int16_t tree_offset_ffLDL512[] = {0, 256, 384, 448, 480, 496, 504, 508, 510, 511, 512, 514, 515, 516, 520, 522, 523, 524, 526, 527, 528, 536, 540, 542, 543, 544, 546, 547, 548, 552, 554, 555, 556, 558, 559, 560, 576, 584, 588, 590, 591, 592, 594, 595, 596, 600, 602, 603, 604, 606, 607, 608, 616, 620, 622, 623, 624, 626, 627, 628, 632, 634, 635, 636, 638, 639, 640, 672, 688, 696, 700, 702, 703, 704, 706, 707, 708, 712, 714, 715, 716, 718, 719, 720, 728, 732, 734, 735, 736, 738, 739, 740, 744, 746, 747, 748, 750, 751, 752, 768, 776, 780, 782, 783, 784, 786, 787, 788, 792, 794, 795, 796, 798, 799, 800, 808, 812, 814, 815, 816, 818, 819, 820, 824, 826, 827, 828, 830, 831, 832, 896, 928, 944, 952, 956, 958, 959, 960, 962, 963, 964, 968, 970, 971, 972, 974, 975, 976, 984, 988, 990, 991, 992, 994, 995, 996, 1000, 1002, 1003, 1004, 1006, 1007, 1008, 1024, 1032, 1036, 1038, 1039, 1040, 1042, 1043, 1044, 1048, 1050, 1051, 1052, 1054, 1055, 1056, 1064, 1068, 1070, 1071, 1072, 1074, 1075, 1076, 1080, 1082, 1083, 1084, 1086, 1087, 1088, 1120, 1136, 1144, 1148, 1150, 1151, 1152, 1154, 1155, 1156, 1160, 1162, 1163, 1164, 1166, 1167, 1168, 1176, 1180, 1182, 1183, 1184, 1186, 1187, 1188, 1192, 1194, 1195, 1196, 1198, 1199, 1200, 1216, 1224, 1228, 1230, 1231, 1232, 1234, 1235, 1236, 1240, 1242, 1243, 1244, 1246, 1247, 1248, 1256, 1260, 1262, 1263, 1264, 1266, 1267, 1268, 1272, 1274, 1275, 1276, 1278, 1279, 1280, 1408, 1472, 1504, 1520, 1528, 1532, 1534, 1535, 1536, 1538, 1539, 1540, 1544, 1546, 1547, 1548, 1550, 1551, 1552, 1560, 1564, 1566, 1567, 1568, 1570, 1571, 1572, 1576, 1578, 1579, 1580, 1582, 1583, 1584, 1600, 1608, 1612, 1614, 1615, 1616, 1618, 1619, 1620, 1624, 1626, 1627, 1628, 1630, 1631, 1632, 1640, 1644, 1646, 1647, 1648, 1650, 1651, 1652, 1656, 1658, 1659, 1660, 1662, 1663, 1664, 1696, 1712, 1720, 1724, 1726, 1727, 1728, 1730, 1731, 1732, 1736, 1738, 1739, 1740, 1742, 1743, 1744, 1752, 1756, 1758, 1759, 1760, 1762, 1763, 1764, 1768, 1770, 1771, 1772, 1774, 1775, 1776, 1792, 1800, 1804, 1806, 1807, 1808, 1810, 1811, 1812, 1816, 1818, 1819, 1820, 1822, 1823, 1824, 1832, 1836, 1838, 1839, 1840, 1842, 1843, 1844, 1848, 1850, 1851, 1852, 1854, 1855, 1856, 1920, 1952, 1968, 1976, 1980, 1982, 1983, 1984, 1986, 1987, 1988, 1992, 1994, 1995, 1996, 1998, 1999, 2000, 2008, 2012, 2014, 2015, 2016, 2018, 2019, 2020, 2024, 2026, 2027, 2028, 2030, 2031, 2032, 2048, 2056, 2060, 2062, 2063, 2064, 2066, 2067, 2068, 2072, 2074, 2075, 2076, 2078, 2079, 2080, 2088, 2092, 2094, 2095, 2096, 2098, 2099, 2100, 2104, 2106, 2107, 2108, 2110, 2111, 2112, 2144, 2160, 2168, 2172, 2174, 2175, 2176, 2178, 2179, 2180, 2184, 2186, 2187, 2188, 2190, 2191, 2192, 2200, 2204, 2206, 2207, 2208, 2210, 2211, 2212, 2216, 2218, 2219, 2220, 2222, 2223, 2224, 2240, 2248, 2252, 2254, 2255, 2256, 2258, 2259, 2260, 2264, 2266, 2267, 2268, 2270, 2271, 2272, 2280, 2284, 2286, 2287, 2288, 2290, 2291, 2292, 2296, 2298, 2299, 2300, 2302, 2303, 2304, 2560, 2688, 2752, 2784, 2800, 2808, 2812, 2814, 2815, 2816, 2818, 2819, 2820, 2824, 2826, 2827, 2828, 2830, 2831, 2832, 2840, 2844, 2846, 2847, 2848, 2850, 2851, 2852, 2856, 2858, 2859, 2860, 2862, 2863, 2864, 2880, 2888, 2892, 2894, 2895, 2896, 2898, 2899, 2900, 2904, 2906, 2907, 2908, 2910, 2911, 2912, 2920, 2924, 2926, 2927, 2928, 2930, 2931, 2932, 2936, 2938, 2939, 2940, 2942, 2943, 2944, 2976, 2992, 3000, 3004, 3006, 3007, 3008, 3010, 3011, 3012, 3016, 3018, 3019, 3020, 3022, 3023, 3024, 3032, 3036, 3038, 3039, 3040, 3042, 3043, 3044, 3048, 3050, 3051, 3052, 3054, 3055, 3056, 3072, 3080, 3084, 3086, 3087, 3088, 3090, 3091, 3092, 3096, 3098, 3099, 3100, 3102, 3103, 3104, 3112, 3116, 3118, 3119, 3120, 3122, 3123, 3124, 3128, 3130, 3131, 3132, 3134, 3135, 3136, 3200, 3232, 3248, 3256, 3260, 3262, 3263, 3264, 3266, 3267, 3268, 3272, 3274, 3275, 3276, 3278, 3279, 3280, 3288, 3292, 3294, 3295, 3296, 3298, 3299, 3300, 3304, 3306, 3307, 3308, 3310, 3311, 3312, 3328, 3336, 3340, 3342, 3343, 3344, 3346, 3347, 3348, 3352, 3354, 3355, 3356, 3358, 3359, 3360, 3368, 3372, 3374, 3375, 3376, 3378, 3379, 3380, 3384, 3386, 3387, 3388, 3390, 3391, 3392, 3424, 3440, 3448, 3452, 3454, 3455, 3456, 3458, 3459, 3460, 3464, 3466, 3467, 3468, 3470, 3471, 3472, 3480, 3484, 3486, 3487, 3488, 3490, 3491, 3492, 3496, 3498, 3499, 3500, 3502, 3503, 3504, 3520, 3528, 3532, 3534, 3535, 3536, 3538, 3539, 3540, 3544, 3546, 3547, 3548, 3550, 3551, 3552, 3560, 3564, 3566, 3567, 3568, 3570, 3571, 3572, 3576, 3578, 3579, 3580, 3582, 3583, 3584, 3712, 3776, 3808, 3824, 3832, 3836, 3838, 3839, 3840, 3842, 3843, 3844, 3848, 3850, 3851, 3852, 3854, 3855, 3856, 3864, 3868, 3870, 3871, 3872, 3874, 3875, 3876, 3880, 3882, 3883, 3884, 3886, 3887, 3888, 3904, 3912, 3916, 3918, 3919, 3920, 3922, 3923, 3924, 3928, 3930, 3931, 3932, 3934, 3935, 3936, 3944, 3948, 3950, 3951, 3952, 3954, 3955, 3956, 3960, 3962, 3963, 3964, 3966, 3967, 3968, 4000, 4016, 4024, 4028, 4030, 4031, 4032, 4034, 4035, 4036, 4040, 4042, 4043, 4044, 4046, 4047, 4048, 4056, 4060, 4062, 4063, 4064, 4066, 4067, 4068, 4072, 4074, 4075, 4076, 4078, 4079, 4080, 4096, 4104, 4108, 4110, 4111, 4112, 4114, 4115, 4116, 4120, 4122, 4123, 4124, 4126, 4127, 4128, 4136, 4140, 4142, 4143, 4144, 4146, 4147, 4148, 4152, 4154, 4155, 4156, 4158, 4159, 4160, 4224, 4256, 4272, 4280, 4284, 4286, 4287, 4288, 4290, 4291, 4292, 4296, 4298, 4299, 4300, 4302, 4303, 4304, 4312, 4316, 4318, 4319, 4320, 4322, 4323, 4324, 4328, 4330, 4331, 4332, 4334, 4335, 4336, 4352, 4360, 4364, 4366, 4367, 4368, 4370, 4371, 4372, 4376, 4378, 4379, 4380, 4382, 4383, 4384, 4392, 4396, 4398, 4399, 4400, 4402, 4403, 4404, 4408, 4410, 4411, 4412, 4414, 4415, 4416, 4448, 4464, 4472, 4476, 4478, 4479, 4480, 4482, 4483, 4484, 4488, 4490, 4491, 4492, 4494, 4495, 4496, 4504, 4508, 4510, 4511, 4512, 4514, 4515, 4516, 4520, 4522, 4523, 4524, 4526, 4527, 4528, 4544, 4552, 4556, 4558, 4559, 4560, 4562, 4563, 4564, 4568, 4570, 4571, 4572, 4574, 4575, 4576, 4584, 4588, 4590, 4591, 4592, 4594, 4595, 4596, 4600, 4602, 4603, 4604, 4606, 4607};
static const int16_t tree_offset_ffLDL1024[] = { 0, 512, 768, 896, 960, 992, 1008, 1016, 1020, 1022, 1023, 1024, 1026, 1027, 1028, 1032, 1034, 1035, 1036, 1038, 1039, 1040, 1048, 1052, 1054, 1055, 1056, 1058, 1059, 1060, 1064, 1066, 1067, 1068, 1070, 1071, 1072, 1088, 1096, 1100, 1102, 1103, 1104, 1106, 1107, 1108, 1112, 1114, 1115, 1116, 1118, 1119, 1120, 1128, 1132, 1134, 1135, 1136, 1138, 1139, 1140, 1144, 1146, 1147, 1148, 1150, 1151, 1152, 1184, 1200, 1208, 1212, 1214, 1215, 1216, 1218, 1219, 1220, 1224, 1226, 1227, 1228, 1230, 1231, 1232, 1240, 1244, 1246, 1247, 1248, 1250, 1251, 1252, 1256, 1258, 1259, 1260, 1262, 1263, 1264, 1280, 1288, 1292, 1294, 1295, 1296, 1298, 1299, 1300, 1304, 1306, 1307, 1308, 1310, 1311, 1312, 1320, 1324, 1326, 1327, 1328, 1330, 1331, 1332, 1336, 1338, 1339, 1340, 1342, 1343, 1344, 1408, 1440, 1456, 1464, 1468, 1470, 1471, 1472, 1474, 1475, 1476, 1480, 1482, 1483, 1484, 1486, 1487, 1488, 1496, 1500, 1502, 1503, 1504, 1506, 1507, 1508, 1512, 1514, 1515, 1516, 1518, 1519, 1520, 1536, 1544, 1548, 1550, 1551, 1552, 1554, 1555, 1556, 1560, 1562, 1563, 1564, 1566, 1567, 1568, 1576, 1580, 1582, 1583, 1584, 1586, 1587, 1588, 1592, 1594, 1595, 1596, 1598, 1599, 1600, 1632, 1648, 1656, 1660, 1662, 1663, 1664, 1666, 1667, 1668, 1672, 1674, 1675, 1676, 1678, 1679, 1680, 1688, 1692, 1694, 1695, 1696, 1698, 1699, 1700, 1704, 1706, 1707, 1708, 1710, 1711, 1712, 1728, 1736, 1740, 1742, 1743, 1744, 1746, 1747, 1748, 1752, 1754, 1755, 1756, 1758, 1759, 1760, 1768, 1772, 1774, 1775, 1776, 1778, 1779, 1780, 1784, 1786, 1787, 1788, 1790, 1791, 1792, 1920, 1984, 2016, 2032, 2040, 2044, 2046, 2047, 2048, 2050, 2051, 2052, 2056, 2058, 2059, 2060, 2062, 2063, 2064, 2072, 2076, 2078, 2079, 2080, 2082, 2083, 2084, 2088, 2090, 2091, 2092, 2094, 2095, 2096, 2112, 2120, 2124, 2126, 2127, 2128, 2130, 2131, 2132, 2136, 2138, 2139, 2140, 2142, 2143, 2144, 2152, 2156, 2158, 2159, 2160, 2162, 2163, 2164, 2168, 2170, 2171, 2172, 2174, 2175, 2176, 2208, 2224, 2232, 2236, 2238, 2239, 2240, 2242, 2243, 2244, 2248, 2250, 2251, 2252, 2254, 2255, 2256, 2264, 2268, 2270, 2271, 2272, 2274, 2275, 2276, 2280, 2282, 2283, 2284, 2286, 2287, 2288, 2304, 2312, 2316, 2318, 2319, 2320, 2322, 2323, 2324, 2328, 2330, 2331, 2332, 2334, 2335, 2336, 2344, 2348, 2350, 2351, 2352, 2354, 2355, 2356, 2360, 2362, 2363, 2364, 2366, 2367, 2368, 2432, 2464, 2480, 2488, 2492, 2494, 2495, 2496, 2498, 2499, 2500, 2504, 2506, 2507, 2508, 2510, 2511, 2512, 2520, 2524, 2526, 2527, 2528, 2530, 2531, 2532, 2536, 2538, 2539, 2540, 2542, 2543, 2544, 2560, 2568, 2572, 2574, 2575, 2576, 2578, 2579, 2580, 2584, 2586, 2587, 2588, 2590, 2591, 2592, 2600, 2604, 2606, 2607, 2608, 2610, 2611, 2612, 2616, 2618, 2619, 2620, 2622, 2623, 2624, 2656, 2672, 2680, 2684, 2686, 2687, 2688, 2690, 2691, 2692, 2696, 2698, 2699, 2700, 2702, 2703, 2704, 2712, 2716, 2718, 2719, 2720, 2722, 2723, 2724, 2728, 2730, 2731, 2732, 2734, 2735, 2736, 2752, 2760, 2764, 2766, 2767, 2768, 2770, 2771, 2772, 2776, 2778, 2779, 2780, 2782, 2783, 2784, 2792, 2796, 2798, 2799, 2800, 2802, 2803, 2804, 2808, 2810, 2811, 2812, 2814, 2815, 2816, 3072, 3200, 3264, 3296, 3312, 3320, 3324, 3326, 3327, 3328, 3330, 3331, 3332, 3336, 3338, 3339, 3340, 3342, 3343, 3344, 3352, 3356, 3358, 3359, 3360, 3362, 3363, 3364, 3368, 3370, 3371, 3372, 3374, 3375, 3376, 3392, 3400, 3404, 3406, 3407, 3408, 3410, 3411, 3412, 3416, 3418, 3419, 3420, 3422, 3423, 3424, 3432, 3436, 3438, 3439, 3440, 3442, 3443, 3444, 3448, 3450, 3451, 3452, 3454, 3455, 3456, 3488, 3504, 3512, 3516, 3518, 3519, 3520, 3522, 3523, 3524, 3528, 3530, 3531, 3532, 3534, 3535, 3536, 3544, 3548, 3550, 3551, 3552, 3554, 3555, 3556, 3560, 3562, 3563, 3564, 3566, 3567, 3568, 3584, 3592, 3596, 3598, 3599, 3600, 3602, 3603, 3604, 3608, 3610, 3611, 3612, 3614, 3615, 3616, 3624, 3628, 3630, 3631, 3632, 3634, 3635, 3636, 3640, 3642, 3643, 3644, 3646, 3647, 3648, 3712, 3744, 3760, 3768, 3772, 3774, 3775, 3776, 3778, 3779, 3780, 3784, 3786, 3787, 3788, 3790, 3791, 3792, 3800, 3804, 3806, 3807, 3808, 3810, 3811, 3812, 3816, 3818, 3819, 3820, 3822, 3823, 3824, 3840, 3848, 3852, 3854, 3855, 3856, 3858, 3859, 3860, 3864, 3866, 3867, 3868, 3870, 3871, 3872, 3880, 3884, 3886, 3887, 3888, 3890, 3891, 3892, 3896, 3898, 3899, 3900, 3902, 3903, 3904, 3936, 3952, 3960, 3964, 3966, 3967, 3968, 3970, 3971, 3972, 3976, 3978, 3979, 3980, 3982, 3983, 3984, 3992, 3996, 3998, 3999, 4000, 4002, 4003, 4004, 4008, 4010, 4011, 4012, 4014, 4015, 4016, 4032, 4040, 4044, 4046, 4047, 4048, 4050, 4051, 4052, 4056, 4058, 4059, 4060, 4062, 4063, 4064, 4072, 4076, 4078, 4079, 4080, 4082, 4083, 4084, 4088, 4090, 4091, 4092, 4094, 4095, 4096, 4224, 4288, 4320, 4336, 4344, 4348, 4350, 4351, 4352, 4354, 4355, 4356, 4360, 4362, 4363, 4364, 4366, 4367, 4368, 4376, 4380, 4382, 4383, 4384, 4386, 4387, 4388, 4392, 4394, 4395, 4396, 4398, 4399, 4400, 4416, 4424, 4428, 4430, 4431, 4432, 4434, 4435, 4436, 4440, 4442, 4443, 4444, 4446, 4447, 4448, 4456, 4460, 4462, 4463, 4464, 4466, 4467, 4468, 4472, 4474, 4475, 4476, 4478, 4479, 4480, 4512, 4528, 4536, 4540, 4542, 4543, 4544, 4546, 4547, 4548, 4552, 4554, 4555, 4556, 4558, 4559, 4560, 4568, 4572, 4574, 4575, 4576, 4578, 4579, 4580, 4584, 4586, 4587, 4588, 4590, 4591, 4592, 4608, 4616, 4620, 4622, 4623, 4624, 4626, 4627, 4628, 4632, 4634, 4635, 4636, 4638, 4639, 4640, 4648, 4652, 4654, 4655, 4656, 4658, 4659, 4660, 4664, 4666, 4667, 4668, 4670, 4671, 4672, 4736, 4768, 4784, 4792, 4796, 4798, 4799, 4800, 4802, 4803, 4804, 4808, 4810, 4811, 4812, 4814, 4815, 4816, 4824, 4828, 4830, 4831, 4832, 4834, 4835, 4836, 4840, 4842, 4843, 4844, 4846, 4847, 4848, 4864, 4872, 4876, 4878, 4879, 4880, 4882, 4883, 4884, 4888, 4890, 4891, 4892, 4894, 4895, 4896, 4904, 4908, 4910, 4911, 4912, 4914, 4915, 4916, 4920, 4922, 4923, 4924, 4926, 4927, 4928, 4960, 4976, 4984, 4988, 4990, 4991, 4992, 4994, 4995, 4996, 5000, 5002, 5003, 5004, 5006, 5007, 5008, 5016, 5020, 5022, 5023, 5024, 5026, 5027, 5028, 5032, 5034, 5035, 5036, 5038, 5039, 5040, 5056, 5064, 5068, 5070, 5071, 5072, 5074, 5075, 5076, 5080, 5082, 5083, 5084, 5086, 5087, 5088, 5096, 5100, 5102, 5103, 5104, 5106, 5107, 5108, 5112, 5114, 5115, 5116, 5118, 5119, 5120, 5632, 5888, 6016, 6080, 6112, 6128, 6136, 6140, 6142, 6143, 6144, 6146, 6147, 6148, 6152, 6154, 6155, 6156, 6158, 6159, 6160, 6168, 6172, 6174, 6175, 6176, 6178, 6179, 6180, 6184, 6186, 6187, 6188, 6190, 6191, 6192, 6208, 6216, 6220, 6222, 6223, 6224, 6226, 6227, 6228, 6232, 6234, 6235, 6236, 6238, 6239, 6240, 6248, 6252, 6254, 6255, 6256, 6258, 6259, 6260, 6264, 6266, 6267, 6268, 6270, 6271, 6272, 6304, 6320, 6328, 6332, 6334, 6335, 6336, 6338, 6339, 6340, 6344, 6346, 6347, 6348, 6350, 6351, 6352, 6360, 6364, 6366, 6367, 6368, 6370, 6371, 6372, 6376, 6378, 6379, 6380, 6382, 6383, 6384, 6400, 6408, 6412, 6414, 6415, 6416, 6418, 6419, 6420, 6424, 6426, 6427, 6428, 6430, 6431, 6432, 6440, 6444, 6446, 6447, 6448, 6450, 6451, 6452, 6456, 6458, 6459, 6460, 6462, 6463, 6464, 6528, 6560, 6576, 6584, 6588, 6590, 6591, 6592, 6594, 6595, 6596, 6600, 6602, 6603, 6604, 6606, 6607, 6608, 6616, 6620, 6622, 6623, 6624, 6626, 6627, 6628, 6632, 6634, 6635, 6636, 6638, 6639, 6640, 6656, 6664, 6668, 6670, 6671, 6672, 6674, 6675, 6676, 6680, 6682, 6683, 6684, 6686, 6687, 6688, 6696, 6700, 6702, 6703, 6704, 6706, 6707, 6708, 6712, 6714, 6715, 6716, 6718, 6719, 6720, 6752, 6768, 6776, 6780, 6782, 6783, 6784, 6786, 6787, 6788, 6792, 6794, 6795, 6796, 6798, 6799, 6800, 6808, 6812, 6814, 6815, 6816, 6818, 6819, 6820, 6824, 6826, 6827, 6828, 6830, 6831, 6832, 6848, 6856, 6860, 6862, 6863, 6864, 6866, 6867, 6868, 6872, 6874, 6875, 6876, 6878, 6879, 6880, 6888, 6892, 6894, 6895, 6896, 6898, 6899, 6900, 6904, 6906, 6907, 6908, 6910, 6911, 6912, 7040, 7104, 7136, 7152, 7160, 7164, 7166, 7167, 7168, 7170, 7171, 7172, 7176, 7178, 7179, 7180, 7182, 7183, 7184, 7192, 7196, 7198, 7199, 7200, 7202, 7203, 7204, 7208, 7210, 7211, 7212, 7214, 7215, 7216, 7232, 7240, 7244, 7246, 7247, 7248, 7250, 7251, 7252, 7256, 7258, 7259, 7260, 7262, 7263, 7264, 7272, 7276, 7278, 7279, 7280, 7282, 7283, 7284, 7288, 7290, 7291, 7292, 7294, 7295, 7296, 7328, 7344, 7352, 7356, 7358, 7359, 7360, 7362, 7363, 7364, 7368, 7370, 7371, 7372, 7374, 7375, 7376, 7384, 7388, 7390, 7391, 7392, 7394, 7395, 7396, 7400, 7402, 7403, 7404, 7406, 7407, 7408, 7424, 7432, 7436, 7438, 7439, 7440, 7442, 7443, 7444, 7448, 7450, 7451, 7452, 7454, 7455, 7456, 7464, 7468, 7470, 7471, 7472, 7474, 7475, 7476, 7480, 7482, 7483, 7484, 7486, 7487, 7488, 7552, 7584, 7600, 7608, 7612, 7614, 7615, 7616, 7618, 7619, 7620, 7624, 7626, 7627, 7628, 7630, 7631, 7632, 7640, 7644, 7646, 7647, 7648, 7650, 7651, 7652, 7656, 7658, 7659, 7660, 7662, 7663, 7664, 7680, 7688, 7692, 7694, 7695, 7696, 7698, 7699, 7700, 7704, 7706, 7707, 7708, 7710, 7711, 7712, 7720, 7724, 7726, 7727, 7728, 7730, 7731, 7732, 7736, 7738, 7739, 7740, 7742, 7743, 7744, 7776, 7792, 7800, 7804, 7806, 7807, 7808, 7810, 7811, 7812, 7816, 7818, 7819, 7820, 7822, 7823, 7824, 7832, 7836, 7838, 7839, 7840, 7842, 7843, 7844, 7848, 7850, 7851, 7852, 7854, 7855, 7856, 7872, 7880, 7884, 7886, 7887, 7888, 7890, 7891, 7892, 7896, 7898, 7899, 7900, 7902, 7903, 7904, 7912, 7916, 7918, 7919, 7920, 7922, 7923, 7924, 7928, 7930, 7931, 7932, 7934, 7935, 7936, 8192, 8320, 8384, 8416, 8432, 8440, 8444, 8446, 8447, 8448, 8450, 8451, 8452, 8456, 8458, 8459, 8460, 8462, 8463, 8464, 8472, 8476, 8478, 8479, 8480, 8482, 8483, 8484, 8488, 8490, 8491, 8492, 8494, 8495, 8496, 8512, 8520, 8524, 8526, 8527, 8528, 8530, 8531, 8532, 8536, 8538, 8539, 8540, 8542, 8543, 8544, 8552, 8556, 8558, 8559, 8560, 8562, 8563, 8564, 8568, 8570, 8571, 8572, 8574, 8575, 8576, 8608, 8624, 8632, 8636, 8638, 8639, 8640, 8642, 8643, 8644, 8648, 8650, 8651, 8652, 8654, 8655, 8656, 8664, 8668, 8670, 8671, 8672, 8674, 8675, 8676, 8680, 8682, 8683, 8684, 8686, 8687, 8688, 8704, 8712, 8716, 8718, 8719, 8720, 8722, 8723, 8724, 8728, 8730, 8731, 8732, 8734, 8735, 8736, 8744, 8748, 8750, 8751, 8752, 8754, 8755, 8756, 8760, 8762, 8763, 8764, 8766, 8767, 8768, 8832, 8864, 8880, 8888, 8892, 8894, 8895, 8896, 8898, 8899, 8900, 8904, 8906, 8907, 8908, 8910, 8911, 8912, 8920, 8924, 8926, 8927, 8928, 8930, 8931, 8932, 8936, 8938, 8939, 8940, 8942, 8943, 8944, 8960, 8968, 8972, 8974, 8975, 8976, 8978, 8979, 8980, 8984, 8986, 8987, 8988, 8990, 8991, 8992, 9000, 9004, 9006, 9007, 9008, 9010, 9011, 9012, 9016, 9018, 9019, 9020, 9022, 9023, 9024, 9056, 9072, 9080, 9084, 9086, 9087, 9088, 9090, 9091, 9092, 9096, 9098, 9099, 9100, 9102, 9103, 9104, 9112, 9116, 9118, 9119, 9120, 9122, 9123, 9124, 9128, 9130, 9131, 9132, 9134, 9135, 9136, 9152, 9160, 9164, 9166, 9167, 9168, 9170, 9171, 9172, 9176, 9178, 9179, 9180, 9182, 9183, 9184, 9192, 9196, 9198, 9199, 9200, 9202, 9203, 9204, 9208, 9210, 9211, 9212, 9214, 9215, 9216, 9344, 9408, 9440, 9456, 9464, 9468, 9470, 9471, 9472, 9474, 9475, 9476, 9480, 9482, 9483, 9484, 9486, 9487, 9488, 9496, 9500, 9502, 9503, 9504, 9506, 9507, 9508, 9512, 9514, 9515, 9516, 9518, 9519, 9520, 9536, 9544, 9548, 9550, 9551, 9552, 9554, 9555, 9556, 9560, 9562, 9563, 9564, 9566, 9567, 9568, 9576, 9580, 9582, 9583, 9584, 9586, 9587, 9588, 9592, 9594, 9595, 9596, 9598, 9599, 9600, 9632, 9648, 9656, 9660, 9662, 9663, 9664, 9666, 9667, 9668, 9672, 9674, 9675, 9676, 9678, 9679, 9680, 9688, 9692, 9694, 9695, 9696, 9698, 9699, 9700, 9704, 9706, 9707, 9708, 9710, 9711, 9712, 9728, 9736, 9740, 9742, 9743, 9744, 9746, 9747, 9748, 9752, 9754, 9755, 9756, 9758, 9759, 9760, 9768, 9772, 9774, 9775, 9776, 9778, 9779, 9780, 9784, 9786, 9787, 9788, 9790, 9791, 9792, 9856, 9888, 9904, 9912, 9916, 9918, 9919, 9920, 9922, 9923, 9924, 9928, 9930, 9931, 9932, 9934, 9935, 9936, 9944, 9948, 9950, 9951, 9952, 9954, 9955, 9956, 9960, 9962, 9963, 9964, 9966, 9967, 9968, 9984, 9992, 9996, 9998, 9999, 10000, 10002, 10003, 10004, 10008, 10010, 10011, 10012, 10014, 10015, 10016, 10024, 10028, 10030, 10031, 10032, 10034, 10035, 10036, 10040, 10042, 10043, 10044, 10046, 10047, 10048, 10080, 10096, 10104, 10108, 10110, 10111, 10112, 10114, 10115, 10116, 10120, 10122, 10123, 10124, 10126, 10127, 10128, 10136, 10140, 10142, 10143, 10144, 10146, 10147, 10148, 10152, 10154, 10155, 10156, 10158, 10159, 10160, 10176, 10184, 10188, 10190, 10191, 10192, 10194, 10195, 10196, 10200, 10202, 10203, 10204, 10206, 10207, 10208, 10216, 10220, 10222, 10223, 10224, 10226, 10227, 10228, 10232, 10234, 10235, 10236, 10238, 10239};

static const int16_t g0_offset512[] = {512, 768, 896, 960, 992, 1008, 1016, 1020, 1022, 1020, 1016, 1018, 1016, 1008, 1012, 1014, 1012, 1008, 1010, 1008, 992, 1000, 1004, 1006, 1004, 1000, 1002, 1000, 992, 996, 998, 996, 992, 994, 992, 960, 976, 984, 988, 990, 988, 984, 986, 984, 976, 980, 982, 980, 976, 978, 976, 960, 968, 972, 974, 972, 968, 970, 968, 960, 964, 966, 964, 960, 962, 960, 896, 928, 944, 952, 956, 958, 956, 952, 954, 952, 944, 948, 950, 948, 944, 946, 944, 928, 936, 940, 942, 940, 936, 938, 936, 928, 932, 934, 932, 928, 930, 928, 896, 912, 920, 924, 926, 924, 920, 922, 920, 912, 916, 918, 916, 912, 914, 912, 896, 904, 908, 910, 908, 904, 906, 904, 896, 900, 902, 900, 896, 898, 896, 768, 832, 864, 880, 888, 892, 894, 892, 888, 890, 888, 880, 884, 886, 884, 880, 882, 880, 864, 872, 876, 878, 876, 872, 874, 872, 864, 868, 870, 868, 864, 866, 864, 832, 848, 856, 860, 862, 860, 856, 858, 856, 848, 852, 854, 852, 848, 850, 848, 832, 840, 844, 846, 844, 840, 842, 840, 832, 836, 838, 836, 832, 834, 832, 768, 800, 816, 824, 828, 830, 828, 824, 826, 824, 816, 820, 822, 820, 816, 818, 816, 800, 808, 812, 814, 812, 808, 810, 808, 800, 804, 806, 804, 800, 802, 800, 768, 784, 792, 796, 798, 796, 792, 794, 792, 784, 788, 790, 788, 784, 786, 784, 768, 776, 780, 782, 780, 776, 778, 776, 768, 772, 774, 772, 768, 770, 768, 512, 640, 704, 736, 752, 760, 764, 766, 764, 760, 762, 760, 752, 756, 758, 756, 752, 754, 752, 736, 744, 748, 750, 748, 744, 746, 744, 736, 740, 742, 740, 736, 738, 736, 704, 720, 728, 732, 734, 732, 728, 730, 728, 720, 724, 726, 724, 720, 722, 720, 704, 712, 716, 718, 716, 712, 714, 712, 704, 708, 710, 708, 704, 706, 704, 640, 672, 688, 696, 700, 702, 700, 696, 698, 696, 688, 692, 694, 692, 688, 690, 688, 672, 680, 684, 686, 684, 680, 682, 680, 672, 676, 678, 676, 672, 674, 672, 640, 656, 664, 668, 670, 668, 664, 666, 664, 656, 660, 662, 660, 656, 658, 656, 640, 648, 652, 654, 652, 648, 650, 648, 640, 644, 646, 644, 640, 642, 640, 512, 576, 608, 624, 632, 636, 638, 636, 632, 634, 632, 624, 628, 630, 628, 624, 626, 624, 608, 616, 620, 622, 620, 616, 618, 616, 608, 612, 614, 612, 608, 610, 608, 576, 592, 600, 604, 606, 604, 600, 602, 600, 592, 596, 598, 596, 592, 594, 592, 576, 584, 588, 590, 588, 584, 586, 584, 576, 580, 582, 580, 576, 578, 576, 512, 544, 560, 568, 572, 574, 572, 568, 570, 568, 560, 564, 566, 564, 560, 562, 560, 544, 552, 556, 558, 556, 552, 554, 552, 544, 548, 550, 548, 544, 546, 544, 512, 528, 536, 540, 542, 540, 536, 538, 536, 528, 532, 534, 532, 528, 530, 528, 512, 520, 524, 526, 524, 520, 522, 520, 512, 516, 518, 516, 512, 514, 512, 0, 256, 384, 448, 480, 496, 504, 508, 510, 508, 504, 506, 504, 496, 500, 502, 500, 496, 498, 496, 480, 488, 492, 494, 492, 488, 490, 488, 480, 484, 486, 484, 480, 482, 480, 448, 464, 472, 476, 478, 476, 472, 474, 472, 464, 468, 470, 468, 464, 466, 464, 448, 456, 460, 462, 460, 456, 458, 456, 448, 452, 454, 452, 448, 450, 448, 384, 416, 432, 440, 444, 446, 444, 440, 442, 440, 432, 436, 438, 436, 432, 434, 432, 416, 424, 428, 430, 428, 424, 426, 424, 416, 420, 422, 420, 416, 418, 416, 384, 400, 408, 412, 414, 412, 408, 410, 408, 400, 404, 406, 404, 400, 402, 400, 384, 392, 396, 398, 396, 392, 394, 392, 384, 388, 390, 388, 384, 386, 384, 256, 320, 352, 368, 376, 380, 382, 380, 376, 378, 376, 368, 372, 374, 372, 368, 370, 368, 352, 360, 364, 366, 364, 360, 362, 360, 352, 356, 358, 356, 352, 354, 352, 320, 336, 344, 348, 350, 348, 344, 346, 344, 336, 340, 342, 340, 336, 338, 336, 320, 328, 332, 334, 332, 328, 330, 328, 320, 324, 326, 324, 320, 322, 320, 256, 288, 304, 312, 316, 318, 316, 312, 314, 312, 304, 308, 310, 308, 304, 306, 304, 288, 296, 300, 302, 300, 296, 298, 296, 288, 292, 294, 292, 288, 290, 288, 256, 272, 280, 284, 286, 284, 280, 282, 280, 272, 276, 278, 276, 272, 274, 272, 256, 264, 268, 270, 268, 264, 266, 264, 256, 260, 262, 260, 256, 258, 256, 0, 128, 192, 224, 240, 248, 252, 254, 252, 248, 250, 248, 240, 244, 246, 244, 240, 242, 240, 224, 232, 236, 238, 236, 232, 234, 232, 224, 228, 230, 228, 224, 226, 224, 192, 208, 216, 220, 222, 220, 216, 218, 216, 208, 212, 214, 212, 208, 210, 208, 192, 200, 204, 206, 204, 200, 202, 200, 192, 196, 198, 196, 192, 194, 192, 128, 160, 176, 184, 188, 190, 188, 184, 186, 184, 176, 180, 182, 180, 176, 178, 176, 160, 168, 172, 174, 172, 168, 170, 168, 160, 164, 166, 164, 160, 162, 160, 128, 144, 152, 156, 158, 156, 152, 154, 152, 144, 148, 150, 148, 144, 146, 144, 128, 136, 140, 142, 140, 136, 138, 136, 128, 132, 134, 132, 128, 130, 128, 0, 64, 96, 112, 120, 124, 126, 124, 120, 122, 120, 112, 116, 118, 116, 112, 114, 112, 96, 104, 108, 110, 108, 104, 106, 104, 96, 100, 102, 100, 96, 98, 96, 64, 80, 88, 92, 94, 92, 88, 90, 88, 80, 84, 86, 84, 80, 82, 80, 64, 72, 76, 78, 76, 72, 74, 72, 64, 68, 70, 68, 64, 66, 64, 0, 32, 48, 56, 60, 62, 60, 56, 58, 56, 48, 52, 54, 52, 48, 50, 48, 32, 40, 44, 46, 44, 40, 42, 40, 32, 36, 38, 36, 32, 34, 32, 0, 16, 24, 28, 30, 28, 24, 26, 24, 16, 20, 22, 20, 16, 18, 16, 0, 8, 12, 14, 12, 8, 10, 8, 0, 4, 6, 4, 0, 2, 0};
static const int16_t g0_offset1024[] = {1024, 1536, 1792, 1920, 1984, 2016, 2032, 2040, 2044, 2046, 2044, 2040, 2042, 2040, 2032, 2036, 2038, 2036, 2032, 2034, 2032, 2016, 2024, 2028, 2030, 2028, 2024, 2026, 2024, 2016, 2020, 2022, 2020, 2016, 2018, 2016, 1984, 2000, 2008, 2012, 2014, 2012, 2008, 2010, 2008, 2000, 2004, 2006, 2004, 2000, 2002, 2000, 1984, 1992, 1996, 1998, 1996, 1992, 1994, 1992, 1984, 1988, 1990, 1988, 1984, 1986, 1984, 1920, 1952, 1968, 1976, 1980, 1982, 1980, 1976, 1978, 1976, 1968, 1972, 1974, 1972, 1968, 1970, 1968, 1952, 1960, 1964, 1966, 1964, 1960, 1962, 1960, 1952, 1956, 1958, 1956, 1952, 1954, 1952, 1920, 1936, 1944, 1948, 1950, 1948, 1944, 1946, 1944, 1936, 1940, 1942, 1940, 1936, 1938, 1936, 1920, 1928, 1932, 1934, 1932, 1928, 1930, 1928, 1920, 1924, 1926, 1924, 1920, 1922, 1920, 1792, 1856, 1888, 1904, 1912, 1916, 1918, 1916, 1912, 1914, 1912, 1904, 1908, 1910, 1908, 1904, 1906, 1904, 1888, 1896, 1900, 1902, 1900, 1896, 1898, 1896, 1888, 1892, 1894, 1892, 1888, 1890, 1888, 1856, 1872, 1880, 1884, 1886, 1884, 1880, 1882, 1880, 1872, 1876, 1878, 1876, 1872, 1874, 1872, 1856, 1864, 1868, 1870, 1868, 1864, 1866, 1864, 1856, 1860, 1862, 1860, 1856, 1858, 1856, 1792, 1824, 1840, 1848, 1852, 1854, 1852, 1848, 1850, 1848, 1840, 1844, 1846, 1844, 1840, 1842, 1840, 1824, 1832, 1836, 1838, 1836, 1832, 1834, 1832, 1824, 1828, 1830, 1828, 1824, 1826, 1824, 1792, 1808, 1816, 1820, 1822, 1820, 1816, 1818, 1816, 1808, 1812, 1814, 1812, 1808, 1810, 1808, 1792, 1800, 1804, 1806, 1804, 1800, 1802, 1800, 1792, 1796, 1798, 1796, 1792, 1794, 1792, 1536, 1664, 1728, 1760, 1776, 1784, 1788, 1790, 1788, 1784, 1786, 1784, 1776, 1780, 1782, 1780, 1776, 1778, 1776, 1760, 1768, 1772, 1774, 1772, 1768, 1770, 1768, 1760, 1764, 1766, 1764, 1760, 1762, 1760, 1728, 1744, 1752, 1756, 1758, 1756, 1752, 1754, 1752, 1744, 1748, 1750, 1748, 1744, 1746, 1744, 1728, 1736, 1740, 1742, 1740, 1736, 1738, 1736, 1728, 1732, 1734, 1732, 1728, 1730, 1728, 1664, 1696, 1712, 1720, 1724, 1726, 1724, 1720, 1722, 1720, 1712, 1716, 1718, 1716, 1712, 1714, 1712, 1696, 1704, 1708, 1710, 1708, 1704, 1706, 1704, 1696, 1700, 1702, 1700, 1696, 1698, 1696, 1664, 1680, 1688, 1692, 1694, 1692, 1688, 1690, 1688, 1680, 1684, 1686, 1684, 1680, 1682, 1680, 1664, 1672, 1676, 1678, 1676, 1672, 1674, 1672, 1664, 1668, 1670, 1668, 1664, 1666, 1664, 1536, 1600, 1632, 1648, 1656, 1660, 1662, 1660, 1656, 1658, 1656, 1648, 1652, 1654, 1652, 1648, 1650, 1648, 1632, 1640, 1644, 1646, 1644, 1640, 1642, 1640, 1632, 1636, 1638, 1636, 1632, 1634, 1632, 1600, 1616, 1624, 1628, 1630, 1628, 1624, 1626, 1624, 1616, 1620, 1622, 1620, 1616, 1618, 1616, 1600, 1608, 1612, 1614, 1612, 1608, 1610, 1608, 1600, 1604, 1606, 1604, 1600, 1602, 1600, 1536, 1568, 1584, 1592, 1596, 1598, 1596, 1592, 1594, 1592, 1584, 1588, 1590, 1588, 1584, 1586, 1584, 1568, 1576, 1580, 1582, 1580, 1576, 1578, 1576, 1568, 1572, 1574, 1572, 1568, 1570, 1568, 1536, 1552, 1560, 1564, 1566, 1564, 1560, 1562, 1560, 1552, 1556, 1558, 1556, 1552, 1554, 1552, 1536, 1544, 1548, 1550, 1548, 1544, 1546, 1544, 1536, 1540, 1542, 1540, 1536, 1538, 1536, 1024, 1280, 1408, 1472, 1504, 1520, 1528, 1532, 1534, 1532, 1528, 1530, 1528, 1520, 1524, 1526, 1524, 1520, 1522, 1520, 1504, 1512, 1516, 1518, 1516, 1512, 1514, 1512, 1504, 1508, 1510, 1508, 1504, 1506, 1504, 1472, 1488, 1496, 1500, 1502, 1500, 1496, 1498, 1496, 1488, 1492, 1494, 1492, 1488, 1490, 1488, 1472, 1480, 1484, 1486, 1484, 1480, 1482, 1480, 1472, 1476, 1478, 1476, 1472, 1474, 1472, 1408, 1440, 1456, 1464, 1468, 1470, 1468, 1464, 1466, 1464, 1456, 1460, 1462, 1460, 1456, 1458, 1456, 1440, 1448, 1452, 1454, 1452, 1448, 1450, 1448, 1440, 1444, 1446, 1444, 1440, 1442, 1440, 1408, 1424, 1432, 1436, 1438, 1436, 1432, 1434, 1432, 1424, 1428, 1430, 1428, 1424, 1426, 1424, 1408, 1416, 1420, 1422, 1420, 1416, 1418, 1416, 1408, 1412, 1414, 1412, 1408, 1410, 1408, 1280, 1344, 1376, 1392, 1400, 1404, 1406, 1404, 1400, 1402, 1400, 1392, 1396, 1398, 1396, 1392, 1394, 1392, 1376, 1384, 1388, 1390, 1388, 1384, 1386, 1384, 1376, 1380, 1382, 1380, 1376, 1378, 1376, 1344, 1360, 1368, 1372, 1374, 1372, 1368, 1370, 1368, 1360, 1364, 1366, 1364, 1360, 1362, 1360, 1344, 1352, 1356, 1358, 1356, 1352, 1354, 1352, 1344, 1348, 1350, 1348, 1344, 1346, 1344, 1280, 1312, 1328, 1336, 1340, 1342, 1340, 1336, 1338, 1336, 1328, 1332, 1334, 1332, 1328, 1330, 1328, 1312, 1320, 1324, 1326, 1324, 1320, 1322, 1320, 1312, 1316, 1318, 1316, 1312, 1314, 1312, 1280, 1296, 1304, 1308, 1310, 1308, 1304, 1306, 1304, 1296, 1300, 1302, 1300, 1296, 1298, 1296, 1280, 1288, 1292, 1294, 1292, 1288, 1290, 1288, 1280, 1284, 1286, 1284, 1280, 1282, 1280, 1024, 1152, 1216, 1248, 1264, 1272, 1276, 1278, 1276, 1272, 1274, 1272, 1264, 1268, 1270, 1268, 1264, 1266, 1264, 1248, 1256, 1260, 1262, 1260, 1256, 1258, 1256, 1248, 1252, 1254, 1252, 1248, 1250, 1248, 1216, 1232, 1240, 1244, 1246, 1244, 1240, 1242, 1240, 1232, 1236, 1238, 1236, 1232, 1234, 1232, 1216, 1224, 1228, 1230, 1228, 1224, 1226, 1224, 1216, 1220, 1222, 1220, 1216, 1218, 1216, 1152, 1184, 1200, 1208, 1212, 1214, 1212, 1208, 1210, 1208, 1200, 1204, 1206, 1204, 1200, 1202, 1200, 1184, 1192, 1196, 1198, 1196, 1192, 1194, 1192, 1184, 1188, 1190, 1188, 1184, 1186, 1184, 1152, 1168, 1176, 1180, 1182, 1180, 1176, 1178, 1176, 1168, 1172, 1174, 1172, 1168, 1170, 1168, 1152, 1160, 1164, 1166, 1164, 1160, 1162, 1160, 1152, 1156, 1158, 1156, 1152, 1154, 1152, 1024, 1088, 1120, 1136, 1144, 1148, 1150, 1148, 1144, 1146, 1144, 1136, 1140, 1142, 1140, 1136, 1138, 1136, 1120, 1128, 1132, 1134, 1132, 1128, 1130, 1128, 1120, 1124, 1126, 1124, 1120, 1122, 1120, 1088, 1104, 1112, 1116, 1118, 1116, 1112, 1114, 1112, 1104, 1108, 1110, 1108, 1104, 1106, 1104, 1088, 1096, 1100, 1102, 1100, 1096, 1098, 1096, 1088, 1092, 1094, 1092, 1088, 1090, 1088, 1024, 1056, 1072, 1080, 1084, 1086, 1084, 1080, 1082, 1080, 1072, 1076, 1078, 1076, 1072, 1074, 1072, 1056, 1064, 1068, 1070, 1068, 1064, 1066, 1064, 1056, 1060, 1062, 1060, 1056, 1058, 1056, 1024, 1040, 1048, 1052, 1054, 1052, 1048, 1050, 1048, 1040, 1044, 1046, 1044, 1040, 1042, 1040, 1024, 1032, 1036, 1038, 1036, 1032, 1034, 1032, 1024, 1028, 1030, 1028, 1024, 1026, 1024, 0, 512, 768, 896, 960, 992, 1008, 1016, 1020, 1022, 1020, 1016, 1018, 1016, 1008, 1012, 1014, 1012, 1008, 1010, 1008, 992, 1000, 1004, 1006, 1004, 1000, 1002, 1000, 992, 996, 998, 996, 992, 994, 992, 960, 976, 984, 988, 990, 988, 984, 986, 984, 976, 980, 982, 980, 976, 978, 976, 960, 968, 972, 974, 972, 968, 970, 968, 960, 964, 966, 964, 960, 962, 960, 896, 928, 944, 952, 956, 958, 956, 952, 954, 952, 944, 948, 950, 948, 944, 946, 944, 928, 936, 940, 942, 940, 936, 938, 936, 928, 932, 934, 932, 928, 930, 928, 896, 912, 920, 924, 926, 924, 920, 922, 920, 912, 916, 918, 916, 912, 914, 912, 896, 904, 908, 910, 908, 904, 906, 904, 896, 900, 902, 900, 896, 898, 896, 768, 832, 864, 880, 888, 892, 894, 892, 888, 890, 888, 880, 884, 886, 884, 880, 882, 880, 864, 872, 876, 878, 876, 872, 874, 872, 864, 868, 870, 868, 864, 866, 864, 832, 848, 856, 860, 862, 860, 856, 858, 856, 848, 852, 854, 852, 848, 850, 848, 832, 840, 844, 846, 844, 840, 842, 840, 832, 836, 838, 836, 832, 834, 832, 768, 800, 816, 824, 828, 830, 828, 824, 826, 824, 816, 820, 822, 820, 816, 818, 816, 800, 808, 812, 814, 812, 808, 810, 808, 800, 804, 806, 804, 800, 802, 800, 768, 784, 792, 796, 798, 796, 792, 794, 792, 784, 788, 790, 788, 784, 786, 784, 768, 776, 780, 782, 780, 776, 778, 776, 768, 772, 774, 772, 768, 770, 768, 512, 640, 704, 736, 752, 760, 764, 766, 764, 760, 762, 760, 752, 756, 758, 756, 752, 754, 752, 736, 744, 748, 750, 748, 744, 746, 744, 736, 740, 742, 740, 736, 738, 736, 704, 720, 728, 732, 734, 732, 728, 730, 728, 720, 724, 726, 724, 720, 722, 720, 704, 712, 716, 718, 716, 712, 714, 712, 704, 708, 710, 708, 704, 706, 704, 640, 672, 688, 696, 700, 702, 700, 696, 698, 696, 688, 692, 694, 692, 688, 690, 688, 672, 680, 684, 686, 684, 680, 682, 680, 672, 676, 678, 676, 672, 674, 672, 640, 656, 664, 668, 670, 668, 664, 666, 664, 656, 660, 662, 660, 656, 658, 656, 640, 648, 652, 654, 652, 648, 650, 648, 640, 644, 646, 644, 640, 642, 640, 512, 576, 608, 624, 632, 636, 638, 636, 632, 634, 632, 624, 628, 630, 628, 624, 626, 624, 608, 616, 620, 622, 620, 616, 618, 616, 608, 612, 614, 612, 608, 610, 608, 576, 592, 600, 604, 606, 604, 600, 602, 600, 592, 596, 598, 596, 592, 594, 592, 576, 584, 588, 590, 588, 584, 586, 584, 576, 580, 582, 580, 576, 578, 576, 512, 544, 560, 568, 572, 574, 572, 568, 570, 568, 560, 564, 566, 564, 560, 562, 560, 544, 552, 556, 558, 556, 552, 554, 552, 544, 548, 550, 548, 544, 546, 544, 512, 528, 536, 540, 542, 540, 536, 538, 536, 528, 532, 534, 532, 528, 530, 528, 512, 520, 524, 526, 524, 520, 522, 520, 512, 516, 518, 516, 512, 514, 512, 0, 256, 384, 448, 480, 496, 504, 508, 510, 508, 504, 506, 504, 496, 500, 502, 500, 496, 498, 496, 480, 488, 492, 494, 492, 488, 490, 488, 480, 484, 486, 484, 480, 482, 480, 448, 464, 472, 476, 478, 476, 472, 474, 472, 464, 468, 470, 468, 464, 466, 464, 448, 456, 460, 462, 460, 456, 458, 456, 448, 452, 454, 452, 448, 450, 448, 384, 416, 432, 440, 444, 446, 444, 440, 442, 440, 432, 436, 438, 436, 432, 434, 432, 416, 424, 428, 430, 428, 424, 426, 424, 416, 420, 422, 420, 416, 418, 416, 384, 400, 408, 412, 414, 412, 408, 410, 408, 400, 404, 406, 404, 400, 402, 400, 384, 392, 396, 398, 396, 392, 394, 392, 384, 388, 390, 388, 384, 386, 384, 256, 320, 352, 368, 376, 380, 382, 380, 376, 378, 376, 368, 372, 374, 372, 368, 370, 368, 352, 360, 364, 366, 364, 360, 362, 360, 352, 356, 358, 356, 352, 354, 352, 320, 336, 344, 348, 350, 348, 344, 346, 344, 336, 340, 342, 340, 336, 338, 336, 320, 328, 332, 334, 332, 328, 330, 328, 320, 324, 326, 324, 320, 322, 320, 256, 288, 304, 312, 316, 318, 316, 312, 314, 312, 304, 308, 310, 308, 304, 306, 304, 288, 296, 300, 302, 300, 296, 298, 296, 288, 292, 294, 292, 288, 290, 288, 256, 272, 280, 284, 286, 284, 280, 282, 280, 272, 276, 278, 276, 272, 274, 272, 256, 264, 268, 270, 268, 264, 266, 264, 256, 260, 262, 260, 256, 258, 256, 0, 128, 192, 224, 240, 248, 252, 254, 252, 248, 250, 248, 240, 244, 246, 244, 240, 242, 240, 224, 232, 236, 238, 236, 232, 234, 232, 224, 228, 230, 228, 224, 226, 224, 192, 208, 216, 220, 222, 220, 216, 218, 216, 208, 212, 214, 212, 208, 210, 208, 192, 200, 204, 206, 204, 200, 202, 200, 192, 196, 198, 196, 192, 194, 192, 128, 160, 176, 184, 188, 190, 188, 184, 186, 184, 176, 180, 182, 180, 176, 178, 176, 160, 168, 172, 174, 172, 168, 170, 168, 160, 164, 166, 164, 160, 162, 160, 128, 144, 152, 156, 158, 156, 152, 154, 152, 144, 148, 150, 148, 144, 146, 144, 128, 136, 140, 142, 140, 136, 138, 136, 128, 132, 134, 132, 128, 130, 128, 0, 64, 96, 112, 120, 124, 126, 124, 120, 122, 120, 112, 116, 118, 116, 112, 114, 112, 96, 104, 108, 110, 108, 104, 106, 104, 96, 100, 102, 100, 96, 98, 96, 64, 80, 88, 92, 94, 92, 88, 90, 88, 80, 84, 86, 84, 80, 82, 80, 64, 72, 76, 78, 76, 72, 74, 72, 64, 68, 70, 68, 64, 66, 64, 0, 32, 48, 56, 60, 62, 60, 56, 58, 56, 48, 52, 54, 52, 48, 50, 48, 32, 40, 44, 46, 44, 40, 42, 40, 32, 36, 38, 36, 32, 34, 32, 0, 16, 24, 28, 30, 28, 24, 26, 24, 16, 20, 22, 20, 16, 18, 16, 0, 8, 12, 14, 12, 8, 10, 8, 0, 4, 6, 4, 0, 2, 0};

static const int16_t g1_offset512[] = {768, 896, 960, 992, 1008, 1016, 1020, 1022, 1023, 1021, 1018, 1019, 1017, 1012, 1014, 1015, 1013, 1010, 1011, 1009, 1000, 1004, 1006, 1007, 1005, 1002, 1003, 1001, 996, 998, 999, 997, 994, 995, 993, 976, 984, 988, 990, 991, 989, 986, 987, 985, 980, 982, 983, 981, 978, 979, 977, 968, 972, 974, 975, 973, 970, 971, 969, 964, 966, 967, 965, 962, 963, 961, 928, 944, 952, 956, 958, 959, 957, 954, 955, 953, 948, 950, 951, 949, 946, 947, 945, 936, 940, 942, 943, 941, 938, 939, 937, 932, 934, 935, 933, 930, 931, 929, 912, 920, 924, 926, 927, 925, 922, 923, 921, 916, 918, 919, 917, 914, 915, 913, 904, 908, 910, 911, 909, 906, 907, 905, 900, 902, 903, 901, 898, 899, 897, 832, 864, 880, 888, 892, 894, 895, 893, 890, 891, 889, 884, 886, 887, 885, 882, 883, 881, 872, 876, 878, 879, 877, 874, 875, 873, 868, 870, 871, 869, 866, 867, 865, 848, 856, 860, 862, 863, 861, 858, 859, 857, 852, 854, 855, 853, 850, 851, 849, 840, 844, 846, 847, 845, 842, 843, 841, 836, 838, 839, 837, 834, 835, 833, 800, 816, 824, 828, 830, 831, 829, 826, 827, 825, 820, 822, 823, 821, 818, 819, 817, 808, 812, 814, 815, 813, 810, 811, 809, 804, 806, 807, 805, 802, 803, 801, 784, 792, 796, 798, 799, 797, 794, 795, 793, 788, 790, 791, 789, 786, 787, 785, 776, 780, 782, 783, 781, 778, 779, 777, 772, 774, 775, 773, 770, 771, 769, 640, 704, 736, 752, 760, 764, 766, 767, 765, 762, 763, 761, 756, 758, 759, 757, 754, 755, 753, 744, 748, 750, 751, 749, 746, 747, 745, 740, 742, 743, 741, 738, 739, 737, 720, 728, 732, 734, 735, 733, 730, 731, 729, 724, 726, 727, 725, 722, 723, 721, 712, 716, 718, 719, 717, 714, 715, 713, 708, 710, 711, 709, 706, 707, 705, 672, 688, 696, 700, 702, 703, 701, 698, 699, 697, 692, 694, 695, 693, 690, 691, 689, 680, 684, 686, 687, 685, 682, 683, 681, 676, 678, 679, 677, 674, 675, 673, 656, 664, 668, 670, 671, 669, 666, 667, 665, 660, 662, 663, 661, 658, 659, 657, 648, 652, 654, 655, 653, 650, 651, 649, 644, 646, 647, 645, 642, 643, 641, 576, 608, 624, 632, 636, 638, 639, 637, 634, 635, 633, 628, 630, 631, 629, 626, 627, 625, 616, 620, 622, 623, 621, 618, 619, 617, 612, 614, 615, 613, 610, 611, 609, 592, 600, 604, 606, 607, 605, 602, 603, 601, 596, 598, 599, 597, 594, 595, 593, 584, 588, 590, 591, 589, 586, 587, 585, 580, 582, 583, 581, 578, 579, 577, 544, 560, 568, 572, 574, 575, 573, 570, 571, 569, 564, 566, 567, 565, 562, 563, 561, 552, 556, 558, 559, 557, 554, 555, 553, 548, 550, 551, 549, 546, 547, 545, 528, 536, 540, 542, 543, 541, 538, 539, 537, 532, 534, 535, 533, 530, 531, 529, 520, 524, 526, 527, 525, 522, 523, 521, 516, 518, 519, 517, 514, 515, 513, 256, 384, 448, 480, 496, 504, 508, 510, 511, 509, 506, 507, 505, 500, 502, 503, 501, 498, 499, 497, 488, 492, 494, 495, 493, 490, 491, 489, 484, 486, 487, 485, 482, 483, 481, 464, 472, 476, 478, 479, 477, 474, 475, 473, 468, 470, 471, 469, 466, 467, 465, 456, 460, 462, 463, 461, 458, 459, 457, 452, 454, 455, 453, 450, 451, 449, 416, 432, 440, 444, 446, 447, 445, 442, 443, 441, 436, 438, 439, 437, 434, 435, 433, 424, 428, 430, 431, 429, 426, 427, 425, 420, 422, 423, 421, 418, 419, 417, 400, 408, 412, 414, 415, 413, 410, 411, 409, 404, 406, 407, 405, 402, 403, 401, 392, 396, 398, 399, 397, 394, 395, 393, 388, 390, 391, 389, 386, 387, 385, 320, 352, 368, 376, 380, 382, 383, 381, 378, 379, 377, 372, 374, 375, 373, 370, 371, 369, 360, 364, 366, 367, 365, 362, 363, 361, 356, 358, 359, 357, 354, 355, 353, 336, 344, 348, 350, 351, 349, 346, 347, 345, 340, 342, 343, 341, 338, 339, 337, 328, 332, 334, 335, 333, 330, 331, 329, 324, 326, 327, 325, 322, 323, 321, 288, 304, 312, 316, 318, 319, 317, 314, 315, 313, 308, 310, 311, 309, 306, 307, 305, 296, 300, 302, 303, 301, 298, 299, 297, 292, 294, 295, 293, 290, 291, 289, 272, 280, 284, 286, 287, 285, 282, 283, 281, 276, 278, 279, 277, 274, 275, 273, 264, 268, 270, 271, 269, 266, 267, 265, 260, 262, 263, 261, 258, 259, 257, 128, 192, 224, 240, 248, 252, 254, 255, 253, 250, 251, 249, 244, 246, 247, 245, 242, 243, 241, 232, 236, 238, 239, 237, 234, 235, 233, 228, 230, 231, 229, 226, 227, 225, 208, 216, 220, 222, 223, 221, 218, 219, 217, 212, 214, 215, 213, 210, 211, 209, 200, 204, 206, 207, 205, 202, 203, 201, 196, 198, 199, 197, 194, 195, 193, 160, 176, 184, 188, 190, 191, 189, 186, 187, 185, 180, 182, 183, 181, 178, 179, 177, 168, 172, 174, 175, 173, 170, 171, 169, 164, 166, 167, 165, 162, 163, 161, 144, 152, 156, 158, 159, 157, 154, 155, 153, 148, 150, 151, 149, 146, 147, 145, 136, 140, 142, 143, 141, 138, 139, 137, 132, 134, 135, 133, 130, 131, 129, 64, 96, 112, 120, 124, 126, 127, 125, 122, 123, 121, 116, 118, 119, 117, 114, 115, 113, 104, 108, 110, 111, 109, 106, 107, 105, 100, 102, 103, 101, 98, 99, 97, 80, 88, 92, 94, 95, 93, 90, 91, 89, 84, 86, 87, 85, 82, 83, 81, 72, 76, 78, 79, 77, 74, 75, 73, 68, 70, 71, 69, 66, 67, 65, 32, 48, 56, 60, 62, 63, 61, 58, 59, 57, 52, 54, 55, 53, 50, 51, 49, 40, 44, 46, 47, 45, 42, 43, 41, 36, 38, 39, 37, 34, 35, 33, 16, 24, 28, 30, 31, 29, 26, 27, 25, 20, 22, 23, 21, 18, 19, 17, 8, 12, 14, 15, 13, 10, 11, 9, 4, 6, 7, 5, 2, 3, 1};
static const int16_t g1_offset1024[] = {1536, 1792, 1920, 1984, 2016, 2032, 2040, 2044, 2046, 2047, 2045, 2042, 2043, 2041, 2036, 2038, 2039, 2037, 2034, 2035, 2033, 2024, 2028, 2030, 2031, 2029, 2026, 2027, 2025, 2020, 2022, 2023, 2021, 2018, 2019, 2017, 2000, 2008, 2012, 2014, 2015, 2013, 2010, 2011, 2009, 2004, 2006, 2007, 2005, 2002, 2003, 2001, 1992, 1996, 1998, 1999, 1997, 1994, 1995, 1993, 1988, 1990, 1991, 1989, 1986, 1987, 1985, 1952, 1968, 1976, 1980, 1982, 1983, 1981, 1978, 1979, 1977, 1972, 1974, 1975, 1973, 1970, 1971, 1969, 1960, 1964, 1966, 1967, 1965, 1962, 1963, 1961, 1956, 1958, 1959, 1957, 1954, 1955, 1953, 1936, 1944, 1948, 1950, 1951, 1949, 1946, 1947, 1945, 1940, 1942, 1943, 1941, 1938, 1939, 1937, 1928, 1932, 1934, 1935, 1933, 1930, 1931, 1929, 1924, 1926, 1927, 1925, 1922, 1923, 1921, 1856, 1888, 1904, 1912, 1916, 1918, 1919, 1917, 1914, 1915, 1913, 1908, 1910, 1911, 1909, 1906, 1907, 1905, 1896, 1900, 1902, 1903, 1901, 1898, 1899, 1897, 1892, 1894, 1895, 1893, 1890, 1891, 1889, 1872, 1880, 1884, 1886, 1887, 1885, 1882, 1883, 1881, 1876, 1878, 1879, 1877, 1874, 1875, 1873, 1864, 1868, 1870, 1871, 1869, 1866, 1867, 1865, 1860, 1862, 1863, 1861, 1858, 1859, 1857, 1824, 1840, 1848, 1852, 1854, 1855, 1853, 1850, 1851, 1849, 1844, 1846, 1847, 1845, 1842, 1843, 1841, 1832, 1836, 1838, 1839, 1837, 1834, 1835, 1833, 1828, 1830, 1831, 1829, 1826, 1827, 1825, 1808, 1816, 1820, 1822, 1823, 1821, 1818, 1819, 1817, 1812, 1814, 1815, 1813, 1810, 1811, 1809, 1800, 1804, 1806, 1807, 1805, 1802, 1803, 1801, 1796, 1798, 1799, 1797, 1794, 1795, 1793, 1664, 1728, 1760, 1776, 1784, 1788, 1790, 1791, 1789, 1786, 1787, 1785, 1780, 1782, 1783, 1781, 1778, 1779, 1777, 1768, 1772, 1774, 1775, 1773, 1770, 1771, 1769, 1764, 1766, 1767, 1765, 1762, 1763, 1761, 1744, 1752, 1756, 1758, 1759, 1757, 1754, 1755, 1753, 1748, 1750, 1751, 1749, 1746, 1747, 1745, 1736, 1740, 1742, 1743, 1741, 1738, 1739, 1737, 1732, 1734, 1735, 1733, 1730, 1731, 1729, 1696, 1712, 1720, 1724, 1726, 1727, 1725, 1722, 1723, 1721, 1716, 1718, 1719, 1717, 1714, 1715, 1713, 1704, 1708, 1710, 1711, 1709, 1706, 1707, 1705, 1700, 1702, 1703, 1701, 1698, 1699, 1697, 1680, 1688, 1692, 1694, 1695, 1693, 1690, 1691, 1689, 1684, 1686, 1687, 1685, 1682, 1683, 1681, 1672, 1676, 1678, 1679, 1677, 1674, 1675, 1673, 1668, 1670, 1671, 1669, 1666, 1667, 1665, 1600, 1632, 1648, 1656, 1660, 1662, 1663, 1661, 1658, 1659, 1657, 1652, 1654, 1655, 1653, 1650, 1651, 1649, 1640, 1644, 1646, 1647, 1645, 1642, 1643, 1641, 1636, 1638, 1639, 1637, 1634, 1635, 1633, 1616, 1624, 1628, 1630, 1631, 1629, 1626, 1627, 1625, 1620, 1622, 1623, 1621, 1618, 1619, 1617, 1608, 1612, 1614, 1615, 1613, 1610, 1611, 1609, 1604, 1606, 1607, 1605, 1602, 1603, 1601, 1568, 1584, 1592, 1596, 1598, 1599, 1597, 1594, 1595, 1593, 1588, 1590, 1591, 1589, 1586, 1587, 1585, 1576, 1580, 1582, 1583, 1581, 1578, 1579, 1577, 1572, 1574, 1575, 1573, 1570, 1571, 1569, 1552, 1560, 1564, 1566, 1567, 1565, 1562, 1563, 1561, 1556, 1558, 1559, 1557, 1554, 1555, 1553, 1544, 1548, 1550, 1551, 1549, 1546, 1547, 1545, 1540, 1542, 1543, 1541, 1538, 1539, 1537, 1280, 1408, 1472, 1504, 1520, 1528, 1532, 1534, 1535, 1533, 1530, 1531, 1529, 1524, 1526, 1527, 1525, 1522, 1523, 1521, 1512, 1516, 1518, 1519, 1517, 1514, 1515, 1513, 1508, 1510, 1511, 1509, 1506, 1507, 1505, 1488, 1496, 1500, 1502, 1503, 1501, 1498, 1499, 1497, 1492, 1494, 1495, 1493, 1490, 1491, 1489, 1480, 1484, 1486, 1487, 1485, 1482, 1483, 1481, 1476, 1478, 1479, 1477, 1474, 1475, 1473, 1440, 1456, 1464, 1468, 1470, 1471, 1469, 1466, 1467, 1465, 1460, 1462, 1463, 1461, 1458, 1459, 1457, 1448, 1452, 1454, 1455, 1453, 1450, 1451, 1449, 1444, 1446, 1447, 1445, 1442, 1443, 1441, 1424, 1432, 1436, 1438, 1439, 1437, 1434, 1435, 1433, 1428, 1430, 1431, 1429, 1426, 1427, 1425, 1416, 1420, 1422, 1423, 1421, 1418, 1419, 1417, 1412, 1414, 1415, 1413, 1410, 1411, 1409, 1344, 1376, 1392, 1400, 1404, 1406, 1407, 1405, 1402, 1403, 1401, 1396, 1398, 1399, 1397, 1394, 1395, 1393, 1384, 1388, 1390, 1391, 1389, 1386, 1387, 1385, 1380, 1382, 1383, 1381, 1378, 1379, 1377, 1360, 1368, 1372, 1374, 1375, 1373, 1370, 1371, 1369, 1364, 1366, 1367, 1365, 1362, 1363, 1361, 1352, 1356, 1358, 1359, 1357, 1354, 1355, 1353, 1348, 1350, 1351, 1349, 1346, 1347, 1345, 1312, 1328, 1336, 1340, 1342, 1343, 1341, 1338, 1339, 1337, 1332, 1334, 1335, 1333, 1330, 1331, 1329, 1320, 1324, 1326, 1327, 1325, 1322, 1323, 1321, 1316, 1318, 1319, 1317, 1314, 1315, 1313, 1296, 1304, 1308, 1310, 1311, 1309, 1306, 1307, 1305, 1300, 1302, 1303, 1301, 1298, 1299, 1297, 1288, 1292, 1294, 1295, 1293, 1290, 1291, 1289, 1284, 1286, 1287, 1285, 1282, 1283, 1281, 1152, 1216, 1248, 1264, 1272, 1276, 1278, 1279, 1277, 1274, 1275, 1273, 1268, 1270, 1271, 1269, 1266, 1267, 1265, 1256, 1260, 1262, 1263, 1261, 1258, 1259, 1257, 1252, 1254, 1255, 1253, 1250, 1251, 1249, 1232, 1240, 1244, 1246, 1247, 1245, 1242, 1243, 1241, 1236, 1238, 1239, 1237, 1234, 1235, 1233, 1224, 1228, 1230, 1231, 1229, 1226, 1227, 1225, 1220, 1222, 1223, 1221, 1218, 1219, 1217, 1184, 1200, 1208, 1212, 1214, 1215, 1213, 1210, 1211, 1209, 1204, 1206, 1207, 1205, 1202, 1203, 1201, 1192, 1196, 1198, 1199, 1197, 1194, 1195, 1193, 1188, 1190, 1191, 1189, 1186, 1187, 1185, 1168, 1176, 1180, 1182, 1183, 1181, 1178, 1179, 1177, 1172, 1174, 1175, 1173, 1170, 1171, 1169, 1160, 1164, 1166, 1167, 1165, 1162, 1163, 1161, 1156, 1158, 1159, 1157, 1154, 1155, 1153, 1088, 1120, 1136, 1144, 1148, 1150, 1151, 1149, 1146, 1147, 1145, 1140, 1142, 1143, 1141, 1138, 1139, 1137, 1128, 1132, 1134, 1135, 1133, 1130, 1131, 1129, 1124, 1126, 1127, 1125, 1122, 1123, 1121, 1104, 1112, 1116, 1118, 1119, 1117, 1114, 1115, 1113, 1108, 1110, 1111, 1109, 1106, 1107, 1105, 1096, 1100, 1102, 1103, 1101, 1098, 1099, 1097, 1092, 1094, 1095, 1093, 1090, 1091, 1089, 1056, 1072, 1080, 1084, 1086, 1087, 1085, 1082, 1083, 1081, 1076, 1078, 1079, 1077, 1074, 1075, 1073, 1064, 1068, 1070, 1071, 1069, 1066, 1067, 1065, 1060, 1062, 1063, 1061, 1058, 1059, 1057, 1040, 1048, 1052, 1054, 1055, 1053, 1050, 1051, 1049, 1044, 1046, 1047, 1045, 1042, 1043, 1041, 1032, 1036, 1038, 1039, 1037, 1034, 1035, 1033, 1028, 1030, 1031, 1029, 1026, 1027, 1025, 512, 768, 896, 960, 992, 1008, 1016, 1020, 1022, 1023, 1021, 1018, 1019, 1017, 1012, 1014, 1015, 1013, 1010, 1011, 1009, 1000, 1004, 1006, 1007, 1005, 1002, 1003, 1001, 996, 998, 999, 997, 994, 995, 993, 976, 984, 988, 990, 991, 989, 986, 987, 985, 980, 982, 983, 981, 978, 979, 977, 968, 972, 974, 975, 973, 970, 971, 969, 964, 966, 967, 965, 962, 963, 961, 928, 944, 952, 956, 958, 959, 957, 954, 955, 953, 948, 950, 951, 949, 946, 947, 945, 936, 940, 942, 943, 941, 938, 939, 937, 932, 934, 935, 933, 930, 931, 929, 912, 920, 924, 926, 927, 925, 922, 923, 921, 916, 918, 919, 917, 914, 915, 913, 904, 908, 910, 911, 909, 906, 907, 905, 900, 902, 903, 901, 898, 899, 897, 832, 864, 880, 888, 892, 894, 895, 893, 890, 891, 889, 884, 886, 887, 885, 882, 883, 881, 872, 876, 878, 879, 877, 874, 875, 873, 868, 870, 871, 869, 866, 867, 865, 848, 856, 860, 862, 863, 861, 858, 859, 857, 852, 854, 855, 853, 850, 851, 849, 840, 844, 846, 847, 845, 842, 843, 841, 836, 838, 839, 837, 834, 835, 833, 800, 816, 824, 828, 830, 831, 829, 826, 827, 825, 820, 822, 823, 821, 818, 819, 817, 808, 812, 814, 815, 813, 810, 811, 809, 804, 806, 807, 805, 802, 803, 801, 784, 792, 796, 798, 799, 797, 794, 795, 793, 788, 790, 791, 789, 786, 787, 785, 776, 780, 782, 783, 781, 778, 779, 777, 772, 774, 775, 773, 770, 771, 769, 640, 704, 736, 752, 760, 764, 766, 767, 765, 762, 763, 761, 756, 758, 759, 757, 754, 755, 753, 744, 748, 750, 751, 749, 746, 747, 745, 740, 742, 743, 741, 738, 739, 737, 720, 728, 732, 734, 735, 733, 730, 731, 729, 724, 726, 727, 725, 722, 723, 721, 712, 716, 718, 719, 717, 714, 715, 713, 708, 710, 711, 709, 706, 707, 705, 672, 688, 696, 700, 702, 703, 701, 698, 699, 697, 692, 694, 695, 693, 690, 691, 689, 680, 684, 686, 687, 685, 682, 683, 681, 676, 678, 679, 677, 674, 675, 673, 656, 664, 668, 670, 671, 669, 666, 667, 665, 660, 662, 663, 661, 658, 659, 657, 648, 652, 654, 655, 653, 650, 651, 649, 644, 646, 647, 645, 642, 643, 641, 576, 608, 624, 632, 636, 638, 639, 637, 634, 635, 633, 628, 630, 631, 629, 626, 627, 625, 616, 620, 622, 623, 621, 618, 619, 617, 612, 614, 615, 613, 610, 611, 609, 592, 600, 604, 606, 607, 605, 602, 603, 601, 596, 598, 599, 597, 594, 595, 593, 584, 588, 590, 591, 589, 586, 587, 585, 580, 582, 583, 581, 578, 579, 577, 544, 560, 568, 572, 574, 575, 573, 570, 571, 569, 564, 566, 567, 565, 562, 563, 561, 552, 556, 558, 559, 557, 554, 555, 553, 548, 550, 551, 549, 546, 547, 545, 528, 536, 540, 542, 543, 541, 538, 539, 537, 532, 534, 535, 533, 530, 531, 529, 520, 524, 526, 527, 525, 522, 523, 521, 516, 518, 519, 517, 514, 515, 513, 256, 384, 448, 480, 496, 504, 508, 510, 511, 509, 506, 507, 505, 500, 502, 503, 501, 498, 499, 497, 488, 492, 494, 495, 493, 490, 491, 489, 484, 486, 487, 485, 482, 483, 481, 464, 472, 476, 478, 479, 477, 474, 475, 473, 468, 470, 471, 469, 466, 467, 465, 456, 460, 462, 463, 461, 458, 459, 457, 452, 454, 455, 453, 450, 451, 449, 416, 432, 440, 444, 446, 447, 445, 442, 443, 441, 436, 438, 439, 437, 434, 435, 433, 424, 428, 430, 431, 429, 426, 427, 425, 420, 422, 423, 421, 418, 419, 417, 400, 408, 412, 414, 415, 413, 410, 411, 409, 404, 406, 407, 405, 402, 403, 401, 392, 396, 398, 399, 397, 394, 395, 393, 388, 390, 391, 389, 386, 387, 385, 320, 352, 368, 376, 380, 382, 383, 381, 378, 379, 377, 372, 374, 375, 373, 370, 371, 369, 360, 364, 366, 367, 365, 362, 363, 361, 356, 358, 359, 357, 354, 355, 353, 336, 344, 348, 350, 351, 349, 346, 347, 345, 340, 342, 343, 341, 338, 339, 337, 328, 332, 334, 335, 333, 330, 331, 329, 324, 326, 327, 325, 322, 323, 321, 288, 304, 312, 316, 318, 319, 317, 314, 315, 313, 308, 310, 311, 309, 306, 307, 305, 296, 300, 302, 303, 301, 298, 299, 297, 292, 294, 295, 293, 290, 291, 289, 272, 280, 284, 286, 287, 285, 282, 283, 281, 276, 278, 279, 277, 274, 275, 273, 264, 268, 270, 271, 269, 266, 267, 265, 260, 262, 263, 261, 258, 259, 257, 128, 192, 224, 240, 248, 252, 254, 255, 253, 250, 251, 249, 244, 246, 247, 245, 242, 243, 241, 232, 236, 238, 239, 237, 234, 235, 233, 228, 230, 231, 229, 226, 227, 225, 208, 216, 220, 222, 223, 221, 218, 219, 217, 212, 214, 215, 213, 210, 211, 209, 200, 204, 206, 207, 205, 202, 203, 201, 196, 198, 199, 197, 194, 195, 193, 160, 176, 184, 188, 190, 191, 189, 186, 187, 185, 180, 182, 183, 181, 178, 179, 177, 168, 172, 174, 175, 173, 170, 171, 169, 164, 166, 167, 165, 162, 163, 161, 144, 152, 156, 158, 159, 157, 154, 155, 153, 148, 150, 151, 149, 146, 147, 145, 136, 140, 142, 143, 141, 138, 139, 137, 132, 134, 135, 133, 130, 131, 129, 64, 96, 112, 120, 124, 126, 127, 125, 122, 123, 121, 116, 118, 119, 117, 114, 115, 113, 104, 108, 110, 111, 109, 106, 107, 105, 100, 102, 103, 101, 98, 99, 97, 80, 88, 92, 94, 95, 93, 90, 91, 89, 84, 86, 87, 85, 82, 83, 81, 72, 76, 78, 79, 77, 74, 75, 73, 68, 70, 71, 69, 66, 67, 65, 32, 48, 56, 60, 62, 63, 61, 58, 59, 57, 52, 54, 55, 53, 50, 51, 49, 40, 44, 46, 47, 45, 42, 43, 41, 36, 38, 39, 37, 34, 35, 33, 16, 24, 28, 30, 31, 29, 26, 27, 25, 20, 22, 23, 21, 18, 19, 17, 8, 12, 14, 15, 13, 10, 11, 9, 4, 6, 7, 5, 2, 3, 1};

static const int8_t logn_tree512[] = {8, 7, 6, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 6, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 7, 6, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 6, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 8, 7, 6, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 6, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 7, 6, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 6, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0};
static const int8_t logn_tree1024[] = { 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 6, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 7, 6, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 6, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 8, 7, 6, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 6, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 7, 6, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 6, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 6, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 7, 6, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 6, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 8, 7, 6, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 6, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 7, 6, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 6, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0};

static const int16_t tree_normalize_offset512[] = {0,
512, 768, 896, 960, 992, 1008, 1016, 1020, 1022, 1023, 1024, 1026, 1027, 1028, 1032, 1034, 1035, 1036, 1038, 1039, 1040, 1048, 1052, 1054, 1055, 1056, 1058, 1059, 1060, 1064,
1066, 1067, 1068, 1070, 1071, 1072, 1088, 1096, 1100, 1102, 1103, 1104, 1106, 1107, 1108, 1112, 1114, 1115, 1116, 1118, 1119, 1120, 1128, 1132, 1134, 1135, 1136, 1138, 1139, 1140,
1144, 1146, 1147, 1148, 1150, 1151, 1152, 1184, 1200, 1208, 1212, 1214, 1215, 1216, 1218, 1219, 1220, 1224, 1226, 1227, 1228, 1230, 1231, 1232, 1240, 1244, 1246, 1247, 1248, 1250,
1251, 1252, 1256, 1258, 1259, 1260, 1262, 1263, 1264, 1280, 1288, 1292, 1294, 1295, 1296, 1298, 1299, 1300, 1304, 1306, 1307, 1308, 1310, 1311, 1312, 1320, 1324, 1326, 1327, 1328,
1330, 1331, 1332, 1336, 1338, 1339, 1340, 1342, 1343, 1344, 1408, 1440, 1456, 1464, 1468, 1470, 1471, 1472, 1474, 1475, 1476, 1480, 1482, 1483, 1484, 1486, 1487, 1488, 1496, 1500,
1502, 1503, 1504, 1506, 1507, 1508, 1512, 1514, 1515, 1516, 1518, 1519, 1520, 1536, 1544, 1548, 1550, 1551, 1552, 1554, 1555, 1556, 1560, 1562, 1563, 1564, 1566, 1567, 1568, 1576,
1580, 1582, 1583, 1584, 1586, 1587, 1588, 1592, 1594, 1595, 1596, 1598, 1599, 1600, 1632, 1648, 1656, 1660, 1662, 1663, 1664, 1666, 1667, 1668, 1672, 1674, 1675, 1676, 1678, 1679,
1680, 1688, 1692, 1694, 1695, 1696, 1698, 1699, 1700, 1704, 1706, 1707, 1708, 1710, 1711, 1712, 1728, 1736, 1740, 1742, 1743, 1744, 1746, 1747, 1748, 1752, 1754, 1755, 1756, 1758,
1759, 1760, 1768, 1772, 1774, 1775, 1776, 1778, 1779, 1780, 1784, 1786, 1787, 1788, 1790, 1791, 1792, 1920, 1984, 2016, 2032, 2040, 2044, 2046, 2047, 2048, 2050, 2051, 2052, 2056,
2058, 2059, 2060, 2062, 2063, 2064, 2072, 2076, 2078, 2079, 2080, 2082, 2083, 2084, 2088, 2090, 2091, 2092, 2094, 2095, 2096, 2112, 2120, 2124, 2126, 2127, 2128, 2130, 2131, 2132,
2136, 2138, 2139, 2140, 2142, 2143, 2144, 2152, 2156, 2158, 2159, 2160, 2162, 2163, 2164, 2168, 2170, 2171, 2172, 2174, 2175, 2176, 2208, 2224, 2232, 2236, 2238, 2239, 2240, 2242,
2243, 2244, 2248, 2250, 2251, 2252, 2254, 2255, 2256, 2264, 2268, 2270, 2271, 2272, 2274, 2275, 2276, 2280, 2282, 2283, 2284, 2286, 2287, 2288, 2304, 2312, 2316, 2318, 2319, 2320,
2322, 2323, 2324, 2328, 2330, 2331, 2332, 2334, 2335, 2336, 2344, 2348, 2350, 2351, 2352, 2354, 2355, 2356, 2360, 2362, 2363, 2364, 2366, 2367, 2368, 2432, 2464, 2480, 2488, 2492,
2494, 2495, 2496, 2498, 2499, 2500, 2504, 2506, 2507, 2508, 2510, 2511, 2512, 2520, 2524, 2526, 2527, 2528, 2530, 2531, 2532, 2536, 2538, 2539, 2540, 2542, 2543, 2544, 2560, 2568,
2572, 2574, 2575, 2576, 2578, 2579, 2580, 2584, 2586, 2587, 2588, 2590, 2591, 2592, 2600, 2604, 2606, 2607, 2608, 2610, 2611, 2612, 2616, 2618, 2619, 2620, 2622, 2623, 2624, 2656,
2672, 2680, 2684, 2686, 2687, 2688, 2690, 2691, 2692, 2696, 2698, 2699, 2700, 2702, 2703, 2704, 2712, 2716, 2718, 2719, 2720, 2722, 2723, 2724, 2728, 2730, 2731, 2732, 2734, 2735,
2736, 2752, 2760, 2764, 2766, 2767, 2768, 2770, 2771, 2772, 2776, 2778, 2779, 2780, 2782, 2783, 2784, 2792, 2796, 2798, 2799, 2800, 2802, 2803, 2804, 2808, 2810, 2811, 2812, 2814,
2815, 2816, 3072, 3200, 3264, 3296, 3312, 3320, 3324, 3326, 3327, 3328, 3330, 3331, 3332, 3336, 3338, 3339, 3340, 3342, 3343, 3344, 3352, 3356, 3358, 3359, 3360, 3362, 3363, 3364,
3368, 3370, 3371, 3372, 3374, 3375, 3376, 3392, 3400, 3404, 3406, 3407, 3408, 3410, 3411, 3412, 3416, 3418, 3419, 3420, 3422, 3423, 3424, 3432, 3436, 3438, 3439, 3440, 3442, 3443,
3444, 3448, 3450, 3451, 3452, 3454, 3455, 3456, 3488, 3504, 3512, 3516, 3518, 3519, 3520, 3522, 3523, 3524, 3528, 3530, 3531, 3532, 3534, 3535, 3536, 3544, 3548, 3550, 3551, 3552,
3554, 3555, 3556, 3560, 3562, 3563, 3564, 3566, 3567, 3568, 3584, 3592, 3596, 3598, 3599, 3600, 3602, 3603, 3604, 3608, 3610, 3611, 3612, 3614, 3615, 3616, 3624, 3628, 3630, 3631,
3632, 3634, 3635, 3636, 3640, 3642, 3643, 3644, 3646, 3647, 3648, 3712, 3744, 3760, 3768, 3772, 3774, 3775, 3776, 3778, 3779, 3780, 3784, 3786, 3787, 3788, 3790, 3791, 3792, 3800,
3804, 3806, 3807, 3808, 3810, 3811, 3812, 3816, 3818, 3819, 3820, 3822, 3823, 3824, 3840, 3848, 3852, 3854, 3855, 3856, 3858, 3859, 3860, 3864, 3866, 3867, 3868, 3870, 3871, 3872,
3880, 3884, 3886, 3887, 3888, 3890, 3891, 3892, 3896, 3898, 3899, 3900, 3902, 3903, 3904, 3936, 3952, 3960, 3964, 3966, 3967, 3968, 3970, 3971, 3972, 3976, 3978, 3979, 3980, 3982,
3983, 3984, 3992, 3996, 3998, 3999, 4000, 4002, 4003, 4004, 4008, 4010, 4011, 4012, 4014, 4015, 4016, 4032, 4040, 4044, 4046, 4047, 4048, 4050, 4051, 4052, 4056, 4058, 4059, 4060,
4062, 4063, 4064, 4072, 4076, 4078, 4079, 4080, 4082, 4083, 4084, 4088, 4090, 4091, 4092, 4094, 4095, 4096, 4224, 4288, 4320, 4336, 4344, 4348, 4350, 4351, 4352, 4354, 4355, 4356,
4360, 4362, 4363, 4364, 4366, 4367, 4368, 4376, 4380, 4382, 4383, 4384, 4386, 4387, 4388, 4392, 4394, 4395, 4396, 4398, 4399, 4400, 4416, 4424, 4428, 4430, 4431, 4432, 4434, 4435,
4436, 4440, 4442, 4443, 4444, 4446, 4447, 4448, 4456, 4460, 4462, 4463, 4464, 4466, 4467, 4468, 4472, 4474, 4475, 4476, 4478, 4479, 4480, 4512, 4528, 4536, 4540, 4542, 4543, 4544,
4546, 4547, 4548, 4552, 4554, 4555, 4556, 4558, 4559, 4560, 4568, 4572, 4574, 4575, 4576, 4578, 4579, 4580, 4584, 4586, 4587, 4588, 4590, 4591, 4592, 4608, 4616, 4620, 4622, 4623,
4624, 4626, 4627, 4628, 4632, 4634, 4635, 4636, 4638, 4639, 4640, 4648, 4652, 4654, 4655, 4656, 4658, 4659, 4660, 4664, 4666, 4667, 4668, 4670, 4671, 4672, 4736, 4768, 4784, 4792,
4796, 4798, 4799, 4800, 4802, 4803, 4804, 4808, 4810, 4811, 4812, 4814, 4815, 4816, 4824, 4828, 4830, 4831, 4832, 4834, 4835, 4836, 4840, 4842, 4843, 4844, 4846, 4847, 4848, 4864,
4872, 4876, 4878, 4879, 4880, 4882, 4883, 4884, 4888, 4890, 4891, 4892, 4894, 4895, 4896, 4904, 4908, 4910, 4911, 4912, 4914, 4915, 4916, 4920, 4922, 4923, 4924, 4926, 4927, 4928,
4960, 4976, 4984, 4988, 4990, 4991, 4992, 4994, 4995, 4996, 5000, 5002, 5003, 5004, 5006, 5007, 5008, 5016, 5020, 5022, 5023, 5024, 5026, 5027, 5028, 5032, 5034, 5035, 5036, 5038,
5039, 5040, 5056, 5064, 5068, 5070, 5071, 5072, 5074, 5075, 5076, 5080, 5082, 5083, 5084, 5086, 5087, 5088, 5096, 5100, 5102, 5103, 5104, 5106, 5107, 5108, 5112, 5114, 5115, 5116,
5118, 5119};

static const int16_t tree_normalize_offset1024[] = {0, 1024, 1536, 1792, 1920, 1984, 2016, 2032, 2040, 2044, 2046, 2047, 2048, 2050, 2051, 2052, 2056, 2058, 2059, 2060, 2062, 2063, 2064, 2072, 2076, 2078, 2079, 2080, 2082, 2083,
2084, 2088, 2090, 2091, 2092, 2094, 2095, 2096, 2112, 2120, 2124, 2126, 2127, 2128, 2130, 2131, 2132, 2136, 2138, 2139, 2140, 2142, 2143, 2144, 2152, 2156, 2158, 2159, 2160, 2162,
2163, 2164, 2168, 2170, 2171, 2172, 2174, 2175, 2176, 2208, 2224, 2232, 2236, 2238, 2239, 2240, 2242, 2243, 2244, 2248, 2250, 2251, 2252, 2254, 2255, 2256, 2264, 2268, 2270, 2271,
2272, 2274, 2275, 2276, 2280, 2282, 2283, 2284, 2286, 2287, 2288, 2304, 2312, 2316, 2318, 2319, 2320, 2322, 2323, 2324, 2328, 2330, 2331, 2332, 2334, 2335, 2336, 2344, 2348, 2350,
2351, 2352, 2354, 2355, 2356, 2360, 2362, 2363, 2364, 2366, 2367, 2368, 2432, 2464, 2480, 2488, 2492, 2494, 2495, 2496, 2498, 2499, 2500, 2504, 2506, 2507, 2508, 2510, 2511, 2512,
2520, 2524, 2526, 2527, 2528, 2530, 2531, 2532, 2536, 2538, 2539, 2540, 2542, 2543, 2544, 2560, 2568, 2572, 2574, 2575, 2576, 2578, 2579, 2580, 2584, 2586, 2587, 2588, 2590, 2591,
2592, 2600, 2604, 2606, 2607, 2608, 2610, 2611, 2612, 2616, 2618, 2619, 2620, 2622, 2623, 2624, 2656, 2672, 2680, 2684, 2686, 2687, 2688, 2690, 2691, 2692, 2696, 2698, 2699, 2700,
2702, 2703, 2704, 2712, 2716, 2718, 2719, 2720, 2722, 2723, 2724, 2728, 2730, 2731, 2732, 2734, 2735, 2736, 2752, 2760, 2764, 2766, 2767, 2768, 2770, 2771, 2772, 2776, 2778, 2779,
2780, 2782, 2783, 2784, 2792, 2796, 2798, 2799, 2800, 2802, 2803, 2804, 2808, 2810, 2811, 2812, 2814, 2815, 2816, 2944, 3008, 3040, 3056, 3064, 3068, 3070, 3071, 3072, 3074, 3075,
3076, 3080, 3082, 3083, 3084, 3086, 3087, 3088, 3096, 3100, 3102, 3103, 3104, 3106, 3107, 3108, 3112, 3114, 3115, 3116, 3118, 3119, 3120, 3136, 3144, 3148, 3150, 3151, 3152, 3154,
3155, 3156, 3160, 3162, 3163, 3164, 3166, 3167, 3168, 3176, 3180, 3182, 3183, 3184, 3186, 3187, 3188, 3192, 3194, 3195, 3196, 3198, 3199, 3200, 3232, 3248, 3256, 3260, 3262, 3263,
3264, 3266, 3267, 3268, 3272, 3274, 3275, 3276, 3278, 3279, 3280, 3288, 3292, 3294, 3295, 3296, 3298, 3299, 3300, 3304, 3306, 3307, 3308, 3310, 3311, 3312, 3328, 3336, 3340, 3342,
3343, 3344, 3346, 3347, 3348, 3352, 3354, 3355, 3356, 3358, 3359, 3360, 3368, 3372, 3374, 3375, 3376, 3378, 3379, 3380, 3384, 3386, 3387, 3388, 3390, 3391, 3392, 3456, 3488, 3504,
3512, 3516, 3518, 3519, 3520, 3522, 3523, 3524, 3528, 3530, 3531, 3532, 3534, 3535, 3536, 3544, 3548, 3550, 3551, 3552, 3554, 3555, 3556, 3560, 3562, 3563, 3564, 3566, 3567, 3568,
3584, 3592, 3596, 3598, 3599, 3600, 3602, 3603, 3604, 3608, 3610, 3611, 3612, 3614, 3615, 3616, 3624, 3628, 3630, 3631, 3632, 3634, 3635, 3636, 3640, 3642, 3643, 3644, 3646, 3647,
3648, 3680, 3696, 3704, 3708, 3710, 3711, 3712, 3714, 3715, 3716, 3720, 3722, 3723, 3724, 3726, 3727, 3728, 3736, 3740, 3742, 3743, 3744, 3746, 3747, 3748, 3752, 3754, 3755, 3756,
3758, 3759, 3760, 3776, 3784, 3788, 3790, 3791, 3792, 3794, 3795, 3796, 3800, 3802, 3803, 3804, 3806, 3807, 3808, 3816, 3820, 3822, 3823, 3824, 3826, 3827, 3828, 3832, 3834, 3835,
3836, 3838, 3839, 3840, 4096, 4224, 4288, 4320, 4336, 4344, 4348, 4350, 4351, 4352, 4354, 4355, 4356, 4360, 4362, 4363, 4364, 4366, 4367, 4368, 4376, 4380, 4382, 4383, 4384, 4386,
4387, 4388, 4392, 4394, 4395, 4396, 4398, 4399, 4400, 4416, 4424, 4428, 4430, 4431, 4432, 4434, 4435, 4436, 4440, 4442, 4443, 4444, 4446, 4447, 4448, 4456, 4460, 4462, 4463, 4464,
4466, 4467, 4468, 4472, 4474, 4475, 4476, 4478, 4479, 4480, 4512, 4528, 4536, 4540, 4542, 4543, 4544, 4546, 4547, 4548, 4552, 4554, 4555, 4556, 4558, 4559, 4560, 4568, 4572, 4574,
4575, 4576, 4578, 4579, 4580, 4584, 4586, 4587, 4588, 4590, 4591, 4592, 4608, 4616, 4620, 4622, 4623, 4624, 4626, 4627, 4628, 4632, 4634, 4635, 4636, 4638, 4639, 4640, 4648, 4652,
4654, 4655, 4656, 4658, 4659, 4660, 4664, 4666, 4667, 4668, 4670, 4671, 4672, 4736, 4768, 4784, 4792, 4796, 4798, 4799, 4800, 4802, 4803, 4804, 4808, 4810, 4811, 4812, 4814, 4815,
4816, 4824, 4828, 4830, 4831, 4832, 4834, 4835, 4836, 4840, 4842, 4843, 4844, 4846, 4847, 4848, 4864, 4872, 4876, 4878, 4879, 4880, 4882, 4883, 4884, 4888, 4890, 4891, 4892, 4894,
4895, 4896, 4904, 4908, 4910, 4911, 4912, 4914, 4915, 4916, 4920, 4922, 4923, 4924, 4926, 4927, 4928, 4960, 4976, 4984, 4988, 4990, 4991, 4992, 4994, 4995, 4996, 5000, 5002, 5003,
5004, 5006, 5007, 5008, 5016, 5020, 5022, 5023, 5024, 5026, 5027, 5028, 5032, 5034, 5035, 5036, 5038, 5039, 5040, 5056, 5064, 5068, 5070, 5071, 5072, 5074, 5075, 5076, 5080, 5082,
5083, 5084, 5086, 5087, 5088, 5096, 5100, 5102, 5103, 5104, 5106, 5107, 5108, 5112, 5114, 5115, 5116, 5118, 5119, 5120, 5248, 5312, 5344, 5360, 5368, 5372, 5374, 5375, 5376, 5378,
5379, 5380, 5384, 5386, 5387, 5388, 5390, 5391, 5392, 5400, 5404, 5406, 5407, 5408, 5410, 5411, 5412, 5416, 5418, 5419, 5420, 5422, 5423, 5424, 5440, 5448, 5452, 5454, 5455, 5456,
5458, 5459, 5460, 5464, 5466, 5467, 5468, 5470, 5471, 5472, 5480, 5484, 5486, 5487, 5488, 5490, 5491, 5492, 5496, 5498, 5499, 5500, 5502, 5503, 5504, 5536, 5552, 5560, 5564, 5566,
5567, 5568, 5570, 5571, 5572, 5576, 5578, 5579, 5580, 5582, 5583, 5584, 5592, 5596, 5598, 5599, 5600, 5602, 5603, 5604, 5608, 5610, 5611, 5612, 5614, 5615, 5616, 5632, 5640, 5644,
5646, 5647, 5648, 5650, 5651, 5652, 5656, 5658, 5659, 5660, 5662, 5663, 5664, 5672, 5676, 5678, 5679, 5680, 5682, 5683, 5684, 5688, 5690, 5691, 5692, 5694, 5695, 5696, 5760, 5792,
5808, 5816, 5820, 5822, 5823, 5824, 5826, 5827, 5828, 5832, 5834, 5835, 5836, 5838, 5839, 5840, 5848, 5852, 5854, 5855, 5856, 5858, 5859, 5860, 5864, 5866, 5867, 5868, 5870, 5871,
5872, 5888, 5896, 5900, 5902, 5903, 5904, 5906, 5907, 5908, 5912, 5914, 5915, 5916, 5918, 5919, 5920, 5928, 5932, 5934, 5935, 5936, 5938, 5939, 5940, 5944, 5946, 5947, 5948, 5950,
5951, 5952, 5984, 6000, 6008, 6012, 6014, 6015, 6016, 6018, 6019, 6020, 6024, 6026, 6027, 6028, 6030, 6031, 6032, 6040, 6044, 6046, 6047, 6048, 6050, 6051, 6052, 6056, 6058, 6059,
6060, 6062, 6063, 6064, 6080, 6088, 6092, 6094, 6095, 6096, 6098, 6099, 6100, 6104, 6106, 6107, 6108, 6110, 6111, 6112, 6120, 6124, 6126, 6127, 6128, 6130, 6131, 6132, 6136, 6138,
6139, 6140, 6142, 6143, 6144, 6656, 6912, 7040, 7104, 7136, 7152, 7160, 7164, 7166, 7167, 7168, 7170, 7171, 7172, 7176, 7178, 7179, 7180, 7182, 7183, 7184, 7192, 7196, 7198, 7199,
7200, 7202, 7203, 7204, 7208, 7210, 7211, 7212, 7214, 7215, 7216, 7232, 7240, 7244, 7246, 7247, 7248, 7250, 7251, 7252, 7256, 7258, 7259, 7260, 7262, 7263, 7264, 7272, 7276, 7278,
7279, 7280, 7282, 7283, 7284, 7288, 7290, 7291, 7292, 7294, 7295, 7296, 7328, 7344, 7352, 7356, 7358, 7359, 7360, 7362, 7363, 7364, 7368, 7370, 7371, 7372, 7374, 7375, 7376, 7384,
7388, 7390, 7391, 7392, 7394, 7395, 7396, 7400, 7402, 7403, 7404, 7406, 7407, 7408, 7424, 7432, 7436, 7438, 7439, 7440, 7442, 7443, 7444, 7448, 7450, 7451, 7452, 7454, 7455, 7456,
7464, 7468, 7470, 7471, 7472, 7474, 7475, 7476, 7480, 7482, 7483, 7484, 7486, 7487, 7488, 7552, 7584, 7600, 7608, 7612, 7614, 7615, 7616, 7618, 7619, 7620, 7624, 7626, 7627, 7628,
7630, 7631, 7632, 7640, 7644, 7646, 7647, 7648, 7650, 7651, 7652, 7656, 7658, 7659, 7660, 7662, 7663, 7664, 7680, 7688, 7692, 7694, 7695, 7696, 7698, 7699, 7700, 7704, 7706, 7707,
7708, 7710, 7711, 7712, 7720, 7724, 7726, 7727, 7728, 7730, 7731, 7732, 7736, 7738, 7739, 7740, 7742, 7743, 7744, 7776, 7792, 7800, 7804, 7806, 7807, 7808, 7810, 7811, 7812, 7816,
7818, 7819, 7820, 7822, 7823, 7824, 7832, 7836, 7838, 7839, 7840, 7842, 7843, 7844, 7848, 7850, 7851, 7852, 7854, 7855, 7856, 7872, 7880, 7884, 7886, 7887, 7888, 7890, 7891, 7892,
7896, 7898, 7899, 7900, 7902, 7903, 7904, 7912, 7916, 7918, 7919, 7920, 7922, 7923, 7924, 7928, 7930, 7931, 7932, 7934, 7935, 7936, 8064, 8128, 8160, 8176, 8184, 8188, 8190, 8191,
8192, 8194, 8195, 8196, 8200, 8202, 8203, 8204, 8206, 8207, 8208, 8216, 8220, 8222, 8223, 8224, 8226, 8227, 8228, 8232, 8234, 8235, 8236, 8238, 8239, 8240, 8256, 8264, 8268, 8270,
8271, 8272, 8274, 8275, 8276, 8280, 8282, 8283, 8284, 8286, 8287, 8288, 8296, 8300, 8302, 8303, 8304, 8306, 8307, 8308, 8312, 8314, 8315, 8316, 8318, 8319, 8320, 8352, 8368, 8376,
8380, 8382, 8383, 8384, 8386, 8387, 8388, 8392, 8394, 8395, 8396, 8398, 8399, 8400, 8408, 8412, 8414, 8415, 8416, 8418, 8419, 8420, 8424, 8426, 8427, 8428, 8430, 8431, 8432, 8448,
8456, 8460, 8462, 8463, 8464, 8466, 8467, 8468, 8472, 8474, 8475, 8476, 8478, 8479, 8480, 8488, 8492, 8494, 8495, 8496, 8498, 8499, 8500, 8504, 8506, 8507, 8508, 8510, 8511, 8512,
8576, 8608, 8624, 8632, 8636, 8638, 8639, 8640, 8642, 8643, 8644, 8648, 8650, 8651, 8652, 8654, 8655, 8656, 8664, 8668, 8670, 8671, 8672, 8674, 8675, 8676, 8680, 8682, 8683, 8684,
8686, 8687, 8688, 8704, 8712, 8716, 8718, 8719, 8720, 8722, 8723, 8724, 8728, 8730, 8731, 8732, 8734, 8735, 8736, 8744, 8748, 8750, 8751, 8752, 8754, 8755, 8756, 8760, 8762, 8763,
8764, 8766, 8767, 8768, 8800, 8816, 8824, 8828, 8830, 8831, 8832, 8834, 8835, 8836, 8840, 8842, 8843, 8844, 8846, 8847, 8848, 8856, 8860, 8862, 8863, 8864, 8866, 8867, 8868, 8872,
8874, 8875, 8876, 8878, 8879, 8880, 8896, 8904, 8908, 8910, 8911, 8912, 8914, 8915, 8916, 8920, 8922, 8923, 8924, 8926, 8927, 8928, 8936, 8940, 8942, 8943, 8944, 8946, 8947, 8948,
8952, 8954, 8955, 8956, 8958, 8959, 8960, 9216, 9344, 9408, 9440, 9456, 9464, 9468, 9470, 9471, 9472, 9474, 9475, 9476, 9480, 9482, 9483, 9484, 9486, 9487, 9488, 9496, 9500, 9502,
9503, 9504, 9506, 9507, 9508, 9512, 9514, 9515, 9516, 9518, 9519, 9520, 9536, 9544, 9548, 9550, 9551, 9552, 9554, 9555, 9556, 9560, 9562, 9563, 9564, 9566, 9567, 9568, 9576, 9580,
9582, 9583, 9584, 9586, 9587, 9588, 9592, 9594, 9595, 9596, 9598, 9599, 9600, 9632, 9648, 9656, 9660, 9662, 9663, 9664, 9666, 9667, 9668, 9672, 9674, 9675, 9676, 9678, 9679, 9680,
9688, 9692, 9694, 9695, 9696, 9698, 9699, 9700, 9704, 9706, 9707, 9708, 9710, 9711, 9712, 9728, 9736, 9740, 9742, 9743, 9744, 9746, 9747, 9748, 9752, 9754, 9755, 9756, 9758, 9759,
9760, 9768, 9772, 9774, 9775, 9776, 9778, 9779, 9780, 9784, 9786, 9787, 9788, 9790, 9791, 9792, 9856, 9888, 9904, 9912, 9916, 9918, 9919, 9920, 9922, 9923, 9924, 9928, 9930, 9931,
9932, 9934, 9935, 9936, 9944, 9948, 9950, 9951, 9952, 9954, 9955, 9956, 9960, 9962, 9963, 9964, 9966, 9967, 9968, 9984, 9992, 9996, 9998, 9999, 10000, 10002, 10003, 10004, 10008, 10010,
10011, 10012, 10014, 10015, 10016, 10024, 10028, 10030, 10031, 10032, 10034, 10035, 10036, 10040, 10042, 10043, 10044, 10046, 10047, 10048, 10080, 10096, 10104, 10108, 10110, 10111, 10112, 10114, 10115, 10116,
10120, 10122, 10123, 10124, 10126, 10127, 10128, 10136, 10140, 10142, 10143, 10144, 10146, 10147, 10148, 10152, 10154, 10155, 10156, 10158, 10159, 10160, 10176, 10184, 10188, 10190, 10191, 10192, 10194, 10195,
10196, 10200, 10202, 10203, 10204, 10206, 10207, 10208, 10216, 10220, 10222, 10223, 10224, 10226, 10227, 10228, 10232, 10234, 10235, 10236, 10238, 10239, 10240, 10368, 10432, 10464, 10480, 10488, 10492, 10494,
10495, 10496, 10498, 10499, 10500, 10504, 10506, 10507, 10508, 10510, 10511, 10512, 10520, 10524, 10526, 10527, 10528, 10530, 10531, 10532, 10536, 10538, 10539, 10540, 10542, 10543, 10544, 10560, 10568, 10572,
10574, 10575, 10576, 10578, 10579, 10580, 10584, 10586, 10587, 10588, 10590, 10591, 10592, 10600, 10604, 10606, 10607, 10608, 10610, 10611, 10612, 10616, 10618, 10619, 10620, 10622, 10623, 10624, 10656, 10672,
10680, 10684, 10686, 10687, 10688, 10690, 10691, 10692, 10696, 10698, 10699, 10700, 10702, 10703, 10704, 10712, 10716, 10718, 10719, 10720, 10722, 10723, 10724, 10728, 10730, 10731, 10732, 10734, 10735, 10736,
10752, 10760, 10764, 10766, 10767, 10768, 10770, 10771, 10772, 10776, 10778, 10779, 10780, 10782, 10783, 10784, 10792, 10796, 10798, 10799, 10800, 10802, 10803, 10804, 10808, 10810, 10811, 10812, 10814, 10815,
10816, 10880, 10912, 10928, 10936, 10940, 10942, 10943, 10944, 10946, 10947, 10948, 10952, 10954, 10955, 10956, 10958, 10959, 10960, 10968, 10972, 10974, 10975, 10976, 10978, 10979, 10980, 10984, 10986, 10987,
10988, 10990, 10991, 10992, 11008, 11016, 11020, 11022, 11023, 11024, 11026, 11027, 11028, 11032, 11034, 11035, 11036, 11038, 11039, 11040, 11048, 11052, 11054, 11055, 11056, 11058, 11059, 11060, 11064, 11066,
11067, 11068, 11070, 11071, 11072, 11104, 11120, 11128, 11132, 11134, 11135, 11136, 11138, 11139, 11140, 11144, 11146, 11147, 11148, 11150, 11151, 11152, 11160, 11164, 11166, 11167, 11168, 11170, 11171, 11172,
11176, 11178, 11179, 11180, 11182, 11183, 11184, 11200, 11208, 11212, 11214, 11215, 11216, 11218, 11219, 11220, 11224, 11226, 11227, 11228, 11230, 11231, 11232, 11240, 11244, 11246, 11247, 11248, 11250, 11251,
11252, 11256, 11258, 11259, 11260, 11262, 11263};

static const int8_t logn_normalize_tree512[] = {9,
8, 7, 6, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1,
0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2,
1, 0, 0, 1, 0, 0, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0,
0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1,
0, 0, 2, 1, 0, 0, 1, 0, 0, 6, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1,
0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2,
1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0,
3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0,
0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 7, 6, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1,
0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2,
1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 5, 4, 3, 2, 1, 0, 0, 1, 0,
0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1,
0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 6, 5, 4, 3, 2, 1,
0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2,
1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 5, 4,
3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0,
4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0,
0, 8, 7, 6, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2,
1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0,
2, 1, 0, 0, 1, 0, 0, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1,
0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0,
1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 6, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2,
1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3,
2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0,
0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1,
0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 7, 6, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2,
1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0,
2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 5, 4, 3, 2, 1, 0, 0, 1,
0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0,
1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 6, 5, 4, 3, 2,
1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3,
2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 5,
4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0,
0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1,
0, 0};

static const int8_t logn_normalize_tree1024[] = {10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0,
2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0,
0, 2, 1, 0, 0, 1, 0, 0, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0,
1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0,
0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 6, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3,
2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0,
3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1,
0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0,
1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 7, 6, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0,
2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0,
0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 5, 4, 3, 2, 1, 0, 0,
1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0,
0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 6, 5, 4, 3,
2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4,
3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0,
5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1,
0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0,
1, 0, 0, 8, 7, 6, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0,
0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1,
0, 0, 2, 1, 0, 0, 1, 0, 0, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0,
0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1,
0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 6, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0,
3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0,
0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0,
1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0,
0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 7, 6, 5, 4, 3, 2, 1, 0, 0, 1, 0,
0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1,
0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 5, 4, 3, 2, 1, 0,
0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1,
0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 6, 5, 4,
3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0,
4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0,
0, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0,
1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0,
0, 1, 0, 0, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0,
1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0,
0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2,
1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3,
2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 6, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1,
0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0,
1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1,
0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2,
1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 7, 6, 5, 4, 3, 2, 1, 0, 0,
1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0,
0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 5, 4, 3, 2,
1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3,
2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 6,
5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1,
0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0,
1, 0, 0, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1,
0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2,
1, 0, 0, 1, 0, 0, 8, 7, 6, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0,
0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1,
0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3,
2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0,
3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 6, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0,
1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0,
0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2,
1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0,
2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 7, 6, 5, 4, 3, 2, 1, 0,
0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4, 3, 2, 1,
0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 5, 4, 3,
2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 4,
3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0,
6, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0,
1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0,
0, 1, 0, 0, 5, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0, 2,
1, 0, 0, 1, 0, 0, 4, 3, 2, 1, 0, 0, 1, 0, 0, 2, 1, 0, 0, 1, 0, 0, 3, 2, 1, 0, 0, 1, 0, 0,
2, 1, 0, 0, 1, 0, 0};
# 2 "../FalconHLS/code_hls/fft.c" 2





void FPC_ADD(fpr *d_re, fpr *d_im, fpr a_re, fpr a_im, fpr b_re, fpr b_im) {

 fpr fpct_re, fpct_im;
 fpct_re = fpr_add(a_re, b_re);
 fpct_im = fpr_add(a_im, b_im);
 *d_re = fpct_re;
 *d_im = fpct_im;
}
# 27 "../FalconHLS/code_hls/fft.c"
void FPC_SUB(fpr *d_re, fpr *d_im, fpr a_re, fpr a_im, fpr b_re, fpr b_im) {

 fpr fpct_re, fpct_im;
 fpct_re = fpr_sub(a_re, b_re);
 fpct_im = fpr_sub(a_im, b_im);
 *d_re = fpct_re;
 *d_im = fpct_im;
}
# 48 "../FalconHLS/code_hls/fft.c"
void FPC_MUL(fpr *d_re, fpr *d_im, fpr a_re, fpr a_im, fpr b_re, fpr b_im) {

 fpr fpct_a_re, fpct_a_im;
 fpr fpct_b_re, fpct_b_im;
 fpr fpct_d_re, fpct_d_im;
 fpr test1, test2;
 fpct_a_re = (a_re);
 fpct_a_im = (a_im);
 fpct_b_re = (b_re);
 fpct_b_im = (b_im);
 test1 = fpr_mul(fpct_a_re, fpct_b_re);
 test2 = fpr_mul(fpct_a_im, fpct_b_im);
 fpct_d_re = fpr_sub(test1, test2);
 test1 = fpr_mul(fpct_a_re, fpct_b_im);
 test2 = fpr_mul(fpct_a_im, fpct_b_re);
 fpct_d_im = fpr_add(test1, test2);
 (*d_re) = fpct_d_re;
 (*d_im) = fpct_d_im;
}
# 94 "../FalconHLS/code_hls/fft.c"
void FPC_SQR(fpr *d_re, fpr *d_im, fpr a_re, fpr a_im) {

 fpr fpct_a_re, fpct_a_im;
 fpr fpct_d_re, fpct_d_im;
 fpct_a_re = (a_re);
 fpct_a_im = (a_im);
 fpct_d_re = fpr_sub(fpr_sqr(fpct_a_re), fpr_sqr(fpct_a_im));
 fpct_d_im = fpr_double(fpr_mul(fpct_a_re, fpct_a_im));
 (*d_re) = fpct_d_re;
 (*d_im) = fpct_d_im;
}
# 120 "../FalconHLS/code_hls/fft.c"
void FPC_INV(fpr *d_re, fpr *d_im, fpr a_re, fpr a_im) {

 fpr fpct_a_re, fpct_a_im;
 fpr fpct_d_re, fpct_d_im;
 fpr fpct_m;
 fpct_a_re = (a_re);
 fpct_a_im = (a_im);
 fpct_m = fpr_add(fpr_sqr(fpct_a_re), fpr_sqr(fpct_a_im));
 fpct_m = fpr_inv(fpct_m);
 fpct_d_re = fpr_mul(fpct_a_re, fpct_m);
 fpct_d_im = fpr_mul(fpr_neg(fpct_a_im), fpct_m);
 (*d_re) = fpct_d_re;
 (*d_im) = fpct_d_im;
}
# 152 "../FalconHLS/code_hls/fft.c"
void FPC_DIV(fpr *d_re, fpr *d_im, fpr a_re, fpr a_im, fpr b_re, fpr b_im) {

 fpr fpct_a_re, fpct_a_im;
 fpr fpct_b_re, fpct_b_im;
 fpr fpct_d_re, fpct_d_im;
 fpr fpct_m;
 fpct_a_re = (a_re);
 fpct_a_im = (a_im);
 fpct_b_re = (b_re);
 fpct_b_im = (b_im);
 fpct_m = fpr_add(fpr_sqr(fpct_b_re), fpr_sqr(fpct_b_im));
 fpct_m = fpr_inv(fpct_m);
 fpct_b_re = fpr_mul(fpct_b_re, fpct_m);
 fpct_b_im = fpr_mul(fpr_neg(fpct_b_im), fpct_m);
 fpct_d_re = fpr_sub(fpr_mul(fpct_a_re, fpct_b_re),
   fpr_mul(fpct_a_im, fpct_b_im));
 fpct_d_im = fpr_add(fpr_mul(fpct_a_re, fpct_b_im),
   fpr_mul(fpct_a_im, fpct_b_re));
 (*d_re) = fpct_d_re;
 (*d_im) = fpct_d_im;
}
# 216 "../FalconHLS/code_hls/fft.c"
void poly_invnorm2_fft(fpr *d, const fpr *a, const fpr *b, unsigned logn) {

 size_t n, hn, u;

 n = (size_t) 1 << logn;
 hn = n >> 1;
 fpr a_re, a_im;
 fpr b_re, b_im;

 VITIS_LOOP_225_1: for (u = 0; u < hn; u++) {
#pragma HLS LOOP_TRIPCOUNT max=102
 a_re = a[u];
  a_im = a[u + hn];
  b_re = b[u];
  b_im = b[u + hn];
  d[u] = fpr_inv(
    fpr_add(fpr_add(fpr_sqr(a_re), fpr_sqr(a_im)),
      fpr_add(fpr_sqr(b_re), fpr_sqr(b_im))));
 }
}







void poly_div_autoadj_fft(fpr *a, const fpr *b, unsigned logn) {
 size_t n, hn, u;

 n = (size_t) 1 << logn;
 hn = n >> 1;
 VITIS_LOOP_248_1: for (u = 0; u < hn; u++) {
#pragma HLS LOOP_TRIPCOUNT max=102
 fpr ib;

  ib = fpr_inv(b[u]);
  a[u] = fpr_mul(a[u], ib);
  a[u + hn] = fpr_mul(a[u + hn], ib);
 }
}

void poly_LDL_fft(const fpr *g00, fpr *g01, fpr *g11, unsigned logn) {
 size_t n, hn, u;

 n = (size_t) 1 << logn;
 hn = n >> 1;
 VITIS_LOOP_263_1: for (u = 0; u < hn; u++) {
#pragma HLS LOOP_TRIPCOUNT max=102
 fpr g00_re, g00_im, g01_re, g01_im, g11_re, g11_im;
  fpr mu_re, mu_im;

  g00_re = g00[u];
  g00_im = g00[u + hn];
  g01_re = g01[u];
  g01_im = g01[u + hn];
  g11_re = g11[u];
  g11_im = g11[u + hn];
  FPC_DIV(&mu_re, &mu_im, g01_re, g01_im, g00_re, g00_im);
  FPC_MUL(&g01_re, &g01_im, mu_re, mu_im, g01_re, fpr_neg(g01_im));
  FPC_SUB(&g11[u], &g11[u + hn], g11_re, g11_im, g01_re, g01_im);
  g01[u] = mu_re;
  g01[u + hn] = fpr_neg(mu_im);
 }
}







void poly_LDLmv_fft(fpr *d11, fpr *l10, const fpr *g00, const fpr *g01,
  const fpr *g11, unsigned logn) {
 size_t n, hn, u;

 n = (size_t) 1 << logn;
 hn = n >> 1;
 VITIS_LOOP_294_1: for (u = 0; u < hn; u++) {
#pragma HLS LOOP_TRIPCOUNT max=102
 fpr g00_re, g00_im, g01_re, g01_im, g11_re, g11_im;
  fpr mu_re, mu_im;

  g00_re = g00[u];
  g00_im = g00[u + hn];
  g01_re = g01[u];
  g01_im = g01[u + hn];
  g11_re = g11[u];
  g11_im = g11[u + hn];
  FPC_DIV(&mu_re, &mu_im, g01_re, g01_im, g00_re, g00_im);
  FPC_MUL(&g01_re, &g01_im, mu_re, mu_im, g01_re, fpr_neg(g01_im));
  FPC_SUB(&d11[u], &d11[u + hn], g11_re, g11_im, g01_re, g01_im);
  l10[u] = mu_re;
  l10[u + hn] = fpr_neg(mu_im);
 }
}




void poly_muladj_fft(fpr *a, const fpr *b, unsigned logn) {
 size_t n, hn, u;

 n = (size_t) 1 << logn;
 hn = n >> 1;
 VITIS_LOOP_321_1: for (u = 0; u < hn; u++) {
#pragma HLS LOOP_TRIPCOUNT max=102
 fpr a_re, a_im, b_re, b_im;

  a_re = a[u];
  a_im = a[u + hn];
  b_re = b[u];
  b_im = fpr_neg(b[u + hn]);
  FPC_MUL(&a[u], &a[u + hn], a_re, a_im, b_re, b_im);
 }
}




void poly_mulselfadj_fft(fpr *a, unsigned logn) {




 size_t n, hn, u;

 n = (size_t) 1 << logn;
 hn = n >> 1;
 VITIS_LOOP_345_1: for (u = 0; u < hn; u++) {
#pragma HLS LOOP_TRIPCOUNT max=102
 fpr a_re, a_im;

  a_re = a[u];
  a_im = a[u + hn];
  a[u] = fpr_add(fpr_sqr(a_re), fpr_sqr(a_im));
  a[u + hn] = fpr_zero;
 }
}







void poly_merge_fft(fpr *f, const fpr *f0, const fpr *f1, unsigned logn) {
 size_t n, hn, qn, u;
 n = (size_t) 1 << logn;
 hn = n >> 1;
 qn = hn >> 1;




 f[0] = f0[0];
 f[hn] = f1[0];

 VITIS_LOOP_374_1: for (u = 0; u < qn; u++) {
#pragma HLS LOOP_TRIPCOUNT max=56
 fpr a_re, a_im, b_re, b_im;
  fpr t_re, t_im;

  a_re = f0[u];
  a_im = f0[u + qn];
  FPC_MUL(&b_re, &b_im, f1[u], f1[u + qn],
    fpr_gm_tab[((u + hn) << 1) + 0],
    fpr_gm_tab[((u + hn) << 1) + 1]);
  FPC_ADD(&t_re, &t_im, a_re, a_im, b_re, b_im);
  f[(u << 1) + 0] = t_re;
  f[(u << 1) + 0 + hn] = t_im;
  FPC_SUB(&t_re, &t_im, a_re, a_im, b_re, b_im);
  f[(u << 1) + 1] = t_re;
  f[(u << 1) + 1 + hn] = t_im;
 }
}






void poly_split_fft(fpr *f0, fpr *f1, const fpr *f, unsigned logn) {






 size_t n, hn, qn, u;

 n = (size_t) 1 << logn;
 hn = n >> 1;
 qn = hn >> 1;







 f0[0] = f[0];
 f1[0] = f[hn];

 VITIS_LOOP_420_1: for (u = 0; u < qn; u++) {
#pragma HLS LOOP_TRIPCOUNT max=56
 fpr a_re, a_im, b_re, b_im;
  fpr t_re, t_im;

  a_re = f[(u << 1) + 0];
  a_im = f[(u << 1) + 0 + hn];
  b_re = f[(u << 1) + 1];
  b_im = f[(u << 1) + 1 + hn];

  FPC_ADD(&t_re, &t_im, a_re, a_im, b_re, b_im);
  f0[u] = fpr_half(t_re);
  f0[u + qn] = fpr_half(t_im);

  FPC_SUB(&t_re, &t_im, a_re, a_im, b_re, b_im);
  FPC_MUL(&t_re, &t_im, t_re, t_im, fpr_gm_tab[((u + hn) << 1) + 0],
    fpr_neg(fpr_gm_tab[((u + hn) << 1) + 1]));
  f1[u] = fpr_half(t_re);
  f1[u + qn] = fpr_half(t_im);
 }
}





void poly_neg(fpr *a, unsigned logn) {
 size_t n, u;

 n = (size_t) 1 << logn;
 VITIS_LOOP_450_1: for (u = 0; u < n; u++) {
#pragma HLS LOOP_TRIPCOUNT max=186
 a[u] = fpr_neg(a[u]);
 }
}





void poly_sub(fpr *a, const fpr *b, unsigned logn) {
 size_t n, u;

 n = (size_t) 1 << logn;
 VITIS_LOOP_464_1: for (u = 0; u < n; u++) {
#pragma HLS LOOP_TRIPCOUNT max=186
 a[u] = fpr_sub(a[u], b[u]);
 }
}





void poly_add_muladj_fft(fpr *d, const fpr *F, const fpr *G, const fpr *f,
  const fpr *g, unsigned logn) {
 size_t n, hn, u;

 n = (size_t) 1 << logn;
 hn = n >> 1;
 VITIS_LOOP_480_1: for (u = 0; u < hn; u++) {
#pragma HLS LOOP_TRIPCOUNT max=102
 fpr F_re, F_im, G_re, G_im;
  fpr f_re, f_im, g_re, g_im;
  fpr a_re, a_im, b_re, b_im;

  F_re = F[u];
  F_im = F[u + hn];
  G_re = G[u];
  G_im = G[u + hn];
  f_re = f[u];
  f_im = f[u + hn];
  g_re = g[u];
  g_im = g[u + hn];

  FPC_MUL(&a_re, &a_im, F_re, F_im, f_re, fpr_neg(f_im));
  FPC_MUL(&b_re, &b_im, G_re, G_im, g_re, fpr_neg(g_im));
  d[u] = fpr_add(a_re, b_re);
  d[u + hn] = fpr_add(a_im, b_im);
 }
}





void poly_mul_fft(fpr *a, const fpr *b, unsigned logn) {
 size_t n, hn, u;

 n = (size_t) 1 << logn;
 hn = n >> 1;
 VITIS_LOOP_511_1: for (u = 0; u < hn; u++) {
#pragma HLS LOOP_TRIPCOUNT max=102
 fpr a_re, a_im, b_re, b_im;

  a_re = a[u];
  a_im = a[u + hn];
  b_re = b[u];
  b_im = b[u + hn];
  FPC_MUL(&a[u], &a[u + hn], a_re, a_im, b_re, b_im);
 }
}





void poly_add(fpr *a, const fpr *b, unsigned logn) {

 size_t n, u;

 n = (size_t) 1 << logn;
 VITIS_LOOP_532_1: for (u = 0; u < n; u++) {
#pragma HLS LOOP_TRIPCOUNT max=186
 a[u] = fpr_add(a[u], b[u]);
 }
}





void poly_adj_fft(fpr *a, unsigned logn) {
 size_t n, u;

 n = (size_t) 1 << logn;
 VITIS_LOOP_546_1: for (u = (n >> 1); u < n; u++) {
#pragma HLS LOOP_TRIPCOUNT max=186
 a[u] = fpr_neg(a[u]);
 }
}





void poly_mulconst(fpr a[1024], fpr x, unsigned logn) {

 size_t n, u;

 n = (size_t) 1 << logn;

 VITIS_LOOP_562_1: for (u = 0; u < n; u++) {
#pragma HLS LOOP_TRIPCOUNT max=186
 a[u] = fpr_mul(a[u], x);
 }
}







void poly_mul_autoadj_fft(fpr *a, const fpr *b, unsigned logn) {

 size_t n, hn, u;

 n = (size_t) 1 << logn;
 hn = n >> 1;
 VITIS_LOOP_580_1: for (u = 0; u < hn; u++) {
#pragma HLS LOOP_TRIPCOUNT max=102
 a[u] = fpr_mul(a[u], b[u]);
  a[u + hn] = fpr_mul(a[u + hn], b[u]);
 }
}

void FFT_top(fpr f[1024]) {

 FFT(f, 10);
 FFT(f, 9);
 FFT(f, 8);
 FFT(f, 7);
 FFT(f, 6);
 FFT(f, 5);
 FFT(f, 4);
 FFT(f, 3);
 FFT(f, 2);
 FFT(f, 1);

}

void FFT_stub(fpr f[1024], unsigned logn) {
#pragma HLS INTERFACE m_axi port=f bundle=gmem0 offset=slave depth=1024
#pragma HLS INTERFACE s_axilite port=return

#pragma HLS dataflow
 fpr Stage_R[2][512], Stage_I[2][512];
#pragma HLS array_partition variable=Stage_R dim=1 complete
#pragma HLS array_partition variable=Stage_I dim=1 complete

 unsigned u;
 size_t t, n, hn, m;

 switch (logn) {
 case 10:

  logn = 10;

  n = (size_t) 1 << logn;
  hn = n >> 1;
  t = hn;

  memcpy(Stage_R[0], f, hn * 8);
  memcpy(Stage_I[0], f + hn, hn * 8);

  VITIS_LOOP_626_1: for (u = 1, m = 2; u < logn; u++, m <<= 1) {
#pragma HLS unroll

 size_t ht, hm, i1, j1;

   ht = t >> 1;
   hm = m >> 1;
   FFT_stage(Stage_R[(u - 1) % 2], Stage_I[(u - 1) % 2],
     Stage_R[u % 2], Stage_I[u % 2], hm, ht, t, m);
   t = ht;
  }
  memcpy(f, Stage_R[(u - 1) % 2], hn * 8);
  memcpy(f + hn, Stage_I[(u - 1) % 2], hn * 8);
  break;
 case 9:

  logn = 9;

  n = (size_t) 1 << logn;
  hn = n >> 1;
  t = hn;

  memcpy(Stage_R[0], f, hn * 8);
  memcpy(Stage_I[0], f + hn, hn * 8);

  VITIS_LOOP_651_2: for (u = 1, m = 2; u < logn; u++, m <<= 1) {
#pragma HLS unroll

 size_t ht, hm, i1, j1;

   ht = t >> 1;
   hm = m >> 1;
   FFT_stage(Stage_R[(u - 1) % 2], Stage_I[(u - 1) % 2],
     Stage_R[u % 2], Stage_I[u % 2], hm, ht, t, m);
   t = ht;
  }
  memcpy(f, Stage_R[(u - 1) % 2], hn * 8);
  memcpy(f + hn, Stage_I[(u - 1) % 2], hn * 8);
  break;
 case 8:

  logn = 8;

  n = (size_t) 1 << logn;
  hn = n >> 1;
  t = hn;

  memcpy(Stage_R[0], f, hn * 8);
  memcpy(Stage_I[0], f + hn, hn * 8);

  VITIS_LOOP_676_3: for (u = 1, m = 2; u < logn; u++, m <<= 1) {
#pragma HLS unroll

 size_t ht, hm, i1, j1;

   ht = t >> 1;
   hm = m >> 1;
   FFT_stage(Stage_R[(u - 1) % 2], Stage_I[(u - 1) % 2],
     Stage_R[u % 2], Stage_I[u % 2], hm, ht, t, m);
   t = ht;
  }
  memcpy(f, Stage_R[(u - 1) % 2], hn * 8);
  memcpy(f + hn, Stage_I[(u - 1) % 2], hn * 8);
  break;
 case 7:

  logn = 7;

  n = (size_t) 1 << logn;
  hn = n >> 1;
  t = hn;

  memcpy(Stage_R[0], f, hn * 8);
  memcpy(Stage_I[0], f + hn, hn * 8);

  VITIS_LOOP_701_4: for (u = 1, m = 2; u < logn; u++, m <<= 1) {
#pragma HLS unroll

 size_t ht, hm, i1, j1;

   ht = t >> 1;
   hm = m >> 1;
   FFT_stage(Stage_R[(u - 1) % 2], Stage_I[(u - 1) % 2],
     Stage_R[u % 2], Stage_I[u % 2], hm, ht, t, m);
   t = ht;
  }
  memcpy(f, Stage_R[(u - 1) % 2], hn * 8);
  memcpy(f + hn, Stage_I[(u - 1) % 2], hn * 8);
  break;
 case 6:

  logn = 6;

  n = (size_t) 1 << logn;
  hn = n >> 1;
  t = hn;

  memcpy(Stage_R[0], f, hn * 8);
  memcpy(Stage_I[0], f + hn, hn * 8);

  VITIS_LOOP_726_5: for (u = 1, m = 2; u < logn; u++, m <<= 1) {
#pragma HLS unroll

 size_t ht, hm, i1, j1;

   ht = t >> 1;
   hm = m >> 1;
   FFT_stage(Stage_R[(u - 1) % 2], Stage_I[(u - 1) % 2],
     Stage_R[u % 2], Stage_I[u % 2], hm, ht, t, m);
   t = ht;
  }
  memcpy(f, Stage_R[(u - 1) % 2], hn * 8);
  memcpy(f + hn, Stage_I[(u - 1) % 2], hn * 8);
  break;
 case 5:

  logn = 5;

  n = (size_t) 1 << logn;
  hn = n >> 1;
  t = hn;

  memcpy(Stage_R[0], f, hn * 8);
  memcpy(Stage_I[0], f + hn, hn * 8);

  VITIS_LOOP_751_6: for (u = 1, m = 2; u < logn; u++, m <<= 1) {
#pragma HLS unroll

 size_t ht, hm, i1, j1;

   ht = t >> 1;
   hm = m >> 1;
   FFT_stage(Stage_R[(u - 1) % 2], Stage_I[(u - 1) % 2],
     Stage_R[u % 2], Stage_I[u % 2], hm, ht, t, m);
   t = ht;
  }
  memcpy(f, Stage_R[(u - 1) % 2], hn * 8);
  memcpy(f + hn, Stage_I[(u - 1) % 2], hn * 8);
  break;
 case 4:

  logn = 4;

  n = (size_t) 1 << logn;
  hn = n >> 1;
  t = hn;

  memcpy(Stage_R[0], f, hn * 8);
  memcpy(Stage_I[0], f + hn, hn * 8);

  VITIS_LOOP_776_7: for (u = 1, m = 2; u < logn; u++, m <<= 1) {
#pragma HLS unroll

 size_t ht, hm, i1, j1;

   ht = t >> 1;
   hm = m >> 1;
   FFT_stage(Stage_R[(u - 1) % 2], Stage_I[(u - 1) % 2],
     Stage_R[u % 2], Stage_I[u % 2], hm, ht, t, m);
   t = ht;
  }
  memcpy(f, Stage_R[(u - 1) % 2], hn * 8);
  memcpy(f + hn, Stage_I[(u - 1) % 2], hn * 8);
  break;
 case 3:

  logn = 3;

  n = (size_t) 1 << logn;
  hn = n >> 1;
  t = hn;

  memcpy(Stage_R[0], f, hn * 8);
  memcpy(Stage_I[0], f + hn, hn * 8);

  VITIS_LOOP_801_8: for (u = 1, m = 2; u < logn; u++, m <<= 1) {
#pragma HLS unroll

 size_t ht, hm, i1, j1;

   ht = t >> 1;
   hm = m >> 1;
   FFT_stage(Stage_R[(u - 1) % 2], Stage_I[(u - 1) % 2],
     Stage_R[u % 2], Stage_I[u % 2], hm, ht, t, m);
   t = ht;
  }
  memcpy(f, Stage_R[(u - 1) % 2], hn * 8);
  memcpy(f + hn, Stage_I[(u - 1) % 2], hn * 8);
  break;
 case 2:

  logn = 2;

  n = (size_t) 1 << logn;
  hn = n >> 1;
  t = hn;

  memcpy(Stage_R[0], f, hn * 8);
  memcpy(Stage_I[0], f + hn, hn * 8);

  VITIS_LOOP_826_9: for (u = 1, m = 2; u < logn; u++, m <<= 1) {
#pragma HLS unroll

 size_t ht, hm, i1, j1;

   ht = t >> 1;
   hm = m >> 1;
   FFT_stage(Stage_R[(u - 1) % 2], Stage_I[(u - 1) % 2],
     Stage_R[u % 2], Stage_I[u % 2], hm, ht, t, m);
   t = ht;
  }
  memcpy(f, Stage_R[(u - 1) % 2], hn * 8);
  memcpy(f + hn, Stage_I[(u - 1) % 2], hn * 8);
  break;
 case 1:

  logn = 1;

  n = (size_t) 1 << logn;
  hn = n >> 1;
  t = hn;

  memcpy(Stage_R[0], f, hn * 8);
  memcpy(Stage_I[0], f + hn, hn * 8);

  VITIS_LOOP_851_10: for (u = 1, m = 2; u < logn; u++, m <<= 1) {
#pragma HLS unroll

 size_t ht, hm, i1, j1;

   ht = t >> 1;
   hm = m >> 1;
   FFT_stage(Stage_R[(u - 1) % 2], Stage_I[(u - 1) % 2],
     Stage_R[u % 2], Stage_I[u % 2], hm, ht, t, m);
   t = ht;
  }
  memcpy(f, Stage_R[(u - 1) % 2], hn * 8);
  memcpy(f + hn, Stage_I[(u - 1) % 2], hn * 8);
  break;
 default:
  return;
 }
}

void FFT_stage(fpr in_r[], fpr in_i[], fpr out_r[], fpr out_i[], int hm, int ht,
  int t, int m) {
 loop2: for (int i1 = 0, j1 = 0; i1 < hm; i1++, j1 += t) {
  size_t j, j2;

  j2 = j1 + ht;
  fpr s_re, s_im;

  s_re = fpr_gm_tab[((m + i1) << 1) + 0];
  s_im = fpr_gm_tab[((m + i1) << 1) + 1];

  loop3: for (j = j1; j < j2; j++) {
#pragma HLS pipeline
#pragma HLS LOOP_TRIPCOUNT max=1
 fpr temp_R = in_r[j + ht] * s_re - in_i[j + ht] * s_im;
   fpr temp_I = in_i[j + ht] * s_re + in_r[j + ht] * s_im;
   out_r[j + ht] = in_r[j] - temp_R;
   out_i[j + ht] = in_i[j] - temp_I;
   out_r[j] = in_r[j] + temp_R;
   out_i[j] = in_i[j] + temp_I;
  }
 }
}
# 901 "../FalconHLS/code_hls/fft.c"
void FFT(fpr f[1024], unsigned logn) {
# 935 "../FalconHLS/code_hls/fft.c"
 unsigned u;
 size_t t, n, hn, m;
# 949 "../FalconHLS/code_hls/fft.c"
 n = (size_t) 1 << logn;
 hn = n >> 1;
 t = hn;

 VITIS_LOOP_953_1: for (u = 1, m = 2; u < logn; u++, m <<= 1) {
#pragma HLS LOOP_TRIPCOUNT max=9
 size_t ht, hm, i1, j1;

  ht = t >> 1;
  hm = m >> 1;
  VITIS_LOOP_959_2: for (i1 = 0, j1 = 0; i1 < hm; i1++, j1 += t) {
#pragma HLS LOOP_TRIPCOUNT max=56
 size_t j, j2;
   j2 = j1 + ht;
   fpr s_re, s_im;

   s_re = fpr_gm_tab[((m + i1) << 1) + 0];
   s_im = fpr_gm_tab[((m + i1) << 1) + 1];

   VITIS_LOOP_968_3: for (j = j1; j < j2; j++) {
#pragma HLS LOOP_TRIPCOUNT max=56
 fpr x_re, x_im, y_re, y_im;

    x_re = f[j];
    x_im = f[j + hn];
    y_re = f[j + ht];
    y_im = f[j + ht + hn];
    FPC_MUL(&y_re, &y_im, y_re, y_im, s_re, s_im);
    FPC_ADD(&f[j], &f[j + hn], x_re, x_im, y_re, y_im);
    FPC_SUB(&f[j + ht], &f[j + ht + hn], x_re, x_im, y_re, y_im);
   }
  }
  t = ht;
 }
}
# 993 "../FalconHLS/code_hls/fft.c"
void iFFT_top(fpr f[1024]) {
# 1008 "../FalconHLS/code_hls/fft.c"
 iFFT(f, 10);
 iFFT(f, 9);
 iFFT(f, 8);
 iFFT(f, 7);
 iFFT(f, 6);
 iFFT(f, 5);
 iFFT(f, 4);
 iFFT(f, 3);
 iFFT(f, 2);
 iFFT(f, 1);

}

void iFFT_stub(fpr f[1024], unsigned logn) {



#pragma HLS dataflow

 size_t u, n, hn, t, m, i;

 fpr Stage_R[2][512], Stage_I[2][512];
#pragma HLS array_partition variable=Stage_R dim=1 complete
#pragma HLS array_partition variable=Stage_I dim=1 complete

 switch (logn) {
 case 10:
  n = (size_t) 1 << 10;
  t = 1;
  m = n;
  hn = n >> 1;
  u = 10;
  memcpy(Stage_R[0], f, hn * 8);
  memcpy(Stage_I[0], f + hn, hn * 8);
  VITIS_LOOP_1042_1: for (u, i = 1; u > 1; u--, ++i) {
#pragma HLS unroll

 size_t hm, dt;
   hm = m >> 1;
   dt = t << 1;

   iFFT_stage(Stage_R[(i - 1) % 2], Stage_I[(i - 1) % 2],
     Stage_R[i % 2], Stage_I[i % 2], hn, dt, t, hm);
   t = dt;
   m = hm;

  }

  if (logn > 0) {
   fpr ni;

   ni = fpr_p2_tab[logn];
   VITIS_LOOP_1060_2: for (u = 0; u < n / 2; u++) {
    f[u] = fpr_mul(Stage_R[(i - 1) % 2][u], ni);
    f[u + hn] = fpr_mul(Stage_I[(i - 1) % 2][u], ni);
   }
  }

  break;
 case 9:
  n = (size_t) 1 << 9;
  t = 1;
  m = n;
  hn = n >> 1;
  u = 9;

  memcpy(Stage_R[0], f, hn * 8);
  memcpy(Stage_I[0], f + hn, hn * 8);
  VITIS_LOOP_1076_3: for (u, i = 1; u > 1; u--, ++i) {
#pragma HLS unroll

 size_t hm, dt;
   hm = m >> 1;
   dt = t << 1;

   iFFT_stage(Stage_R[(i - 1) % 2], Stage_I[(i - 1) % 2],
     Stage_R[i % 2], Stage_I[i % 2], hn, dt, t, hm);
   t = dt;
   m = hm;

  }

  if (logn > 0) {
   fpr ni;

   ni = fpr_p2_tab[logn];
   VITIS_LOOP_1094_4: for (u = 0; u < n / 2; u++) {
    f[u] = fpr_mul(Stage_R[(i - 1) % 2][u], ni);
    f[u + hn] = fpr_mul(Stage_I[(i - 1) % 2][u], ni);
   }
  }

  break;
 case 8:
  n = (size_t) 1 << 8;
  t = 1;
  m = n;
  hn = n >> 1;
  u = 8;

  memcpy(Stage_R[0], f, hn * 8);
  memcpy(Stage_I[0], f + hn, hn * 8);
  VITIS_LOOP_1110_5: for (u, i = 1; u > 1; u--, ++i) {
#pragma HLS unroll

 size_t hm, dt;
   hm = m >> 1;
   dt = t << 1;

   iFFT_stage(Stage_R[(i - 1) % 2], Stage_I[(i - 1) % 2],
     Stage_R[i % 2], Stage_I[i % 2], hn, dt, t, hm);
   t = dt;
   m = hm;

  }

  if (logn > 0) {
   fpr ni;

   ni = fpr_p2_tab[logn];
   VITIS_LOOP_1128_6: for (u = 0; u < n / 2; u++) {
    f[u] = fpr_mul(Stage_R[(i - 1) % 2][u], ni);
    f[u + hn] = fpr_mul(Stage_I[(i - 1) % 2][u], ni);
   }
  }

  break;
 case 7:
  n = (size_t) 1 << 7;
  t = 1;
  m = n;
  hn = n >> 1;
  u = 7;

  memcpy(Stage_R[0], f, hn * 8);
  memcpy(Stage_I[0], f + hn, hn * 8);
  VITIS_LOOP_1144_7: for (u, i = 1; u > 1; u--, ++i) {
#pragma HLS unroll

 size_t hm, dt;
   hm = m >> 1;
   dt = t << 1;

   iFFT_stage(Stage_R[(i - 1) % 2], Stage_I[(i - 1) % 2],
     Stage_R[i % 2], Stage_I[i % 2], hn, dt, t, hm);
   t = dt;
   m = hm;

  }

  if (logn > 0) {
   fpr ni;

   ni = fpr_p2_tab[logn];
   VITIS_LOOP_1162_8: for (u = 0; u < n / 2; u++) {
    f[u] = fpr_mul(Stage_R[(i - 1) % 2][u], ni);
    f[u + hn] = fpr_mul(Stage_I[(i - 1) % 2][u], ni);
   }
  }

  break;
 case 6:
  n = (size_t) 1 << 6;
  t = 1;
  m = n;
  hn = n >> 1;
  u = 6;

  memcpy(Stage_R[0], f, hn * 8);
  memcpy(Stage_I[0], f + hn, hn * 8);
  VITIS_LOOP_1178_9: for (u, i = 1; u > 1; u--, ++i) {
#pragma HLS unroll

 size_t hm, dt;
   hm = m >> 1;
   dt = t << 1;

   iFFT_stage(Stage_R[(i - 1) % 2], Stage_I[(i - 1) % 2],
     Stage_R[i % 2], Stage_I[i % 2], hn, dt, t, hm);
   t = dt;
   m = hm;

  }

  if (logn > 0) {
   fpr ni;

   ni = fpr_p2_tab[logn];
   VITIS_LOOP_1196_10: for (u = 0; u < n / 2; u++) {
    f[u] = fpr_mul(Stage_R[(i - 1) % 2][u], ni);
    f[u + hn] = fpr_mul(Stage_I[(i - 1) % 2][u], ni);
   }
  }

  break;
 case 5:
  n = (size_t) 1 << 5;
  t = 1;
  m = n;
  hn = n >> 1;
  u = 5;

  memcpy(Stage_R[0], f, hn * 8);
  memcpy(Stage_I[0], f + hn, hn * 8);
  VITIS_LOOP_1212_11: for (u, i = 1; u > 1; u--, ++i) {
#pragma HLS unroll

 size_t hm, dt;
   hm = m >> 1;
   dt = t << 1;

   iFFT_stage(Stage_R[(i - 1) % 2], Stage_I[(i - 1) % 2],
     Stage_R[i % 2], Stage_I[i % 2], hn, dt, t, hm);
   t = dt;
   m = hm;

  }

  if (logn > 0) {
   fpr ni;

   ni = fpr_p2_tab[logn];
   VITIS_LOOP_1230_12: for (u = 0; u < n / 2; u++) {
    f[u] = fpr_mul(Stage_R[(i - 1) % 2][u], ni);
    f[u + hn] = fpr_mul(Stage_I[(i - 1) % 2][u], ni);
   }
  }

  break;
 case 4:
  n = (size_t) 1 << 4;
  t = 1;
  m = n;
  hn = n >> 1;
  u = 4;

  memcpy(Stage_R[0], f, hn * 8);
  memcpy(Stage_I[0], f + hn, hn * 8);
  VITIS_LOOP_1246_13: for (u, i = 1; u > 1; u--, ++i) {
#pragma HLS unroll

 size_t hm, dt;
   hm = m >> 1;
   dt = t << 1;

   iFFT_stage(Stage_R[(i - 1) % 2], Stage_I[(i - 1) % 2],
     Stage_R[i % 2], Stage_I[i % 2], hn, dt, t, hm);
   t = dt;
   m = hm;

  }

  if (logn > 0) {
   fpr ni;

   ni = fpr_p2_tab[logn];
   VITIS_LOOP_1264_14: for (u = 0; u < n / 2; u++) {
    f[u] = fpr_mul(Stage_R[(i - 1) % 2][u], ni);
    f[u + hn] = fpr_mul(Stage_I[(i - 1) % 2][u], ni);
   }
  }

  break;
 case 3:
  n = (size_t) 1 << 3;
  t = 1;
  m = n;
  hn = n >> 1;
  u = 3;

  memcpy(Stage_R[0], f, hn * 8);
  memcpy(Stage_I[0], f + hn, hn * 8);
  VITIS_LOOP_1280_15: for (u, i = 1; u > 1; u--, ++i) {
#pragma HLS unroll

 size_t hm, dt;
   hm = m >> 1;
   dt = t << 1;

   iFFT_stage(Stage_R[(i - 1) % 2], Stage_I[(i - 1) % 2],
     Stage_R[i % 2], Stage_I[i % 2], hn, dt, t, hm);
   t = dt;
   m = hm;

  }

  if (logn > 0) {
   fpr ni;

   ni = fpr_p2_tab[logn];
   VITIS_LOOP_1298_16: for (u = 0; u < n / 2; u++) {
    f[u] = fpr_mul(Stage_R[(i - 1) % 2][u], ni);
    f[u + hn] = fpr_mul(Stage_I[(i - 1) % 2][u], ni);
   }
  }

  break;
 case 2:
  n = (size_t) 1 << 2;
  t = 1;
  m = n;
  hn = n >> 1;
  u = 2;

  memcpy(Stage_R[0], f, hn * 8);
  memcpy(Stage_I[0], f + hn, hn * 8);
  VITIS_LOOP_1314_17: for (u, i = 1; u > 1; u--, ++i) {
#pragma HLS unroll

 size_t hm, dt;
   hm = m >> 1;
   dt = t << 1;

   iFFT_stage(Stage_R[(i - 1) % 2], Stage_I[(i - 1) % 2],
     Stage_R[i % 2], Stage_I[i % 2], hn, dt, t, hm);
   t = dt;
   m = hm;

  }

  if (logn > 0) {
   fpr ni;

   ni = fpr_p2_tab[logn];
   VITIS_LOOP_1332_18: for (u = 0; u < n / 2; u++) {
    f[u] = fpr_mul(Stage_R[(i - 1) % 2][u], ni);
    f[u + hn] = fpr_mul(Stage_I[(i - 1) % 2][u], ni);
   }
  }

  break;
 case 1:
  n = (size_t) 1 << 1;
  t = 1;
  m = n;
  hn = n >> 1;
  u = 1;

  memcpy(Stage_R[0], f, hn * 8);
  memcpy(Stage_I[0], f + hn, hn * 8);
  VITIS_LOOP_1348_19: for (u, i = 1; u > 1; u--, ++i) {
#pragma HLS unroll

 size_t hm, dt;
   hm = m >> 1;
   dt = t << 1;

   iFFT_stage(Stage_R[(i - 1) % 2], Stage_I[(i - 1) % 2],
     Stage_R[i % 2], Stage_I[i % 2], hn, dt, t, hm);
   t = dt;
   m = hm;

  }

  if (logn > 0) {
   fpr ni;

   ni = fpr_p2_tab[logn];
   VITIS_LOOP_1366_20: for (u = 0; u < n / 2; u++) {
    f[u] = fpr_mul(Stage_R[(i - 1) % 2][u], ni);
    f[u + hn] = fpr_mul(Stage_I[(i - 1) % 2][u], ni);
   }
  }

  break;
 default:
  return;
 }

}

void iFFT_stage(fpr in_r[], fpr in_i[], fpr out_r[], fpr out_i[], int hn,
  int dt, int t, int hm) {
 loop2: for (int i1 = 0, j1 = 0; j1 < hn; i1++, j1 += dt) {

  size_t j, j2;

  j2 = j1 + t;
  fpr s_re, s_im;

  s_re = fpr_gm_tab[((hm + i1) << 1) + 0];
  s_im = fpr_neg(fpr_gm_tab[((hm + i1) << 1) + 1]);

  loop3: for (j = j1; j < j2; j++) {
#pragma HLS pipeline
#pragma HLS LOOP_TRIPCOUNT max=1
 out_r[j] = in_r[j] + in_r[j + t];
   out_i[j] = in_i[j] + in_i[j + t];
   fpr temp_R = in_r[j] - in_r[j + t];
   fpr temp_I = in_i[j] - in_i[j + t];
   out_r[j + t] = temp_R * s_re - temp_I * s_im;
   out_i[j + t] = temp_I * s_re + temp_R * s_im;
  }
 }
}

void iFFT(fpr *f, unsigned logn) {
# 1447 "../FalconHLS/code_hls/fft.c"
 size_t u, n, hn, t, m;

 n = (size_t) 1 << logn;
 t = 1;
 m = n;
 hn = n >> 1;
 VITIS_LOOP_1453_1: for (u = logn; u > 1; u--) {
#pragma HLS LOOP_TRIPCOUNT min=0 max=1
 size_t hm, dt, i1, j1;

  hm = m >> 1;
  dt = t << 1;
  VITIS_LOOP_1459_2: for (i1 = 0, j1 = 0; j1 < hn; i1++, j1 += dt) {
#pragma HLS LOOP_TRIPCOUNT min=0 max=1
 size_t j, j2;

   j2 = j1 + t;
   fpr s_re, s_im;

   s_re = fpr_gm_tab[((hm + i1) << 1) + 0];
   s_im = fpr_neg(fpr_gm_tab[((hm + i1) << 1) + 1]);
   VITIS_LOOP_1468_3: for (j = j1; j < j2; j++) {
#pragma HLS LOOP_TRIPCOUNT min=0 max=2305
 fpr x_re, x_im, y_re, y_im;

    x_re = f[j];
    x_im = f[j + hn];
    y_re = f[j + t];
    y_im = f[j + t + hn];
    FPC_ADD(&f[j], &f[j + hn], x_re, x_im, y_re, y_im);
    FPC_SUB(&x_re, &x_im, x_re, x_im, y_re, y_im);
    FPC_MUL(&f[j + t], &f[j + t + hn], x_re, x_im, s_re, s_im);
   }
  }
  t = dt;
  m = hm;
 }





 if (logn > 0) {
  fpr ni;

  ni = fpr_p2_tab[logn];
  VITIS_LOOP_1493_4: for (u = 0; u < n; u++) {
   f[u] = fpr_mul(f[u], ni);
  }
 }
}
