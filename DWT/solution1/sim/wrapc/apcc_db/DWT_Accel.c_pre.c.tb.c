/* Provide Declarations */
#include <stdarg.h>
#include <setjmp.h>
#include <limits.h>
#ifdef NEED_CBEAPINT
#include <autopilot_cbe.h>
#else
#define aesl_fopen fopen
#define aesl_freopen freopen
#define aesl_tmpfile tmpfile
#endif
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#ifdef __STRICT_ANSI__
#define inline __inline__
#define typeof __typeof__ 
#endif
#define __isoc99_fscanf fscanf
#define __isoc99_sscanf sscanf
#undef ferror
#undef feof
/* get a declaration for alloca */
#if defined(__CYGWIN__) || defined(__MINGW32__)
#define  alloca(x) __builtin_alloca((x))
#define _alloca(x) __builtin_alloca((x))
#elif defined(__APPLE__)
extern void *__builtin_alloca(unsigned long);
#define alloca(x) __builtin_alloca(x)
#define longjmp _longjmp
#define setjmp _setjmp
#elif defined(__sun__)
#if defined(__sparcv9)
extern void *__builtin_alloca(unsigned long);
#else
extern void *__builtin_alloca(unsigned int);
#endif
#define alloca(x) __builtin_alloca(x)
#elif defined(__FreeBSD__) || defined(__NetBSD__) || defined(__OpenBSD__) || defined(__DragonFly__) || defined(__arm__)
#define alloca(x) __builtin_alloca(x)
#elif defined(_MSC_VER)
#define inline _inline
#define alloca(x) _alloca(x)
#else
#include <alloca.h>
#endif

#ifndef __GNUC__  /* Can only support "linkonce" vars with GCC */
#define __attribute__(X)
#endif

#if defined(__GNUC__) && defined(__APPLE_CC__)
#define __EXTERNAL_WEAK__ __attribute__((weak_import))
#elif defined(__GNUC__)
#define __EXTERNAL_WEAK__ __attribute__((weak))
#else
#define __EXTERNAL_WEAK__
#endif

#if defined(__GNUC__) && (defined(__APPLE_CC__) || defined(__CYGWIN__) || defined(__MINGW32__))
#define __ATTRIBUTE_WEAK__
#elif defined(__GNUC__)
#define __ATTRIBUTE_WEAK__ __attribute__((weak))
#else
#define __ATTRIBUTE_WEAK__
#endif

#if defined(__GNUC__)
#define __HIDDEN__ __attribute__((visibility("hidden")))
#endif

#ifdef __GNUC__
#define LLVM_NAN(NanStr)   __builtin_nan(NanStr)   /* Double */
#define LLVM_NANF(NanStr)  __builtin_nanf(NanStr)  /* Float */
#define LLVM_NANS(NanStr)  __builtin_nans(NanStr)  /* Double */
#define LLVM_NANSF(NanStr) __builtin_nansf(NanStr) /* Float */
#define LLVM_INF           __builtin_inf()         /* Double */
#define LLVM_INFF          __builtin_inff()        /* Float */
#define LLVM_PREFETCH(addr,rw,locality) __builtin_prefetch(addr,rw,locality)
#define __ATTRIBUTE_CTOR__ __attribute__((constructor))
#define __ATTRIBUTE_DTOR__ __attribute__((destructor))
#define LLVM_ASM           __asm__
#else
#define LLVM_NAN(NanStr)   ((double)0.0)           /* Double */
#define LLVM_NANF(NanStr)  0.0F                    /* Float */
#define LLVM_NANS(NanStr)  ((double)0.0)           /* Double */
#define LLVM_NANSF(NanStr) 0.0F                    /* Float */
#define LLVM_INF           ((double)0.0)           /* Double */
#define LLVM_INFF          0.0F                    /* Float */
#define LLVM_PREFETCH(addr,rw,locality)            /* PREFETCH */
#define __ATTRIBUTE_CTOR__
#define __ATTRIBUTE_DTOR__
#define LLVM_ASM(X)
#endif

#if __GNUC__ < 4 /* Old GCC's, or compilers not GCC */ 
#define __builtin_stack_save() 0   /* not implemented */
#define __builtin_stack_restore(X) /* noop */
#endif

#if __GNUC__ && __LP64__ /* 128-bit integer types */
typedef int __attribute__((mode(TI))) llvmInt128;
typedef unsigned __attribute__((mode(TI))) llvmUInt128;
#endif

#define CODE_FOR_MAIN() /* Any target-specific code for main()*/

#ifndef __cplusplus
typedef unsigned char bool;
#endif


/* Support for floating point constants */
typedef unsigned long long ConstantDoubleTy;
typedef unsigned int        ConstantFloatTy;
typedef struct { unsigned long long f1; unsigned short f2; unsigned short pad[3]; } ConstantFP80Ty;
typedef struct { unsigned long long f1; unsigned long long f2; } ConstantFP128Ty;


/* Global Declarations */
/* Helper union for bitcasts */
typedef union {
  unsigned int Int32;
  unsigned long long Int64;
  float Float;
  double Double;
} llvmBitCastUnion;

/* Function Declarations */
double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);
void DWT_Accel( char (*llvm_cbe_a)[480][640],  char (*llvm_cbe_b)[480][640],  char (*llvm_cbe_c)[480][640]);
void DWT_color( char (*llvm_cbe_A)[480][640]);
void DWT_IR( char (*llvm_cbe_B)[480][640]);
void Filter( char (*llvm_cbe_A)[480][640],  char (*llvm_cbe_B)[480][640],  char (*llvm_cbe_C)[480][640]);
void IDWT( char (*llvm_cbe_C)[480][640]);
void read_color( char (*llvm_cbe_a)[480][640],  char (*llvm_cbe_A_buffer)[480][640]);
void read_IR( char (*llvm_cbe_b)[480][640],  char (*llvm_cbe_B_buffer)[480][640]);
void write_image( char (*llvm_cbe_C_buffer)[480][640],  char (*llvm_cbe_c)[480][640]);


/* Function Bodies */
static inline int llvm_fcmp_ord(double X, double Y) { return X == X && Y == Y; }
static inline int llvm_fcmp_uno(double X, double Y) { return X != X || Y != Y; }
static inline int llvm_fcmp_ueq(double X, double Y) { return X == Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_une(double X, double Y) { return X != Y; }
static inline int llvm_fcmp_ult(double X, double Y) { return X <  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ugt(double X, double Y) { return X >  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ule(double X, double Y) { return X <= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_uge(double X, double Y) { return X >= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_oeq(double X, double Y) { return X == Y ; }
static inline int llvm_fcmp_one(double X, double Y) { return X != Y && llvm_fcmp_ord(X, Y); }
static inline int llvm_fcmp_olt(double X, double Y) { return X <  Y ; }
static inline int llvm_fcmp_ogt(double X, double Y) { return X >  Y ; }
static inline int llvm_fcmp_ole(double X, double Y) { return X <= Y ; }
static inline int llvm_fcmp_oge(double X, double Y) { return X >= Y ; }

void DWT_Accel( char (*llvm_cbe_a)[480][640],  char (*llvm_cbe_b)[480][640],  char (*llvm_cbe_c)[480][640]) {
  static  unsigned long long aesl_llvm_cbe_1_count = 0;
  static  unsigned long long aesl_llvm_cbe_2_count = 0;
  static  unsigned long long aesl_llvm_cbe_3_count = 0;
  static  unsigned long long aesl_llvm_cbe_4_count = 0;
  static  unsigned long long aesl_llvm_cbe_5_count = 0;
  static  unsigned long long aesl_llvm_cbe_6_count = 0;
  static  unsigned long long aesl_llvm_cbe_7_count = 0;
  static  unsigned long long aesl_llvm_cbe_8_count = 0;
  static  unsigned long long aesl_llvm_cbe_9_count = 0;
  static  unsigned long long aesl_llvm_cbe_10_count = 0;
  static  unsigned long long aesl_llvm_cbe_11_count = 0;
  static  unsigned long long aesl_llvm_cbe_12_count = 0;
  static  unsigned long long aesl_llvm_cbe_13_count = 0;
  static  unsigned long long aesl_llvm_cbe_14_count = 0;
const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @DWT_Accel\n");
if (AESL_DEBUG_TRACE)
printf("\n  tail call void @DWT_color([480 x [640 x i8]]* %%a), !dbg !5 for 0x%I64xth hint within @DWT_Accel  --> \n", ++aesl_llvm_cbe_10_count);
   /*tail*/ DWT_color(llvm_cbe_a);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  tail call void @DWT_IR([480 x [640 x i8]]* %%b), !dbg !6 for 0x%I64xth hint within @DWT_Accel  --> \n", ++aesl_llvm_cbe_11_count);
   /*tail*/ DWT_IR(llvm_cbe_b);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  tail call void @Filter([480 x [640 x i8]]* %%a, [480 x [640 x i8]]* %%b, [480 x [640 x i8]]* %%c), !dbg !6 for 0x%I64xth hint within @DWT_Accel  --> \n", ++aesl_llvm_cbe_12_count);
   /*tail*/ Filter(llvm_cbe_a, llvm_cbe_b, llvm_cbe_c);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  tail call void @IDWT([480 x [640 x i8]]* %%c), !dbg !6 for 0x%I64xth hint within @DWT_Accel  --> \n", ++aesl_llvm_cbe_13_count);
   /*tail*/ IDWT(llvm_cbe_c);
if (AESL_DEBUG_TRACE) {
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @DWT_Accel}\n");
  return;
}


void DWT_color( char (*llvm_cbe_A)[480][640]) {
  static  unsigned long long aesl_llvm_cbe_tempr_count = 0;
   char llvm_cbe_tempr[640];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_tempc_count = 0;
   char llvm_cbe_tempc[480];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_15_count = 0;
  static  unsigned long long aesl_llvm_cbe_16_count = 0;
  static  unsigned long long aesl_llvm_cbe_17_count = 0;
  static  unsigned long long aesl_llvm_cbe_18_count = 0;
  static  unsigned long long aesl_llvm_cbe_19_count = 0;
  static  unsigned long long aesl_llvm_cbe_20_count = 0;
  static  unsigned long long aesl_llvm_cbe_21_count = 0;
  static  unsigned long long aesl_llvm_cbe_22_count = 0;
  static  unsigned long long aesl_llvm_cbe_23_count = 0;
  static  unsigned long long aesl_llvm_cbe_24_count = 0;
  static  unsigned long long aesl_llvm_cbe_25_count = 0;
  static  unsigned long long aesl_llvm_cbe_26_count = 0;
  static  unsigned long long aesl_llvm_cbe_27_count = 0;
  static  unsigned long long aesl_llvm_cbe_28_count = 0;
  static  unsigned long long aesl_llvm_cbe_29_count = 0;
  static  unsigned long long aesl_llvm_cbe_30_count = 0;
  static  unsigned long long aesl_llvm_cbe_31_count = 0;
  static  unsigned long long aesl_llvm_cbe_32_count = 0;
  static  unsigned long long aesl_llvm_cbe_33_count = 0;
  static  unsigned long long aesl_llvm_cbe_34_count = 0;
  static  unsigned long long aesl_llvm_cbe_35_count = 0;
  static  unsigned long long aesl_llvm_cbe_36_count = 0;
  static  unsigned long long aesl_llvm_cbe_37_count = 0;
  static  unsigned long long aesl_llvm_cbe_38_count = 0;
  static  unsigned long long aesl_llvm_cbe_39_count = 0;
  static  unsigned long long aesl_llvm_cbe_40_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge22_count = 0;
  unsigned int llvm_cbe_storemerge22;
  unsigned int llvm_cbe_storemerge22__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_41_count = 0;
  static  unsigned long long aesl_llvm_cbe_42_count = 0;
  unsigned int llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe_43_count = 0;
  static  unsigned long long aesl_llvm_cbe_44_count = 0;
  static  unsigned long long aesl_llvm_cbe_45_count = 0;
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  unsigned int llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
  static  unsigned long long aesl_llvm_cbe_51_count = 0;
  static  unsigned long long aesl_llvm_cbe_52_count = 0;
  static  unsigned long long aesl_llvm_cbe_53_count = 0;
  static  unsigned long long aesl_llvm_cbe_54_count = 0;
  static  unsigned long long aesl_llvm_cbe_55_count = 0;
  static  unsigned long long aesl_llvm_cbe_56_count = 0;
  static  unsigned long long aesl_llvm_cbe_57_count = 0;
  static  unsigned long long aesl_llvm_cbe_58_count = 0;
  static  unsigned long long aesl_llvm_cbe_59_count = 0;
  static  unsigned long long aesl_llvm_cbe_60_count = 0;
  static  unsigned long long aesl_llvm_cbe_61_count = 0;
  unsigned int llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_62_count = 0;
  static  unsigned long long aesl_llvm_cbe_63_count = 0;
  static  unsigned long long aesl_llvm_cbe_64_count = 0;
  static  unsigned long long aesl_llvm_cbe_65_count = 0;
  static  unsigned long long aesl_llvm_cbe_66_count = 0;
  static  unsigned long long aesl_llvm_cbe_67_count = 0;
  static  unsigned long long aesl_llvm_cbe_68_count = 0;
  unsigned int llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_69_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge121_count = 0;
  unsigned int llvm_cbe_storemerge121;
  unsigned int llvm_cbe_storemerge121__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_70_count = 0;
  static  unsigned long long aesl_llvm_cbe_71_count = 0;
  static  unsigned long long aesl_llvm_cbe_72_count = 0;
  static  unsigned long long aesl_llvm_cbe_73_count = 0;
  static  unsigned long long aesl_llvm_cbe_74_count = 0;
  static  unsigned long long aesl_llvm_cbe_75_count = 0;
  static  unsigned long long aesl_llvm_cbe_76_count = 0;
  static  unsigned long long aesl_llvm_cbe_77_count = 0;
  unsigned long long llvm_cbe_tmp__5;
  static  unsigned long long aesl_llvm_cbe_78_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge719_count = 0;
  unsigned int llvm_cbe_storemerge719;
  unsigned int llvm_cbe_storemerge719__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_79_count = 0;
  static  unsigned long long aesl_llvm_cbe_80_count = 0;
  static  unsigned long long aesl_llvm_cbe_81_count = 0;
  unsigned long long llvm_cbe_tmp__6;
  static  unsigned long long aesl_llvm_cbe_82_count = 0;
   char *llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_83_count = 0;
  static  unsigned long long aesl_llvm_cbe_84_count = 0;
  unsigned int llvm_cbe_tmp__8;
  static  unsigned long long aesl_llvm_cbe_85_count = 0;
  unsigned long long llvm_cbe_tmp__9;
  static  unsigned long long aesl_llvm_cbe_86_count = 0;
   char *llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_87_count = 0;
  static  unsigned long long aesl_llvm_cbe_88_count = 0;
  static  unsigned long long aesl_llvm_cbe_89_count = 0;
  unsigned int llvm_cbe_tmp__11;
  static  unsigned long long aesl_llvm_cbe_90_count = 0;
  static  unsigned long long aesl_llvm_cbe_91_count = 0;
  static  unsigned long long aesl_llvm_cbe_92_count = 0;
  static  unsigned long long aesl_llvm_cbe_93_count = 0;
  static  unsigned long long aesl_llvm_cbe_94_count = 0;
  static  unsigned long long aesl_llvm_cbe_95_count = 0;
  static  unsigned long long aesl_llvm_cbe_96_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond27_count = 0;
  static  unsigned long long aesl_llvm_cbe_97_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge817_count = 0;
  unsigned int llvm_cbe_storemerge817;
  unsigned int llvm_cbe_storemerge817__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_98_count = 0;
  static  unsigned long long aesl_llvm_cbe_99_count = 0;
  static  unsigned long long aesl_llvm_cbe_100_count = 0;
  unsigned long long llvm_cbe_tmp__12;
  static  unsigned long long aesl_llvm_cbe_101_count = 0;
   char *llvm_cbe_tmp__13;
  static  unsigned long long aesl_llvm_cbe_102_count = 0;
  unsigned char llvm_cbe_tmp__14;
  static  unsigned long long aesl_llvm_cbe_103_count = 0;
   char *llvm_cbe_tmp__15;
  static  unsigned long long aesl_llvm_cbe_104_count = 0;
  static  unsigned long long aesl_llvm_cbe_105_count = 0;
  static  unsigned long long aesl_llvm_cbe_106_count = 0;
  unsigned int llvm_cbe_tmp__16;
  static  unsigned long long aesl_llvm_cbe_107_count = 0;
  static  unsigned long long aesl_llvm_cbe_108_count = 0;
  static  unsigned long long aesl_llvm_cbe_109_count = 0;
  static  unsigned long long aesl_llvm_cbe_110_count = 0;
  static  unsigned long long aesl_llvm_cbe_111_count = 0;
  static  unsigned long long aesl_llvm_cbe_112_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond26_count = 0;
  static  unsigned long long aesl_llvm_cbe_113_count = 0;
  static  unsigned long long aesl_llvm_cbe_114_count = 0;
  unsigned int llvm_cbe_tmp__17;
  static  unsigned long long aesl_llvm_cbe_115_count = 0;
  static  unsigned long long aesl_llvm_cbe_116_count = 0;
  static  unsigned long long aesl_llvm_cbe_117_count = 0;
  static  unsigned long long aesl_llvm_cbe_118_count = 0;
  static  unsigned long long aesl_llvm_cbe_119_count = 0;
  static  unsigned long long aesl_llvm_cbe_120_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond29_count = 0;
  static  unsigned long long aesl_llvm_cbe_121_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge214_count = 0;
  unsigned int llvm_cbe_storemerge214;
  unsigned int llvm_cbe_storemerge214__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_122_count = 0;
  static  unsigned long long aesl_llvm_cbe_123_count = 0;
  static  unsigned long long aesl_llvm_cbe_124_count = 0;
  static  unsigned long long aesl_llvm_cbe_125_count = 0;
  static  unsigned long long aesl_llvm_cbe_126_count = 0;
  static  unsigned long long aesl_llvm_cbe_127_count = 0;
  static  unsigned long long aesl_llvm_cbe_128_count = 0;
  static  unsigned long long aesl_llvm_cbe_129_count = 0;
  unsigned long long llvm_cbe_tmp__18;
  static  unsigned long long aesl_llvm_cbe_130_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge411_count = 0;
  unsigned int llvm_cbe_storemerge411;
  unsigned int llvm_cbe_storemerge411__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_131_count = 0;
  static  unsigned long long aesl_llvm_cbe_132_count = 0;
  static  unsigned long long aesl_llvm_cbe_133_count = 0;
  unsigned long long llvm_cbe_tmp__19;
  static  unsigned long long aesl_llvm_cbe_134_count = 0;
   char *llvm_cbe_tmp__20;
  static  unsigned long long aesl_llvm_cbe_135_count = 0;
  static  unsigned long long aesl_llvm_cbe_136_count = 0;
  unsigned int llvm_cbe_tmp__21;
  static  unsigned long long aesl_llvm_cbe_137_count = 0;
  unsigned long long llvm_cbe_tmp__22;
  static  unsigned long long aesl_llvm_cbe_138_count = 0;
   char *llvm_cbe_tmp__23;
  static  unsigned long long aesl_llvm_cbe_139_count = 0;
  static  unsigned long long aesl_llvm_cbe_140_count = 0;
  static  unsigned long long aesl_llvm_cbe_141_count = 0;
  unsigned int llvm_cbe_tmp__24;
  static  unsigned long long aesl_llvm_cbe_142_count = 0;
  static  unsigned long long aesl_llvm_cbe_143_count = 0;
  static  unsigned long long aesl_llvm_cbe_144_count = 0;
  static  unsigned long long aesl_llvm_cbe_145_count = 0;
  static  unsigned long long aesl_llvm_cbe_146_count = 0;
  static  unsigned long long aesl_llvm_cbe_147_count = 0;
  static  unsigned long long aesl_llvm_cbe_148_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond23_count = 0;
  static  unsigned long long aesl_llvm_cbe_149_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge59_count = 0;
  unsigned int llvm_cbe_storemerge59;
  unsigned int llvm_cbe_storemerge59__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_150_count = 0;
  static  unsigned long long aesl_llvm_cbe_151_count = 0;
  static  unsigned long long aesl_llvm_cbe_152_count = 0;
  unsigned long long llvm_cbe_tmp__25;
  static  unsigned long long aesl_llvm_cbe_153_count = 0;
   char *llvm_cbe_tmp__26;
  static  unsigned long long aesl_llvm_cbe_154_count = 0;
  unsigned char llvm_cbe_tmp__27;
  static  unsigned long long aesl_llvm_cbe_155_count = 0;
   char *llvm_cbe_tmp__28;
  static  unsigned long long aesl_llvm_cbe_156_count = 0;
  static  unsigned long long aesl_llvm_cbe_157_count = 0;
  static  unsigned long long aesl_llvm_cbe_158_count = 0;
  unsigned int llvm_cbe_tmp__29;
  static  unsigned long long aesl_llvm_cbe_159_count = 0;
  static  unsigned long long aesl_llvm_cbe_160_count = 0;
  static  unsigned long long aesl_llvm_cbe_161_count = 0;
  static  unsigned long long aesl_llvm_cbe_162_count = 0;
  static  unsigned long long aesl_llvm_cbe_163_count = 0;
  static  unsigned long long aesl_llvm_cbe_164_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_165_count = 0;
  static  unsigned long long aesl_llvm_cbe_166_count = 0;
  unsigned int llvm_cbe_tmp__30;
  static  unsigned long long aesl_llvm_cbe_167_count = 0;
  static  unsigned long long aesl_llvm_cbe_168_count = 0;
  static  unsigned long long aesl_llvm_cbe_169_count = 0;
  static  unsigned long long aesl_llvm_cbe_170_count = 0;
  static  unsigned long long aesl_llvm_cbe_171_count = 0;
  static  unsigned long long aesl_llvm_cbe_172_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond25_count = 0;
  static  unsigned long long aesl_llvm_cbe_173_count = 0;
  static  unsigned long long aesl_llvm_cbe_174_count = 0;
  unsigned int llvm_cbe_tmp__31;
  static  unsigned long long aesl_llvm_cbe_175_count = 0;
  static  unsigned long long aesl_llvm_cbe_176_count = 0;
  static  unsigned long long aesl_llvm_cbe_177_count = 0;
  static  unsigned long long aesl_llvm_cbe_178_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond30_count = 0;
  static  unsigned long long aesl_llvm_cbe_179_count = 0;
  static  unsigned long long aesl_llvm_cbe_180_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @DWT_color\n");
  llvm_cbe_storemerge22__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__32;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__32:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge22 = phi i32 [ 0, %%0 ], [ %%51, %%50  for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_storemerge22_count);
  llvm_cbe_storemerge22 = (unsigned int )llvm_cbe_storemerge22__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge22 = 0x%X",llvm_cbe_storemerge22);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__31);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = lshr i32 480, %%storemerge22, !dbg !12 for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_42_count);
  llvm_cbe_tmp__1 = (unsigned int )((unsigned int )(((unsigned int )(480u&4294967295ull)) >> ((unsigned int )(llvm_cbe_storemerge22&4294967295ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__1&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = lshr i32 640, %%storemerge22, !dbg !12 for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_49_count);
  llvm_cbe_tmp__2 = (unsigned int )((unsigned int )(((unsigned int )(640u&4294967295ull)) >> ((unsigned int )(llvm_cbe_storemerge22&4294967295ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__2&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = sdiv i32 %%3, 2, !dbg !12 for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_61_count);
  llvm_cbe_tmp__3 = (unsigned int )((signed int )(((signed int )llvm_cbe_tmp__2) / ((signed int )2u)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__3));
  llvm_cbe_storemerge121__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__33;

llvm_cbe_tmp__34:
if (AESL_DEBUG_TRACE)
printf("\n  %%51 = add nsw i32 %%storemerge22, 1, !dbg !11 for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_174_count);
  llvm_cbe_tmp__31 = (unsigned int )((unsigned int )(llvm_cbe_storemerge22&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__31&4294967295ull)));
  if (((llvm_cbe_tmp__31&4294967295U) == (2u&4294967295U))) {
    goto llvm_cbe_tmp__35;
  } else {
    llvm_cbe_storemerge22__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__31;   /* for PHI node */
    goto llvm_cbe_tmp__32;
  }

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__36:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge214 = phi i32 [ 0, %%.preheader13 ], [ %%49, %%.loopexit  for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_storemerge214_count);
  llvm_cbe_storemerge214 = (unsigned int )llvm_cbe_storemerge214__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge214 = 0x%X",llvm_cbe_storemerge214);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__30);
}
  if ((((signed int )llvm_cbe_storemerge214) < ((signed int )llvm_cbe_tmp__3))) {
    llvm_cbe_storemerge411__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe__2e_preheader12;
  } else {
    goto llvm_cbe__2e_loopexit;
  }

llvm_cbe__2e_loopexit:
if (AESL_DEBUG_TRACE)
printf("\n  %%49 = add nsw i32 %%storemerge214, 1, !dbg !13 for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_166_count);
  llvm_cbe_tmp__30 = (unsigned int )((unsigned int )(llvm_cbe_storemerge214&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__30&4294967295ull)));
  if (((llvm_cbe_tmp__30&4294967295U) == (320u&4294967295U))) {
    goto llvm_cbe_tmp__34;
  } else {
    llvm_cbe_storemerge214__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__30;   /* for PHI node */
    goto llvm_cbe_tmp__36;
  }

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__37:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge59 = phi i32 [ 0, %%.preheader ], [ %%48, %%47  for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_storemerge59_count);
  llvm_cbe_storemerge59 = (unsigned int )llvm_cbe_storemerge59__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge59 = 0x%X",llvm_cbe_storemerge59);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__29);
}
  if ((((signed int )llvm_cbe_storemerge59) < ((signed int )llvm_cbe_tmp__1))) {
    goto llvm_cbe_tmp__38;
  } else {
    goto llvm_cbe_tmp__39;
  }

llvm_cbe_tmp__39:
if (AESL_DEBUG_TRACE)
printf("\n  %%48 = add nsw i32 %%storemerge59, 1, !dbg !14 for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_158_count);
  llvm_cbe_tmp__29 = (unsigned int )((unsigned int )(llvm_cbe_storemerge59&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__29&4294967295ull)));
  if (((llvm_cbe_tmp__29&4294967295U) == (480u&4294967295U))) {
    goto llvm_cbe__2e_loopexit;
  } else {
    llvm_cbe_storemerge59__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__29;   /* for PHI node */
    goto llvm_cbe_tmp__37;
  }

llvm_cbe_tmp__38:
if (AESL_DEBUG_TRACE)
printf("\n  %%43 = sext i32 %%storemerge59 to i64, !dbg !7 for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_152_count);
  llvm_cbe_tmp__25 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge59);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__25);
if (AESL_DEBUG_TRACE)
printf("\n  %%44 = getelementptr inbounds [480 x i8]* %%tempc, i64 0, i64 %%43, !dbg !7 for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_153_count);
  llvm_cbe_tmp__26 = ( char *)(&llvm_cbe_tempc[(((signed long long )llvm_cbe_tmp__25))
#ifdef AESL_BC_SIM
 % 480
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__25));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__25) < 480)) fprintf(stderr, "%s:%d: warning: Read access out of array 'tempc' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%45 = load i8* %%44, align 1, !dbg !7 for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_154_count);
  llvm_cbe_tmp__27 = (unsigned char )*llvm_cbe_tmp__26;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__27);
if (AESL_DEBUG_TRACE)
printf("\n  %%46 = getelementptr inbounds [480 x [640 x i8]]* %%A, i64 0, i64 %%43, i64 %%30, !dbg !7 for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_155_count);
  llvm_cbe_tmp__28 = ( char *)(&(*llvm_cbe_A)[(((signed long long )llvm_cbe_tmp__25))
#ifdef AESL_BC_SIM
 % 480
#endif
][(((signed long long )llvm_cbe_tmp__18))
#ifdef AESL_BC_SIM
 % 640
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__25));
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__18));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__25) < 480 && "Write access out of array 'A' bound?");
  assert(((signed long long )llvm_cbe_tmp__18) < 640 && "Write access out of array 'A' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%45, i8* %%46, align 1, !dbg !7 for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_156_count);
  *llvm_cbe_tmp__28 = llvm_cbe_tmp__27;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__27);
  goto llvm_cbe_tmp__39;

  } while (1); /* end of syntactic loop '' */
llvm_cbe__2e_preheader:
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = sext i32 %%storemerge214 to i64, !dbg !7 for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_129_count);
  llvm_cbe_tmp__18 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge214);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__18);
  llvm_cbe_storemerge59__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__37;

  do {     /* Syntactic loop '.preheader12' to make GCC happy */
llvm_cbe__2e_preheader12:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge411 = phi i32 [ %%39, %%38 ], [ 0, %%28  for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_storemerge411_count);
  llvm_cbe_storemerge411 = (unsigned int )llvm_cbe_storemerge411__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge411 = 0x%X",llvm_cbe_storemerge411);
printf("\n = 0x%X",llvm_cbe_tmp__24);
printf("\n = 0x%X",0u);
}
  if ((((signed int )llvm_cbe_storemerge411) < ((signed int )llvm_cbe_tmp__4))) {
    goto llvm_cbe_tmp__40;
  } else {
    goto llvm_cbe_tmp__41;
  }

llvm_cbe_tmp__41:
if (AESL_DEBUG_TRACE)
printf("\n  %%39 = add nsw i32 %%storemerge411, 1, !dbg !15 for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_141_count);
  llvm_cbe_tmp__24 = (unsigned int )((unsigned int )(llvm_cbe_storemerge411&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__24&4294967295ull)));
  if (((llvm_cbe_tmp__24&4294967295U) == (480u&4294967295U))) {
    goto llvm_cbe__2e_preheader;
  } else {
    llvm_cbe_storemerge411__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__24;   /* for PHI node */
    goto llvm_cbe__2e_preheader12;
  }

llvm_cbe_tmp__40:
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = sext i32 %%storemerge411 to i64, !dbg !11 for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_133_count);
  llvm_cbe_tmp__19 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge411);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__19);
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = getelementptr inbounds [480 x i8]* %%tempc, i64 0, i64 %%33, !dbg !11 for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_134_count);
  llvm_cbe_tmp__20 = ( char *)(&llvm_cbe_tempc[(((signed long long )llvm_cbe_tmp__19))
#ifdef AESL_BC_SIM
 % 480
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__19));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__19) < 480 && "Write access out of array 'tempc' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 0, i8* %%34, align 1, !dbg !11 for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_135_count);
  *llvm_cbe_tmp__20 = ((unsigned char )0);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = add nsw i32 %%5, %%storemerge411, !dbg !10 for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_136_count);
  llvm_cbe_tmp__21 = (unsigned int )((unsigned int )(llvm_cbe_tmp__4&4294967295ull)) + ((unsigned int )(llvm_cbe_storemerge411&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__21&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = sext i32 %%35 to i64, !dbg !10 for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_137_count);
  llvm_cbe_tmp__22 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__21);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__22);
if (AESL_DEBUG_TRACE)
printf("\n  %%37 = getelementptr inbounds [480 x i8]* %%tempc, i64 0, i64 %%36, !dbg !10 for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_138_count);
  llvm_cbe_tmp__23 = ( char *)(&llvm_cbe_tempc[(((signed long long )llvm_cbe_tmp__22))
#ifdef AESL_BC_SIM
 % 480
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__22));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__22) < 480 && "Write access out of array 'tempc' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 0, i8* %%37, align 1, !dbg !10 for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_139_count);
  *llvm_cbe_tmp__23 = ((unsigned char )0);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
  goto llvm_cbe_tmp__41;

  } while (1); /* end of syntactic loop '.preheader12' */
  } while (1); /* end of syntactic loop '' */
llvm_cbe__2e_preheader13:
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = sdiv i32 %%2, 2, !dbg !12 for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_68_count);
  llvm_cbe_tmp__4 = (unsigned int )((signed int )(((signed int )llvm_cbe_tmp__1) / ((signed int )2u)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__4));
  llvm_cbe_storemerge214__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__36;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__33:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge121 = phi i32 [ 0, %%1 ], [ %%27, %%.loopexit16  for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_storemerge121_count);
  llvm_cbe_storemerge121 = (unsigned int )llvm_cbe_storemerge121__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge121 = 0x%X",llvm_cbe_storemerge121);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__17);
}
  if ((((signed int )llvm_cbe_storemerge121) < ((signed int )llvm_cbe_tmp__1))) {
    llvm_cbe_storemerge719__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe__2e_preheader20;
  } else {
    goto llvm_cbe__2e_loopexit16;
  }

llvm_cbe__2e_loopexit16:
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = add nsw i32 %%storemerge121, 1, !dbg !13 for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_114_count);
  llvm_cbe_tmp__17 = (unsigned int )((unsigned int )(llvm_cbe_storemerge121&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__17&4294967295ull)));
  if (((llvm_cbe_tmp__17&4294967295U) == (480u&4294967295U))) {
    goto llvm_cbe__2e_preheader13;
  } else {
    llvm_cbe_storemerge121__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__17;   /* for PHI node */
    goto llvm_cbe_tmp__33;
  }

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__42:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge817 = phi i32 [ 0, %%.preheader15 ], [ %%26, %%25  for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_storemerge817_count);
  llvm_cbe_storemerge817 = (unsigned int )llvm_cbe_storemerge817__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge817 = 0x%X",llvm_cbe_storemerge817);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__16);
}
  if ((((signed int )llvm_cbe_storemerge817) < ((signed int )llvm_cbe_tmp__2))) {
    goto llvm_cbe_tmp__43;
  } else {
    goto llvm_cbe_tmp__44;
  }

llvm_cbe_tmp__44:
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = add nsw i32 %%storemerge817, 1, !dbg !14 for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_106_count);
  llvm_cbe_tmp__16 = (unsigned int )((unsigned int )(llvm_cbe_storemerge817&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__16&4294967295ull)));
  if (((llvm_cbe_tmp__16&4294967295U) == (640u&4294967295U))) {
    goto llvm_cbe__2e_loopexit16;
  } else {
    llvm_cbe_storemerge817__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__16;   /* for PHI node */
    goto llvm_cbe_tmp__42;
  }

llvm_cbe_tmp__43:
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = sext i32 %%storemerge817 to i64, !dbg !6 for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_100_count);
  llvm_cbe_tmp__12 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge817);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__12);
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = getelementptr inbounds [640 x i8]* %%tempr, i64 0, i64 %%21, !dbg !6 for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_101_count);
  llvm_cbe_tmp__13 = ( char *)(&llvm_cbe_tempr[(((signed long long )llvm_cbe_tmp__12))
#ifdef AESL_BC_SIM
 % 640
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__12));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__12) < 640)) fprintf(stderr, "%s:%d: warning: Read access out of array 'tempr' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = load i8* %%22, align 1, !dbg !6 for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_102_count);
  llvm_cbe_tmp__14 = (unsigned char )*llvm_cbe_tmp__13;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__14);
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = getelementptr inbounds [480 x [640 x i8]]* %%A, i64 0, i64 %%8, i64 %%21, !dbg !6 for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_103_count);
  llvm_cbe_tmp__15 = ( char *)(&(*llvm_cbe_A)[(((signed long long )llvm_cbe_tmp__5))
#ifdef AESL_BC_SIM
 % 480
#endif
][(((signed long long )llvm_cbe_tmp__12))
#ifdef AESL_BC_SIM
 % 640
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__5));
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__12));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__5) < 480 && "Write access out of array 'A' bound?");
  assert(((signed long long )llvm_cbe_tmp__12) < 640 && "Write access out of array 'A' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%23, i8* %%24, align 1, !dbg !6 for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_104_count);
  *llvm_cbe_tmp__15 = llvm_cbe_tmp__14;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__14);
  goto llvm_cbe_tmp__44;

  } while (1); /* end of syntactic loop '' */
llvm_cbe__2e_preheader15:
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = sext i32 %%storemerge121 to i64, !dbg !6 for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_77_count);
  llvm_cbe_tmp__5 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge121);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__5);
  llvm_cbe_storemerge817__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__42;

  do {     /* Syntactic loop '.preheader20' to make GCC happy */
llvm_cbe__2e_preheader20:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge719 = phi i32 [ %%17, %%16 ], [ 0, %%6  for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_storemerge719_count);
  llvm_cbe_storemerge719 = (unsigned int )llvm_cbe_storemerge719__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge719 = 0x%X",llvm_cbe_storemerge719);
printf("\n = 0x%X",llvm_cbe_tmp__11);
printf("\n = 0x%X",0u);
}
  if ((((signed int )llvm_cbe_storemerge719) < ((signed int )llvm_cbe_tmp__3))) {
    goto llvm_cbe_tmp__45;
  } else {
    goto llvm_cbe_tmp__46;
  }

llvm_cbe_tmp__46:
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = add nsw i32 %%storemerge719, 1, !dbg !14 for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_89_count);
  llvm_cbe_tmp__11 = (unsigned int )((unsigned int )(llvm_cbe_storemerge719&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__11&4294967295ull)));
  if (((llvm_cbe_tmp__11&4294967295U) == (320u&4294967295U))) {
    goto llvm_cbe__2e_preheader15;
  } else {
    llvm_cbe_storemerge719__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__11;   /* for PHI node */
    goto llvm_cbe__2e_preheader20;
  }

llvm_cbe_tmp__45:
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = sext i32 %%storemerge719 to i64, !dbg !11 for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_81_count);
  llvm_cbe_tmp__6 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge719);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__6);
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = getelementptr inbounds [640 x i8]* %%tempr, i64 0, i64 %%11, !dbg !11 for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_82_count);
  llvm_cbe_tmp__7 = ( char *)(&llvm_cbe_tempr[(((signed long long )llvm_cbe_tmp__6))
#ifdef AESL_BC_SIM
 % 640
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__6));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__6) < 640 && "Write access out of array 'tempr' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 0, i8* %%12, align 1, !dbg !11 for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_83_count);
  *llvm_cbe_tmp__7 = ((unsigned char )0);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = add nsw i32 %%4, %%storemerge719, !dbg !9 for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_84_count);
  llvm_cbe_tmp__8 = (unsigned int )((unsigned int )(llvm_cbe_tmp__3&4294967295ull)) + ((unsigned int )(llvm_cbe_storemerge719&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__8&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = sext i32 %%13 to i64, !dbg !9 for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_85_count);
  llvm_cbe_tmp__9 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__8);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__9);
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = getelementptr inbounds [640 x i8]* %%tempr, i64 0, i64 %%14, !dbg !9 for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_86_count);
  llvm_cbe_tmp__10 = ( char *)(&llvm_cbe_tempr[(((signed long long )llvm_cbe_tmp__9))
#ifdef AESL_BC_SIM
 % 640
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__9));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__9) < 640 && "Write access out of array 'tempr' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 0, i8* %%15, align 1, !dbg !9 for 0x%I64xth hint within @DWT_color  --> \n", ++aesl_llvm_cbe_87_count);
  *llvm_cbe_tmp__10 = ((unsigned char )0);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
  goto llvm_cbe_tmp__46;

  } while (1); /* end of syntactic loop '.preheader20' */
  } while (1); /* end of syntactic loop '' */
  } while (1); /* end of syntactic loop '' */
llvm_cbe_tmp__35:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @DWT_color}\n");
  return;
}


void DWT_IR( char (*llvm_cbe_B)[480][640]) {
  static  unsigned long long aesl_llvm_cbe_tempr_count = 0;
   char llvm_cbe_tempr[640];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_tempc_count = 0;
   char llvm_cbe_tempc[480];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_181_count = 0;
  static  unsigned long long aesl_llvm_cbe_182_count = 0;
  static  unsigned long long aesl_llvm_cbe_183_count = 0;
  static  unsigned long long aesl_llvm_cbe_184_count = 0;
  static  unsigned long long aesl_llvm_cbe_185_count = 0;
  static  unsigned long long aesl_llvm_cbe_186_count = 0;
  static  unsigned long long aesl_llvm_cbe_187_count = 0;
  static  unsigned long long aesl_llvm_cbe_188_count = 0;
  static  unsigned long long aesl_llvm_cbe_189_count = 0;
  static  unsigned long long aesl_llvm_cbe_190_count = 0;
  static  unsigned long long aesl_llvm_cbe_191_count = 0;
  static  unsigned long long aesl_llvm_cbe_192_count = 0;
  static  unsigned long long aesl_llvm_cbe_193_count = 0;
  static  unsigned long long aesl_llvm_cbe_194_count = 0;
  static  unsigned long long aesl_llvm_cbe_195_count = 0;
  static  unsigned long long aesl_llvm_cbe_196_count = 0;
  static  unsigned long long aesl_llvm_cbe_197_count = 0;
  static  unsigned long long aesl_llvm_cbe_198_count = 0;
  static  unsigned long long aesl_llvm_cbe_199_count = 0;
  static  unsigned long long aesl_llvm_cbe_200_count = 0;
  static  unsigned long long aesl_llvm_cbe_201_count = 0;
  static  unsigned long long aesl_llvm_cbe_202_count = 0;
  static  unsigned long long aesl_llvm_cbe_203_count = 0;
  static  unsigned long long aesl_llvm_cbe_204_count = 0;
  static  unsigned long long aesl_llvm_cbe_205_count = 0;
  static  unsigned long long aesl_llvm_cbe_206_count = 0;
  static  unsigned long long aesl_llvm_cbe_207_count = 0;
  static  unsigned long long aesl_llvm_cbe_208_count = 0;
  static  unsigned long long aesl_llvm_cbe_209_count = 0;
  static  unsigned long long aesl_llvm_cbe_210_count = 0;
  static  unsigned long long aesl_llvm_cbe_211_count = 0;
  static  unsigned long long aesl_llvm_cbe_212_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge20_count = 0;
  unsigned int llvm_cbe_storemerge20;
  unsigned int llvm_cbe_storemerge20__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_213_count = 0;
  static  unsigned long long aesl_llvm_cbe_214_count = 0;
  unsigned int llvm_cbe_tmp__47;
  static  unsigned long long aesl_llvm_cbe_215_count = 0;
  static  unsigned long long aesl_llvm_cbe_216_count = 0;
  static  unsigned long long aesl_llvm_cbe_217_count = 0;
  static  unsigned long long aesl_llvm_cbe_218_count = 0;
  static  unsigned long long aesl_llvm_cbe_219_count = 0;
  static  unsigned long long aesl_llvm_cbe_220_count = 0;
  static  unsigned long long aesl_llvm_cbe_221_count = 0;
  unsigned int llvm_cbe_tmp__48;
  static  unsigned long long aesl_llvm_cbe_222_count = 0;
  static  unsigned long long aesl_llvm_cbe_223_count = 0;
  static  unsigned long long aesl_llvm_cbe_224_count = 0;
  static  unsigned long long aesl_llvm_cbe_225_count = 0;
  static  unsigned long long aesl_llvm_cbe_226_count = 0;
  static  unsigned long long aesl_llvm_cbe_227_count = 0;
  static  unsigned long long aesl_llvm_cbe_228_count = 0;
  static  unsigned long long aesl_llvm_cbe_229_count = 0;
  static  unsigned long long aesl_llvm_cbe_230_count = 0;
  static  unsigned long long aesl_llvm_cbe_231_count = 0;
  static  unsigned long long aesl_llvm_cbe_232_count = 0;
  static  unsigned long long aesl_llvm_cbe_233_count = 0;
  static  unsigned long long aesl_llvm_cbe_234_count = 0;
  static  unsigned long long aesl_llvm_cbe_235_count = 0;
  static  unsigned long long aesl_llvm_cbe_236_count = 0;
  static  unsigned long long aesl_llvm_cbe_237_count = 0;
  unsigned int llvm_cbe_tmp__49;
  static  unsigned long long aesl_llvm_cbe_238_count = 0;
  static  unsigned long long aesl_llvm_cbe_239_count = 0;
  static  unsigned long long aesl_llvm_cbe_240_count = 0;
  static  unsigned long long aesl_llvm_cbe_241_count = 0;
  static  unsigned long long aesl_llvm_cbe_242_count = 0;
  static  unsigned long long aesl_llvm_cbe_243_count = 0;
  static  unsigned long long aesl_llvm_cbe_244_count = 0;
  static  unsigned long long aesl_llvm_cbe_245_count = 0;
  static  unsigned long long aesl_llvm_cbe_246_count = 0;
  static  unsigned long long aesl_llvm_cbe_247_count = 0;
  unsigned int llvm_cbe_tmp__50;
  static  unsigned long long aesl_llvm_cbe_248_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge119_count = 0;
  unsigned int llvm_cbe_storemerge119;
  unsigned int llvm_cbe_storemerge119__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_249_count = 0;
  static  unsigned long long aesl_llvm_cbe_250_count = 0;
  static  unsigned long long aesl_llvm_cbe_251_count = 0;
  static  unsigned long long aesl_llvm_cbe_252_count = 0;
  static  unsigned long long aesl_llvm_cbe_253_count = 0;
  static  unsigned long long aesl_llvm_cbe_254_count = 0;
  static  unsigned long long aesl_llvm_cbe_255_count = 0;
  static  unsigned long long aesl_llvm_cbe_256_count = 0;
  unsigned long long llvm_cbe_tmp__51;
  static  unsigned long long aesl_llvm_cbe_257_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge617_count = 0;
  unsigned int llvm_cbe_storemerge617;
  unsigned int llvm_cbe_storemerge617__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_258_count = 0;
  static  unsigned long long aesl_llvm_cbe_259_count = 0;
  static  unsigned long long aesl_llvm_cbe_260_count = 0;
  unsigned long long llvm_cbe_tmp__52;
  static  unsigned long long aesl_llvm_cbe_261_count = 0;
   char *llvm_cbe_tmp__53;
  static  unsigned long long aesl_llvm_cbe_262_count = 0;
  static  unsigned long long aesl_llvm_cbe_263_count = 0;
  unsigned int llvm_cbe_tmp__54;
  static  unsigned long long aesl_llvm_cbe_264_count = 0;
  unsigned long long llvm_cbe_tmp__55;
  static  unsigned long long aesl_llvm_cbe_265_count = 0;
   char *llvm_cbe_tmp__56;
  static  unsigned long long aesl_llvm_cbe_266_count = 0;
  static  unsigned long long aesl_llvm_cbe_267_count = 0;
  static  unsigned long long aesl_llvm_cbe_268_count = 0;
  unsigned int llvm_cbe_tmp__57;
  static  unsigned long long aesl_llvm_cbe_269_count = 0;
  static  unsigned long long aesl_llvm_cbe_270_count = 0;
  static  unsigned long long aesl_llvm_cbe_271_count = 0;
  static  unsigned long long aesl_llvm_cbe_272_count = 0;
  static  unsigned long long aesl_llvm_cbe_273_count = 0;
  static  unsigned long long aesl_llvm_cbe_274_count = 0;
  static  unsigned long long aesl_llvm_cbe_275_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond24_count = 0;
  static  unsigned long long aesl_llvm_cbe_276_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge715_count = 0;
  unsigned int llvm_cbe_storemerge715;
  unsigned int llvm_cbe_storemerge715__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_277_count = 0;
  static  unsigned long long aesl_llvm_cbe_278_count = 0;
  static  unsigned long long aesl_llvm_cbe_279_count = 0;
  unsigned long long llvm_cbe_tmp__58;
  static  unsigned long long aesl_llvm_cbe_280_count = 0;
   char *llvm_cbe_tmp__59;
  static  unsigned long long aesl_llvm_cbe_281_count = 0;
  unsigned char llvm_cbe_tmp__60;
  static  unsigned long long aesl_llvm_cbe_282_count = 0;
   char *llvm_cbe_tmp__61;
  static  unsigned long long aesl_llvm_cbe_283_count = 0;
  static  unsigned long long aesl_llvm_cbe_284_count = 0;
  static  unsigned long long aesl_llvm_cbe_285_count = 0;
  unsigned int llvm_cbe_tmp__62;
  static  unsigned long long aesl_llvm_cbe_286_count = 0;
  static  unsigned long long aesl_llvm_cbe_287_count = 0;
  static  unsigned long long aesl_llvm_cbe_288_count = 0;
  static  unsigned long long aesl_llvm_cbe_289_count = 0;
  static  unsigned long long aesl_llvm_cbe_290_count = 0;
  static  unsigned long long aesl_llvm_cbe_291_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond23_count = 0;
  static  unsigned long long aesl_llvm_cbe_292_count = 0;
  static  unsigned long long aesl_llvm_cbe_293_count = 0;
  unsigned int llvm_cbe_tmp__63;
  static  unsigned long long aesl_llvm_cbe_294_count = 0;
  static  unsigned long long aesl_llvm_cbe_295_count = 0;
  static  unsigned long long aesl_llvm_cbe_296_count = 0;
  static  unsigned long long aesl_llvm_cbe_297_count = 0;
  static  unsigned long long aesl_llvm_cbe_298_count = 0;
  static  unsigned long long aesl_llvm_cbe_299_count = 0;
  static  unsigned long long aesl_llvm_cbe_300_count = 0;
  static  unsigned long long aesl_llvm_cbe_301_count = 0;
  static  unsigned long long aesl_llvm_cbe_302_count = 0;
  static  unsigned long long aesl_llvm_cbe_303_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond26_count = 0;
  static  unsigned long long aesl_llvm_cbe_304_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge212_count = 0;
  unsigned int llvm_cbe_storemerge212;
  unsigned int llvm_cbe_storemerge212__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_305_count = 0;
  static  unsigned long long aesl_llvm_cbe_306_count = 0;
  static  unsigned long long aesl_llvm_cbe_307_count = 0;
  static  unsigned long long aesl_llvm_cbe_308_count = 0;
  static  unsigned long long aesl_llvm_cbe_309_count = 0;
  static  unsigned long long aesl_llvm_cbe_310_count = 0;
  static  unsigned long long aesl_llvm_cbe_311_count = 0;
  static  unsigned long long aesl_llvm_cbe_312_count = 0;
  unsigned long long llvm_cbe_tmp__64;
  static  unsigned long long aesl_llvm_cbe_313_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge310_count = 0;
  unsigned int llvm_cbe_storemerge310;
  unsigned int llvm_cbe_storemerge310__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_314_count = 0;
  static  unsigned long long aesl_llvm_cbe_315_count = 0;
  static  unsigned long long aesl_llvm_cbe_316_count = 0;
  unsigned long long llvm_cbe_tmp__65;
  static  unsigned long long aesl_llvm_cbe_317_count = 0;
   char *llvm_cbe_tmp__66;
  static  unsigned long long aesl_llvm_cbe_318_count = 0;
  static  unsigned long long aesl_llvm_cbe_319_count = 0;
  unsigned int llvm_cbe_tmp__67;
  static  unsigned long long aesl_llvm_cbe_320_count = 0;
  unsigned long long llvm_cbe_tmp__68;
  static  unsigned long long aesl_llvm_cbe_321_count = 0;
   char *llvm_cbe_tmp__69;
  static  unsigned long long aesl_llvm_cbe_322_count = 0;
  static  unsigned long long aesl_llvm_cbe_323_count = 0;
  static  unsigned long long aesl_llvm_cbe_324_count = 0;
  unsigned int llvm_cbe_tmp__70;
  static  unsigned long long aesl_llvm_cbe_325_count = 0;
  static  unsigned long long aesl_llvm_cbe_326_count = 0;
  static  unsigned long long aesl_llvm_cbe_327_count = 0;
  static  unsigned long long aesl_llvm_cbe_328_count = 0;
  static  unsigned long long aesl_llvm_cbe_329_count = 0;
  static  unsigned long long aesl_llvm_cbe_330_count = 0;
  static  unsigned long long aesl_llvm_cbe_331_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond21_count = 0;
  static  unsigned long long aesl_llvm_cbe_332_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge48_count = 0;
  unsigned int llvm_cbe_storemerge48;
  unsigned int llvm_cbe_storemerge48__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_333_count = 0;
  static  unsigned long long aesl_llvm_cbe_334_count = 0;
  static  unsigned long long aesl_llvm_cbe_335_count = 0;
  unsigned long long llvm_cbe_tmp__71;
  static  unsigned long long aesl_llvm_cbe_336_count = 0;
   char *llvm_cbe_tmp__72;
  static  unsigned long long aesl_llvm_cbe_337_count = 0;
  unsigned char llvm_cbe_tmp__73;
  static  unsigned long long aesl_llvm_cbe_338_count = 0;
   char *llvm_cbe_tmp__74;
  static  unsigned long long aesl_llvm_cbe_339_count = 0;
  static  unsigned long long aesl_llvm_cbe_340_count = 0;
  static  unsigned long long aesl_llvm_cbe_341_count = 0;
  unsigned int llvm_cbe_tmp__75;
  static  unsigned long long aesl_llvm_cbe_342_count = 0;
  static  unsigned long long aesl_llvm_cbe_343_count = 0;
  static  unsigned long long aesl_llvm_cbe_344_count = 0;
  static  unsigned long long aesl_llvm_cbe_345_count = 0;
  static  unsigned long long aesl_llvm_cbe_346_count = 0;
  static  unsigned long long aesl_llvm_cbe_347_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_348_count = 0;
  static  unsigned long long aesl_llvm_cbe_349_count = 0;
  unsigned int llvm_cbe_tmp__76;
  static  unsigned long long aesl_llvm_cbe_350_count = 0;
  static  unsigned long long aesl_llvm_cbe_351_count = 0;
  static  unsigned long long aesl_llvm_cbe_352_count = 0;
  static  unsigned long long aesl_llvm_cbe_353_count = 0;
  static  unsigned long long aesl_llvm_cbe_354_count = 0;
  static  unsigned long long aesl_llvm_cbe_355_count = 0;
  static  unsigned long long aesl_llvm_cbe_356_count = 0;
  static  unsigned long long aesl_llvm_cbe_357_count = 0;
  static  unsigned long long aesl_llvm_cbe_358_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond22_count = 0;
  static  unsigned long long aesl_llvm_cbe_359_count = 0;
  static  unsigned long long aesl_llvm_cbe_360_count = 0;
  unsigned int llvm_cbe_tmp__77;
  static  unsigned long long aesl_llvm_cbe_361_count = 0;
  static  unsigned long long aesl_llvm_cbe_362_count = 0;
  static  unsigned long long aesl_llvm_cbe_363_count = 0;
  static  unsigned long long aesl_llvm_cbe_364_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond27_count = 0;
  static  unsigned long long aesl_llvm_cbe_365_count = 0;
  static  unsigned long long aesl_llvm_cbe_366_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @DWT_IR\n");
  llvm_cbe_storemerge20__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__78;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__78:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge20 = phi i32 [ 0, %%0 ], [ %%51, %%50  for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_storemerge20_count);
  llvm_cbe_storemerge20 = (unsigned int )llvm_cbe_storemerge20__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge20 = 0x%X",llvm_cbe_storemerge20);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__77);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = lshr i32 480, %%storemerge20, !dbg !11 for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_214_count);
  llvm_cbe_tmp__47 = (unsigned int )((unsigned int )(((unsigned int )(480u&4294967295ull)) >> ((unsigned int )(llvm_cbe_storemerge20&4294967295ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__47&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = lshr i32 640, %%storemerge20, !dbg !12 for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_221_count);
  llvm_cbe_tmp__48 = (unsigned int )((unsigned int )(((unsigned int )(640u&4294967295ull)) >> ((unsigned int )(llvm_cbe_storemerge20&4294967295ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__48&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = sdiv i32 %%3, 2, !dbg !12 for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_237_count);
  llvm_cbe_tmp__49 = (unsigned int )((signed int )(((signed int )llvm_cbe_tmp__48) / ((signed int )2u)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__49));
  llvm_cbe_storemerge119__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__79;

llvm_cbe_tmp__80:
if (AESL_DEBUG_TRACE)
printf("\n  %%51 = add nsw i32 %%storemerge20, 1, !dbg !11 for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_360_count);
  llvm_cbe_tmp__77 = (unsigned int )((unsigned int )(llvm_cbe_storemerge20&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__77&4294967295ull)));
  if (((llvm_cbe_tmp__77&4294967295U) == (2u&4294967295U))) {
    goto llvm_cbe_tmp__81;
  } else {
    llvm_cbe_storemerge20__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__77;   /* for PHI node */
    goto llvm_cbe_tmp__78;
  }

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__82:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge212 = phi i32 [ 0, %%.preheader11 ], [ %%49, %%.loopexit  for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_storemerge212_count);
  llvm_cbe_storemerge212 = (unsigned int )llvm_cbe_storemerge212__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge212 = 0x%X",llvm_cbe_storemerge212);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__76);
}
  if ((((signed int )llvm_cbe_storemerge212) < ((signed int )llvm_cbe_tmp__49))) {
    llvm_cbe_storemerge310__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe__2e_preheader9;
  } else {
    goto llvm_cbe__2e_loopexit;
  }

llvm_cbe__2e_loopexit:
if (AESL_DEBUG_TRACE)
printf("\n  %%49 = add nsw i32 %%storemerge212, 1, !dbg !13 for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_349_count);
  llvm_cbe_tmp__76 = (unsigned int )((unsigned int )(llvm_cbe_storemerge212&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__76&4294967295ull)));
  if (((llvm_cbe_tmp__76&4294967295U) == (320u&4294967295U))) {
    goto llvm_cbe_tmp__80;
  } else {
    llvm_cbe_storemerge212__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__76;   /* for PHI node */
    goto llvm_cbe_tmp__82;
  }

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__83:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge48 = phi i32 [ 0, %%.preheader ], [ %%48, %%47  for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_storemerge48_count);
  llvm_cbe_storemerge48 = (unsigned int )llvm_cbe_storemerge48__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge48 = 0x%X",llvm_cbe_storemerge48);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__75);
}
  if ((((signed int )llvm_cbe_storemerge48) < ((signed int )llvm_cbe_tmp__47))) {
    goto llvm_cbe_tmp__84;
  } else {
    goto llvm_cbe_tmp__85;
  }

llvm_cbe_tmp__85:
if (AESL_DEBUG_TRACE)
printf("\n  %%48 = add nsw i32 %%storemerge48, 1, !dbg !14 for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_341_count);
  llvm_cbe_tmp__75 = (unsigned int )((unsigned int )(llvm_cbe_storemerge48&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__75&4294967295ull)));
  if (((llvm_cbe_tmp__75&4294967295U) == (480u&4294967295U))) {
    goto llvm_cbe__2e_loopexit;
  } else {
    llvm_cbe_storemerge48__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__75;   /* for PHI node */
    goto llvm_cbe_tmp__83;
  }

llvm_cbe_tmp__84:
if (AESL_DEBUG_TRACE)
printf("\n  %%43 = sext i32 %%storemerge48 to i64, !dbg !8 for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_335_count);
  llvm_cbe_tmp__71 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge48);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__71);
if (AESL_DEBUG_TRACE)
printf("\n  %%44 = getelementptr inbounds [480 x i8]* %%tempc, i64 0, i64 %%43, !dbg !8 for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_336_count);
  llvm_cbe_tmp__72 = ( char *)(&llvm_cbe_tempc[(((signed long long )llvm_cbe_tmp__71))
#ifdef AESL_BC_SIM
 % 480
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__71));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__71) < 480)) fprintf(stderr, "%s:%d: warning: Read access out of array 'tempc' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%45 = load i8* %%44, align 1, !dbg !8 for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_337_count);
  llvm_cbe_tmp__73 = (unsigned char )*llvm_cbe_tmp__72;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__73);
if (AESL_DEBUG_TRACE)
printf("\n  %%46 = getelementptr inbounds [480 x [640 x i8]]* %%B, i64 0, i64 %%43, i64 %%30, !dbg !8 for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_338_count);
  llvm_cbe_tmp__74 = ( char *)(&(*llvm_cbe_B)[(((signed long long )llvm_cbe_tmp__71))
#ifdef AESL_BC_SIM
 % 480
#endif
][(((signed long long )llvm_cbe_tmp__64))
#ifdef AESL_BC_SIM
 % 640
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__71));
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__64));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__71) < 480 && "Write access out of array 'B' bound?");
  assert(((signed long long )llvm_cbe_tmp__64) < 640 && "Write access out of array 'B' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%45, i8* %%46, align 1, !dbg !8 for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_339_count);
  *llvm_cbe_tmp__74 = llvm_cbe_tmp__73;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__73);
  goto llvm_cbe_tmp__85;

  } while (1); /* end of syntactic loop '' */
llvm_cbe__2e_preheader:
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = sext i32 %%storemerge212 to i64, !dbg !8 for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_312_count);
  llvm_cbe_tmp__64 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge212);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__64);
  llvm_cbe_storemerge48__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__83;

  do {     /* Syntactic loop '.preheader9' to make GCC happy */
llvm_cbe__2e_preheader9:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge310 = phi i32 [ %%39, %%38 ], [ 0, %%28  for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_storemerge310_count);
  llvm_cbe_storemerge310 = (unsigned int )llvm_cbe_storemerge310__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge310 = 0x%X",llvm_cbe_storemerge310);
printf("\n = 0x%X",llvm_cbe_tmp__70);
printf("\n = 0x%X",0u);
}
  if ((((signed int )llvm_cbe_storemerge310) < ((signed int )llvm_cbe_tmp__50))) {
    goto llvm_cbe_tmp__86;
  } else {
    goto llvm_cbe_tmp__87;
  }

llvm_cbe_tmp__87:
if (AESL_DEBUG_TRACE)
printf("\n  %%39 = add nsw i32 %%storemerge310, 1, !dbg !14 for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_324_count);
  llvm_cbe_tmp__70 = (unsigned int )((unsigned int )(llvm_cbe_storemerge310&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__70&4294967295ull)));
  if (((llvm_cbe_tmp__70&4294967295U) == (480u&4294967295U))) {
    goto llvm_cbe__2e_preheader;
  } else {
    llvm_cbe_storemerge310__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__70;   /* for PHI node */
    goto llvm_cbe__2e_preheader9;
  }

llvm_cbe_tmp__86:
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = sext i32 %%storemerge310 to i64, !dbg !7 for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_316_count);
  llvm_cbe_tmp__65 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge310);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__65);
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = getelementptr inbounds [480 x i8]* %%tempc, i64 0, i64 %%33, !dbg !7 for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_317_count);
  llvm_cbe_tmp__66 = ( char *)(&llvm_cbe_tempc[(((signed long long )llvm_cbe_tmp__65))
#ifdef AESL_BC_SIM
 % 480
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__65));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__65) < 480 && "Write access out of array 'tempc' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 0, i8* %%34, align 1, !dbg !7 for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_318_count);
  *llvm_cbe_tmp__66 = ((unsigned char )0);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = add nsw i32 %%5, %%storemerge310, !dbg !8 for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_319_count);
  llvm_cbe_tmp__67 = (unsigned int )((unsigned int )(llvm_cbe_tmp__50&4294967295ull)) + ((unsigned int )(llvm_cbe_storemerge310&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__67&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = sext i32 %%35 to i64, !dbg !8 for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_320_count);
  llvm_cbe_tmp__68 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__67);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__68);
if (AESL_DEBUG_TRACE)
printf("\n  %%37 = getelementptr inbounds [480 x i8]* %%tempc, i64 0, i64 %%36, !dbg !8 for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_321_count);
  llvm_cbe_tmp__69 = ( char *)(&llvm_cbe_tempc[(((signed long long )llvm_cbe_tmp__68))
#ifdef AESL_BC_SIM
 % 480
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__68));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__68) < 480 && "Write access out of array 'tempc' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 0, i8* %%37, align 1, !dbg !8 for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_322_count);
  *llvm_cbe_tmp__69 = ((unsigned char )0);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
  goto llvm_cbe_tmp__87;

  } while (1); /* end of syntactic loop '.preheader9' */
  } while (1); /* end of syntactic loop '' */
llvm_cbe__2e_preheader11:
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = sdiv i32 %%2, 2, !dbg !11 for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_247_count);
  llvm_cbe_tmp__50 = (unsigned int )((signed int )(((signed int )llvm_cbe_tmp__47) / ((signed int )2u)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__50));
  llvm_cbe_storemerge212__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__82;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__79:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge119 = phi i32 [ 0, %%1 ], [ %%27, %%.loopexit14  for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_storemerge119_count);
  llvm_cbe_storemerge119 = (unsigned int )llvm_cbe_storemerge119__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge119 = 0x%X",llvm_cbe_storemerge119);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__63);
}
  if ((((signed int )llvm_cbe_storemerge119) < ((signed int )llvm_cbe_tmp__47))) {
    llvm_cbe_storemerge617__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe__2e_preheader18;
  } else {
    goto llvm_cbe__2e_loopexit14;
  }

llvm_cbe__2e_loopexit14:
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = add nsw i32 %%storemerge119, 1, !dbg !12 for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_293_count);
  llvm_cbe_tmp__63 = (unsigned int )((unsigned int )(llvm_cbe_storemerge119&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__63&4294967295ull)));
  if (((llvm_cbe_tmp__63&4294967295U) == (480u&4294967295U))) {
    goto llvm_cbe__2e_preheader11;
  } else {
    llvm_cbe_storemerge119__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__63;   /* for PHI node */
    goto llvm_cbe_tmp__79;
  }

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__88:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge715 = phi i32 [ 0, %%.preheader13 ], [ %%26, %%25  for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_storemerge715_count);
  llvm_cbe_storemerge715 = (unsigned int )llvm_cbe_storemerge715__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge715 = 0x%X",llvm_cbe_storemerge715);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__62);
}
  if ((((signed int )llvm_cbe_storemerge715) < ((signed int )llvm_cbe_tmp__48))) {
    goto llvm_cbe_tmp__89;
  } else {
    goto llvm_cbe_tmp__90;
  }

llvm_cbe_tmp__90:
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = add nsw i32 %%storemerge715, 1, !dbg !13 for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_285_count);
  llvm_cbe_tmp__62 = (unsigned int )((unsigned int )(llvm_cbe_storemerge715&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__62&4294967295ull)));
  if (((llvm_cbe_tmp__62&4294967295U) == (640u&4294967295U))) {
    goto llvm_cbe__2e_loopexit14;
  } else {
    llvm_cbe_storemerge715__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__62;   /* for PHI node */
    goto llvm_cbe_tmp__88;
  }

llvm_cbe_tmp__89:
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = sext i32 %%storemerge715 to i64, !dbg !7 for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_279_count);
  llvm_cbe_tmp__58 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge715);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__58);
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = getelementptr inbounds [640 x i8]* %%tempr, i64 0, i64 %%21, !dbg !7 for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_280_count);
  llvm_cbe_tmp__59 = ( char *)(&llvm_cbe_tempr[(((signed long long )llvm_cbe_tmp__58))
#ifdef AESL_BC_SIM
 % 640
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__58));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__58) < 640)) fprintf(stderr, "%s:%d: warning: Read access out of array 'tempr' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = load i8* %%22, align 1, !dbg !7 for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_281_count);
  llvm_cbe_tmp__60 = (unsigned char )*llvm_cbe_tmp__59;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__60);
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = getelementptr inbounds [480 x [640 x i8]]* %%B, i64 0, i64 %%8, i64 %%21, !dbg !7 for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_282_count);
  llvm_cbe_tmp__61 = ( char *)(&(*llvm_cbe_B)[(((signed long long )llvm_cbe_tmp__51))
#ifdef AESL_BC_SIM
 % 480
#endif
][(((signed long long )llvm_cbe_tmp__58))
#ifdef AESL_BC_SIM
 % 640
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__51));
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__58));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__51) < 480 && "Write access out of array 'B' bound?");
  assert(((signed long long )llvm_cbe_tmp__58) < 640 && "Write access out of array 'B' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%23, i8* %%24, align 1, !dbg !7 for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_283_count);
  *llvm_cbe_tmp__61 = llvm_cbe_tmp__60;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__60);
  goto llvm_cbe_tmp__90;

  } while (1); /* end of syntactic loop '' */
llvm_cbe__2e_preheader13:
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = sext i32 %%storemerge119 to i64, !dbg !7 for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_256_count);
  llvm_cbe_tmp__51 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge119);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__51);
  llvm_cbe_storemerge715__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__88;

  do {     /* Syntactic loop '.preheader18' to make GCC happy */
llvm_cbe__2e_preheader18:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge617 = phi i32 [ %%17, %%16 ], [ 0, %%6  for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_storemerge617_count);
  llvm_cbe_storemerge617 = (unsigned int )llvm_cbe_storemerge617__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge617 = 0x%X",llvm_cbe_storemerge617);
printf("\n = 0x%X",llvm_cbe_tmp__57);
printf("\n = 0x%X",0u);
}
  if ((((signed int )llvm_cbe_storemerge617) < ((signed int )llvm_cbe_tmp__49))) {
    goto llvm_cbe_tmp__91;
  } else {
    goto llvm_cbe_tmp__92;
  }

llvm_cbe_tmp__92:
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = add nsw i32 %%storemerge617, 1, !dbg !13 for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_268_count);
  llvm_cbe_tmp__57 = (unsigned int )((unsigned int )(llvm_cbe_storemerge617&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__57&4294967295ull)));
  if (((llvm_cbe_tmp__57&4294967295U) == (320u&4294967295U))) {
    goto llvm_cbe__2e_preheader13;
  } else {
    llvm_cbe_storemerge617__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__57;   /* for PHI node */
    goto llvm_cbe__2e_preheader18;
  }

llvm_cbe_tmp__91:
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = sext i32 %%storemerge617 to i64, !dbg !6 for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_260_count);
  llvm_cbe_tmp__52 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge617);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__52);
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = getelementptr inbounds [640 x i8]* %%tempr, i64 0, i64 %%11, !dbg !6 for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_261_count);
  llvm_cbe_tmp__53 = ( char *)(&llvm_cbe_tempr[(((signed long long )llvm_cbe_tmp__52))
#ifdef AESL_BC_SIM
 % 640
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__52));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__52) < 640 && "Write access out of array 'tempr' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 0, i8* %%12, align 1, !dbg !6 for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_262_count);
  *llvm_cbe_tmp__53 = ((unsigned char )0);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = add nsw i32 %%4, %%storemerge617, !dbg !7 for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_263_count);
  llvm_cbe_tmp__54 = (unsigned int )((unsigned int )(llvm_cbe_tmp__49&4294967295ull)) + ((unsigned int )(llvm_cbe_storemerge617&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__54&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = sext i32 %%13 to i64, !dbg !7 for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_264_count);
  llvm_cbe_tmp__55 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__54);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__55);
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = getelementptr inbounds [640 x i8]* %%tempr, i64 0, i64 %%14, !dbg !7 for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_265_count);
  llvm_cbe_tmp__56 = ( char *)(&llvm_cbe_tempr[(((signed long long )llvm_cbe_tmp__55))
#ifdef AESL_BC_SIM
 % 640
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__55));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__55) < 640 && "Write access out of array 'tempr' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 0, i8* %%15, align 1, !dbg !7 for 0x%I64xth hint within @DWT_IR  --> \n", ++aesl_llvm_cbe_266_count);
  *llvm_cbe_tmp__56 = ((unsigned char )0);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
  goto llvm_cbe_tmp__92;

  } while (1); /* end of syntactic loop '.preheader18' */
  } while (1); /* end of syntactic loop '' */
  } while (1); /* end of syntactic loop '' */
llvm_cbe_tmp__81:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @DWT_IR}\n");
  return;
}


void Filter( char (*llvm_cbe_A)[480][640],  char (*llvm_cbe_B)[480][640],  char (*llvm_cbe_C)[480][640]) {
  static  unsigned long long aesl_llvm_cbe_367_count = 0;
  static  unsigned long long aesl_llvm_cbe_368_count = 0;
  static  unsigned long long aesl_llvm_cbe_369_count = 0;
  static  unsigned long long aesl_llvm_cbe_370_count = 0;
  static  unsigned long long aesl_llvm_cbe_371_count = 0;
  static  unsigned long long aesl_llvm_cbe_372_count = 0;
  static  unsigned long long aesl_llvm_cbe_373_count = 0;
  static  unsigned long long aesl_llvm_cbe_374_count = 0;
  static  unsigned long long aesl_llvm_cbe_375_count = 0;
  static  unsigned long long aesl_llvm_cbe_376_count = 0;
  static  unsigned long long aesl_llvm_cbe_377_count = 0;
  static  unsigned long long aesl_llvm_cbe_378_count = 0;
  static  unsigned long long aesl_llvm_cbe_379_count = 0;
  static  unsigned long long aesl_llvm_cbe_380_count = 0;
  static  unsigned long long aesl_llvm_cbe_381_count = 0;
  static  unsigned long long aesl_llvm_cbe_382_count = 0;
  static  unsigned long long aesl_llvm_cbe_383_count = 0;
  static  unsigned long long aesl_llvm_cbe_384_count = 0;
  static  unsigned long long aesl_llvm_cbe_385_count = 0;
  static  unsigned long long aesl_llvm_cbe_386_count = 0;
  static  unsigned long long aesl_llvm_cbe_387_count = 0;
  static  unsigned long long aesl_llvm_cbe_388_count = 0;
  static  unsigned long long aesl_llvm_cbe_389_count = 0;
  static  unsigned long long aesl_llvm_cbe_390_count = 0;
  static  unsigned long long aesl_llvm_cbe_391_count = 0;
  static  unsigned long long aesl_llvm_cbe_392_count = 0;
  static  unsigned long long aesl_llvm_cbe_393_count = 0;
  static  unsigned long long aesl_llvm_cbe_394_count = 0;
  static  unsigned long long aesl_llvm_cbe_395_count = 0;
  static  unsigned long long aesl_llvm_cbe_396_count = 0;
  static  unsigned long long aesl_llvm_cbe_397_count = 0;
  static  unsigned long long aesl_llvm_cbe_398_count = 0;
  static  unsigned long long aesl_llvm_cbe_399_count = 0;
  static  unsigned long long aesl_llvm_cbe_400_count = 0;
  static  unsigned long long aesl_llvm_cbe_401_count = 0;
  static  unsigned long long aesl_llvm_cbe_402_count = 0;
  static  unsigned long long aesl_llvm_cbe_403_count = 0;
  static  unsigned long long aesl_llvm_cbe_404_count = 0;
  static  unsigned long long aesl_llvm_cbe_405_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge3_count = 0;
  unsigned int llvm_cbe_storemerge3;
  unsigned int llvm_cbe_storemerge3__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_406_count = 0;
  static  unsigned long long aesl_llvm_cbe_407_count = 0;
  static  unsigned long long aesl_llvm_cbe_408_count = 0;
  static  unsigned long long aesl_llvm_cbe_409_count = 0;
  static  unsigned long long aesl_llvm_cbe_410_count = 0;
  static  unsigned long long aesl_llvm_cbe_411_count = 0;
  static  unsigned long long aesl_llvm_cbe_412_count = 0;
  static  unsigned long long aesl_llvm_cbe_413_count = 0;
  static  unsigned long long aesl_llvm_cbe_414_count = 0;
  static  unsigned long long aesl_llvm_cbe_415_count = 0;
  static  unsigned long long aesl_llvm_cbe_416_count = 0;
  static  unsigned long long aesl_llvm_cbe_417_count = 0;
  static  unsigned long long aesl_llvm_cbe_418_count = 0;
  static  unsigned long long aesl_llvm_cbe_419_count = 0;
  static  unsigned long long aesl_llvm_cbe_420_count = 0;
  static  unsigned long long aesl_llvm_cbe_421_count = 0;
  static  unsigned long long aesl_llvm_cbe_422_count = 0;
  static  unsigned long long aesl_llvm_cbe_423_count = 0;
  static  unsigned long long aesl_llvm_cbe_424_count = 0;
  static  unsigned long long aesl_llvm_cbe_425_count = 0;
  static  unsigned long long aesl_llvm_cbe_426_count = 0;
  unsigned long long llvm_cbe_tmp__93;
  static  unsigned long long aesl_llvm_cbe_427_count = 0;
  static  unsigned long long aesl_llvm_cbe_428_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge12_2e_us_count = 0;
  unsigned int llvm_cbe_storemerge12_2e_us;
  unsigned int llvm_cbe_storemerge12_2e_us__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_429_count = 0;
  unsigned long long llvm_cbe_tmp__94;
  static  unsigned long long aesl_llvm_cbe_430_count = 0;
   char *llvm_cbe_tmp__95;
  static  unsigned long long aesl_llvm_cbe_431_count = 0;
  unsigned char llvm_cbe_tmp__96;
  static  unsigned long long aesl_llvm_cbe_432_count = 0;
  unsigned int llvm_cbe_tmp__97;
  static  unsigned long long aesl_llvm_cbe_433_count = 0;
  double llvm_cbe_tmp__98;
  static  unsigned long long aesl_llvm_cbe_434_count = 0;
  double llvm_cbe_tmp__99;
  static  unsigned long long aesl_llvm_cbe_435_count = 0;
   char *llvm_cbe_tmp__100;
  static  unsigned long long aesl_llvm_cbe_436_count = 0;
  unsigned char llvm_cbe_tmp__101;
  static  unsigned long long aesl_llvm_cbe_437_count = 0;
  unsigned int llvm_cbe_tmp__102;
  static  unsigned long long aesl_llvm_cbe_438_count = 0;
  double llvm_cbe_tmp__103;
  static  unsigned long long aesl_llvm_cbe_439_count = 0;
  double llvm_cbe_tmp__104;
  static  unsigned long long aesl_llvm_cbe_440_count = 0;
  double llvm_cbe_tmp__105;
  static  unsigned long long aesl_llvm_cbe_441_count = 0;
  unsigned char llvm_cbe_tmp__106;
  static  unsigned long long aesl_llvm_cbe_442_count = 0;
   char *llvm_cbe_tmp__107;
  static  unsigned long long aesl_llvm_cbe_443_count = 0;
  static  unsigned long long aesl_llvm_cbe_444_count = 0;
  unsigned int llvm_cbe_tmp__108;
  static  unsigned long long aesl_llvm_cbe_445_count = 0;
  static  unsigned long long aesl_llvm_cbe_446_count = 0;
  static  unsigned long long aesl_llvm_cbe_447_count = 0;
  static  unsigned long long aesl_llvm_cbe_448_count = 0;
  static  unsigned long long aesl_llvm_cbe_449_count = 0;
  static  unsigned long long aesl_llvm_cbe_450_count = 0;
  static  unsigned long long aesl_llvm_cbe_451_count = 0;
  static  unsigned long long aesl_llvm_cbe_452_count = 0;
  static  unsigned long long aesl_llvm_cbe_453_count = 0;
  static  unsigned long long aesl_llvm_cbe_454_count = 0;
  static  unsigned long long aesl_llvm_cbe_455_count = 0;
  static  unsigned long long aesl_llvm_cbe_456_count = 0;
  static  unsigned long long aesl_llvm_cbe_457_count = 0;
  static  unsigned long long aesl_llvm_cbe_458_count = 0;
  static  unsigned long long aesl_llvm_cbe_459_count = 0;
  static  unsigned long long aesl_llvm_cbe_460_count = 0;
  static  unsigned long long aesl_llvm_cbe_461_count = 0;
  static  unsigned long long aesl_llvm_cbe_462_count = 0;
  static  unsigned long long aesl_llvm_cbe_463_count = 0;
  static  unsigned long long aesl_llvm_cbe_464_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_465_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge12_count = 0;
  unsigned int llvm_cbe_storemerge12;
  unsigned int llvm_cbe_storemerge12__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_466_count = 0;
  static  unsigned long long aesl_llvm_cbe_467_count = 0;
  static  unsigned long long aesl_llvm_cbe_468_count = 0;
  static  unsigned long long aesl_llvm_cbe_469_count = 0;
  unsigned long long llvm_cbe_tmp__109;
  static  unsigned long long aesl_llvm_cbe_470_count = 0;
   char *llvm_cbe_tmp__110;
  static  unsigned long long aesl_llvm_cbe_471_count = 0;
  unsigned char llvm_cbe_tmp__111;
  static  unsigned long long aesl_llvm_cbe_472_count = 0;
  unsigned int llvm_cbe_tmp__112;
  static  unsigned long long aesl_llvm_cbe_473_count = 0;
  double llvm_cbe_tmp__113;
  static  unsigned long long aesl_llvm_cbe_474_count = 0;
  double llvm_cbe_tmp__114;
  static  unsigned long long aesl_llvm_cbe_475_count = 0;
   char *llvm_cbe_tmp__115;
  static  unsigned long long aesl_llvm_cbe_476_count = 0;
  unsigned char llvm_cbe_tmp__116;
  static  unsigned long long aesl_llvm_cbe_477_count = 0;
  unsigned int llvm_cbe_tmp__117;
  static  unsigned long long aesl_llvm_cbe_478_count = 0;
  double llvm_cbe_tmp__118;
  static  unsigned long long aesl_llvm_cbe_479_count = 0;
  double llvm_cbe_tmp__119;
  static  unsigned long long aesl_llvm_cbe_480_count = 0;
  double llvm_cbe_tmp__120;
  static  unsigned long long aesl_llvm_cbe_481_count = 0;
  unsigned char llvm_cbe_tmp__121;
  static  unsigned long long aesl_llvm_cbe_482_count = 0;
   char *llvm_cbe_tmp__122;
  static  unsigned long long aesl_llvm_cbe_483_count = 0;
  static  unsigned long long aesl_llvm_cbe_484_count = 0;
  static  unsigned long long aesl_llvm_cbe_485_count = 0;
  static  unsigned long long aesl_llvm_cbe_486_count = 0;
  static  unsigned long long aesl_llvm_cbe_487_count = 0;
  unsigned long long llvm_cbe_tmp__123;
  static  unsigned long long aesl_llvm_cbe_488_count = 0;
   char *llvm_cbe_tmp__124;
  static  unsigned long long aesl_llvm_cbe_489_count = 0;
  unsigned char llvm_cbe_tmp__125;
  static  unsigned long long aesl_llvm_cbe_490_count = 0;
  unsigned int llvm_cbe_tmp__126;
  static  unsigned long long aesl_llvm_cbe_491_count = 0;
  double llvm_cbe_tmp__127;
  static  unsigned long long aesl_llvm_cbe_492_count = 0;
  double llvm_cbe_tmp__128;
  static  unsigned long long aesl_llvm_cbe_493_count = 0;
   char *llvm_cbe_tmp__129;
  static  unsigned long long aesl_llvm_cbe_494_count = 0;
  unsigned char llvm_cbe_tmp__130;
  static  unsigned long long aesl_llvm_cbe_495_count = 0;
  unsigned int llvm_cbe_tmp__131;
  static  unsigned long long aesl_llvm_cbe_496_count = 0;
  double llvm_cbe_tmp__132;
  static  unsigned long long aesl_llvm_cbe_497_count = 0;
  double llvm_cbe_tmp__133;
  static  unsigned long long aesl_llvm_cbe_498_count = 0;
  double llvm_cbe_tmp__134;
  static  unsigned long long aesl_llvm_cbe_499_count = 0;
  unsigned char llvm_cbe_tmp__135;
  static  unsigned long long aesl_llvm_cbe_500_count = 0;
   char *llvm_cbe_tmp__136;
  static  unsigned long long aesl_llvm_cbe_501_count = 0;
  static  unsigned long long aesl_llvm_cbe_502_count = 0;
  static  unsigned long long aesl_llvm_cbe_503_count = 0;
  unsigned long long llvm_cbe_tmp__137;
  static  unsigned long long aesl_llvm_cbe_504_count = 0;
   char *llvm_cbe_tmp__138;
  static  unsigned long long aesl_llvm_cbe_505_count = 0;
  unsigned char llvm_cbe_tmp__139;
  static  unsigned long long aesl_llvm_cbe_506_count = 0;
   char *llvm_cbe_tmp__140;
  static  unsigned long long aesl_llvm_cbe_507_count = 0;
  static  unsigned long long aesl_llvm_cbe_508_count = 0;
  static  unsigned long long aesl_llvm_cbe_509_count = 0;
  static  unsigned long long aesl_llvm_cbe_510_count = 0;
  unsigned int llvm_cbe_tmp__141;
  static  unsigned long long aesl_llvm_cbe_511_count = 0;
  static  unsigned long long aesl_llvm_cbe_512_count = 0;
  static  unsigned long long aesl_llvm_cbe_513_count = 0;
  static  unsigned long long aesl_llvm_cbe_514_count = 0;
  static  unsigned long long aesl_llvm_cbe_515_count = 0;
  static  unsigned long long aesl_llvm_cbe_516_count = 0;
  static  unsigned long long aesl_llvm_cbe_517_count = 0;
  static  unsigned long long aesl_llvm_cbe_518_count = 0;
  static  unsigned long long aesl_llvm_cbe_519_count = 0;
  static  unsigned long long aesl_llvm_cbe_520_count = 0;
  static  unsigned long long aesl_llvm_cbe_521_count = 0;
  static  unsigned long long aesl_llvm_cbe_522_count = 0;
  static  unsigned long long aesl_llvm_cbe_523_count = 0;
  static  unsigned long long aesl_llvm_cbe_524_count = 0;
  static  unsigned long long aesl_llvm_cbe_525_count = 0;
  static  unsigned long long aesl_llvm_cbe_526_count = 0;
  static  unsigned long long aesl_llvm_cbe_527_count = 0;
  static  unsigned long long aesl_llvm_cbe_528_count = 0;
  static  unsigned long long aesl_llvm_cbe_529_count = 0;
  static  unsigned long long aesl_llvm_cbe_530_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond4_count = 0;
  static  unsigned long long aesl_llvm_cbe_531_count = 0;
  static  unsigned long long aesl_llvm_cbe_532_count = 0;
  unsigned int llvm_cbe_tmp__142;
  static  unsigned long long aesl_llvm_cbe_533_count = 0;
  static  unsigned long long aesl_llvm_cbe_534_count = 0;
  static  unsigned long long aesl_llvm_cbe_535_count = 0;
  static  unsigned long long aesl_llvm_cbe_536_count = 0;
  static  unsigned long long aesl_llvm_cbe_537_count = 0;
  static  unsigned long long aesl_llvm_cbe_538_count = 0;
  static  unsigned long long aesl_llvm_cbe_539_count = 0;
  static  unsigned long long aesl_llvm_cbe_540_count = 0;
  static  unsigned long long aesl_llvm_cbe_541_count = 0;
  static  unsigned long long aesl_llvm_cbe_542_count = 0;
  static  unsigned long long aesl_llvm_cbe_543_count = 0;
  static  unsigned long long aesl_llvm_cbe_544_count = 0;
  static  unsigned long long aesl_llvm_cbe_545_count = 0;
  static  unsigned long long aesl_llvm_cbe_546_count = 0;
  static  unsigned long long aesl_llvm_cbe_547_count = 0;
  static  unsigned long long aesl_llvm_cbe_548_count = 0;
  static  unsigned long long aesl_llvm_cbe_549_count = 0;
  static  unsigned long long aesl_llvm_cbe_550_count = 0;
  static  unsigned long long aesl_llvm_cbe_551_count = 0;
  static  unsigned long long aesl_llvm_cbe_552_count = 0;
  static  unsigned long long aesl_llvm_cbe_553_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond5_count = 0;
  static  unsigned long long aesl_llvm_cbe_554_count = 0;
  static  unsigned long long aesl_llvm_cbe_555_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @Filter\n");
  llvm_cbe_storemerge3__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe__2e_preheader;

  do {     /* Syntactic loop '.preheader' to make GCC happy */
llvm_cbe__2e_preheader:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge3 = phi i32 [ 0, %%0 ], [ %%61, %%.us-lcssa.us  for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_storemerge3_count);
  llvm_cbe_storemerge3 = (unsigned int )llvm_cbe_storemerge3__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge3 = 0x%X",llvm_cbe_storemerge3);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__142);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = sext i32 %%storemerge3 to i64, !dbg !5 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_426_count);
  llvm_cbe_tmp__93 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge3);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__93);
  if ((((signed int )llvm_cbe_storemerge3) > ((signed int )319u))) {
    llvm_cbe_storemerge12_2e_us__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe_tmp__143;
  } else {
    llvm_cbe_storemerge12__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe__2e_preheader_2e__2e_preheader_2e_split_crit_edge;
  }

llvm_cbe__2e_us_2d_lcssa_2e_us:
if (AESL_DEBUG_TRACE)
printf("\n  %%61 = add nsw i32 %%storemerge3, 1, !dbg !8 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_532_count);
  llvm_cbe_tmp__142 = (unsigned int )((unsigned int )(llvm_cbe_storemerge3&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__142&4294967295ull)));
  if (((llvm_cbe_tmp__142&4294967295U) == (640u&4294967295U))) {
    goto llvm_cbe_tmp__144;
  } else {
    llvm_cbe_storemerge3__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__142;   /* for PHI node */
    goto llvm_cbe__2e_preheader;
  }

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__143:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge12.us = phi i32 [ %%19, %%4 ], [ 0, %%.preheader  for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_storemerge12_2e_us_count);
  llvm_cbe_storemerge12_2e_us = (unsigned int )llvm_cbe_storemerge12_2e_us__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge12.us = 0x%X",llvm_cbe_storemerge12_2e_us);
printf("\n = 0x%X",llvm_cbe_tmp__108);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = sext i32 %%storemerge12.us to i64, !dbg !5 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_429_count);
  llvm_cbe_tmp__94 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge12_2e_us);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__94);
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = getelementptr inbounds [480 x [640 x i8]]* %%A, i64 0, i64 %%5, i64 %%2, !dbg !5 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_430_count);
  llvm_cbe_tmp__95 = ( char *)(&(*llvm_cbe_A)[(((signed long long )llvm_cbe_tmp__94))
#ifdef AESL_BC_SIM
 % 480
#endif
][(((signed long long )llvm_cbe_tmp__93))
#ifdef AESL_BC_SIM
 % 640
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__94));
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__93));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__94) < 480)) fprintf(stderr, "%s:%d: warning: Read access out of array 'A' bound?\n", __FILE__, __LINE__);
  if (!(((signed long long )llvm_cbe_tmp__93) < 640)) fprintf(stderr, "%s:%d: warning: Read access out of array 'A' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = load i8* %%6, align 1, !dbg !5 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_431_count);
  llvm_cbe_tmp__96 = (unsigned char )*llvm_cbe_tmp__95;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__96);
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = zext i8 %%7 to i32, !dbg !5 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_432_count);
  llvm_cbe_tmp__97 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__96&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__97);
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = sitofp i32 %%8 to double, !dbg !5 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_433_count);
  llvm_cbe_tmp__98 = (double )((double )(signed int )llvm_cbe_tmp__97);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__98, *(long long*)(&llvm_cbe_tmp__98));
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = fmul double %%9, 1.000000e-01, !dbg !5 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_434_count);
  llvm_cbe_tmp__99 = (double )llvm_cbe_tmp__98 * 0x1.999999999999ap-4;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__99, *(long long*)(&llvm_cbe_tmp__99));
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = getelementptr inbounds [480 x [640 x i8]]* %%B, i64 0, i64 %%5, i64 %%2, !dbg !5 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_435_count);
  llvm_cbe_tmp__100 = ( char *)(&(*llvm_cbe_B)[(((signed long long )llvm_cbe_tmp__94))
#ifdef AESL_BC_SIM
 % 480
#endif
][(((signed long long )llvm_cbe_tmp__93))
#ifdef AESL_BC_SIM
 % 640
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__94));
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__93));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__94) < 480)) fprintf(stderr, "%s:%d: warning: Read access out of array 'B' bound?\n", __FILE__, __LINE__);
  if (!(((signed long long )llvm_cbe_tmp__93) < 640)) fprintf(stderr, "%s:%d: warning: Read access out of array 'B' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = load i8* %%11, align 1, !dbg !5 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_436_count);
  llvm_cbe_tmp__101 = (unsigned char )*llvm_cbe_tmp__100;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__101);
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = zext i8 %%12 to i32, !dbg !5 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_437_count);
  llvm_cbe_tmp__102 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__101&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__102);
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = sitofp i32 %%13 to double, !dbg !5 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_438_count);
  llvm_cbe_tmp__103 = (double )((double )(signed int )llvm_cbe_tmp__102);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__103, *(long long*)(&llvm_cbe_tmp__103));
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = fmul double %%14, 9.000000e-01, !dbg !5 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_439_count);
  llvm_cbe_tmp__104 = (double )llvm_cbe_tmp__103 * 0x1.ccccccccccccdp-1;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__104, *(long long*)(&llvm_cbe_tmp__104));
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = fadd double %%10, %%15, !dbg !5 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_440_count);
  llvm_cbe_tmp__105 = (double )llvm_cbe_tmp__99 + llvm_cbe_tmp__104;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__105, *(long long*)(&llvm_cbe_tmp__105));
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = fptoui double %%16 to i8, !dbg !5 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_441_count);
  llvm_cbe_tmp__106 = (unsigned char )((unsigned char )llvm_cbe_tmp__105&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__106);
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = getelementptr inbounds [480 x [640 x i8]]* %%C, i64 0, i64 %%5, i64 %%2, !dbg !5 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_442_count);
  llvm_cbe_tmp__107 = ( char *)(&(*llvm_cbe_C)[(((signed long long )llvm_cbe_tmp__94))
#ifdef AESL_BC_SIM
 % 480
#endif
][(((signed long long )llvm_cbe_tmp__93))
#ifdef AESL_BC_SIM
 % 640
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__94));
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__93));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__94) < 480 && "Write access out of array 'C' bound?");
  assert(((signed long long )llvm_cbe_tmp__93) < 640 && "Write access out of array 'C' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%17, i8* %%18, align 1, !dbg !5 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_443_count);
  *llvm_cbe_tmp__107 = llvm_cbe_tmp__106;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__106);
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = add nsw i32 %%storemerge12.us, 1, !dbg !8 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_444_count);
  llvm_cbe_tmp__108 = (unsigned int )((unsigned int )(llvm_cbe_storemerge12_2e_us&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__108&4294967295ull)));
  if (((llvm_cbe_tmp__108&4294967295U) == (480u&4294967295U))) {
    goto llvm_cbe__2e_us_2d_lcssa_2e_us;
  } else {
    llvm_cbe_storemerge12_2e_us__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__108;   /* for PHI node */
    goto llvm_cbe_tmp__143;
  }

  } while (1); /* end of syntactic loop '' */
  do {     /* Syntactic loop '.preheader..preheader.split_crit_edge' to make GCC happy */
llvm_cbe__2e_preheader_2e__2e_preheader_2e_split_crit_edge:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge12 = phi i32 [ %%60, %%59 ], [ 0, %%.preheader  for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_storemerge12_count);
  llvm_cbe_storemerge12 = (unsigned int )llvm_cbe_storemerge12__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge12 = 0x%X",llvm_cbe_storemerge12);
printf("\n = 0x%X",llvm_cbe_tmp__141);
printf("\n = 0x%X",0u);
}
  if ((((signed int )llvm_cbe_storemerge12) > ((signed int )239u))) {
    goto llvm_cbe_tmp__145;
  } else {
    goto llvm_cbe__2e_thread;
  }

llvm_cbe_tmp__146:
if (AESL_DEBUG_TRACE)
printf("\n  %%60 = add nsw i32 %%storemerge12, 1, !dbg !8 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_510_count);
  llvm_cbe_tmp__141 = (unsigned int )((unsigned int )(llvm_cbe_storemerge12&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__141&4294967295ull)));
  if (((llvm_cbe_tmp__141&4294967295U) == (480u&4294967295U))) {
    goto llvm_cbe__2e_us_2d_lcssa_2e_us;
  } else {
    llvm_cbe_storemerge12__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__141;   /* for PHI node */
    goto llvm_cbe__2e_preheader_2e__2e_preheader_2e_split_crit_edge;
  }

llvm_cbe_tmp__147:
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = sext i32 %%storemerge12 to i64, !dbg !6 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_469_count);
  llvm_cbe_tmp__109 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge12);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__109);
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = getelementptr inbounds [480 x [640 x i8]]* %%A, i64 0, i64 %%23, i64 %%2, !dbg !6 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_470_count);
  llvm_cbe_tmp__110 = ( char *)(&(*llvm_cbe_A)[(((signed long long )llvm_cbe_tmp__109))
#ifdef AESL_BC_SIM
 % 480
#endif
][(((signed long long )llvm_cbe_tmp__93))
#ifdef AESL_BC_SIM
 % 640
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__109));
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__93));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__109) < 480)) fprintf(stderr, "%s:%d: warning: Read access out of array 'A' bound?\n", __FILE__, __LINE__);
  if (!(((signed long long )llvm_cbe_tmp__93) < 640)) fprintf(stderr, "%s:%d: warning: Read access out of array 'A' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = load i8* %%24, align 1, !dbg !6 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_471_count);
  llvm_cbe_tmp__111 = (unsigned char )*llvm_cbe_tmp__110;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__111);
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = zext i8 %%25 to i32, !dbg !6 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_472_count);
  llvm_cbe_tmp__112 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__111&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__112);
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = sitofp i32 %%26 to double, !dbg !6 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_473_count);
  llvm_cbe_tmp__113 = (double )((double )(signed int )llvm_cbe_tmp__112);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__113, *(long long*)(&llvm_cbe_tmp__113));
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = fmul double %%27, 1.000000e-01, !dbg !6 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_474_count);
  llvm_cbe_tmp__114 = (double )llvm_cbe_tmp__113 * 0x1.999999999999ap-4;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__114, *(long long*)(&llvm_cbe_tmp__114));
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = getelementptr inbounds [480 x [640 x i8]]* %%B, i64 0, i64 %%23, i64 %%2, !dbg !6 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_475_count);
  llvm_cbe_tmp__115 = ( char *)(&(*llvm_cbe_B)[(((signed long long )llvm_cbe_tmp__109))
#ifdef AESL_BC_SIM
 % 480
#endif
][(((signed long long )llvm_cbe_tmp__93))
#ifdef AESL_BC_SIM
 % 640
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__109));
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__93));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__109) < 480)) fprintf(stderr, "%s:%d: warning: Read access out of array 'B' bound?\n", __FILE__, __LINE__);
  if (!(((signed long long )llvm_cbe_tmp__93) < 640)) fprintf(stderr, "%s:%d: warning: Read access out of array 'B' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = load i8* %%29, align 1, !dbg !6 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_476_count);
  llvm_cbe_tmp__116 = (unsigned char )*llvm_cbe_tmp__115;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__116);
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = zext i8 %%30 to i32, !dbg !6 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_477_count);
  llvm_cbe_tmp__117 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__116&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__117);
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = sitofp i32 %%31 to double, !dbg !6 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_478_count);
  llvm_cbe_tmp__118 = (double )((double )(signed int )llvm_cbe_tmp__117);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__118, *(long long*)(&llvm_cbe_tmp__118));
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = fmul double %%32, 9.000000e-01, !dbg !6 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_479_count);
  llvm_cbe_tmp__119 = (double )llvm_cbe_tmp__118 * 0x1.ccccccccccccdp-1;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__119, *(long long*)(&llvm_cbe_tmp__119));
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = fadd double %%28, %%33, !dbg !6 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_480_count);
  llvm_cbe_tmp__120 = (double )llvm_cbe_tmp__114 + llvm_cbe_tmp__119;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__120, *(long long*)(&llvm_cbe_tmp__120));
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = fptoui double %%34 to i8, !dbg !6 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_481_count);
  llvm_cbe_tmp__121 = (unsigned char )((unsigned char )llvm_cbe_tmp__120&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__121);
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = getelementptr inbounds [480 x [640 x i8]]* %%C, i64 0, i64 %%23, i64 %%2, !dbg !6 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_482_count);
  llvm_cbe_tmp__122 = ( char *)(&(*llvm_cbe_C)[(((signed long long )llvm_cbe_tmp__109))
#ifdef AESL_BC_SIM
 % 480
#endif
][(((signed long long )llvm_cbe_tmp__93))
#ifdef AESL_BC_SIM
 % 640
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__109));
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__93));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__109) < 480 && "Write access out of array 'C' bound?");
  assert(((signed long long )llvm_cbe_tmp__93) < 640 && "Write access out of array 'C' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%35, i8* %%36, align 1, !dbg !6 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_483_count);
  *llvm_cbe_tmp__122 = llvm_cbe_tmp__121;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__121);
  goto llvm_cbe_tmp__146;

llvm_cbe_tmp__145:
  if ((((signed int )llvm_cbe_storemerge3) < ((signed int )320u))) {
    goto llvm_cbe_tmp__147;
  } else {
    goto llvm_cbe_tmp__148;
  }

llvm_cbe_tmp__149:
  goto llvm_cbe_tmp__146;

llvm_cbe__2e_thread:
if (AESL_DEBUG_TRACE)
printf("\n  %%39 = sext i32 %%storemerge12 to i64, !dbg !6 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_487_count);
  llvm_cbe_tmp__123 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge12);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__123);
if (AESL_DEBUG_TRACE)
printf("\n  %%40 = getelementptr inbounds [480 x [640 x i8]]* %%A, i64 0, i64 %%39, i64 %%2, !dbg !6 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_488_count);
  llvm_cbe_tmp__124 = ( char *)(&(*llvm_cbe_A)[(((signed long long )llvm_cbe_tmp__123))
#ifdef AESL_BC_SIM
 % 480
#endif
][(((signed long long )llvm_cbe_tmp__93))
#ifdef AESL_BC_SIM
 % 640
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__123));
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__93));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__123) < 480)) fprintf(stderr, "%s:%d: warning: Read access out of array 'A' bound?\n", __FILE__, __LINE__);
  if (!(((signed long long )llvm_cbe_tmp__93) < 640)) fprintf(stderr, "%s:%d: warning: Read access out of array 'A' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%41 = load i8* %%40, align 1, !dbg !6 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_489_count);
  llvm_cbe_tmp__125 = (unsigned char )*llvm_cbe_tmp__124;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__125);
if (AESL_DEBUG_TRACE)
printf("\n  %%42 = zext i8 %%41 to i32, !dbg !6 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_490_count);
  llvm_cbe_tmp__126 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__125&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__126);
if (AESL_DEBUG_TRACE)
printf("\n  %%43 = sitofp i32 %%42 to double, !dbg !6 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_491_count);
  llvm_cbe_tmp__127 = (double )((double )(signed int )llvm_cbe_tmp__126);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__127, *(long long*)(&llvm_cbe_tmp__127));
if (AESL_DEBUG_TRACE)
printf("\n  %%44 = fmul double %%43, 5.000000e-01, !dbg !6 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_492_count);
  llvm_cbe_tmp__128 = (double )llvm_cbe_tmp__127 * 0x1p-1;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__128, *(long long*)(&llvm_cbe_tmp__128));
if (AESL_DEBUG_TRACE)
printf("\n  %%45 = getelementptr inbounds [480 x [640 x i8]]* %%B, i64 0, i64 %%39, i64 %%2, !dbg !6 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_493_count);
  llvm_cbe_tmp__129 = ( char *)(&(*llvm_cbe_B)[(((signed long long )llvm_cbe_tmp__123))
#ifdef AESL_BC_SIM
 % 480
#endif
][(((signed long long )llvm_cbe_tmp__93))
#ifdef AESL_BC_SIM
 % 640
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__123));
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__93));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__123) < 480)) fprintf(stderr, "%s:%d: warning: Read access out of array 'B' bound?\n", __FILE__, __LINE__);
  if (!(((signed long long )llvm_cbe_tmp__93) < 640)) fprintf(stderr, "%s:%d: warning: Read access out of array 'B' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%46 = load i8* %%45, align 1, !dbg !6 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_494_count);
  llvm_cbe_tmp__130 = (unsigned char )*llvm_cbe_tmp__129;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__130);
if (AESL_DEBUG_TRACE)
printf("\n  %%47 = zext i8 %%46 to i32, !dbg !6 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_495_count);
  llvm_cbe_tmp__131 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__130&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__131);
if (AESL_DEBUG_TRACE)
printf("\n  %%48 = sitofp i32 %%47 to double, !dbg !6 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_496_count);
  llvm_cbe_tmp__132 = (double )((double )(signed int )llvm_cbe_tmp__131);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__132, *(long long*)(&llvm_cbe_tmp__132));
if (AESL_DEBUG_TRACE)
printf("\n  %%49 = fmul double %%48, 5.000000e-01, !dbg !6 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_497_count);
  llvm_cbe_tmp__133 = (double )llvm_cbe_tmp__132 * 0x1p-1;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__133, *(long long*)(&llvm_cbe_tmp__133));
if (AESL_DEBUG_TRACE)
printf("\n  %%50 = fadd double %%44, %%49, !dbg !6 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_498_count);
  llvm_cbe_tmp__134 = (double )llvm_cbe_tmp__128 + llvm_cbe_tmp__133;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__134, *(long long*)(&llvm_cbe_tmp__134));
if (AESL_DEBUG_TRACE)
printf("\n  %%51 = fptoui double %%50 to i8, !dbg !6 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_499_count);
  llvm_cbe_tmp__135 = (unsigned char )((unsigned char )llvm_cbe_tmp__134&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__135);
if (AESL_DEBUG_TRACE)
printf("\n  %%52 = getelementptr inbounds [480 x [640 x i8]]* %%C, i64 0, i64 %%39, i64 %%2, !dbg !6 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_500_count);
  llvm_cbe_tmp__136 = ( char *)(&(*llvm_cbe_C)[(((signed long long )llvm_cbe_tmp__123))
#ifdef AESL_BC_SIM
 % 480
#endif
][(((signed long long )llvm_cbe_tmp__93))
#ifdef AESL_BC_SIM
 % 640
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__123));
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__93));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__123) < 480 && "Write access out of array 'C' bound?");
  assert(((signed long long )llvm_cbe_tmp__93) < 640 && "Write access out of array 'C' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%51, i8* %%52, align 1, !dbg !6 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_501_count);
  *llvm_cbe_tmp__136 = llvm_cbe_tmp__135;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__135);
  goto llvm_cbe_tmp__149;

llvm_cbe_tmp__148:
  if ((((signed int )llvm_cbe_storemerge12) < ((signed int )240u))) {
    goto llvm_cbe__2e_thread;
  } else {
    goto llvm_cbe_tmp__150;
  }

llvm_cbe_tmp__150:
if (AESL_DEBUG_TRACE)
printf("\n  %%54 = sext i32 %%storemerge12 to i64, !dbg !7 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_503_count);
  llvm_cbe_tmp__137 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge12);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__137);
if (AESL_DEBUG_TRACE)
printf("\n  %%55 = getelementptr inbounds [480 x [640 x i8]]* %%A, i64 0, i64 %%54, i64 %%2, !dbg !7 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_504_count);
  llvm_cbe_tmp__138 = ( char *)(&(*llvm_cbe_A)[(((signed long long )llvm_cbe_tmp__137))
#ifdef AESL_BC_SIM
 % 480
#endif
][(((signed long long )llvm_cbe_tmp__93))
#ifdef AESL_BC_SIM
 % 640
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__137));
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__93));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__137) < 480)) fprintf(stderr, "%s:%d: warning: Read access out of array 'A' bound?\n", __FILE__, __LINE__);
  if (!(((signed long long )llvm_cbe_tmp__93) < 640)) fprintf(stderr, "%s:%d: warning: Read access out of array 'A' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%56 = load i8* %%55, align 1, !dbg !7 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_505_count);
  llvm_cbe_tmp__139 = (unsigned char )*llvm_cbe_tmp__138;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__139);
if (AESL_DEBUG_TRACE)
printf("\n  %%57 = getelementptr inbounds [480 x [640 x i8]]* %%C, i64 0, i64 %%54, i64 %%2, !dbg !7 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_506_count);
  llvm_cbe_tmp__140 = ( char *)(&(*llvm_cbe_C)[(((signed long long )llvm_cbe_tmp__137))
#ifdef AESL_BC_SIM
 % 480
#endif
][(((signed long long )llvm_cbe_tmp__93))
#ifdef AESL_BC_SIM
 % 640
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__137));
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__93));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__137) < 480 && "Write access out of array 'C' bound?");
  assert(((signed long long )llvm_cbe_tmp__93) < 640 && "Write access out of array 'C' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%56, i8* %%57, align 1, !dbg !7 for 0x%I64xth hint within @Filter  --> \n", ++aesl_llvm_cbe_507_count);
  *llvm_cbe_tmp__140 = llvm_cbe_tmp__139;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__139);
  goto llvm_cbe_tmp__149;

  } while (1); /* end of syntactic loop '.preheader..preheader.split_crit_edge' */
  } while (1); /* end of syntactic loop '.preheader' */
llvm_cbe_tmp__144:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @Filter}\n");
  return;
}


void IDWT( char (*llvm_cbe_C)[480][640]) {
  static  unsigned long long aesl_llvm_cbe_tempr_count = 0;
   char llvm_cbe_tempr[640];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_tempc_count = 0;
   char llvm_cbe_tempc[480];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_556_count = 0;
  static  unsigned long long aesl_llvm_cbe_557_count = 0;
  static  unsigned long long aesl_llvm_cbe_558_count = 0;
  static  unsigned long long aesl_llvm_cbe_559_count = 0;
  static  unsigned long long aesl_llvm_cbe_560_count = 0;
  static  unsigned long long aesl_llvm_cbe_561_count = 0;
  static  unsigned long long aesl_llvm_cbe_562_count = 0;
  static  unsigned long long aesl_llvm_cbe_563_count = 0;
  static  unsigned long long aesl_llvm_cbe_564_count = 0;
  static  unsigned long long aesl_llvm_cbe_565_count = 0;
  static  unsigned long long aesl_llvm_cbe_566_count = 0;
  static  unsigned long long aesl_llvm_cbe_567_count = 0;
  static  unsigned long long aesl_llvm_cbe_568_count = 0;
  static  unsigned long long aesl_llvm_cbe_569_count = 0;
  static  unsigned long long aesl_llvm_cbe_570_count = 0;
  static  unsigned long long aesl_llvm_cbe_571_count = 0;
  static  unsigned long long aesl_llvm_cbe_572_count = 0;
  static  unsigned long long aesl_llvm_cbe_573_count = 0;
  static  unsigned long long aesl_llvm_cbe_574_count = 0;
  static  unsigned long long aesl_llvm_cbe_575_count = 0;
  static  unsigned long long aesl_llvm_cbe_576_count = 0;
  static  unsigned long long aesl_llvm_cbe_577_count = 0;
  static  unsigned long long aesl_llvm_cbe_578_count = 0;
  static  unsigned long long aesl_llvm_cbe_579_count = 0;
  static  unsigned long long aesl_llvm_cbe_580_count = 0;
  static  unsigned long long aesl_llvm_cbe_581_count = 0;
  static  unsigned long long aesl_llvm_cbe_582_count = 0;
  static  unsigned long long aesl_llvm_cbe_583_count = 0;
  static  unsigned long long aesl_llvm_cbe_584_count = 0;
  static  unsigned long long aesl_llvm_cbe_585_count = 0;
  static  unsigned long long aesl_llvm_cbe_586_count = 0;
  static  unsigned long long aesl_llvm_cbe_587_count = 0;
  static  unsigned long long aesl_llvm_cbe_588_count = 0;
  static  unsigned long long aesl_llvm_cbe_589_count = 0;
  static  unsigned long long aesl_llvm_cbe_590_count = 0;
  static  unsigned long long aesl_llvm_cbe_591_count = 0;
  static  unsigned long long aesl_llvm_cbe_592_count = 0;
  static  unsigned long long aesl_llvm_cbe_593_count = 0;
  static  unsigned long long aesl_llvm_cbe_594_count = 0;
  static  unsigned long long aesl_llvm_cbe_595_count = 0;
  static  unsigned long long aesl_llvm_cbe_596_count = 0;
  static  unsigned long long aesl_llvm_cbe_597_count = 0;
  static  unsigned long long aesl_llvm_cbe_598_count = 0;
  static  unsigned long long aesl_llvm_cbe_599_count = 0;
  static  unsigned long long aesl_llvm_cbe_600_count = 0;
  static  unsigned long long aesl_llvm_cbe_601_count = 0;
  static  unsigned long long aesl_llvm_cbe_602_count = 0;
  static  unsigned long long aesl_llvm_cbe_603_count = 0;
  static  unsigned long long aesl_llvm_cbe_604_count = 0;
  static  unsigned long long aesl_llvm_cbe_605_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge121_count = 0;
  unsigned int llvm_cbe_storemerge121;
  unsigned int llvm_cbe_storemerge121__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_606_count = 0;
  static  unsigned long long aesl_llvm_cbe_607_count = 0;
  static  unsigned long long aesl_llvm_cbe_608_count = 0;
  static  unsigned long long aesl_llvm_cbe_609_count = 0;
  static  unsigned long long aesl_llvm_cbe_610_count = 0;
  static  unsigned long long aesl_llvm_cbe_611_count = 0;
  static  unsigned long long aesl_llvm_cbe_612_count = 0;
  static  unsigned long long aesl_llvm_cbe_613_count = 0;
  static  unsigned long long aesl_llvm_cbe_614_count = 0;
  static  unsigned long long aesl_llvm_cbe_615_count = 0;
  static  unsigned long long aesl_llvm_cbe_616_count = 0;
  static  unsigned long long aesl_llvm_cbe_617_count = 0;
  static  unsigned long long aesl_llvm_cbe_618_count = 0;
  static  unsigned long long aesl_llvm_cbe_619_count = 0;
  static  unsigned long long aesl_llvm_cbe_620_count = 0;
  static  unsigned long long aesl_llvm_cbe_621_count = 0;
  unsigned long long llvm_cbe_tmp__151;
  static  unsigned long long aesl_llvm_cbe_622_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge817_count = 0;
  unsigned int llvm_cbe_storemerge817;
  unsigned int llvm_cbe_storemerge817__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_623_count = 0;
  static  unsigned long long aesl_llvm_cbe_624_count = 0;
  static  unsigned long long aesl_llvm_cbe_625_count = 0;
  unsigned long long llvm_cbe_tmp__152;
  static  unsigned long long aesl_llvm_cbe_626_count = 0;
   char *llvm_cbe_tmp__153;
  static  unsigned long long aesl_llvm_cbe_627_count = 0;
  unsigned char llvm_cbe_tmp__154;
  static  unsigned long long aesl_llvm_cbe_628_count = 0;
   char *llvm_cbe_tmp__155;
  static  unsigned long long aesl_llvm_cbe_629_count = 0;
  static  unsigned long long aesl_llvm_cbe_630_count = 0;
  static  unsigned long long aesl_llvm_cbe_631_count = 0;
  unsigned int llvm_cbe_tmp__156;
  static  unsigned long long aesl_llvm_cbe_632_count = 0;
  static  unsigned long long aesl_llvm_cbe_633_count = 0;
  static  unsigned long long aesl_llvm_cbe_634_count = 0;
  static  unsigned long long aesl_llvm_cbe_635_count = 0;
  static  unsigned long long aesl_llvm_cbe_636_count = 0;
  static  unsigned long long aesl_llvm_cbe_637_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond26_count = 0;
  static  unsigned long long aesl_llvm_cbe_638_count = 0;
  static  unsigned long long aesl_llvm_cbe_639_count = 0;
  unsigned int llvm_cbe_tmp__157;
  static  unsigned long long aesl_llvm_cbe_640_count = 0;
  static  unsigned long long aesl_llvm_cbe_641_count = 0;
  static  unsigned long long aesl_llvm_cbe_642_count = 0;
  static  unsigned long long aesl_llvm_cbe_643_count = 0;
  static  unsigned long long aesl_llvm_cbe_644_count = 0;
  static  unsigned long long aesl_llvm_cbe_645_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond29_count = 0;
  static  unsigned long long aesl_llvm_cbe_646_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge214_count = 0;
  unsigned int llvm_cbe_storemerge214;
  unsigned int llvm_cbe_storemerge214__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_647_count = 0;
  static  unsigned long long aesl_llvm_cbe_648_count = 0;
  static  unsigned long long aesl_llvm_cbe_649_count = 0;
  static  unsigned long long aesl_llvm_cbe_650_count = 0;
  static  unsigned long long aesl_llvm_cbe_651_count = 0;
  static  unsigned long long aesl_llvm_cbe_652_count = 0;
  static  unsigned long long aesl_llvm_cbe_653_count = 0;
  static  unsigned long long aesl_llvm_cbe_654_count = 0;
  static  unsigned long long aesl_llvm_cbe_655_count = 0;
  static  unsigned long long aesl_llvm_cbe_656_count = 0;
  static  unsigned long long aesl_llvm_cbe_657_count = 0;
  static  unsigned long long aesl_llvm_cbe_658_count = 0;
  static  unsigned long long aesl_llvm_cbe_659_count = 0;
  static  unsigned long long aesl_llvm_cbe_660_count = 0;
  static  unsigned long long aesl_llvm_cbe_661_count = 0;
  static  unsigned long long aesl_llvm_cbe_662_count = 0;
  unsigned long long llvm_cbe_tmp__158;
  static  unsigned long long aesl_llvm_cbe_663_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge59_count = 0;
  unsigned int llvm_cbe_storemerge59;
  unsigned int llvm_cbe_storemerge59__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_664_count = 0;
  static  unsigned long long aesl_llvm_cbe_665_count = 0;
  static  unsigned long long aesl_llvm_cbe_666_count = 0;
  unsigned long long llvm_cbe_tmp__159;
  static  unsigned long long aesl_llvm_cbe_667_count = 0;
   char *llvm_cbe_tmp__160;
  static  unsigned long long aesl_llvm_cbe_668_count = 0;
  unsigned char llvm_cbe_tmp__161;
  static  unsigned long long aesl_llvm_cbe_669_count = 0;
   char *llvm_cbe_tmp__162;
  static  unsigned long long aesl_llvm_cbe_670_count = 0;
  static  unsigned long long aesl_llvm_cbe_671_count = 0;
  static  unsigned long long aesl_llvm_cbe_672_count = 0;
  unsigned int llvm_cbe_tmp__163;
  static  unsigned long long aesl_llvm_cbe_673_count = 0;
  static  unsigned long long aesl_llvm_cbe_674_count = 0;
  static  unsigned long long aesl_llvm_cbe_675_count = 0;
  static  unsigned long long aesl_llvm_cbe_676_count = 0;
  static  unsigned long long aesl_llvm_cbe_677_count = 0;
  static  unsigned long long aesl_llvm_cbe_678_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_679_count = 0;
  static  unsigned long long aesl_llvm_cbe_680_count = 0;
  unsigned int llvm_cbe_tmp__164;
  static  unsigned long long aesl_llvm_cbe_681_count = 0;
  static  unsigned long long aesl_llvm_cbe_682_count = 0;
  static  unsigned long long aesl_llvm_cbe_683_count = 0;
  static  unsigned long long aesl_llvm_cbe_684_count = 0;
  static  unsigned long long aesl_llvm_cbe_685_count = 0;
  static  unsigned long long aesl_llvm_cbe_686_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond25_count = 0;
  static  unsigned long long aesl_llvm_cbe_687_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge121_2e_1_count = 0;
  unsigned int llvm_cbe_storemerge121_2e_1;
  unsigned int llvm_cbe_storemerge121_2e_1__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_688_count = 0;
  static  unsigned long long aesl_llvm_cbe_689_count = 0;
  static  unsigned long long aesl_llvm_cbe_690_count = 0;
  static  unsigned long long aesl_llvm_cbe_691_count = 0;
  static  unsigned long long aesl_llvm_cbe_692_count = 0;
  static  unsigned long long aesl_llvm_cbe_693_count = 0;
  static  unsigned long long aesl_llvm_cbe_694_count = 0;
  static  unsigned long long aesl_llvm_cbe_695_count = 0;
  static  unsigned long long aesl_llvm_cbe_696_count = 0;
  static  unsigned long long aesl_llvm_cbe_697_count = 0;
  static  unsigned long long aesl_llvm_cbe_698_count = 0;
  static  unsigned long long aesl_llvm_cbe_699_count = 0;
  static  unsigned long long aesl_llvm_cbe_700_count = 0;
  static  unsigned long long aesl_llvm_cbe_701_count = 0;
  static  unsigned long long aesl_llvm_cbe_702_count = 0;
  static  unsigned long long aesl_llvm_cbe_703_count = 0;
  unsigned long long llvm_cbe_tmp__165;
  static  unsigned long long aesl_llvm_cbe_704_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge817_2e_1_count = 0;
  unsigned int llvm_cbe_storemerge817_2e_1;
  unsigned int llvm_cbe_storemerge817_2e_1__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_705_count = 0;
  static  unsigned long long aesl_llvm_cbe_706_count = 0;
  static  unsigned long long aesl_llvm_cbe_707_count = 0;
  unsigned long long llvm_cbe_tmp__166;
  static  unsigned long long aesl_llvm_cbe_708_count = 0;
   char *llvm_cbe_tmp__167;
  static  unsigned long long aesl_llvm_cbe_709_count = 0;
  unsigned char llvm_cbe_tmp__168;
  static  unsigned long long aesl_llvm_cbe_710_count = 0;
   char *llvm_cbe_tmp__169;
  static  unsigned long long aesl_llvm_cbe_711_count = 0;
  static  unsigned long long aesl_llvm_cbe_712_count = 0;
  static  unsigned long long aesl_llvm_cbe_713_count = 0;
  unsigned int llvm_cbe_tmp__170;
  static  unsigned long long aesl_llvm_cbe_714_count = 0;
  static  unsigned long long aesl_llvm_cbe_715_count = 0;
  static  unsigned long long aesl_llvm_cbe_716_count = 0;
  static  unsigned long long aesl_llvm_cbe_717_count = 0;
  static  unsigned long long aesl_llvm_cbe_718_count = 0;
  static  unsigned long long aesl_llvm_cbe_719_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond26_2e_1_count = 0;
  static  unsigned long long aesl_llvm_cbe_720_count = 0;
  static  unsigned long long aesl_llvm_cbe_721_count = 0;
  unsigned int llvm_cbe_tmp__171;
  static  unsigned long long aesl_llvm_cbe_722_count = 0;
  static  unsigned long long aesl_llvm_cbe_723_count = 0;
  static  unsigned long long aesl_llvm_cbe_724_count = 0;
  static  unsigned long long aesl_llvm_cbe_725_count = 0;
  static  unsigned long long aesl_llvm_cbe_726_count = 0;
  static  unsigned long long aesl_llvm_cbe_727_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond29_2e_1_count = 0;
  static  unsigned long long aesl_llvm_cbe_728_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge214_2e_1_count = 0;
  unsigned int llvm_cbe_storemerge214_2e_1;
  unsigned int llvm_cbe_storemerge214_2e_1__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_729_count = 0;
  static  unsigned long long aesl_llvm_cbe_730_count = 0;
  static  unsigned long long aesl_llvm_cbe_731_count = 0;
  static  unsigned long long aesl_llvm_cbe_732_count = 0;
  static  unsigned long long aesl_llvm_cbe_733_count = 0;
  static  unsigned long long aesl_llvm_cbe_734_count = 0;
  static  unsigned long long aesl_llvm_cbe_735_count = 0;
  static  unsigned long long aesl_llvm_cbe_736_count = 0;
  static  unsigned long long aesl_llvm_cbe_737_count = 0;
  static  unsigned long long aesl_llvm_cbe_738_count = 0;
  static  unsigned long long aesl_llvm_cbe_739_count = 0;
  static  unsigned long long aesl_llvm_cbe_740_count = 0;
  static  unsigned long long aesl_llvm_cbe_741_count = 0;
  static  unsigned long long aesl_llvm_cbe_742_count = 0;
  static  unsigned long long aesl_llvm_cbe_743_count = 0;
  static  unsigned long long aesl_llvm_cbe_744_count = 0;
  unsigned long long llvm_cbe_tmp__172;
  static  unsigned long long aesl_llvm_cbe_745_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge59_2e_1_count = 0;
  unsigned int llvm_cbe_storemerge59_2e_1;
  unsigned int llvm_cbe_storemerge59_2e_1__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_746_count = 0;
  static  unsigned long long aesl_llvm_cbe_747_count = 0;
  static  unsigned long long aesl_llvm_cbe_748_count = 0;
  unsigned long long llvm_cbe_tmp__173;
  static  unsigned long long aesl_llvm_cbe_749_count = 0;
   char *llvm_cbe_tmp__174;
  static  unsigned long long aesl_llvm_cbe_750_count = 0;
  unsigned char llvm_cbe_tmp__175;
  static  unsigned long long aesl_llvm_cbe_751_count = 0;
   char *llvm_cbe_tmp__176;
  static  unsigned long long aesl_llvm_cbe_752_count = 0;
  static  unsigned long long aesl_llvm_cbe_753_count = 0;
  static  unsigned long long aesl_llvm_cbe_754_count = 0;
  unsigned int llvm_cbe_tmp__177;
  static  unsigned long long aesl_llvm_cbe_755_count = 0;
  static  unsigned long long aesl_llvm_cbe_756_count = 0;
  static  unsigned long long aesl_llvm_cbe_757_count = 0;
  static  unsigned long long aesl_llvm_cbe_758_count = 0;
  static  unsigned long long aesl_llvm_cbe_759_count = 0;
  static  unsigned long long aesl_llvm_cbe_760_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_2e_1_count = 0;
  static  unsigned long long aesl_llvm_cbe_761_count = 0;
  static  unsigned long long aesl_llvm_cbe_762_count = 0;
  unsigned int llvm_cbe_tmp__178;
  static  unsigned long long aesl_llvm_cbe_763_count = 0;
  static  unsigned long long aesl_llvm_cbe_764_count = 0;
  static  unsigned long long aesl_llvm_cbe_765_count = 0;
  static  unsigned long long aesl_llvm_cbe_766_count = 0;
  static  unsigned long long aesl_llvm_cbe_767_count = 0;
  static  unsigned long long aesl_llvm_cbe_768_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond25_2e_1_count = 0;
  static  unsigned long long aesl_llvm_cbe_769_count = 0;
  static  unsigned long long aesl_llvm_cbe_770_count = 0;
  static  unsigned long long aesl_llvm_cbe_771_count = 0;
  static  unsigned long long aesl_llvm_cbe_772_count = 0;
  static  unsigned long long aesl_llvm_cbe_773_count = 0;
  static  unsigned long long aesl_llvm_cbe_774_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @IDWT\n");
  llvm_cbe_storemerge121__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__179;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__179:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge121 = phi i32 [ 0, %%0 ], [ %%13, %%.loopexit16  for 0x%I64xth hint within @IDWT  --> \n", ++aesl_llvm_cbe_storemerge121_count);
  llvm_cbe_storemerge121 = (unsigned int )llvm_cbe_storemerge121__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge121 = 0x%X",llvm_cbe_storemerge121);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__157);
}
  if ((((signed int )llvm_cbe_storemerge121) < ((signed int )160u))) {
    goto llvm_cbe__2e_preheader20;
  } else {
    goto llvm_cbe__2e_loopexit16;
  }

llvm_cbe__2e_loopexit16:
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = add nsw i32 %%storemerge121, 1, !dbg !13 for 0x%I64xth hint within @IDWT  --> \n", ++aesl_llvm_cbe_639_count);
  llvm_cbe_tmp__157 = (unsigned int )((unsigned int )(llvm_cbe_storemerge121&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__157&4294967295ull)));
  if (((llvm_cbe_tmp__157&4294967295U) == (320u&4294967295U))) {
    llvm_cbe_storemerge214__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe__2e_preheader13;
  } else {
    llvm_cbe_storemerge121__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__157;   /* for PHI node */
    goto llvm_cbe_tmp__179;
  }

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__180:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge817 = phi i32 [ 0, %%.preheader20 ], [ %%12, %%11  for 0x%I64xth hint within @IDWT  --> \n", ++aesl_llvm_cbe_storemerge817_count);
  llvm_cbe_storemerge817 = (unsigned int )llvm_cbe_storemerge817__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge817 = 0x%X",llvm_cbe_storemerge817);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__156);
}
  if ((((signed int )llvm_cbe_storemerge817) < ((signed int )240u))) {
    goto llvm_cbe_tmp__181;
  } else {
    goto llvm_cbe_tmp__182;
  }

llvm_cbe_tmp__182:
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = add nsw i32 %%storemerge817, 1, !dbg !14 for 0x%I64xth hint within @IDWT  --> \n", ++aesl_llvm_cbe_631_count);
  llvm_cbe_tmp__156 = (unsigned int )((unsigned int )(llvm_cbe_storemerge817&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__156&4294967295ull)));
  if (((llvm_cbe_tmp__156&4294967295U) == (480u&4294967295U))) {
    goto llvm_cbe__2e_loopexit16;
  } else {
    llvm_cbe_storemerge817__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__156;   /* for PHI node */
    goto llvm_cbe_tmp__180;
  }

llvm_cbe_tmp__181:
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = sext i32 %%storemerge817 to i64, !dbg !6 for 0x%I64xth hint within @IDWT  --> \n", ++aesl_llvm_cbe_625_count);
  llvm_cbe_tmp__152 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge817);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__152);
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = getelementptr inbounds [480 x i8]* %%tempc, i64 0, i64 %%7, !dbg !6 for 0x%I64xth hint within @IDWT  --> \n", ++aesl_llvm_cbe_626_count);
  llvm_cbe_tmp__153 = ( char *)(&llvm_cbe_tempc[(((signed long long )llvm_cbe_tmp__152))
#ifdef AESL_BC_SIM
 % 480
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__152));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__152) < 480)) fprintf(stderr, "%s:%d: warning: Read access out of array 'tempc' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = load i8* %%8, align 1, !dbg !6 for 0x%I64xth hint within @IDWT  --> \n", ++aesl_llvm_cbe_627_count);
  llvm_cbe_tmp__154 = (unsigned char )*llvm_cbe_tmp__153;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__154);
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = getelementptr inbounds [480 x [640 x i8]]* %%C, i64 0, i64 %%7, i64 %%3, !dbg !6 for 0x%I64xth hint within @IDWT  --> \n", ++aesl_llvm_cbe_628_count);
  llvm_cbe_tmp__155 = ( char *)(&(*llvm_cbe_C)[(((signed long long )llvm_cbe_tmp__152))
#ifdef AESL_BC_SIM
 % 480
#endif
][(((signed long long )llvm_cbe_tmp__151))
#ifdef AESL_BC_SIM
 % 640
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__152));
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__151));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__152) < 480 && "Write access out of array 'C' bound?");
  assert(((signed long long )llvm_cbe_tmp__151) < 640 && "Write access out of array 'C' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%9, i8* %%10, align 1, !dbg !6 for 0x%I64xth hint within @IDWT  --> \n", ++aesl_llvm_cbe_629_count);
  *llvm_cbe_tmp__155 = llvm_cbe_tmp__154;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__154);
  goto llvm_cbe_tmp__182;

  } while (1); /* end of syntactic loop '' */
llvm_cbe__2e_preheader20:
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = sext i32 %%storemerge121 to i64, !dbg !6 for 0x%I64xth hint within @IDWT  --> \n", ++aesl_llvm_cbe_621_count);
  llvm_cbe_tmp__151 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge121);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__151);
  llvm_cbe_storemerge817__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__180;

  } while (1); /* end of syntactic loop '' */
  do {     /* Syntactic loop '.preheader13' to make GCC happy */
llvm_cbe__2e_preheader13:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge214 = phi i32 [ %%25, %%.loopexit ], [ 0, %%.loopexit16  for 0x%I64xth hint within @IDWT  --> \n", ++aesl_llvm_cbe_storemerge214_count);
  llvm_cbe_storemerge214 = (unsigned int )llvm_cbe_storemerge214__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge214 = 0x%X",llvm_cbe_storemerge214);
printf("\n = 0x%X",llvm_cbe_tmp__164);
printf("\n = 0x%X",0u);
}
  if ((((signed int )llvm_cbe_storemerge214) < ((signed int )240u))) {
    goto llvm_cbe__2e_preheader12;
  } else {
    goto llvm_cbe__2e_loopexit;
  }

llvm_cbe__2e_loopexit:
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = add nsw i32 %%storemerge214, 1, !dbg !15 for 0x%I64xth hint within @IDWT  --> \n", ++aesl_llvm_cbe_680_count);
  llvm_cbe_tmp__164 = (unsigned int )((unsigned int )(llvm_cbe_storemerge214&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__164&4294967295ull)));
  if (((llvm_cbe_tmp__164&4294967295U) == (480u&4294967295U))) {
    llvm_cbe_storemerge121_2e_1__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe_tmp__183;
  } else {
    llvm_cbe_storemerge214__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__164;   /* for PHI node */
    goto llvm_cbe__2e_preheader13;
  }

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__184:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge59 = phi i32 [ 0, %%.preheader12 ], [ %%24, %%23  for 0x%I64xth hint within @IDWT  --> \n", ++aesl_llvm_cbe_storemerge59_count);
  llvm_cbe_storemerge59 = (unsigned int )llvm_cbe_storemerge59__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge59 = 0x%X",llvm_cbe_storemerge59);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__163);
}
  if ((((signed int )llvm_cbe_storemerge59) < ((signed int )320u))) {
    goto llvm_cbe_tmp__185;
  } else {
    goto llvm_cbe_tmp__186;
  }

llvm_cbe_tmp__186:
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = add nsw i32 %%storemerge59, 1, !dbg !15 for 0x%I64xth hint within @IDWT  --> \n", ++aesl_llvm_cbe_672_count);
  llvm_cbe_tmp__163 = (unsigned int )((unsigned int )(llvm_cbe_storemerge59&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__163&4294967295ull)));
  if (((llvm_cbe_tmp__163&4294967295U) == (640u&4294967295U))) {
    goto llvm_cbe__2e_loopexit;
  } else {
    llvm_cbe_storemerge59__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__163;   /* for PHI node */
    goto llvm_cbe_tmp__184;
  }

llvm_cbe_tmp__185:
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = sext i32 %%storemerge59 to i64, !dbg !7 for 0x%I64xth hint within @IDWT  --> \n", ++aesl_llvm_cbe_666_count);
  llvm_cbe_tmp__159 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge59);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__159);
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = getelementptr inbounds [640 x i8]* %%tempr, i64 0, i64 %%19, !dbg !7 for 0x%I64xth hint within @IDWT  --> \n", ++aesl_llvm_cbe_667_count);
  llvm_cbe_tmp__160 = ( char *)(&llvm_cbe_tempr[(((signed long long )llvm_cbe_tmp__159))
#ifdef AESL_BC_SIM
 % 640
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__159));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__159) < 640)) fprintf(stderr, "%s:%d: warning: Read access out of array 'tempr' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = load i8* %%20, align 1, !dbg !7 for 0x%I64xth hint within @IDWT  --> \n", ++aesl_llvm_cbe_668_count);
  llvm_cbe_tmp__161 = (unsigned char )*llvm_cbe_tmp__160;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__161);
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = getelementptr inbounds [480 x [640 x i8]]* %%C, i64 0, i64 %%15, i64 %%19, !dbg !7 for 0x%I64xth hint within @IDWT  --> \n", ++aesl_llvm_cbe_669_count);
  llvm_cbe_tmp__162 = ( char *)(&(*llvm_cbe_C)[(((signed long long )llvm_cbe_tmp__158))
#ifdef AESL_BC_SIM
 % 480
#endif
][(((signed long long )llvm_cbe_tmp__159))
#ifdef AESL_BC_SIM
 % 640
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__158));
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__159));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__158) < 480 && "Write access out of array 'C' bound?");
  assert(((signed long long )llvm_cbe_tmp__159) < 640 && "Write access out of array 'C' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%21, i8* %%22, align 1, !dbg !7 for 0x%I64xth hint within @IDWT  --> \n", ++aesl_llvm_cbe_670_count);
  *llvm_cbe_tmp__162 = llvm_cbe_tmp__161;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__161);
  goto llvm_cbe_tmp__186;

  } while (1); /* end of syntactic loop '' */
llvm_cbe__2e_preheader12:
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = sext i32 %%storemerge214 to i64, !dbg !7 for 0x%I64xth hint within @IDWT  --> \n", ++aesl_llvm_cbe_662_count);
  llvm_cbe_tmp__158 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge214);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__158);
  llvm_cbe_storemerge59__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__184;

  } while (1); /* end of syntactic loop '.preheader13' */
  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__183:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge121.1 = phi i32 [ %%38, %%.loopexit16.1 ], [ 0, %%.loopexit  for 0x%I64xth hint within @IDWT  --> \n", ++aesl_llvm_cbe_storemerge121_2e_1_count);
  llvm_cbe_storemerge121_2e_1 = (unsigned int )llvm_cbe_storemerge121_2e_1__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge121.1 = 0x%X",llvm_cbe_storemerge121_2e_1);
printf("\n = 0x%X",llvm_cbe_tmp__171);
printf("\n = 0x%X",0u);
}
  if ((((signed int )llvm_cbe_storemerge121_2e_1) < ((signed int )320u))) {
    goto llvm_cbe__2e_preheader20_2e_1;
  } else {
    goto llvm_cbe__2e_loopexit16_2e_1;
  }

llvm_cbe__2e_loopexit16_2e_1:
if (AESL_DEBUG_TRACE)
printf("\n  %%38 = add nsw i32 %%storemerge121.1, 1, !dbg !13 for 0x%I64xth hint within @IDWT  --> \n", ++aesl_llvm_cbe_721_count);
  llvm_cbe_tmp__171 = (unsigned int )((unsigned int )(llvm_cbe_storemerge121_2e_1&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__171&4294967295ull)));
  if (((llvm_cbe_tmp__171&4294967295U) == (320u&4294967295U))) {
    llvm_cbe_storemerge214_2e_1__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe__2e_preheader13_2e_1;
  } else {
    llvm_cbe_storemerge121_2e_1__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__171;   /* for PHI node */
    goto llvm_cbe_tmp__183;
  }

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__187:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge817.1 = phi i32 [ 0, %%.preheader20.1 ], [ %%37, %%36  for 0x%I64xth hint within @IDWT  --> \n", ++aesl_llvm_cbe_storemerge817_2e_1_count);
  llvm_cbe_storemerge817_2e_1 = (unsigned int )llvm_cbe_storemerge817_2e_1__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge817.1 = 0x%X",llvm_cbe_storemerge817_2e_1);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__170);
}
  if ((((signed int )llvm_cbe_storemerge817_2e_1) < ((signed int )480u))) {
    goto llvm_cbe_tmp__188;
  } else {
    goto llvm_cbe_tmp__189;
  }

llvm_cbe_tmp__189:
if (AESL_DEBUG_TRACE)
printf("\n  %%37 = add nsw i32 %%storemerge817.1, 1, !dbg !14 for 0x%I64xth hint within @IDWT  --> \n", ++aesl_llvm_cbe_713_count);
  llvm_cbe_tmp__170 = (unsigned int )((unsigned int )(llvm_cbe_storemerge817_2e_1&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__170&4294967295ull)));
  if (((llvm_cbe_tmp__170&4294967295U) == (480u&4294967295U))) {
    goto llvm_cbe__2e_loopexit16_2e_1;
  } else {
    llvm_cbe_storemerge817_2e_1__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__170;   /* for PHI node */
    goto llvm_cbe_tmp__187;
  }

llvm_cbe_tmp__188:
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = sext i32 %%storemerge817.1 to i64, !dbg !6 for 0x%I64xth hint within @IDWT  --> \n", ++aesl_llvm_cbe_707_count);
  llvm_cbe_tmp__166 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge817_2e_1);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__166);
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = getelementptr inbounds [480 x i8]* %%tempc, i64 0, i64 %%32, !dbg !6 for 0x%I64xth hint within @IDWT  --> \n", ++aesl_llvm_cbe_708_count);
  llvm_cbe_tmp__167 = ( char *)(&llvm_cbe_tempc[(((signed long long )llvm_cbe_tmp__166))
#ifdef AESL_BC_SIM
 % 480
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__166));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__166) < 480)) fprintf(stderr, "%s:%d: warning: Read access out of array 'tempc' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = load i8* %%33, align 1, !dbg !6 for 0x%I64xth hint within @IDWT  --> \n", ++aesl_llvm_cbe_709_count);
  llvm_cbe_tmp__168 = (unsigned char )*llvm_cbe_tmp__167;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__168);
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = getelementptr inbounds [480 x [640 x i8]]* %%C, i64 0, i64 %%32, i64 %%28, !dbg !6 for 0x%I64xth hint within @IDWT  --> \n", ++aesl_llvm_cbe_710_count);
  llvm_cbe_tmp__169 = ( char *)(&(*llvm_cbe_C)[(((signed long long )llvm_cbe_tmp__166))
#ifdef AESL_BC_SIM
 % 480
#endif
][(((signed long long )llvm_cbe_tmp__165))
#ifdef AESL_BC_SIM
 % 640
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__166));
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__165));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__166) < 480 && "Write access out of array 'C' bound?");
  assert(((signed long long )llvm_cbe_tmp__165) < 640 && "Write access out of array 'C' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%34, i8* %%35, align 1, !dbg !6 for 0x%I64xth hint within @IDWT  --> \n", ++aesl_llvm_cbe_711_count);
  *llvm_cbe_tmp__169 = llvm_cbe_tmp__168;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__168);
  goto llvm_cbe_tmp__189;

  } while (1); /* end of syntactic loop '' */
llvm_cbe__2e_preheader20_2e_1:
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = sext i32 %%storemerge121.1 to i64, !dbg !6 for 0x%I64xth hint within @IDWT  --> \n", ++aesl_llvm_cbe_703_count);
  llvm_cbe_tmp__165 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge121_2e_1);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__165);
  llvm_cbe_storemerge817_2e_1__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__187;

  } while (1); /* end of syntactic loop '' */
  do {     /* Syntactic loop '.preheader13.1' to make GCC happy */
llvm_cbe__2e_preheader13_2e_1:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge214.1 = phi i32 [ %%50, %%.loopexit.1 ], [ 0, %%.loopexit16.1  for 0x%I64xth hint within @IDWT  --> \n", ++aesl_llvm_cbe_storemerge214_2e_1_count);
  llvm_cbe_storemerge214_2e_1 = (unsigned int )llvm_cbe_storemerge214_2e_1__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge214.1 = 0x%X",llvm_cbe_storemerge214_2e_1);
printf("\n = 0x%X",llvm_cbe_tmp__178);
printf("\n = 0x%X",0u);
}
  if ((((signed int )llvm_cbe_storemerge214_2e_1) < ((signed int )480u))) {
    goto llvm_cbe__2e_preheader12_2e_1;
  } else {
    goto llvm_cbe__2e_loopexit_2e_1;
  }

llvm_cbe__2e_loopexit_2e_1:
if (AESL_DEBUG_TRACE)
printf("\n  %%50 = add nsw i32 %%storemerge214.1, 1, !dbg !15 for 0x%I64xth hint within @IDWT  --> \n", ++aesl_llvm_cbe_762_count);
  llvm_cbe_tmp__178 = (unsigned int )((unsigned int )(llvm_cbe_storemerge214_2e_1&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__178&4294967295ull)));
  if (((llvm_cbe_tmp__178&4294967295U) == (480u&4294967295U))) {
    goto llvm_cbe_tmp__190;
  } else {
    llvm_cbe_storemerge214_2e_1__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__178;   /* for PHI node */
    goto llvm_cbe__2e_preheader13_2e_1;
  }

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__191:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge59.1 = phi i32 [ 0, %%.preheader12.1 ], [ %%49, %%48  for 0x%I64xth hint within @IDWT  --> \n", ++aesl_llvm_cbe_storemerge59_2e_1_count);
  llvm_cbe_storemerge59_2e_1 = (unsigned int )llvm_cbe_storemerge59_2e_1__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge59.1 = 0x%X",llvm_cbe_storemerge59_2e_1);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__177);
}
  if ((((signed int )llvm_cbe_storemerge59_2e_1) < ((signed int )640u))) {
    goto llvm_cbe_tmp__192;
  } else {
    goto llvm_cbe_tmp__193;
  }

llvm_cbe_tmp__193:
if (AESL_DEBUG_TRACE)
printf("\n  %%49 = add nsw i32 %%storemerge59.1, 1, !dbg !15 for 0x%I64xth hint within @IDWT  --> \n", ++aesl_llvm_cbe_754_count);
  llvm_cbe_tmp__177 = (unsigned int )((unsigned int )(llvm_cbe_storemerge59_2e_1&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__177&4294967295ull)));
  if (((llvm_cbe_tmp__177&4294967295U) == (640u&4294967295U))) {
    goto llvm_cbe__2e_loopexit_2e_1;
  } else {
    llvm_cbe_storemerge59_2e_1__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__177;   /* for PHI node */
    goto llvm_cbe_tmp__191;
  }

llvm_cbe_tmp__192:
if (AESL_DEBUG_TRACE)
printf("\n  %%44 = sext i32 %%storemerge59.1 to i64, !dbg !7 for 0x%I64xth hint within @IDWT  --> \n", ++aesl_llvm_cbe_748_count);
  llvm_cbe_tmp__173 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge59_2e_1);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__173);
if (AESL_DEBUG_TRACE)
printf("\n  %%45 = getelementptr inbounds [640 x i8]* %%tempr, i64 0, i64 %%44, !dbg !7 for 0x%I64xth hint within @IDWT  --> \n", ++aesl_llvm_cbe_749_count);
  llvm_cbe_tmp__174 = ( char *)(&llvm_cbe_tempr[(((signed long long )llvm_cbe_tmp__173))
#ifdef AESL_BC_SIM
 % 640
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__173));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__173) < 640)) fprintf(stderr, "%s:%d: warning: Read access out of array 'tempr' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%46 = load i8* %%45, align 1, !dbg !7 for 0x%I64xth hint within @IDWT  --> \n", ++aesl_llvm_cbe_750_count);
  llvm_cbe_tmp__175 = (unsigned char )*llvm_cbe_tmp__174;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__175);
if (AESL_DEBUG_TRACE)
printf("\n  %%47 = getelementptr inbounds [480 x [640 x i8]]* %%C, i64 0, i64 %%40, i64 %%44, !dbg !7 for 0x%I64xth hint within @IDWT  --> \n", ++aesl_llvm_cbe_751_count);
  llvm_cbe_tmp__176 = ( char *)(&(*llvm_cbe_C)[(((signed long long )llvm_cbe_tmp__172))
#ifdef AESL_BC_SIM
 % 480
#endif
][(((signed long long )llvm_cbe_tmp__173))
#ifdef AESL_BC_SIM
 % 640
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__172));
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__173));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__172) < 480 && "Write access out of array 'C' bound?");
  assert(((signed long long )llvm_cbe_tmp__173) < 640 && "Write access out of array 'C' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%46, i8* %%47, align 1, !dbg !7 for 0x%I64xth hint within @IDWT  --> \n", ++aesl_llvm_cbe_752_count);
  *llvm_cbe_tmp__176 = llvm_cbe_tmp__175;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__175);
  goto llvm_cbe_tmp__193;

  } while (1); /* end of syntactic loop '' */
llvm_cbe__2e_preheader12_2e_1:
if (AESL_DEBUG_TRACE)
printf("\n  %%40 = sext i32 %%storemerge214.1 to i64, !dbg !7 for 0x%I64xth hint within @IDWT  --> \n", ++aesl_llvm_cbe_744_count);
  llvm_cbe_tmp__172 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge214_2e_1);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__172);
  llvm_cbe_storemerge59_2e_1__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__191;

  } while (1); /* end of syntactic loop '.preheader13.1' */
llvm_cbe_tmp__190:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @IDWT}\n");
  return;
}


void read_color( char (*llvm_cbe_a)[480][640],  char (*llvm_cbe_A_buffer)[480][640]) {
  static  unsigned long long aesl_llvm_cbe_775_count = 0;
  static  unsigned long long aesl_llvm_cbe_776_count = 0;
  static  unsigned long long aesl_llvm_cbe_777_count = 0;
  static  unsigned long long aesl_llvm_cbe_778_count = 0;
   char *llvm_cbe_tmp__194;
  static  unsigned long long aesl_llvm_cbe_779_count = 0;
  static  unsigned long long aesl_llvm_cbe_780_count = 0;
   char *llvm_cbe_tmp__195;
  static  unsigned long long aesl_llvm_cbe_781_count = 0;
   char *llvm_cbe_tmp__196;
  static  unsigned long long aesl_llvm_cbe_782_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @read_color\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = bitcast [480 x [640 x i8]]* %%A_buffer to i8*, !dbg !6 for 0x%I64xth hint within @read_color  --> \n", ++aesl_llvm_cbe_778_count);
  llvm_cbe_tmp__194 = ( char *)(( char *)llvm_cbe_A_buffer);
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = bitcast [480 x [640 x i8]]* %%a to i8*, !dbg !6 for 0x%I64xth hint within @read_color  --> \n", ++aesl_llvm_cbe_780_count);
  llvm_cbe_tmp__195 = ( char *)(( char *)llvm_cbe_a);
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = call i8* @memcpy(i8* %%1, i8* %%2, i64 307200 for 0x%I64xth hint within @read_color  --> \n", ++aesl_llvm_cbe_781_count);
  ( char *)memcpy(( char *)llvm_cbe_tmp__194, ( char *)llvm_cbe_tmp__195, 307200ull);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%I64X",307200ull);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__196);
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @read_color}\n");
  return;
}


void read_IR( char (*llvm_cbe_b)[480][640],  char (*llvm_cbe_B_buffer)[480][640]) {
  static  unsigned long long aesl_llvm_cbe_783_count = 0;
  static  unsigned long long aesl_llvm_cbe_784_count = 0;
  static  unsigned long long aesl_llvm_cbe_785_count = 0;
  static  unsigned long long aesl_llvm_cbe_786_count = 0;
   char *llvm_cbe_tmp__197;
  static  unsigned long long aesl_llvm_cbe_787_count = 0;
  static  unsigned long long aesl_llvm_cbe_788_count = 0;
   char *llvm_cbe_tmp__198;
  static  unsigned long long aesl_llvm_cbe_789_count = 0;
   char *llvm_cbe_tmp__199;
  static  unsigned long long aesl_llvm_cbe_790_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @read_IR\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = bitcast [480 x [640 x i8]]* %%B_buffer to i8*, !dbg !6 for 0x%I64xth hint within @read_IR  --> \n", ++aesl_llvm_cbe_786_count);
  llvm_cbe_tmp__197 = ( char *)(( char *)llvm_cbe_B_buffer);
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = bitcast [480 x [640 x i8]]* %%b to i8*, !dbg !6 for 0x%I64xth hint within @read_IR  --> \n", ++aesl_llvm_cbe_788_count);
  llvm_cbe_tmp__198 = ( char *)(( char *)llvm_cbe_b);
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = call i8* @memcpy(i8* %%1, i8* %%2, i64 307200 for 0x%I64xth hint within @read_IR  --> \n", ++aesl_llvm_cbe_789_count);
  ( char *)memcpy(( char *)llvm_cbe_tmp__197, ( char *)llvm_cbe_tmp__198, 307200ull);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%I64X",307200ull);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__199);
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @read_IR}\n");
  return;
}


void write_image( char (*llvm_cbe_C_buffer)[480][640],  char (*llvm_cbe_c)[480][640]) {
  static  unsigned long long aesl_llvm_cbe_791_count = 0;
  static  unsigned long long aesl_llvm_cbe_792_count = 0;
  static  unsigned long long aesl_llvm_cbe_793_count = 0;
  static  unsigned long long aesl_llvm_cbe_794_count = 0;
   char *llvm_cbe_tmp__200;
  static  unsigned long long aesl_llvm_cbe_795_count = 0;
  static  unsigned long long aesl_llvm_cbe_796_count = 0;
   char *llvm_cbe_tmp__201;
  static  unsigned long long aesl_llvm_cbe_797_count = 0;
   char *llvm_cbe_tmp__202;
  static  unsigned long long aesl_llvm_cbe_798_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @write_image\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = bitcast [480 x [640 x i8]]* %%c to i8*, !dbg !6 for 0x%I64xth hint within @write_image  --> \n", ++aesl_llvm_cbe_794_count);
  llvm_cbe_tmp__200 = ( char *)(( char *)llvm_cbe_c);
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = bitcast [480 x [640 x i8]]* %%C_buffer to i8*, !dbg !6 for 0x%I64xth hint within @write_image  --> \n", ++aesl_llvm_cbe_796_count);
  llvm_cbe_tmp__201 = ( char *)(( char *)llvm_cbe_C_buffer);
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = call i8* @memcpy(i8* %%1, i8* %%2, i64 307200 for 0x%I64xth hint within @write_image  --> \n", ++aesl_llvm_cbe_797_count);
  ( char *)memcpy(( char *)llvm_cbe_tmp__200, ( char *)llvm_cbe_tmp__201, 307200ull);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%I64X",307200ull);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__202);
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @write_image}\n");
  return;
}

