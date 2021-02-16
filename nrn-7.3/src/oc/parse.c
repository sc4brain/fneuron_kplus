/* A Bison parser, made by GNU Bison 3.0.2.  */

/* Bison implementation for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2013 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output.  */
#define YYBISON 1

/* Bison version.  */
#define YYBISON_VERSION "3.0.2"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* Copy the first part of user declarations.  */
#line 2 "parse.y" /* yacc.c:339  */


#include <../../nrnconf.h>
/* changes as of 2-jan-89 */
/*  version 7.2.1 2-jan-89 short form of the for statement */

#if AIX
#pragma alloca
#endif

#include "hoc.h"
#include "ocmisc.h"
#include "hocparse.h"
#include "code.h"
#include "equation.h"
#include "nrnfilewrap.h"

#if LINT
Inst *inlint;
#define code	inlint = Code
#else
#define code	Code
#endif

#define paction(arg) fprintf(stderr, "%s\n", arg)

/* maintain a list of ierr addresses so we can clear them */
#define HOCERRSIZE 20
static int** hoc_err;
static int hoc_errp;
static int localcnt;

static void clean_err(void) {
	int i;
	for (i=0; i < hoc_errp; ++i) {
		*hoc_err[i] = 0;
	}
	hoc_errp = 0;
}

static void pusherr(int* ip) {
	if (!hoc_err) {
		hoc_err = (int**)ecalloc(HOCERRSIZE, sizeof(int*));
		hoc_errp = 0;
	}
	if (hoc_errp >= HOCERRSIZE) {
		clean_err();
		hoc_execerror("error stack full", (char*)0);
	}
	hoc_err[hoc_errp++] = ip;
}

static void yyerror(const char* s);

#if YYBISON
#define myerr(arg) static int ierr=0;\
if (!(ierr++)){pusherr(&ierr);yyerror(arg);} --yyssp; --yyvsp; YYERROR
#else
#define myerr(arg) static int ierr=0;\
if (!(ierr++)){pusherr(&ierr);yyerror(arg);} YYERROR
#endif

#define code2(c1,c2)	code(c1); codein(c2)
#define code3(c1,c2,c3)	code(c1); codesym(c2); code(c3)
#define relative(ip1,ip2,offset)	((ip1-ip2) - offset)
#define CHECK 1	/* check syntactically the consistency of arrays */
#define NOCHECK 0 /* don't check syntactically. For object components */
#define PN pushi(NUMBER)	/* for type checking. expressions are usually numbers */
#define TPD hoc_ob_check(NUMBER);
#define TPDYNAM hoc_ob_check(0);

static Inst *prog_error;			/* needed for stmtlist loc if error */
static int ntab;			/* auto indentation */

static Inst* argrefcode(Pfrv pfrv, int i, int j);
static Inst* argcode(Pfrv pfrv, int i);
static void hoc_opasgn_invalid(int op);
 

#line 146 "parse.c" /* yacc.c:339  */

# ifndef YY_NULLPTR
#  if defined __cplusplus && 201103L <= __cplusplus
#   define YY_NULLPTR nullptr
#  else
#   define YY_NULLPTR 0
#  endif
# endif

/* Enabling verbose error messages.  */
#ifdef YYERROR_VERBOSE
# undef YYERROR_VERBOSE
# define YYERROR_VERBOSE 1
#else
# define YYERROR_VERBOSE 0
#endif

/* In a future release of Bison, this section will be replaced
   by #include "y.tab.h".  */
#ifndef YY_YY_PARSE_H_INCLUDED
# define YY_YY_PARSE_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    EQNEQ = 258,
    NUMBER = 259,
    STRING = 260,
    PRINT = 261,
    parseDELETE = 262,
    VAR = 263,
    BLTIN = 264,
    UNDEF = 265,
    WHILE = 266,
    IF = 267,
    ELSE = 268,
    FOR = 269,
    FUNCTION = 270,
    PROCEDURE = 271,
    RETURN = 272,
    FUNC = 273,
    parsePROC = 274,
    HOCOBJFUNC = 275,
    READ = 276,
    parseDOUBLE = 277,
    DEBUG = 278,
    EDIT = 279,
    FUN_BLTIN = 280,
    DEPENDENT = 281,
    EQUATION = 282,
    LOCAL = 283,
    HOCOBJFUNCTION = 284,
    BREAK = 285,
    CONTINUE = 286,
    AUTO = 287,
    STRDEF = 288,
    STOPSTMT = 289,
    CSTRING = 290,
    PARALLEL = 291,
    HELP = 292,
    ITERATOR = 293,
    ITERKEYWORD = 294,
    ITERSTMT = 295,
    STRINGFUNC = 296,
    OBJECTFUNC = 297,
    LOCALOBJ = 298,
    AUTOOBJ = 299,
    ARG = 300,
    NUMZERO = 301,
    ARGREF = 302,
    SECTIONKEYWORD = 303,
    SECTION = 304,
    CONNECTKEYWORD = 305,
    ACCESSKEYWORD = 306,
    RANGEVAR = 307,
    MECHANISM = 308,
    INSERTKEYWORD = 309,
    FORALL = 310,
    NRNPNTVAR = 311,
    FORSEC = 312,
    IFSEC = 313,
    UNINSERTKEYWORD = 314,
    SETPOINTERKEYWORD = 315,
    SECTIONREF = 316,
    BEGINTEMPLATE = 317,
    ENDTEMPLATE = 318,
    NEW = 319,
    OBJECTVAR = 320,
    TEMPLATE = 321,
    OBJVARDECL = 322,
    PUBLICDECL = 323,
    EXTERNALDECL = 324,
    OBFUNCTION = 325,
    STRFUNCTION = 326,
    OBJECTARG = 327,
    STRINGARG = 328,
    ROP = 329,
    OR = 330,
    AND = 331,
    GT = 332,
    GE = 333,
    LT = 334,
    LE = 335,
    EQ = 336,
    NE = 337,
    UNARYMINUS = 338,
    NOT = 339
  };
#endif
/* Tokens.  */
#define EQNEQ 258
#define NUMBER 259
#define STRING 260
#define PRINT 261
#define parseDELETE 262
#define VAR 263
#define BLTIN 264
#define UNDEF 265
#define WHILE 266
#define IF 267
#define ELSE 268
#define FOR 269
#define FUNCTION 270
#define PROCEDURE 271
#define RETURN 272
#define FUNC 273
#define parsePROC 274
#define HOCOBJFUNC 275
#define READ 276
#define parseDOUBLE 277
#define DEBUG 278
#define EDIT 279
#define FUN_BLTIN 280
#define DEPENDENT 281
#define EQUATION 282
#define LOCAL 283
#define HOCOBJFUNCTION 284
#define BREAK 285
#define CONTINUE 286
#define AUTO 287
#define STRDEF 288
#define STOPSTMT 289
#define CSTRING 290
#define PARALLEL 291
#define HELP 292
#define ITERATOR 293
#define ITERKEYWORD 294
#define ITERSTMT 295
#define STRINGFUNC 296
#define OBJECTFUNC 297
#define LOCALOBJ 298
#define AUTOOBJ 299
#define ARG 300
#define NUMZERO 301
#define ARGREF 302
#define SECTIONKEYWORD 303
#define SECTION 304
#define CONNECTKEYWORD 305
#define ACCESSKEYWORD 306
#define RANGEVAR 307
#define MECHANISM 308
#define INSERTKEYWORD 309
#define FORALL 310
#define NRNPNTVAR 311
#define FORSEC 312
#define IFSEC 313
#define UNINSERTKEYWORD 314
#define SETPOINTERKEYWORD 315
#define SECTIONREF 316
#define BEGINTEMPLATE 317
#define ENDTEMPLATE 318
#define NEW 319
#define OBJECTVAR 320
#define TEMPLATE 321
#define OBJVARDECL 322
#define PUBLICDECL 323
#define EXTERNALDECL 324
#define OBFUNCTION 325
#define STRFUNCTION 326
#define OBJECTARG 327
#define STRINGARG 328
#define ROP 329
#define OR 330
#define AND 331
#define GT 332
#define GE 333
#define LT 334
#define LE 335
#define EQ 336
#define NE 337
#define UNARYMINUS 338
#define NOT 339

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE YYSTYPE;
union YYSTYPE
{
#line 82 "parse.y" /* yacc.c:355  */
				/* stack type */
	Symbol	*sym;			/* symbol table pointer */
	Inst	*inst;			/* machine instruction */
	int	narg;			/* number of arguments */

#line 360 "parse.c" /* yacc.c:355  */
};
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_PARSE_H_INCLUDED  */

/* Copy the second part of user declarations.  */

#line 375 "parse.c" /* yacc.c:358  */

#ifdef short
# undef short
#endif

#ifdef YYTYPE_UINT8
typedef YYTYPE_UINT8 yytype_uint8;
#else
typedef unsigned char yytype_uint8;
#endif

#ifdef YYTYPE_INT8
typedef YYTYPE_INT8 yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef YYTYPE_UINT16
typedef YYTYPE_UINT16 yytype_uint16;
#else
typedef unsigned short int yytype_uint16;
#endif

#ifdef YYTYPE_INT16
typedef YYTYPE_INT16 yytype_int16;
#else
typedef short int yytype_int16;
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif ! defined YYSIZE_T
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned int
# endif
#endif

#define YYSIZE_MAXIMUM ((YYSIZE_T) -1)

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif

#ifndef YY_ATTRIBUTE
# if (defined __GNUC__                                               \
      && (2 < __GNUC__ || (__GNUC__ == 2 && 96 <= __GNUC_MINOR__)))  \
     || defined __SUNPRO_C && 0x5110 <= __SUNPRO_C
#  define YY_ATTRIBUTE(Spec) __attribute__(Spec)
# else
#  define YY_ATTRIBUTE(Spec) /* empty */
# endif
#endif

#ifndef YY_ATTRIBUTE_PURE
# define YY_ATTRIBUTE_PURE   YY_ATTRIBUTE ((__pure__))
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# define YY_ATTRIBUTE_UNUSED YY_ATTRIBUTE ((__unused__))
#endif

#if !defined _Noreturn \
     && (!defined __STDC_VERSION__ || __STDC_VERSION__ < 201112)
# if defined _MSC_VER && 1200 <= _MSC_VER
#  define _Noreturn __declspec (noreturn)
# else
#  define _Noreturn YY_ATTRIBUTE ((__noreturn__))
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YYUSE(E) ((void) (E))
#else
# define YYUSE(E) /* empty */
#endif

#if defined __GNUC__ && 407 <= __GNUC__ * 100 + __GNUC_MINOR__
/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN \
    _Pragma ("GCC diagnostic push") \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")\
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# define YY_IGNORE_MAYBE_UNINITIALIZED_END \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif


#if ! defined yyoverflow || YYERROR_VERBOSE

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* ! defined yyoverflow || YYERROR_VERBOSE */


#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yytype_int16 yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (sizeof (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (sizeof (yytype_int16) + sizeof (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYSIZE_T yynewbytes;                                            \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * sizeof (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / sizeof (*yyptr);                          \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, (Count) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYSIZE_T yyi;                         \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  2
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   2849

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  104
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  97
/* YYNRULES -- Number of rules.  */
#define YYNRULES  279
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  544

/* YYTRANSLATE[YYX] -- Symbol number corresponding to YYX as returned
   by yylex, with out-of-bounds checking.  */
#define YYUNDEFTOK  2
#define YYMAXUTOK   339

#define YYTRANSLATE(YYX)                                                \
  ((unsigned int) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, without out-of-bounds checking.  */
static const yytype_uint8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
      92,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,    88,   103,     2,
      93,    94,    86,    84,    98,    85,    97,    87,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,   101,   102,
       2,    75,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,    95,     2,    96,    91,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,    99,     2,   100,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,    41,    42,    43,    44,
      45,    46,    47,    48,    49,    50,    51,    52,    53,    54,
      55,    56,    57,    58,    59,    60,    61,    62,    63,    64,
      65,    66,    67,    68,    69,    70,    71,    72,    73,    74,
      76,    77,    78,    79,    80,    81,    82,    83,    89,    90
};

#if YYDEBUG
  /* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_uint16 yyrline[] =
{
       0,   136,   136,   137,   138,   139,   141,   143,   145,   147,
     149,   153,   159,   159,   160,   170,   174,   176,   179,   183,
     189,   195,   199,   199,   201,   203,   205,   207,   210,   215,
     218,   219,   219,   229,   232,   233,   236,   237,   238,   239,
     240,   242,   245,   247,   249,   251,   254,   264,   266,   269,
     271,   276,   278,   283,   285,   288,   289,   291,   295,   297,
     301,   303,   305,   318,   320,   321,   323,   325,   326,   328,
     330,   332,   341,   345,   351,   353,   355,   357,   359,   361,
     366,   377,   381,   376,   388,   392,   387,   400,   404,   408,
     414,   413,   419,   422,   423,   425,   427,   429,   429,   432,
     434,   436,   438,   440,   442,   445,   449,   454,   453,   462,
     465,   461,   471,   470,   478,   477,   484,   483,   490,   489,
     497,   496,   508,   513,   513,   519,   519,   523,   524,   524,
     534,   536,   538,   540,   543,   551,   553,   555,   555,   558,
     560,   562,   564,   565,   571,   573,   577,   579,   582,   584,
     587,   590,   593,   597,   600,   603,   604,   615,   616,   621,
     623,   625,   627,   629,   632,   634,   638,   641,   642,   644,
     646,   648,   650,   652,   654,   656,   658,   660,   662,   664,
     666,   668,   670,   672,   674,   676,   678,   680,   682,   684,
     687,   688,   689,   690,   692,   695,   700,   703,   705,   708,
     711,   714,   713,   720,   728,   763,   770,   771,   775,   777,
     779,   781,   784,   789,   788,   795,   794,   801,   800,   807,
     806,   813,   819,   820,   821,   822,   824,   824,   831,   832,
     834,   836,   839,   841,   843,   844,   849,   852,   851,   857,
     859,   862,   863,   865,   864,   869,   869,   874,   874,   879,
     880,   882,   889,   901,   902,   904,   914,   925,   933,   933,
     933,   933,   933,   933,   933,   933,   934,   934,   934,   934,
     934,   934,   934,   935,   935,   935,   935,   935,   935,   936
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || 0
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "EQNEQ", "NUMBER", "STRING", "PRINT",
  "parseDELETE", "VAR", "BLTIN", "UNDEF", "WHILE", "IF", "ELSE", "FOR",
  "FUNCTION", "PROCEDURE", "RETURN", "FUNC", "parsePROC", "HOCOBJFUNC",
  "READ", "parseDOUBLE", "DEBUG", "EDIT", "FUN_BLTIN", "DEPENDENT",
  "EQUATION", "LOCAL", "HOCOBJFUNCTION", "BREAK", "CONTINUE", "AUTO",
  "STRDEF", "STOPSTMT", "CSTRING", "PARALLEL", "HELP", "ITERATOR",
  "ITERKEYWORD", "ITERSTMT", "STRINGFUNC", "OBJECTFUNC", "LOCALOBJ",
  "AUTOOBJ", "ARG", "NUMZERO", "ARGREF", "SECTIONKEYWORD", "SECTION",
  "CONNECTKEYWORD", "ACCESSKEYWORD", "RANGEVAR", "MECHANISM",
  "INSERTKEYWORD", "FORALL", "NRNPNTVAR", "FORSEC", "IFSEC",
  "UNINSERTKEYWORD", "SETPOINTERKEYWORD", "SECTIONREF", "BEGINTEMPLATE",
  "ENDTEMPLATE", "NEW", "OBJECTVAR", "TEMPLATE", "OBJVARDECL",
  "PUBLICDECL", "EXTERNALDECL", "OBFUNCTION", "STRFUNCTION", "OBJECTARG",
  "STRINGARG", "ROP", "'='", "OR", "AND", "GT", "GE", "LT", "LE", "EQ",
  "NE", "'+'", "'-'", "'*'", "'/'", "'%'", "UNARYMINUS", "NOT", "'^'",
  "'\\n'", "'('", "')'", "'['", "']'", "'.'", "','", "'{'", "'}'", "':'",
  "';'", "'&'", "$accept", "list", "$@1", "asgn", "object", "$@2", "ob",
  "ob1", "$@3", "func_or_range_array_case", "template", "objvarlist",
  "objvarlst1", "obvarname", "publiclist", "externallist", "strnasgn",
  "string1", "string2", "strlist", "string", "stmt", "@4", "@5", "@6",
  "@7", "$@8", "$@9", "@10", "$@11", "@12", "@13", "@14", "@15", "@16",
  "@17", "iterator", "$@18", "section", "$@19", "section_or_ob", "@20",
  "sectiondecl", "sectionname", "rangevar", "rangevar1", "$@21", "pointer",
  "for_init", "for_st", "for_cond", "for_inc", "cond", "while", "if",
  "begin", "end", "stmtlist", "expr", "function", "doublelist", "newarray",
  "numdimen", "newname", "varname", "$@22", "wholearray", "argrefdim",
  "array", "prlist", "delsym", "defn", "$@23", "$@24", "$@25", "$@26",
  "procname", "procstmt", "$@27", "arglist", "arglist1", "arglist2",
  "eqn_list", "$@28", "dep_list", "equation", "$@29", "lhs", "$@30", "rhs",
  "$@31", "local", "local1", "localobj", "local2", "ckvar", "anyname", YY_NULLPTR
};
#endif

# ifdef YYPRINT
/* YYTOKNUM[NUM] -- (External) token number corresponding to the
   (internal) symbol number NUM (which must be that of a token).  */
static const yytype_uint16 yytoknum[] =
{
       0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285,   286,   287,   288,   289,   290,   291,   292,   293,   294,
     295,   296,   297,   298,   299,   300,   301,   302,   303,   304,
     305,   306,   307,   308,   309,   310,   311,   312,   313,   314,
     315,   316,   317,   318,   319,   320,   321,   322,   323,   324,
     325,   326,   327,   328,   329,    61,   330,   331,   332,   333,
     334,   335,   336,   337,    43,    45,    42,    47,    37,   338,
     339,    94,    10,    40,    41,    91,    93,    46,    44,   123,
     125,    58,    59,    38
};
# endif

#define YYPACT_NINF -438

#define yypact_value_is_default(Yystate) \
  (!!((Yystate) == (-438)))

#define YYTABLE_NINF -156

#define yytable_value_is_error(Yytable_value) \
  0

  /* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
     STATE-NUM.  */
static const yytype_int16 yypact[] =
{
    -438,  1168,  -438,  -438,  -438,  -438,  2093,     5,  -438,   -66,
    -438,  -438,     3,  -438,  -438,  2147,    17,    17,    17,   -55,
    -438,   -25,   -17,  -438,    11,    11,  -438,  -438,  -438,  -438,
    -438,  -438,  -438,    65,  -438,    17,  -438,  -438,  -438,  -438,
      16,  -438,  -438,  -438,  -438,    25,     0,  -438,    40,  -438,
    -438,  -438,    44,    31,  2366,  2425,   963,     9,  -438,  2425,
      90,  -438,  -438,  -438,  -438,  2251,  2251,  -438,   867,  -438,
      14,  -438,  1912,   -58,    15,  -438,    19,    20,  -438,    22,
    1065,    23,    34,  1720,   -46,  -438,  -438,    30,    30,  2741,
    -438,    29,   -40,    36,  -438,  -438,  -438,   -56,  -438,  -438,
      12,   -12,  2758,    32,  -438,  -438,  -438,  2251,  -438,  1427,
      48,    74,  -438,    53,  2425,  -438,  2758,  -438,  -438,  -438,
    -438,  -438,  -438,  -438,  -438,  -438,    11,   141,  -438,  -438,
    -438,    54,    52,    61,  -438,  -438,  -438,  2425,  -438,    11,
      63,  -438,  -438,    67,    69,  2251,    92,    73,  2425,  -438,
      76,    72,    59,  -438,    75,  -438,  -438,  -438,  -438,   203,
     203,  -438,    77,    80,  -438,  -438,  -438,  -438,  -438,  -438,
    -438,  -438,  -438,  -438,  -438,  -438,  -438,  -438,  -438,  -438,
    -438,  -438,  -438,  -438,  -438,  -438,  -438,  -438,  -438,  -438,
    -438,  -438,  2251,  2425,  -438,  -438,    84,    84,  -438,  2551,
    1264,  -438,  -438,  -438,  2758,  2039,  2425,  -438,  2425,   168,
    -438,  -438,   203,  2425,  -438,     2,  -438,  2251,  2251,  2251,
    2251,  1912,  1912,  2251,  2251,  2251,  2251,  2251,  2251,  2251,
    2251,  2251,  2251,  2251,  2251,  2251,  2251,  -438,    91,   141,
    1985,  1337,  -438,  2199,  2251,  2093,  -438,  2570,  -438,    81,
     -37,   169,   100,  1912,    59,   111,  1337,   102,   107,   108,
     109,   110,  -438,   101,  -438,    11,  -438,  1337,  -438,  -438,
    -438,  -438,   112,  1337,  1337,  2758,  2251,  2251,   105,   101,
    -438,  -438,  -438,  2251,  2251,  -438,  -438,  1912,  -438,  -438,
    -438,  -438,   154,  2251,    59,  -438,  2467,   115,   101,  -438,
    -438,  -438,  1526,  -438,  2425,  -438,  2758,  -438,  -438,  -438,
    -438,  -438,  -438,  -438,  -438,  2758,    56,   113,  2758,  2589,
    -438,  -438,  2227,  1164,   103,   103,   103,   103,   103,   103,
     -18,   -18,    84,    84,    84,    84,  1337,  -438,  -438,  2758,
    2425,   300,  -438,  2758,   116,   119,  -438,  2608,  -438,  2758,
    -438,  -438,  -438,  -438,  -438,  1337,  -438,  -438,  2251,   118,
    1337,   120,   124,   125,  -438,  2251,   127,  -438,     1,   130,
     135,   133,   134,   136,  2758,  2488,  2425,   127,    73,  2627,
     -67,  2758,  -438,  1912,  1912,  1912,  1912,  2646,   131,  -438,
    2425,   127,  -438,  -438,  -438,   138,  -438,   160,  2251,  1816,
    1912,  -438,  -438,   222,   142,   144,  -438,  -438,     7,  -438,
    -438,  -438,  1337,  -438,  1912,  2251,   146,  -438,  2421,  -438,
     148,   147,   147,   147,  2509,  2251,  -438,  -438,  -438,   245,
    2251,  -438,  2251,   147,  -438,  -438,  -438,   101,  -438,  2251,
    -438,  -438,  -438,  -438,  -438,   151,   300,   101,  1337,   157,
    2251,  2665,  -438,   162,  -438,  1912,  -438,  1337,  -438,  2251,
    -438,  -438,  2684,  -438,  2251,  -438,   223,  -438,  -438,  -438,
    -438,  2530,  -438,  2251,  -438,  -438,  2758,  2444,  -438,   127,
    2703,  -438,  -438,  -438,  -438,   300,  -438,   127,   165,  1337,
    -438,  2758,   180,  -438,  -438,  -438,   170,  2722,  -438,  -438,
    2758,  2425,   219,   172,  -438,  2758,   260,  2251,  -438,  -438,
    -438,   173,  2251,  -438,  -438,  -438,  1912,  1912,  -438,  2425,
    -438,   174,  2425,  -438,  2758,  -438,   585,  -438,  -438,  -438,
    1264,  2425,  -438,  -438,  1912,  2251,  -438,  -438,  1623,  -438,
    -438,  2758,  -438,  -438
};

  /* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
     Performed when YYTABLE does not specify something else to do.  Zero
     means the default is an error.  */
static const yytype_uint16 yydefact[] =
{
       2,     0,     1,    14,   159,    58,     0,     0,   153,     0,
     146,   152,   153,   190,   153,   153,     0,     0,     0,     0,
     153,     0,     0,   191,     0,     0,   153,   153,   153,   153,
     153,   153,    56,     0,    12,     0,   153,   153,   153,    25,
     162,   160,   206,   153,   125,   128,     0,   137,     0,   153,
     153,   153,     0,   153,     0,     0,     0,     0,   153,     0,
       0,   192,   193,    24,    59,     0,     0,     3,     0,    90,
     167,    30,   166,    29,     0,    66,    37,    38,    67,     0,
       0,    64,     0,     0,   164,   135,   146,     0,     0,     0,
     153,    65,   161,     0,    92,   167,   166,    29,   209,    55,
       0,   164,   208,    78,   212,    69,   201,     0,   151,     0,
       0,   123,    81,     0,     0,    70,    71,   257,   222,   223,
     225,   224,   213,   221,   215,   219,     0,     0,     8,     9,
     239,   236,     0,     0,    74,    76,   200,     0,    75,     0,
       0,   217,    73,     0,     0,     0,   163,   205,     0,   153,
       0,     0,     0,   100,    29,    99,   153,   101,   112,     0,
       0,   102,     0,     0,    97,    40,   258,   259,   274,   260,
     261,   262,   263,   276,   270,   277,   278,   279,   271,   264,
     265,   273,   266,   272,   267,   268,   269,   275,    36,    39,
      33,   153,     0,     0,    47,    49,   180,   189,   173,     0,
       0,     5,    68,   154,    63,     0,     0,    11,     0,     0,
      10,    54,     0,     0,     6,     0,   103,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     7,     0,     0,
       0,   228,     4,     0,     0,     0,   153,     0,   145,     0,
     161,     0,     0,     0,     0,     0,   228,     0,     0,     0,
       0,     0,   194,     0,   199,     0,   237,   228,    60,    62,
      84,    13,     0,   228,   228,    16,     0,     0,    93,   130,
     134,   206,   126,     0,     0,   129,   138,     0,   118,   114,
     120,   116,     0,     0,     0,    23,     0,    41,    42,    46,
     172,   158,     0,   104,     0,    52,    20,    31,    48,    50,
      53,    51,    61,   203,   136,    18,     0,     0,   147,     0,
     154,   154,   188,   187,   181,   182,   183,   184,   185,   186,
     174,   175,   176,   177,   178,   179,   228,   195,    21,    15,
       0,     0,   232,   233,     0,   229,   230,     0,   211,   210,
     202,   171,   144,   107,   109,   228,   154,   124,     0,     0,
     228,     0,     0,     0,   170,     0,   196,   240,   245,     0,
       0,     0,     0,     0,    17,     0,     0,   131,   204,     0,
       0,    94,   154,     0,     0,     0,     0,     0,     0,    26,
       0,    43,   156,    91,   157,     0,   153,   165,     0,     0,
       0,   150,    87,    88,     0,     0,   143,   141,     0,   234,
     139,   169,     0,   165,     0,     0,     0,    79,     0,    77,
       0,     0,     0,     0,     0,     0,   247,   243,   238,     0,
       0,    28,     0,     0,    57,    27,   207,   132,   127,     0,
     113,   154,   154,   154,   154,     0,     0,    44,   228,    34,
       0,     0,   149,     0,   154,     0,   168,   228,   142,     0,
     231,   154,     0,   122,     0,    72,   249,   214,   216,   220,
     197,     0,   242,     0,   245,   241,   246,     0,   218,   133,
       0,   119,   115,   121,   117,     0,    98,    45,     0,   228,
      32,   106,     0,   148,    80,   154,     0,     0,   108,   110,
      82,     0,   253,   250,   198,   248,     0,     0,    95,    96,
      19,     0,     0,    89,   235,   140,     0,     0,   251,     0,
     226,   254,     0,   247,    85,    35,     0,   154,   154,   255,
       0,     0,   252,   244,     0,     0,   111,    83,     0,   256,
     154,   105,   227,    86
};

  /* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -438,  -438,  -438,   270,  -438,  -438,    -1,     4,  -438,  -438,
    -438,  -438,  -438,  -117,  -438,  -438,  -438,   473,   498,  -438,
      64,   242,  -438,  -438,  -438,  -438,  -438,  -438,  -438,  -438,
    -438,  -438,  -438,  -438,  -438,  -438,  -438,  -438,    39,  -438,
    -438,  -438,  -438,  -102,   114,  -203,  -438,  -437,  -438,   193,
    -438,  -438,   192,  -438,  -438,  2319,  -262,  -249,   362,  -438,
    -438,    43,  -276,  -438,   -10,  -438,  -155,  -438,     6,  -438,
    -438,  -438,  -438,  -438,  -438,  -438,    60,  -402,  -438,  -250,
    -438,  -129,  -438,  -438,  -438,  -438,  -438,  -190,  -438,  -238,
    -438,  -438,  -438,  -438,  -438,  -120,   319
};

  /* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
      -1,     1,   140,    95,    71,   191,    96,    97,   396,   490,
      74,    75,   297,   298,    76,    77,    78,   202,    80,    81,
     268,   394,   255,   517,   370,   534,   200,   294,   414,   415,
     516,   287,   384,   386,   383,   385,   253,   254,   100,   149,
     151,   152,   278,   279,   101,    85,   156,   409,    86,   108,
     317,   400,   221,    87,    88,   281,   303,   302,   204,    90,
      91,   262,   366,   263,    92,   246,   282,   146,   147,   103,
     105,    93,   258,   259,   272,   260,   122,   467,   530,   344,
     345,   346,    94,   368,   131,   428,   474,   429,   430,   472,
     473,   502,   503,   520,   521,   123,   269
};

  /* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
     positive, shift that token.  If negative, reduce the rule whose
     number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
      72,   286,   112,   377,   426,    73,   359,   264,   458,   486,
     313,     8,   314,   104,   130,   132,   205,   369,   243,     8,
     468,   469,   391,   372,   373,   117,   439,   107,   217,    26,
     215,   478,   118,   119,   240,    29,   295,   240,   126,   206,
      83,   206,    38,    29,    39,   153,   120,   218,   509,    44,
     154,   110,    44,   241,    47,   121,   241,   353,   402,   403,
      44,   354,   217,   110,   110,    56,    57,   128,   233,   234,
     235,    72,    63,   236,    44,   129,    73,   124,   125,   139,
      44,   244,    72,    47,   150,   155,   404,    73,    26,   314,
     145,   350,   162,   157,   417,   141,   109,   161,   195,   250,
     459,    38,   427,    39,   192,   416,   201,   207,    72,   215,
     420,    83,   252,    73,   210,    84,   261,   208,   209,   264,
     440,   213,    83,   220,    56,    57,   214,   239,   242,   270,
     245,    63,   223,   224,   225,   226,   227,   228,   229,   230,
     231,   232,   233,   234,   235,   251,   256,   236,    83,   117,
     397,   285,   265,   266,   267,   271,   154,   398,   288,   290,
     273,   479,   274,   154,   154,   110,   276,   163,   277,   283,
     284,   487,   206,   293,   292,   236,   309,   313,   110,   481,
     482,   483,   484,   352,   336,   358,    84,   231,   232,   233,
     234,   235,   494,   355,   236,   360,   365,    84,   488,   498,
     361,   362,   363,   376,   364,   371,    47,   496,     5,   432,
     411,   310,   419,   390,   421,   399,   154,   412,   422,   423,
      72,    72,   425,    84,   431,    73,    73,   433,   434,   446,
     435,   448,    26,   513,   450,   455,   456,   457,    32,   511,
     463,   449,   465,    82,    37,    38,   466,    39,   475,   485,
     489,   501,    72,   357,   512,   367,   493,    73,   154,   510,
      83,    83,   519,   523,   514,   536,   537,   525,    56,    57,
     522,    70,   531,   447,   437,    63,    64,   312,   543,   219,
     222,   538,   337,   460,   506,   533,    72,   378,     0,     0,
       0,    73,    83,   388,     0,     0,     0,     0,   154,     0,
       0,    72,     0,     0,   110,     0,    73,     0,     8,     0,
       0,     0,     0,     0,   203,     0,     0,     0,     0,     0,
       0,     0,     0,   380,     0,   216,    83,     0,     0,    26,
       0,   410,    29,     0,     0,    84,    84,     0,     0,     0,
     407,    83,    38,     0,    39,   154,     0,   406,     0,    44,
       0,   249,    47,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    89,     0,    56,    57,    84,   102,     0,
       0,     0,    63,   188,   189,     0,     0,   116,   194,     0,
       0,     0,    72,    72,    72,    72,     0,    73,    73,    73,
      73,     0,     0,     0,     0,     0,     0,     0,    72,    72,
       0,    84,     0,    73,    73,     0,     0,     0,     0,     0,
       0,     0,     0,    72,     0,     0,    84,     0,    73,     0,
       0,     0,    83,    83,    83,    83,     0,   196,   197,     0,
     199,     0,     0,   257,     0,     0,   410,     0,    83,    83,
       0,     0,     0,     0,     0,   407,     0,     0,     0,     0,
     154,     0,     0,    83,    72,   408,     0,     0,     0,    73,
       0,     0,     0,   320,   321,     0,     0,   280,     0,   247,
       0,     0,     0,     0,    79,   410,     0,     0,     0,    98,
       0,     0,     0,     0,   407,     0,     0,     0,     0,   154,
       0,     0,     0,     0,    83,   356,     0,    84,    84,    84,
      84,     0,     0,     0,    99,     0,     0,   275,     0,     0,
       0,     0,   299,    84,    84,    72,    72,     0,     0,     0,
      73,    73,     0,     0,     0,   307,     0,   308,    84,   382,
       0,     0,     0,    72,     0,     0,     0,    72,    73,     0,
       0,     0,    73,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   296,    83,    83,     0,     0,     0,
     408,     0,     0,     0,     0,     0,     0,   306,     0,    84,
       0,     0,     0,    83,     0,     0,     0,    83,     0,   315,
     316,   318,   319,     0,     0,   322,   323,   324,   325,   326,
     327,   328,   329,   330,   331,   332,   333,   334,   335,   408,
       0,     0,   339,   343,     0,   306,   347,   349,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   343,     0,
       0,     0,     0,   395,     0,   441,   442,   443,   444,   343,
      84,    84,   289,   291,     0,   343,   343,     0,   374,   375,
       0,   453,   454,     0,     0,   379,   381,     0,    84,     0,
       0,     0,    84,     0,     0,   387,   461,    99,    99,   405,
       0,   223,   224,   225,   226,   227,   228,   229,   230,   231,
     232,   233,   234,   235,     0,     0,   236,     0,   305,     0,
       0,     0,     0,     0,     0,   311,   535,     0,     0,     0,
       0,     0,     0,     0,     0,   280,     0,   495,   343,     0,
       0,     0,     0,    99,     0,     0,     0,     0,     0,   299,
      99,     0,     0,     0,   342,     0,     0,   343,   348,     0,
     418,     0,   343,     0,     0,     0,     0,   424,     0,   342,
       0,     0,     0,     0,     0,     0,     0,     0,     0,    99,
     342,     0,     0,    99,     0,     0,   342,   342,     0,     0,
       0,     0,     0,     0,    99,     0,     0,     0,   527,   528,
     451,     0,     0,     0,     0,    99,     0,     0,     0,     0,
       0,    99,    99,     0,   343,     0,   540,   462,     0,     0,
       0,     0,     0,     0,     0,     0,     0,   471,     0,     0,
       0,     0,   476,     0,   477,     0,     0,     0,     0,     0,
       0,   480,     0,     0,     0,     0,     0,     0,     0,   342,
     343,     0,   491,     0,     0,     0,     0,     0,     0,   343,
     518,   497,     0,     0,     0,     0,   500,     0,   342,     0,
       0,     0,     0,   342,    99,   505,     0,     0,   529,     0,
       0,   532,     0,     0,     0,     0,     0,     0,     0,     0,
     539,   343,     0,    99,     0,     0,     0,     0,    99,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   198,   524,
       0,     4,     0,     0,   526,     8,     9,     0,     0,     0,
       0,     0,    13,     0,     0,   342,     0,     0,    19,     0,
       0,     0,    23,     0,     0,     0,    26,   541,     0,    29,
       0,     0,     0,     0,     0,     0,     0,     0,     0,    38,
      99,    39,    40,    41,    42,     0,    44,     0,     0,    47,
       0,   342,     0,     0,     0,     0,     0,     0,     0,     0,
     342,     0,    56,    57,     0,     0,     0,    61,    62,    63,
       0,     0,     0,     0,     0,     0,    99,     0,     0,     0,
       0,     0,    65,     0,     0,    99,     0,    66,     0,     0,
      68,     0,   342,     0,   190,     0,   -22,   -22,   -22,   -22,
     -22,   -22,   -22,     0,   -22,   -22,   -22,   -22,   -22,   -22,
     -22,     0,     0,     0,   -22,   -22,     0,    99,   -22,   -22,
     -22,     0,   -22,   -22,   -22,   -22,   -22,   -22,   -22,   -22,
       0,     0,     0,   -22,   -22,   -22,     0,   -22,   -22,   -22,
     -22,   -22,   -22,   -22,   -22,   -22,     0,   -22,   -22,     0,
     -22,   -22,   -22,   -22,     0,     0,     0,     0,   -22,   -22,
     -22,     0,     0,   -22,   -22,   -22,   -22,   -22,     0,   -22,
     -22,   -22,   -22,   -22,   -22,   -22,   -22,   -22,   -22,   -22,
     -22,   -22,     0,   -22,   -22,   -22,   -22,   -22,   -22,   -22,
     -22,   -22,   -22,   -22,   -22,   -22,   211,     0,     0,   -55,
     -55,   -55,   -55,   -55,   -55,     0,   -55,   -55,   -55,   -55,
     -55,   -55,   -55,     0,     0,     0,   -55,   -55,     0,     0,
     -55,   -55,   -55,     0,   -55,   -55,   -55,   -55,   -55,   -55,
     -55,   -55,     0,     0,     0,   -55,   -55,   -55,     0,   -55,
     -55,   -55,   -55,   -55,   -55,   -55,   -55,   -55,     0,   -55,
     -55,     0,   -55,   -55,   -55,   -55,     0,     0,     0,     0,
     -55,   -55,   -55,     0,     0,   -55,   -55,   -55,   -55,   212,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     -55,     0,     0,     0,     0,   -55,     0,   -55,   -55,   -55,
       0,     0,     0,     0,   -55,   -55,     0,   -55,     2,     3,
       0,     0,     4,     5,     6,     7,     8,     9,     0,    10,
      11,     0,    12,    13,    14,    15,    16,    17,    18,    19,
      20,    21,    22,    23,    24,    25,     0,    26,    27,    28,
      29,    30,    31,    32,    33,    34,     0,    35,    36,    37,
      38,     0,    39,    40,    41,    42,    43,    44,    45,    46,
      47,     0,    48,    49,     0,    50,    51,    52,    53,     0,
      54,    55,     0,    56,    57,    58,    59,    60,    61,    62,
      63,    64,   225,   226,   227,   228,   229,   230,   231,   232,
     233,   234,   235,    65,     0,   236,     0,     0,    66,     0,
      67,    68,     0,     0,     0,   301,     0,    69,  -155,  -155,
    -155,  -155,  -155,  -155,     0,  -155,  -155,     0,  -155,  -155,
    -155,  -155,     0,     0,     0,  -155,  -155,     0,     0,  -155,
    -155,  -155,     0,  -155,  -155,  -155,  -155,  -155,  -155,  -155,
    -155,     0,     0,     0,  -155,  -155,  -155,     0,  -155,  -155,
    -155,  -155,  -155,  -155,  -155,  -155,  -155,     0,  -155,  -155,
       0,  -155,  -155,  -155,  -155,     0,     0,     0,     0,  -155,
    -155,  -155,     0,     0,  -155,  -155,  -155,  -155,     0,     0,
       0,     4,     5,     0,     0,     8,     9,     0,     0,  -155,
       0,     0,    13,     0,  -155,     0,  -155,  -155,    19,     0,
       0,     0,    23,  -155,  -155,     0,    26,     0,     0,    29,
       0,     0,    32,     0,     0,     0,     0,     0,    37,    38,
       0,    39,    40,    41,    42,     0,    44,     0,     0,    47,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,   340,    56,    57,     0,     0,     0,    61,    62,    63,
      64,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,    65,     0,     0,     0,     0,    66,     0,     0,
      68,     4,     5,     6,     7,     8,     9,     0,    10,    11,
     341,    12,    13,    14,    15,     0,     0,     0,    19,    20,
       0,     0,    23,    24,    25,     0,    26,    27,    28,    29,
      30,    31,    32,    33,     0,     0,     0,    36,    37,    38,
       0,    39,    40,    41,    42,    43,    44,    45,    46,    47,
       0,    48,    49,     0,    50,    51,    52,    53,     0,     0,
       0,     0,    56,    57,    58,     0,     0,    61,    62,    63,
      64,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,    65,     0,     0,     0,     0,    66,     0,     0,
      68,     0,     0,     0,     0,     0,    69,     0,     0,   248,
       4,     5,     6,     7,     8,     9,     0,    10,    11,     0,
      12,    13,    14,    15,     0,     0,     0,    19,    20,     0,
       0,    23,    24,    25,     0,    26,    27,    28,    29,    30,
      31,    32,    33,     0,     0,     0,    36,    37,    38,     0,
      39,    40,    41,    42,    43,    44,    45,    46,    47,     0,
      48,    49,     0,    50,    51,    52,    53,     0,     0,     0,
       0,    56,    57,    58,     0,     0,    61,    62,    63,    64,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,    65,     0,     0,     0,     0,    66,     0,   392,    68,
       0,     0,     0,     0,     0,    69,   393,     4,     5,     6,
       7,     8,     9,     0,    10,    11,     0,    12,    13,    14,
      15,     0,     0,     0,    19,    20,     0,     0,    23,    24,
      25,     0,    26,    27,    28,    29,    30,    31,    32,    33,
       0,     0,     0,    36,    37,    38,     0,    39,    40,    41,
      42,    43,    44,    45,    46,    47,     0,    48,    49,     0,
      50,    51,    52,    53,     0,     0,     0,     0,    56,    57,
      58,     0,     0,    61,    62,    63,    64,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,    65,     0,
       0,     0,     0,    66,     0,   392,    68,     0,     0,     0,
       0,     0,    69,   542,     4,     5,     6,     7,     8,     9,
       0,    10,    11,     0,    12,    13,    14,    15,     0,     0,
       0,    19,    20,     0,     0,    23,    24,    25,     0,    26,
      27,    28,    29,    30,    31,    32,    33,     0,     0,     0,
      36,    37,    38,     0,    39,    40,    41,    42,    43,    44,
      45,    46,    47,     0,    48,    49,     0,    50,    51,    52,
      53,     0,     0,     0,     0,    56,    57,    58,     0,     0,
      61,    62,    63,    64,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,    65,     0,     0,     0,     0,
      66,     0,     0,    68,     0,     0,     0,   215,     0,    69,
       4,     5,     6,     7,     8,     9,     0,    10,    11,     0,
      12,    13,    14,    15,     0,     0,     0,    19,    20,     0,
       0,    23,    24,    25,     0,    26,    27,    28,    29,    30,
      31,    32,    33,     0,     0,     0,    36,    37,    38,     0,
      39,    40,    41,    42,    43,    44,    45,    46,    47,     0,
      48,    49,     0,    50,    51,    52,    53,     0,     0,     0,
       0,    56,    57,    58,     0,     0,    61,    62,    63,    64,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,    65,     0,     0,     0,     0,    66,     0,     0,    68,
     452,     0,     0,     0,     0,    69,     4,     5,     6,     7,
       8,     9,     0,    10,    11,     0,    12,    13,    14,    15,
       0,     0,     0,    19,    20,     0,     0,    23,    24,    25,
       0,    26,    27,    28,    29,    30,    31,    32,    33,     0,
       0,     0,    36,    37,    38,     0,    39,    40,    41,    42,
      43,    44,    45,    46,    47,     0,    48,    49,     0,    50,
      51,    52,    53,     0,     0,     0,     0,    56,    57,    58,
       0,     0,    61,    62,    63,    64,   338,     0,     0,     4,
       0,     0,     0,     8,     9,     0,     0,    65,     0,     0,
      13,     0,    66,     0,     0,    68,    19,     0,     0,     0,
      23,    69,     0,     0,    26,     0,     0,    29,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    38,     0,    39,
      40,    41,    42,     0,    44,     0,     0,    47,     0,     0,
       0,     0,     0,     4,     5,     0,     0,     8,     9,     0,
      56,    57,     0,     0,    13,    61,    62,    63,     0,     0,
      19,     0,     0,     0,    23,     0,     0,     0,    26,     0,
      65,    29,     0,     0,    32,    66,     0,     0,    68,     0,
      37,    38,     0,    39,    40,    41,    42,     0,    44,     0,
       0,    47,     0,     0,     0,     0,     0,     4,     5,     0,
       0,     8,     9,   304,    56,    57,     0,     0,    13,    61,
      62,    63,    64,     0,    19,     0,     0,     0,    23,     0,
       0,     0,    26,     0,    65,    29,     0,     0,    32,    66,
       0,     0,    68,     0,    37,    38,     0,    39,    40,    41,
      42,     0,    44,     0,     0,    47,     0,     0,     0,     0,
       0,     4,     0,     0,     0,     8,     9,     0,    56,    57,
       0,     0,    13,    61,    62,    63,    64,     0,    19,     0,
       0,     0,    23,     0,     0,     0,    26,     0,    65,    29,
       0,     0,     0,    66,     0,     0,    68,     0,     0,    38,
       0,    39,    40,    41,    42,     0,    44,     0,     0,    47,
       0,     0,     0,     4,     0,     0,     0,     8,     9,     0,
       0,   114,    56,    57,    13,     0,     0,    61,    62,    63,
      19,     0,     0,     0,    23,     0,     0,     0,    26,     0,
       0,    29,    65,     0,     0,     0,     0,    66,     0,     0,
      68,    38,     0,    39,    40,    41,    42,     0,    44,     0,
       0,    47,     0,     0,     0,     4,     0,     0,     0,     8,
       9,     0,     0,   304,    56,    57,    13,     0,     0,    61,
      62,    63,    19,     0,     0,     0,    23,     0,     0,     0,
      26,     0,     0,    29,    65,     0,     0,     0,     0,    66,
       0,     0,    68,    38,     0,    39,    40,    41,    42,     0,
      44,     0,     0,    47,   224,   225,   226,   227,   228,   229,
     230,   231,   232,   233,   234,   235,    56,    57,   236,     0,
       0,    61,    62,    63,     0,     0,     0,   106,     0,     0,
       0,   111,     0,   113,   115,     0,    65,     0,     0,   127,
       0,    66,     0,     0,    68,   133,   134,   135,   136,   137,
     138,     0,     0,     0,     0,   142,   143,   144,     0,     0,
       0,     0,   148,     0,     0,     0,     0,   165,   158,   159,
     160,   166,   164,     0,   167,   168,   169,   193,     0,     0,
       0,   170,   171,     0,     0,     0,     0,     0,     0,     0,
       0,   172,     0,     0,     0,   173,     0,     0,   174,     0,
       0,     0,     0,     0,   175,     0,     0,   176,   177,   238,
     178,     0,     0,     0,     0,   179,     0,     0,   180,   181,
       0,     0,   182,     0,     0,     0,     0,   183,     0,     0,
     166,   184,   185,   167,   168,   169,   186,   187,     0,     0,
     170,   171,     0,     0,     0,     0,     0,     0,     0,     0,
     172,     0,     0,     0,   173,     0,     0,   174,     0,     0,
       0,     0,     0,   175,     0,     0,   176,   177,     0,   178,
       0,     0,     0,     0,   179,     0,     0,   180,   181,     0,
       0,   182,     0,     0,     0,     0,   183,     0,     0,     0,
     184,   185,     0,     0,     0,   186,   187,   223,   224,   225,
     226,   227,   228,   229,   230,   231,   232,   233,   234,   235,
       0,     0,   236,     0,     0,     0,     0,     0,     0,   464,
     223,   224,   225,   226,   227,   228,   229,   230,   231,   232,
     233,   234,   235,     0,     0,   236,     0,     0,     0,     0,
       0,     0,   507,   223,   224,   225,   226,   227,   228,   229,
     230,   231,   232,   233,   234,   235,     0,     0,   236,     0,
       0,     0,     0,   389,   223,   224,   225,   226,   227,   228,
     229,   230,   231,   232,   233,   234,   235,     0,     0,   236,
       0,     0,     0,     0,   436,   223,   224,   225,   226,   227,
     228,   229,   230,   231,   232,   233,   234,   235,     0,     0,
     236,     0,     0,     0,     0,   470,   223,   224,   225,   226,
     227,   228,   229,   230,   231,   232,   233,   234,   235,     0,
       0,   236,     0,     0,     0,     0,   504,   223,   224,   225,
     226,   227,   228,   229,   230,   231,   232,   233,   234,   235,
       0,     0,   236,     0,     0,   300,   223,   224,   225,   226,
     227,   228,   229,   230,   231,   232,   233,   234,   235,     0,
       0,   236,     0,     0,   351,   223,   224,   225,   226,   227,
     228,   229,   230,   231,   232,   233,   234,   235,     0,     0,
     236,     0,     0,   401,   223,   224,   225,   226,   227,   228,
     229,   230,   231,   232,   233,   234,   235,     0,     0,   236,
       0,     0,   413,   223,   224,   225,   226,   227,   228,   229,
     230,   231,   232,   233,   234,   235,     0,     0,   236,     0,
       0,   438,   223,   224,   225,   226,   227,   228,   229,   230,
     231,   232,   233,   234,   235,     0,     0,   236,     0,     0,
     445,   223,   224,   225,   226,   227,   228,   229,   230,   231,
     232,   233,   234,   235,     0,     0,   236,     0,     0,   492,
     223,   224,   225,   226,   227,   228,   229,   230,   231,   232,
     233,   234,   235,     0,     0,   236,     0,     0,   499,   223,
     224,   225,   226,   227,   228,   229,   230,   231,   232,   233,
     234,   235,     0,     0,   236,     0,     0,   508,   223,   224,
     225,   226,   227,   228,   229,   230,   231,   232,   233,   234,
     235,     0,     0,   236,     0,     0,   515,   223,   224,   225,
     226,   227,   228,   229,   230,   231,   232,   233,   234,   235,
       0,     0,   236,   237,   223,   224,   225,   226,   227,   228,
     229,   230,   231,   232,   233,   234,   235,     0,     0,   236
};

static const yytype_int16 yycheck[] =
{
       1,   156,    12,   279,     3,     1,   256,   127,     1,   446,
       8,     8,   215,     8,    24,    25,    74,   267,    74,     8,
     422,   423,   298,   273,   274,     8,    93,    93,    74,    29,
      97,   433,    15,    16,    74,    32,   191,    74,    93,    97,
       1,    97,    42,    32,    44,    46,    29,    93,   485,    49,
      46,    12,    49,    93,    52,    38,    93,    94,   320,   321,
      49,    98,    74,    24,    25,    65,    66,    92,    86,    87,
      88,    72,    72,    91,    49,    92,    72,    17,    18,    14,
      49,    93,    83,    52,    45,    46,   336,    83,    29,   292,
      74,   246,    53,    53,   356,    35,    93,    53,     8,   109,
      93,    42,   101,    44,    95,   355,    92,    92,   109,    97,
     360,    72,    38,   109,    92,     1,   126,    98,    98,   239,
     382,    98,    83,    93,    65,    66,    92,    98,    92,   139,
      98,    72,    76,    77,    78,    79,    80,    81,    82,    83,
      84,    85,    86,    87,    88,    97,    93,    91,   109,     8,
      94,   152,    98,   101,    93,    92,   152,   101,   159,   160,
      93,   437,    93,   159,   160,   126,    74,    53,    95,    93,
      98,   447,    97,    93,    97,    91,     8,     8,   139,   441,
     442,   443,   444,   102,    93,    74,    72,    84,    85,    86,
      87,    88,   454,    93,    91,    93,    95,    83,   448,   461,
      93,    93,    93,    98,    94,    93,    52,   457,     5,    74,
      94,   212,    94,    98,    94,   102,   212,    98,    94,    94,
     221,   222,    95,   109,    94,   221,   222,    94,    94,    98,
      94,    93,    29,   495,    74,    13,    94,    93,    35,   489,
      94,   396,    94,     1,    41,    42,    99,    44,     3,    98,
      93,    28,   253,   254,    74,   265,    94,   253,   254,    94,
     221,   222,    43,     3,    94,   527,   528,    94,    65,    66,
      98,     1,    98,   390,   376,    72,    73,   213,   540,    86,
      88,   530,   239,   412,   474,   523,   287,   281,    -1,    -1,
      -1,   287,   253,   294,    -1,    -1,    -1,    -1,   294,    -1,
      -1,   302,    -1,    -1,   265,    -1,   302,    -1,     8,    -1,
      -1,    -1,    -1,    -1,    72,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,   284,    -1,    83,   287,    -1,    -1,    29,
      -1,   341,    32,    -1,    -1,   221,   222,    -1,    -1,    -1,
     341,   302,    42,    -1,    44,   341,    -1,    47,    -1,    49,
      -1,   109,    52,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,     1,    -1,    65,    66,   253,     6,    -1,
      -1,    -1,    72,    54,    55,    -1,    -1,    15,    59,    -1,
      -1,    -1,   383,   384,   385,   386,    -1,   383,   384,   385,
     386,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   399,   400,
      -1,   287,    -1,   399,   400,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,   414,    -1,    -1,   302,    -1,   414,    -1,
      -1,    -1,   383,   384,   385,   386,    -1,    65,    66,    -1,
      68,    -1,    -1,   114,    -1,    -1,   446,    -1,   399,   400,
      -1,    -1,    -1,    -1,    -1,   446,    -1,    -1,    -1,    -1,
     446,    -1,    -1,   414,   455,   341,    -1,    -1,    -1,   455,
      -1,    -1,    -1,   221,   222,    -1,    -1,   148,    -1,   107,
      -1,    -1,    -1,    -1,     1,   485,    -1,    -1,    -1,     6,
      -1,    -1,    -1,    -1,   485,    -1,    -1,    -1,    -1,   485,
      -1,    -1,    -1,    -1,   455,   253,    -1,   383,   384,   385,
     386,    -1,    -1,    -1,     6,    -1,    -1,   145,    -1,    -1,
      -1,    -1,   193,   399,   400,   516,   517,    -1,    -1,    -1,
     516,   517,    -1,    -1,    -1,   206,    -1,   208,   414,   287,
      -1,    -1,    -1,   534,    -1,    -1,    -1,   538,   534,    -1,
      -1,    -1,   538,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,   192,   516,   517,    -1,    -1,    -1,
     446,    -1,    -1,    -1,    -1,    -1,    -1,   205,    -1,   455,
      -1,    -1,    -1,   534,    -1,    -1,    -1,   538,    -1,   217,
     218,   219,   220,    -1,    -1,   223,   224,   225,   226,   227,
     228,   229,   230,   231,   232,   233,   234,   235,   236,   485,
      -1,    -1,   240,   241,    -1,   243,   244,   245,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   256,    -1,
      -1,    -1,    -1,   304,    -1,   383,   384,   385,   386,   267,
     516,   517,   159,   160,    -1,   273,   274,    -1,   276,   277,
      -1,   399,   400,    -1,    -1,   283,   284,    -1,   534,    -1,
      -1,    -1,   538,    -1,    -1,   293,   414,   159,   160,   340,
      -1,    76,    77,    78,    79,    80,    81,    82,    83,    84,
      85,    86,    87,    88,    -1,    -1,    91,    -1,   205,    -1,
      -1,    -1,    -1,    -1,    -1,   212,   101,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,   376,    -1,   455,   336,    -1,
      -1,    -1,    -1,   205,    -1,    -1,    -1,    -1,    -1,   390,
     212,    -1,    -1,    -1,   241,    -1,    -1,   355,   245,    -1,
     358,    -1,   360,    -1,    -1,    -1,    -1,   365,    -1,   256,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   241,
     267,    -1,    -1,   245,    -1,    -1,   273,   274,    -1,    -1,
      -1,    -1,    -1,    -1,   256,    -1,    -1,    -1,   516,   517,
     398,    -1,    -1,    -1,    -1,   267,    -1,    -1,    -1,    -1,
      -1,   273,   274,    -1,   412,    -1,   534,   415,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,   425,    -1,    -1,
      -1,    -1,   430,    -1,   432,    -1,    -1,    -1,    -1,    -1,
      -1,   439,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   336,
     448,    -1,   450,    -1,    -1,    -1,    -1,    -1,    -1,   457,
     501,   459,    -1,    -1,    -1,    -1,   464,    -1,   355,    -1,
      -1,    -1,    -1,   360,   336,   473,    -1,    -1,   519,    -1,
      -1,   522,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
     531,   489,    -1,   355,    -1,    -1,    -1,    -1,   360,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,     1,   507,
      -1,     4,    -1,    -1,   512,     8,     9,    -1,    -1,    -1,
      -1,    -1,    15,    -1,    -1,   412,    -1,    -1,    21,    -1,
      -1,    -1,    25,    -1,    -1,    -1,    29,   535,    -1,    32,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    42,
     412,    44,    45,    46,    47,    -1,    49,    -1,    -1,    52,
      -1,   448,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
     457,    -1,    65,    66,    -1,    -1,    -1,    70,    71,    72,
      -1,    -1,    -1,    -1,    -1,    -1,   448,    -1,    -1,    -1,
      -1,    -1,    85,    -1,    -1,   457,    -1,    90,    -1,    -1,
      93,    -1,   489,    -1,     1,    -1,     3,     4,     5,     6,
       7,     8,     9,    -1,    11,    12,    13,    14,    15,    16,
      17,    -1,    -1,    -1,    21,    22,    -1,   489,    25,    26,
      27,    -1,    29,    30,    31,    32,    33,    34,    35,    36,
      -1,    -1,    -1,    40,    41,    42,    -1,    44,    45,    46,
      47,    48,    49,    50,    51,    52,    -1,    54,    55,    -1,
      57,    58,    59,    60,    -1,    -1,    -1,    -1,    65,    66,
      67,    -1,    -1,    70,    71,    72,    73,    74,    -1,    76,
      77,    78,    79,    80,    81,    82,    83,    84,    85,    86,
      87,    88,    -1,    90,    91,    92,    93,    94,    95,    96,
      97,    98,    99,   100,   101,   102,     1,    -1,    -1,     4,
       5,     6,     7,     8,     9,    -1,    11,    12,    13,    14,
      15,    16,    17,    -1,    -1,    -1,    21,    22,    -1,    -1,
      25,    26,    27,    -1,    29,    30,    31,    32,    33,    34,
      35,    36,    -1,    -1,    -1,    40,    41,    42,    -1,    44,
      45,    46,    47,    48,    49,    50,    51,    52,    -1,    54,
      55,    -1,    57,    58,    59,    60,    -1,    -1,    -1,    -1,
      65,    66,    67,    -1,    -1,    70,    71,    72,    73,    74,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      85,    -1,    -1,    -1,    -1,    90,    -1,    92,    93,    94,
      -1,    -1,    -1,    -1,    99,   100,    -1,   102,     0,     1,
      -1,    -1,     4,     5,     6,     7,     8,     9,    -1,    11,
      12,    -1,    14,    15,    16,    17,    18,    19,    20,    21,
      22,    23,    24,    25,    26,    27,    -1,    29,    30,    31,
      32,    33,    34,    35,    36,    37,    -1,    39,    40,    41,
      42,    -1,    44,    45,    46,    47,    48,    49,    50,    51,
      52,    -1,    54,    55,    -1,    57,    58,    59,    60,    -1,
      62,    63,    -1,    65,    66,    67,    68,    69,    70,    71,
      72,    73,    78,    79,    80,    81,    82,    83,    84,    85,
      86,    87,    88,    85,    -1,    91,    -1,    -1,    90,    -1,
      92,    93,    -1,    -1,    -1,     1,    -1,    99,     4,     5,
       6,     7,     8,     9,    -1,    11,    12,    -1,    14,    15,
      16,    17,    -1,    -1,    -1,    21,    22,    -1,    -1,    25,
      26,    27,    -1,    29,    30,    31,    32,    33,    34,    35,
      36,    -1,    -1,    -1,    40,    41,    42,    -1,    44,    45,
      46,    47,    48,    49,    50,    51,    52,    -1,    54,    55,
      -1,    57,    58,    59,    60,    -1,    -1,    -1,    -1,    65,
      66,    67,    -1,    -1,    70,    71,    72,    73,    -1,    -1,
      -1,     4,     5,    -1,    -1,     8,     9,    -1,    -1,    85,
      -1,    -1,    15,    -1,    90,    -1,    92,    93,    21,    -1,
      -1,    -1,    25,    99,   100,    -1,    29,    -1,    -1,    32,
      -1,    -1,    35,    -1,    -1,    -1,    -1,    -1,    41,    42,
      -1,    44,    45,    46,    47,    -1,    49,    -1,    -1,    52,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    64,    65,    66,    -1,    -1,    -1,    70,    71,    72,
      73,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    85,    -1,    -1,    -1,    -1,    90,    -1,    -1,
      93,     4,     5,     6,     7,     8,     9,    -1,    11,    12,
     103,    14,    15,    16,    17,    -1,    -1,    -1,    21,    22,
      -1,    -1,    25,    26,    27,    -1,    29,    30,    31,    32,
      33,    34,    35,    36,    -1,    -1,    -1,    40,    41,    42,
      -1,    44,    45,    46,    47,    48,    49,    50,    51,    52,
      -1,    54,    55,    -1,    57,    58,    59,    60,    -1,    -1,
      -1,    -1,    65,    66,    67,    -1,    -1,    70,    71,    72,
      73,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    85,    -1,    -1,    -1,    -1,    90,    -1,    -1,
      93,    -1,    -1,    -1,    -1,    -1,    99,    -1,    -1,   102,
       4,     5,     6,     7,     8,     9,    -1,    11,    12,    -1,
      14,    15,    16,    17,    -1,    -1,    -1,    21,    22,    -1,
      -1,    25,    26,    27,    -1,    29,    30,    31,    32,    33,
      34,    35,    36,    -1,    -1,    -1,    40,    41,    42,    -1,
      44,    45,    46,    47,    48,    49,    50,    51,    52,    -1,
      54,    55,    -1,    57,    58,    59,    60,    -1,    -1,    -1,
      -1,    65,    66,    67,    -1,    -1,    70,    71,    72,    73,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    85,    -1,    -1,    -1,    -1,    90,    -1,    92,    93,
      -1,    -1,    -1,    -1,    -1,    99,   100,     4,     5,     6,
       7,     8,     9,    -1,    11,    12,    -1,    14,    15,    16,
      17,    -1,    -1,    -1,    21,    22,    -1,    -1,    25,    26,
      27,    -1,    29,    30,    31,    32,    33,    34,    35,    36,
      -1,    -1,    -1,    40,    41,    42,    -1,    44,    45,    46,
      47,    48,    49,    50,    51,    52,    -1,    54,    55,    -1,
      57,    58,    59,    60,    -1,    -1,    -1,    -1,    65,    66,
      67,    -1,    -1,    70,    71,    72,    73,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    85,    -1,
      -1,    -1,    -1,    90,    -1,    92,    93,    -1,    -1,    -1,
      -1,    -1,    99,   100,     4,     5,     6,     7,     8,     9,
      -1,    11,    12,    -1,    14,    15,    16,    17,    -1,    -1,
      -1,    21,    22,    -1,    -1,    25,    26,    27,    -1,    29,
      30,    31,    32,    33,    34,    35,    36,    -1,    -1,    -1,
      40,    41,    42,    -1,    44,    45,    46,    47,    48,    49,
      50,    51,    52,    -1,    54,    55,    -1,    57,    58,    59,
      60,    -1,    -1,    -1,    -1,    65,    66,    67,    -1,    -1,
      70,    71,    72,    73,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    85,    -1,    -1,    -1,    -1,
      90,    -1,    -1,    93,    -1,    -1,    -1,    97,    -1,    99,
       4,     5,     6,     7,     8,     9,    -1,    11,    12,    -1,
      14,    15,    16,    17,    -1,    -1,    -1,    21,    22,    -1,
      -1,    25,    26,    27,    -1,    29,    30,    31,    32,    33,
      34,    35,    36,    -1,    -1,    -1,    40,    41,    42,    -1,
      44,    45,    46,    47,    48,    49,    50,    51,    52,    -1,
      54,    55,    -1,    57,    58,    59,    60,    -1,    -1,    -1,
      -1,    65,    66,    67,    -1,    -1,    70,    71,    72,    73,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    85,    -1,    -1,    -1,    -1,    90,    -1,    -1,    93,
      94,    -1,    -1,    -1,    -1,    99,     4,     5,     6,     7,
       8,     9,    -1,    11,    12,    -1,    14,    15,    16,    17,
      -1,    -1,    -1,    21,    22,    -1,    -1,    25,    26,    27,
      -1,    29,    30,    31,    32,    33,    34,    35,    36,    -1,
      -1,    -1,    40,    41,    42,    -1,    44,    45,    46,    47,
      48,    49,    50,    51,    52,    -1,    54,    55,    -1,    57,
      58,    59,    60,    -1,    -1,    -1,    -1,    65,    66,    67,
      -1,    -1,    70,    71,    72,    73,     1,    -1,    -1,     4,
      -1,    -1,    -1,     8,     9,    -1,    -1,    85,    -1,    -1,
      15,    -1,    90,    -1,    -1,    93,    21,    -1,    -1,    -1,
      25,    99,    -1,    -1,    29,    -1,    -1,    32,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    42,    -1,    44,
      45,    46,    47,    -1,    49,    -1,    -1,    52,    -1,    -1,
      -1,    -1,    -1,     4,     5,    -1,    -1,     8,     9,    -1,
      65,    66,    -1,    -1,    15,    70,    71,    72,    -1,    -1,
      21,    -1,    -1,    -1,    25,    -1,    -1,    -1,    29,    -1,
      85,    32,    -1,    -1,    35,    90,    -1,    -1,    93,    -1,
      41,    42,    -1,    44,    45,    46,    47,    -1,    49,    -1,
      -1,    52,    -1,    -1,    -1,    -1,    -1,     4,     5,    -1,
      -1,     8,     9,    64,    65,    66,    -1,    -1,    15,    70,
      71,    72,    73,    -1,    21,    -1,    -1,    -1,    25,    -1,
      -1,    -1,    29,    -1,    85,    32,    -1,    -1,    35,    90,
      -1,    -1,    93,    -1,    41,    42,    -1,    44,    45,    46,
      47,    -1,    49,    -1,    -1,    52,    -1,    -1,    -1,    -1,
      -1,     4,    -1,    -1,    -1,     8,     9,    -1,    65,    66,
      -1,    -1,    15,    70,    71,    72,    73,    -1,    21,    -1,
      -1,    -1,    25,    -1,    -1,    -1,    29,    -1,    85,    32,
      -1,    -1,    -1,    90,    -1,    -1,    93,    -1,    -1,    42,
      -1,    44,    45,    46,    47,    -1,    49,    -1,    -1,    52,
      -1,    -1,    -1,     4,    -1,    -1,    -1,     8,     9,    -1,
      -1,    64,    65,    66,    15,    -1,    -1,    70,    71,    72,
      21,    -1,    -1,    -1,    25,    -1,    -1,    -1,    29,    -1,
      -1,    32,    85,    -1,    -1,    -1,    -1,    90,    -1,    -1,
      93,    42,    -1,    44,    45,    46,    47,    -1,    49,    -1,
      -1,    52,    -1,    -1,    -1,     4,    -1,    -1,    -1,     8,
       9,    -1,    -1,    64,    65,    66,    15,    -1,    -1,    70,
      71,    72,    21,    -1,    -1,    -1,    25,    -1,    -1,    -1,
      29,    -1,    -1,    32,    85,    -1,    -1,    -1,    -1,    90,
      -1,    -1,    93,    42,    -1,    44,    45,    46,    47,    -1,
      49,    -1,    -1,    52,    77,    78,    79,    80,    81,    82,
      83,    84,    85,    86,    87,    88,    65,    66,    91,    -1,
      -1,    70,    71,    72,    -1,    -1,    -1,     8,    -1,    -1,
      -1,    12,    -1,    14,    15,    -1,    85,    -1,    -1,    20,
      -1,    90,    -1,    -1,    93,    26,    27,    28,    29,    30,
      31,    -1,    -1,    -1,    -1,    36,    37,    38,    -1,    -1,
      -1,    -1,    43,    -1,    -1,    -1,    -1,     1,    49,    50,
      51,     5,    53,    -1,     8,     9,    10,    58,    -1,    -1,
      -1,    15,    16,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    25,    -1,    -1,    -1,    29,    -1,    -1,    32,    -1,
      -1,    -1,    -1,    -1,    38,    -1,    -1,    41,    42,    90,
      44,    -1,    -1,    -1,    -1,    49,    -1,    -1,    52,    53,
      -1,    -1,    56,    -1,    -1,    -1,    -1,    61,    -1,    -1,
       5,    65,    66,     8,     9,    10,    70,    71,    -1,    -1,
      15,    16,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      25,    -1,    -1,    -1,    29,    -1,    -1,    32,    -1,    -1,
      -1,    -1,    -1,    38,    -1,    -1,    41,    42,    -1,    44,
      -1,    -1,    -1,    -1,    49,    -1,    -1,    52,    53,    -1,
      -1,    56,    -1,    -1,    -1,    -1,    61,    -1,    -1,    -1,
      65,    66,    -1,    -1,    -1,    70,    71,    76,    77,    78,
      79,    80,    81,    82,    83,    84,    85,    86,    87,    88,
      -1,    -1,    91,    -1,    -1,    -1,    -1,    -1,    -1,    98,
      76,    77,    78,    79,    80,    81,    82,    83,    84,    85,
      86,    87,    88,    -1,    -1,    91,    -1,    -1,    -1,    -1,
      -1,    -1,    98,    76,    77,    78,    79,    80,    81,    82,
      83,    84,    85,    86,    87,    88,    -1,    -1,    91,    -1,
      -1,    -1,    -1,    96,    76,    77,    78,    79,    80,    81,
      82,    83,    84,    85,    86,    87,    88,    -1,    -1,    91,
      -1,    -1,    -1,    -1,    96,    76,    77,    78,    79,    80,
      81,    82,    83,    84,    85,    86,    87,    88,    -1,    -1,
      91,    -1,    -1,    -1,    -1,    96,    76,    77,    78,    79,
      80,    81,    82,    83,    84,    85,    86,    87,    88,    -1,
      -1,    91,    -1,    -1,    -1,    -1,    96,    76,    77,    78,
      79,    80,    81,    82,    83,    84,    85,    86,    87,    88,
      -1,    -1,    91,    -1,    -1,    94,    76,    77,    78,    79,
      80,    81,    82,    83,    84,    85,    86,    87,    88,    -1,
      -1,    91,    -1,    -1,    94,    76,    77,    78,    79,    80,
      81,    82,    83,    84,    85,    86,    87,    88,    -1,    -1,
      91,    -1,    -1,    94,    76,    77,    78,    79,    80,    81,
      82,    83,    84,    85,    86,    87,    88,    -1,    -1,    91,
      -1,    -1,    94,    76,    77,    78,    79,    80,    81,    82,
      83,    84,    85,    86,    87,    88,    -1,    -1,    91,    -1,
      -1,    94,    76,    77,    78,    79,    80,    81,    82,    83,
      84,    85,    86,    87,    88,    -1,    -1,    91,    -1,    -1,
      94,    76,    77,    78,    79,    80,    81,    82,    83,    84,
      85,    86,    87,    88,    -1,    -1,    91,    -1,    -1,    94,
      76,    77,    78,    79,    80,    81,    82,    83,    84,    85,
      86,    87,    88,    -1,    -1,    91,    -1,    -1,    94,    76,
      77,    78,    79,    80,    81,    82,    83,    84,    85,    86,
      87,    88,    -1,    -1,    91,    -1,    -1,    94,    76,    77,
      78,    79,    80,    81,    82,    83,    84,    85,    86,    87,
      88,    -1,    -1,    91,    -1,    -1,    94,    76,    77,    78,
      79,    80,    81,    82,    83,    84,    85,    86,    87,    88,
      -1,    -1,    91,    92,    76,    77,    78,    79,    80,    81,
      82,    83,    84,    85,    86,    87,    88,    -1,    -1,    91
};

  /* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
     symbol of state STATE-NUM.  */
static const yytype_uint8 yystos[] =
{
       0,   105,     0,     1,     4,     5,     6,     7,     8,     9,
      11,    12,    14,    15,    16,    17,    18,    19,    20,    21,
      22,    23,    24,    25,    26,    27,    29,    30,    31,    32,
      33,    34,    35,    36,    37,    39,    40,    41,    42,    44,
      45,    46,    47,    48,    49,    50,    51,    52,    54,    55,
      57,    58,    59,    60,    62,    63,    65,    66,    67,    68,
      69,    70,    71,    72,    73,    85,    90,    92,    93,    99,
     107,   108,   110,   111,   114,   115,   118,   119,   120,   121,
     122,   123,   125,   142,   148,   149,   152,   157,   158,   162,
     163,   164,   168,   175,   186,   107,   110,   111,   121,   122,
     142,   148,   162,   173,     8,   174,   159,    93,   153,    93,
     142,   159,   168,   159,    64,   159,   162,     8,    15,    16,
      29,    38,   180,   199,   180,   180,    93,   159,    92,    92,
     168,   188,   168,   159,   159,   159,   159,   159,   159,    14,
     106,   180,   159,   159,   159,    74,   171,   172,   159,   143,
     142,   144,   145,   110,   111,   142,   150,    53,   159,   159,
     159,    53,   142,   148,   159,     1,     5,     8,     9,    10,
      15,    16,    25,    29,    32,    38,    41,    42,    44,    49,
      52,    53,    56,    61,    65,    66,    70,    71,   200,   200,
       1,   109,    95,   159,   200,     8,   162,   162,     1,   162,
     130,    92,   121,   125,   162,    74,    97,    92,    98,    98,
      92,     1,    74,    98,    92,    97,   125,    74,    93,   153,
      93,   156,   156,    76,    77,    78,    79,    80,    81,    82,
      83,    84,    85,    86,    87,    88,    91,    92,   159,    98,
      74,    93,    92,    74,    93,    98,   169,   162,   102,   125,
     168,    97,    38,   140,   141,   126,    93,   200,   176,   177,
     179,   168,   165,   167,   199,    98,   101,    93,   124,   200,
     168,    92,   178,    93,    93,   162,    74,    95,   146,   147,
     200,   159,   170,    93,    98,   110,   170,   135,   110,   121,
     110,   121,    97,    93,   131,   170,   162,   116,   117,   200,
      94,     1,   161,   160,    64,   121,   162,   200,   200,     8,
     110,   121,   124,     8,   149,   162,   162,   154,   162,   162,
     125,   125,   162,   162,   162,   162,   162,   162,   162,   162,
     162,   162,   162,   162,   162,   162,    93,   165,     1,   162,
      64,   103,   121,   162,   183,   184,   185,   162,   121,   162,
     170,    94,   102,    94,    98,    93,   125,   110,    74,   183,
      93,    93,    93,    93,    94,    95,   166,   168,   187,   183,
     128,    93,   183,   183,   162,   162,    98,   166,   172,   162,
     142,   162,   125,   138,   136,   139,   137,   162,   110,    96,
      98,   166,    92,   100,   125,   200,   112,    94,   101,   102,
     155,    94,   160,   160,   183,   200,    47,   110,   148,   151,
     168,    94,    98,    94,   132,   133,   183,   160,   162,    94,
     183,    94,    94,    94,   162,    95,     3,   101,   189,   191,
     192,    94,    74,    94,    94,    94,    96,   147,    94,    93,
     160,   125,   125,   125,   125,    94,    98,   117,    93,   170,
      74,   162,    94,   125,   125,    13,    94,    93,     1,    93,
     185,   125,   162,    94,    98,    94,    99,   181,   181,   181,
      96,   162,   193,   194,   190,     3,   162,   162,   181,   166,
     162,   160,   160,   160,   160,    98,   151,   166,   183,    93,
     113,   162,    94,    94,   160,   125,   183,   162,   160,    94,
     162,    28,   195,   196,    96,   162,   191,    98,    94,   151,
      94,   183,    74,   160,    94,    94,   134,   127,   200,    43,
     197,   198,    98,     3,   162,    94,   162,   125,   125,   200,
     182,    98,   200,   193,   129,   101,   160,   160,   161,   200,
     125,   162,   100,   160
};

  /* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_uint8 yyr1[] =
{
       0,   104,   105,   105,   105,   105,   105,   105,   105,   105,
     105,   105,   106,   105,   105,   107,   107,   107,   107,   107,
     107,   107,   109,   108,   108,   108,   108,   108,   108,   110,
     111,   112,   111,   111,   113,   113,   114,   114,   114,   114,
     114,   115,   116,   116,   116,   116,   117,   118,   118,   119,
     119,   120,   120,   120,   120,   121,   121,   121,   122,   122,
     123,   123,   124,   125,   125,   125,   125,   125,   125,   125,
     125,   125,   125,   125,   125,   125,   125,   125,   125,   125,
     125,   126,   127,   125,   128,   129,   125,   125,   125,   125,
     130,   125,   125,   125,   125,   125,   125,   131,   125,   125,
     125,   125,   125,   125,   125,   125,   125,   132,   125,   133,
     134,   125,   135,   125,   136,   125,   137,   125,   138,   125,
     139,   125,   140,   141,   140,   143,   142,   144,   145,   144,
     146,   146,   146,   146,   147,   148,   148,   150,   149,   151,
     151,   151,   151,   151,   152,   152,   153,   154,   155,   155,
     156,   157,   158,   159,   160,   161,   161,   161,   161,   162,
     162,   162,   162,   162,   162,   162,   162,   162,   162,   162,
     162,   162,   162,   162,   162,   162,   162,   162,   162,   162,
     162,   162,   162,   162,   162,   162,   162,   162,   162,   162,
     163,   163,   163,   163,   164,   164,   165,   166,   166,   167,
     168,   169,   168,   168,   170,   171,   172,   172,   173,   173,
     173,   173,   174,   176,   175,   177,   175,   178,   175,   179,
     175,   180,   180,   180,   180,   180,   182,   181,   183,   183,
     184,   184,   185,   185,   185,   185,   186,   187,   186,   188,
     188,   189,   189,   190,   189,   192,   191,   194,   193,   195,
     195,   196,   196,   197,   197,   198,   198,   199,   200,   200,
     200,   200,   200,   200,   200,   200,   200,   200,   200,   200,
     200,   200,   200,   200,   200,   200,   200,   200,   200,   200
};

  /* YYR2[YYN] -- Number of symbols on the right hand side of rule YYN.  */
static const yytype_uint8 yyr2[] =
{
       0,     2,     0,     2,     3,     3,     3,     3,     3,     3,
       3,     3,     0,     4,     2,     3,     3,     4,     3,     7,
       3,     3,     0,     3,     1,     1,     4,     5,     5,     1,
       1,     0,     6,     2,     0,     3,     2,     1,     1,     2,
       2,     3,     1,     2,     3,     4,     1,     2,     3,     2,
       3,     3,     3,     3,     2,     1,     1,     5,     1,     1,
       3,     3,     1,     1,     1,     1,     1,     1,     1,     2,
       2,     2,     6,     2,     2,     2,     2,     5,     2,     5,
       6,     0,     0,    10,     0,     0,    11,     4,     4,     7,
       0,     4,     1,     3,     4,     7,     7,     0,     6,     2,
       2,     2,     2,     2,     3,    10,     6,     0,     7,     0,
       0,    10,     0,     5,     0,     6,     0,     6,     0,     6,
       0,     6,     4,     0,     2,     0,     3,     4,     0,     2,
       1,     2,     3,     4,     1,     1,     3,     0,     3,     1,
       4,     1,     2,     1,     4,     3,     0,     1,     3,     2,
       3,     2,     1,     0,     0,     0,     2,     2,     1,     1,
       1,     1,     1,     2,     1,     4,     1,     1,     5,     4,
       4,     4,     3,     2,     3,     3,     3,     3,     3,     3,
       2,     3,     3,     3,     3,     3,     3,     3,     3,     2,
       1,     1,     1,     1,     3,     3,     2,     3,     4,     1,
       2,     0,     4,     3,     2,     1,     0,     4,     1,     1,
       3,     3,     1,     0,     6,     0,     6,     0,     6,     0,
       6,     1,     1,     1,     1,     1,     0,     6,     0,     1,
       1,     3,     1,     1,     2,     5,     2,     0,     5,     1,
       3,     2,     2,     0,     5,     0,     2,     0,     2,     0,
       1,     2,     3,     0,     1,     2,     3,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1
};


#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)
#define YYEMPTY         (-2)
#define YYEOF           0

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                  \
do                                                              \
  if (yychar == YYEMPTY)                                        \
    {                                                           \
      yychar = (Token);                                         \
      yylval = (Value);                                         \
      YYPOPSTACK (yylen);                                       \
      yystate = *yyssp;                                         \
      goto yybackup;                                            \
    }                                                           \
  else                                                          \
    {                                                           \
      yyerror (YY_("syntax error: cannot back up")); \
      YYERROR;                                                  \
    }                                                           \
while (0)

/* Error token number */
#define YYTERROR        1
#define YYERRCODE       256



/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)

/* This macro is provided for backward compatibility. */
#ifndef YY_LOCATION_PRINT
# define YY_LOCATION_PRINT(File, Loc) ((void) 0)
#endif


# define YY_SYMBOL_PRINT(Title, Type, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Type, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*----------------------------------------.
| Print this symbol's value on YYOUTPUT.  |
`----------------------------------------*/

static void
yy_symbol_value_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
{
  FILE *yyo = yyoutput;
  YYUSE (yyo);
  if (!yyvaluep)
    return;
# ifdef YYPRINT
  if (yytype < YYNTOKENS)
    YYPRINT (yyoutput, yytoknum[yytype], *yyvaluep);
# endif
  YYUSE (yytype);
}


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

static void
yy_symbol_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyoutput, "%s %s (",
             yytype < YYNTOKENS ? "token" : "nterm", yytname[yytype]);

  yy_symbol_value_print (yyoutput, yytype, yyvaluep);
  YYFPRINTF (yyoutput, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yytype_int16 *yybottom, yytype_int16 *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yytype_int16 *yyssp, YYSTYPE *yyvsp, int yyrule)
{
  unsigned long int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %lu):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       yystos[yyssp[yyi + 1 - yynrhs]],
                       &(yyvsp[(yyi + 1) - (yynrhs)])
                                              );
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args)
# define YY_SYMBOL_PRINT(Title, Type, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif


#if YYERROR_VERBOSE

# ifndef yystrlen
#  if defined __GLIBC__ && defined _STRING_H
#   define yystrlen strlen
#  else
/* Return the length of YYSTR.  */
static YYSIZE_T
yystrlen (const char *yystr)
{
  YYSIZE_T yylen;
  for (yylen = 0; yystr[yylen]; yylen++)
    continue;
  return yylen;
}
#  endif
# endif

# ifndef yystpcpy
#  if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#   define yystpcpy stpcpy
#  else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
static char *
yystpcpy (char *yydest, const char *yysrc)
{
  char *yyd = yydest;
  const char *yys = yysrc;

  while ((*yyd++ = *yys++) != '\0')
    continue;

  return yyd - 1;
}
#  endif
# endif

# ifndef yytnamerr
/* Copy to YYRES the contents of YYSTR after stripping away unnecessary
   quotes and backslashes, so that it's suitable for yyerror.  The
   heuristic is that double-quoting is unnecessary unless the string
   contains an apostrophe, a comma, or backslash (other than
   backslash-backslash).  YYSTR is taken from yytname.  If YYRES is
   null, do not copy; instead, return the length of what the result
   would have been.  */
static YYSIZE_T
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      YYSIZE_T yyn = 0;
      char const *yyp = yystr;

      for (;;)
        switch (*++yyp)
          {
          case '\'':
          case ',':
            goto do_not_strip_quotes;

          case '\\':
            if (*++yyp != '\\')
              goto do_not_strip_quotes;
            /* Fall through.  */
          default:
            if (yyres)
              yyres[yyn] = *yyp;
            yyn++;
            break;

          case '"':
            if (yyres)
              yyres[yyn] = '\0';
            return yyn;
          }
    do_not_strip_quotes: ;
    }

  if (! yyres)
    return yystrlen (yystr);

  return yystpcpy (yyres, yystr) - yyres;
}
# endif

/* Copy into *YYMSG, which is of size *YYMSG_ALLOC, an error message
   about the unexpected token YYTOKEN for the state stack whose top is
   YYSSP.

   Return 0 if *YYMSG was successfully written.  Return 1 if *YYMSG is
   not large enough to hold the message.  In that case, also set
   *YYMSG_ALLOC to the required number of bytes.  Return 2 if the
   required number of bytes is too large to store.  */
static int
yysyntax_error (YYSIZE_T *yymsg_alloc, char **yymsg,
                yytype_int16 *yyssp, int yytoken)
{
  YYSIZE_T yysize0 = yytnamerr (YY_NULLPTR, yytname[yytoken]);
  YYSIZE_T yysize = yysize0;
  enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
  /* Internationalized format string. */
  const char *yyformat = YY_NULLPTR;
  /* Arguments of yyformat. */
  char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
  /* Number of reported tokens (one for the "unexpected", one per
     "expected"). */
  int yycount = 0;

  /* There are many possibilities here to consider:
     - If this state is a consistent state with a default action, then
       the only way this function was invoked is if the default action
       is an error action.  In that case, don't check for expected
       tokens because there are none.
     - The only way there can be no lookahead present (in yychar) is if
       this state is a consistent state with a default action.  Thus,
       detecting the absence of a lookahead is sufficient to determine
       that there is no unexpected or expected token to report.  In that
       case, just report a simple "syntax error".
     - Don't assume there isn't a lookahead just because this state is a
       consistent state with a default action.  There might have been a
       previous inconsistent state, consistent state with a non-default
       action, or user semantic action that manipulated yychar.
     - Of course, the expected token list depends on states to have
       correct lookahead information, and it depends on the parser not
       to perform extra reductions after fetching a lookahead from the
       scanner and before detecting a syntax error.  Thus, state merging
       (from LALR or IELR) and default reductions corrupt the expected
       token list.  However, the list is correct for canonical LR with
       one exception: it will still contain any token that will not be
       accepted due to an error action in a later state.
  */
  if (yytoken != YYEMPTY)
    {
      int yyn = yypact[*yyssp];
      yyarg[yycount++] = yytname[yytoken];
      if (!yypact_value_is_default (yyn))
        {
          /* Start YYX at -YYN if negative to avoid negative indexes in
             YYCHECK.  In other words, skip the first -YYN actions for
             this state because they are default actions.  */
          int yyxbegin = yyn < 0 ? -yyn : 0;
          /* Stay within bounds of both yycheck and yytname.  */
          int yychecklim = YYLAST - yyn + 1;
          int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
          int yyx;

          for (yyx = yyxbegin; yyx < yyxend; ++yyx)
            if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR
                && !yytable_value_is_error (yytable[yyx + yyn]))
              {
                if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
                  {
                    yycount = 1;
                    yysize = yysize0;
                    break;
                  }
                yyarg[yycount++] = yytname[yyx];
                {
                  YYSIZE_T yysize1 = yysize + yytnamerr (YY_NULLPTR, yytname[yyx]);
                  if (! (yysize <= yysize1
                         && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
                    return 2;
                  yysize = yysize1;
                }
              }
        }
    }

  switch (yycount)
    {
# define YYCASE_(N, S)                      \
      case N:                               \
        yyformat = S;                       \
      break
      YYCASE_(0, YY_("syntax error"));
      YYCASE_(1, YY_("syntax error, unexpected %s"));
      YYCASE_(2, YY_("syntax error, unexpected %s, expecting %s"));
      YYCASE_(3, YY_("syntax error, unexpected %s, expecting %s or %s"));
      YYCASE_(4, YY_("syntax error, unexpected %s, expecting %s or %s or %s"));
      YYCASE_(5, YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s"));
# undef YYCASE_
    }

  {
    YYSIZE_T yysize1 = yysize + yystrlen (yyformat);
    if (! (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
      return 2;
    yysize = yysize1;
  }

  if (*yymsg_alloc < yysize)
    {
      *yymsg_alloc = 2 * yysize;
      if (! (yysize <= *yymsg_alloc
             && *yymsg_alloc <= YYSTACK_ALLOC_MAXIMUM))
        *yymsg_alloc = YYSTACK_ALLOC_MAXIMUM;
      return 1;
    }

  /* Avoid sprintf, as that infringes on the user's name space.
     Don't have undefined behavior even if the translation
     produced a string with the wrong number of "%s"s.  */
  {
    char *yyp = *yymsg;
    int yyi = 0;
    while ((*yyp = *yyformat) != '\0')
      if (*yyp == '%' && yyformat[1] == 's' && yyi < yycount)
        {
          yyp += yytnamerr (yyp, yyarg[yyi++]);
          yyformat += 2;
        }
      else
        {
          yyp++;
          yyformat++;
        }
  }
  return 0;
}
#endif /* YYERROR_VERBOSE */

/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep)
{
  YYUSE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yytype, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YYUSE (yytype);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}




/* The lookahead symbol.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;


/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    int yystate;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus;

    /* The stacks and their tools:
       'yyss': related to states.
       'yyvs': related to semantic values.

       Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* The state stack.  */
    yytype_int16 yyssa[YYINITDEPTH];
    yytype_int16 *yyss;
    yytype_int16 *yyssp;

    /* The semantic value stack.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs;
    YYSTYPE *yyvsp;

    YYSIZE_T yystacksize;

  int yyn;
  int yyresult;
  /* Lookahead token as an internal (translated) token number.  */
  int yytoken = 0;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;

#if YYERROR_VERBOSE
  /* Buffer for error messages, and its allocated size.  */
  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  YYSIZE_T yymsg_alloc = sizeof yymsgbuf;
#endif

#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  yyssp = yyss = yyssa;
  yyvsp = yyvs = yyvsa;
  yystacksize = YYINITDEPTH;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yystate = 0;
  yyerrstatus = 0;
  yynerrs = 0;
  yychar = YYEMPTY; /* Cause a token to be read.  */
  goto yysetstate;

/*------------------------------------------------------------.
| yynewstate -- Push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
 yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;

 yysetstate:
  *yyssp = yystate;

  if (yyss + yystacksize - 1 <= yyssp)
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYSIZE_T yysize = yyssp - yyss + 1;

#ifdef yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        YYSTYPE *yyvs1 = yyvs;
        yytype_int16 *yyss1 = yyss;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * sizeof (*yyssp),
                    &yyvs1, yysize * sizeof (*yyvsp),
                    &yystacksize);

        yyss = yyss1;
        yyvs = yyvs1;
      }
#else /* no yyoverflow */
# ifndef YYSTACK_RELOCATE
      goto yyexhaustedlab;
# else
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        goto yyexhaustedlab;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yytype_int16 *yyss1 = yyss;
        union yyalloc *yyptr =
          (union yyalloc *) YYSTACK_ALLOC (YYSTACK_BYTES (yystacksize));
        if (! yyptr)
          goto yyexhaustedlab;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif
#endif /* no yyoverflow */

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YYDPRINTF ((stderr, "Stack size increased to %lu\n",
                  (unsigned long int) yystacksize));

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }

  YYDPRINTF ((stderr, "Entering state %d\n", yystate));

  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;

/*-----------.
| yybackup.  |
`-----------*/
yybackup:

  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either YYEMPTY or YYEOF or a valid lookahead symbol.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token: "));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = yytoken = YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);

  /* Discard the shifted token.  */
  yychar = YYEMPTY;

  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- Do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
        case 2:
#line 136 "parse.y" /* yacc.c:1646  */
    { ntab = 0;}
#line 2315 "parse.c" /* yacc.c:1646  */
    break;

  case 3:
#line 137 "parse.y" /* yacc.c:1646  */
    { return '\n';}
#line 2321 "parse.c" /* yacc.c:1646  */
    break;

  case 4:
#line 138 "parse.y" /* yacc.c:1646  */
    { return '\n';}
#line 2327 "parse.c" /* yacc.c:1646  */
    break;

  case 5:
#line 140 "parse.y" /* yacc.c:1646  */
    { hoc_ob_check(-1); code2(nopop, STOP); return 1; }
#line 2333 "parse.c" /* yacc.c:1646  */
    break;

  case 6:
#line 142 "parse.y" /* yacc.c:1646  */
    { codein(STOP); return 1; }
#line 2339 "parse.c" /* yacc.c:1646  */
    break;

  case 7:
#line 144 "parse.y" /* yacc.c:1646  */
    { TPDYNAM; code2(print, STOP); return 1; }
#line 2345 "parse.c" /* yacc.c:1646  */
    break;

  case 8:
#line 146 "parse.y" /* yacc.c:1646  */
    { debug(); return '\n';}
#line 2351 "parse.c" /* yacc.c:1646  */
    break;

  case 9:
#line 148 "parse.y" /* yacc.c:1646  */
    { return 'e';}
#line 2357 "parse.c" /* yacc.c:1646  */
    break;

  case 10:
#line 150 "parse.y" /* yacc.c:1646  */
    {code(prstr); code2(hoc_newline, STOP); return 1; }
#line 2363 "parse.c" /* yacc.c:1646  */
    break;

  case 11:
#line 153 "parse.y" /* yacc.c:1646  */
    { return '\n';}
#line 2369 "parse.c" /* yacc.c:1646  */
    break;

  case 12:
#line 159 "parse.y" /* yacc.c:1646  */
    {hoc_help();}
#line 2375 "parse.c" /* yacc.c:1646  */
    break;

  case 13:
#line 159 "parse.y" /* yacc.c:1646  */
    { return '\n'; }
#line 2381 "parse.c" /* yacc.c:1646  */
    break;

  case 14:
#line 161 "parse.y" /* yacc.c:1646  */
    {clean_err(); hoc_execerror("parse error", (char*)0);
#if LINT
if (0) {
if(yydebug);
goto yynewstate;
}
#endif
		}
#line 2394 "parse.c" /* yacc.c:1646  */
    break;

  case 15:
#line 171 "parse.y" /* yacc.c:1646  */
    {Symbol *s; TPD; s = spop();
		hoc_obvar_declare(s, VAR, 1);
		code3(varpush, s, assign); codei((yyvsp[-1].narg)); PN;}
#line 2402 "parse.c" /* yacc.c:1646  */
    break;

  case 16:
#line 175 "parse.y" /* yacc.c:1646  */
    {  TPD; defnonly("$"); argcode(argassign, (yyvsp[-2].narg)); codei((yyvsp[-1].narg)); (yyval.inst)=(yyvsp[0].inst); PN;}
#line 2408 "parse.c" /* yacc.c:1646  */
    break;

  case 17:
#line 177 "parse.y" /* yacc.c:1646  */
    { TPD; defnonly("$&"); argrefcode(hoc_argrefasgn, (yyvsp[-3].narg), (yyvsp[-2].narg)); codei((yyvsp[-1].narg)); (yyval.inst)=(yyvsp[0].inst); PN;}
#line 2414 "parse.c" /* yacc.c:1646  */
    break;

  case 18:
#line 180 "parse.y" /* yacc.c:1646  */
    { TPD; code(range_const); codesym(spop()); codei((yyvsp[-1].narg)); PN;}
#line 2420 "parse.c" /* yacc.c:1646  */
    break;

  case 19:
#line 184 "parse.y" /* yacc.c:1646  */
    { Inst* p; hoc_opasgn_invalid((yyvsp[-5].narg));
		 code(hoc_newobj); codesym(hoc_which_template((yyvsp[-3].sym))); codei((yyvsp[-1].narg));
		 p = (Inst*)spop();
		 if (p) { p->i += 2; }
		}
#line 2430 "parse.c" /* yacc.c:1646  */
    break;

  case 20:
#line 190 "parse.y" /* yacc.c:1646  */
    {Inst* p; TPDYNAM; code(hoc_object_asgn); codei((yyvsp[-1].narg));
		 p = (Inst*)spop();
		 if (p) { p->i += 2; }
		}
#line 2439 "parse.c" /* yacc.c:1646  */
    break;

  case 21:
#line 195 "parse.y" /* yacc.c:1646  */
    {myerr("assignment to variable, make sure right side is a number");}
#line 2445 "parse.c" /* yacc.c:1646  */
    break;

  case 22:
#line 199 "parse.y" /* yacc.c:1646  */
    {pushi(OBJECTVAR);pushs((yyvsp[0].sym)); pushi(CHECK);}
#line 2451 "parse.c" /* yacc.c:1646  */
    break;

  case 23:
#line 200 "parse.y" /* yacc.c:1646  */
    {(yyval.inst) = (yyvsp[0].inst); code(hoc_objectvar); spop(); codesym((yyvsp[-2].sym));}
#line 2457 "parse.c" /* yacc.c:1646  */
    break;

  case 24:
#line 202 "parse.y" /* yacc.c:1646  */
    {defnonly("$o"); (yyval.inst) = argcode(hoc_objectarg, (yyvsp[0].narg)); pushi(OBJECTVAR);}
#line 2463 "parse.c" /* yacc.c:1646  */
    break;

  case 25:
#line 204 "parse.y" /* yacc.c:1646  */
    {(yyval.inst) = code(hoc_autoobject); codesym((yyvsp[0].sym)); pushi(OBJECTVAR);}
#line 2469 "parse.c" /* yacc.c:1646  */
    break;

  case 26:
#line 206 "parse.y" /* yacc.c:1646  */
    {TPD; (yyval.inst) = (yyvsp[-1].inst); code(hoc_constobject); codesym((yyvsp[-3].sym)); pushi(OBJECTVAR);}
#line 2475 "parse.c" /* yacc.c:1646  */
    break;

  case 27:
#line 208 "parse.y" /* yacc.c:1646  */
    { (yyval.inst) = (yyvsp[-3].inst); code(call); codesym((yyvsp[-4].sym)); codei((yyvsp[-1].narg));
		  code(hoc_known_type); codei(OBJECTVAR); pushi(OBJECTVAR);}
#line 2482 "parse.c" /* yacc.c:1646  */
    break;

  case 28:
#line 211 "parse.y" /* yacc.c:1646  */
    { (yyval.inst) = (yyvsp[-3].inst); code(call); codesym((yyvsp[-4].sym)); codei((yyvsp[-1].narg));
		  code(hoc_known_type); codei(OBJECTVAR); pushi(OBJECTVAR);}
#line 2489 "parse.c" /* yacc.c:1646  */
    break;

  case 29:
#line 215 "parse.y" /* yacc.c:1646  */
    { spop(); }
#line 2495 "parse.c" /* yacc.c:1646  */
    break;

  case 30:
#line 218 "parse.y" /* yacc.c:1646  */
    { pushs((Symbol*)0); }
#line 2501 "parse.c" /* yacc.c:1646  */
    break;

  case 31:
#line 219 "parse.y" /* yacc.c:1646  */
    {pushs((yyvsp[0].sym));pushi(NOCHECK);}
#line 2507 "parse.c" /* yacc.c:1646  */
    break;

  case 32:
#line 220 "parse.y" /* yacc.c:1646  */
    {int isfunc; Inst* p;
		 isfunc = ipop();
		 code(hoc_object_component); codesym(spop()); codei(ipop());
		 codei((yyvsp[0].narg));
		 codei(0); codesym(0);
		 p = codei(isfunc); /* for USE_PYTHON */
		 spop();
		 pushs((Symbol*)p); /* in case assigning to a PythonObject we will want to update isfunc to 2 */
		}
#line 2521 "parse.c" /* yacc.c:1646  */
    break;

  case 33:
#line 229 "parse.y" /* yacc.c:1646  */
    {myerr("object syntax is o1.o2.o3.");}
#line 2527 "parse.c" /* yacc.c:1646  */
    break;

  case 34:
#line 232 "parse.y" /* yacc.c:1646  */
    {(yyval.narg) = 0; pushi(0);}
#line 2533 "parse.c" /* yacc.c:1646  */
    break;

  case 35:
#line 234 "parse.y" /* yacc.c:1646  */
    {(yyval.narg) = (yyvsp[-1].narg); pushi(1);}
#line 2539 "parse.c" /* yacc.c:1646  */
    break;

  case 36:
#line 236 "parse.y" /* yacc.c:1646  */
    {hoc_begintemplate((yyvsp[0].sym));}
#line 2545 "parse.c" /* yacc.c:1646  */
    break;

  case 39:
#line 239 "parse.y" /* yacc.c:1646  */
    {hoc_endtemplate((yyvsp[0].sym));}
#line 2551 "parse.c" /* yacc.c:1646  */
    break;

  case 40:
#line 240 "parse.y" /* yacc.c:1646  */
    {myerr("begintemplate Name\npublic namelist\nexternal namelist\n...\nendtemplate Name");}
#line 2557 "parse.c" /* yacc.c:1646  */
    break;

  case 41:
#line 243 "parse.y" /* yacc.c:1646  */
    {(yyval.inst) = (yyvsp[-1].inst);}
#line 2563 "parse.c" /* yacc.c:1646  */
    break;

  case 42:
#line 246 "parse.y" /* yacc.c:1646  */
    {code(hoc_objvardecl); codesym((yyvsp[0].sym)); codei(0);}
#line 2569 "parse.c" /* yacc.c:1646  */
    break;

  case 43:
#line 248 "parse.y" /* yacc.c:1646  */
    {code(hoc_objvardecl); codesym((yyvsp[-1].sym)); codei((yyvsp[0].narg));}
#line 2575 "parse.c" /* yacc.c:1646  */
    break;

  case 44:
#line 250 "parse.y" /* yacc.c:1646  */
    {code(hoc_objvardecl); codesym((yyvsp[0].sym)); codei(0);}
#line 2581 "parse.c" /* yacc.c:1646  */
    break;

  case 45:
#line 252 "parse.y" /* yacc.c:1646  */
    {code(hoc_objvardecl); codesym((yyvsp[-1].sym)); codei((yyvsp[0].narg));}
#line 2587 "parse.c" /* yacc.c:1646  */
    break;

  case 46:
#line 255 "parse.y" /* yacc.c:1646  */
    {
		  Symbol* s;
		  s = hoc_decl((yyvsp[0].sym));
		  if (s->type != UNDEF && s->type != OBJECTVAR) {
			acterror(s->name, " already declared");
		  }
		  (yyval.sym) = s;
		}
#line 2600 "parse.c" /* yacc.c:1646  */
    break;

  case 47:
#line 265 "parse.y" /* yacc.c:1646  */
    {hoc_add_publiclist((yyvsp[0].sym));}
#line 2606 "parse.c" /* yacc.c:1646  */
    break;

  case 48:
#line 267 "parse.y" /* yacc.c:1646  */
    {hoc_add_publiclist((yyvsp[0].sym));}
#line 2612 "parse.c" /* yacc.c:1646  */
    break;

  case 49:
#line 270 "parse.y" /* yacc.c:1646  */
    {hoc_external_var((yyvsp[0].sym));}
#line 2618 "parse.c" /* yacc.c:1646  */
    break;

  case 50:
#line 272 "parse.y" /* yacc.c:1646  */
    {hoc_external_var((yyvsp[0].sym));}
#line 2624 "parse.c" /* yacc.c:1646  */
    break;

  case 51:
#line 277 "parse.y" /* yacc.c:1646  */
    {hoc_opasgn_invalid((yyvsp[-1].narg)); code(assstr);}
#line 2630 "parse.c" /* yacc.c:1646  */
    break;

  case 52:
#line 279 "parse.y" /* yacc.c:1646  */
    {Inst* p = (Inst*) spop(); pushi(STRING); TPDYNAM; code(hoc_object_asgn);
		 hoc_opasgn_invalid((yyvsp[-1].narg)); codei((yyvsp[-1].narg)); hoc_ob_check(-1); code(nopop);
		 if (p) { p->i += 2; }
		}
#line 2639 "parse.c" /* yacc.c:1646  */
    break;

  case 53:
#line 284 "parse.y" /* yacc.c:1646  */
    {code(hoc_asgn_obj_to_str); hoc_opasgn_invalid((yyvsp[-1].narg)); }
#line 2645 "parse.c" /* yacc.c:1646  */
    break;

  case 54:
#line 285 "parse.y" /* yacc.c:1646  */
    {myerr("string assignment: both sides need to be a string");}
#line 2651 "parse.c" /* yacc.c:1646  */
    break;

  case 56:
#line 290 "parse.y" /* yacc.c:1646  */
    {(yyval.inst) = code(hoc_push_string); codesym((yyvsp[0].sym));}
#line 2657 "parse.c" /* yacc.c:1646  */
    break;

  case 57:
#line 292 "parse.y" /* yacc.c:1646  */
    { (yyval.inst) = (yyvsp[-3].inst); code(call); codesym((yyvsp[-4].sym)); codei((yyvsp[-1].narg));}
#line 2663 "parse.c" /* yacc.c:1646  */
    break;

  case 58:
#line 296 "parse.y" /* yacc.c:1646  */
    {(yyval.inst) = code(hoc_push_string); codesym((yyvsp[0].sym));}
#line 2669 "parse.c" /* yacc.c:1646  */
    break;

  case 59:
#line 298 "parse.y" /* yacc.c:1646  */
    {defnonly("$s"); (yyval.inst) = argcode(hoc_stringarg, (yyvsp[0].narg));}
#line 2675 "parse.c" /* yacc.c:1646  */
    break;

  case 60:
#line 302 "parse.y" /* yacc.c:1646  */
    { (yyval.inst) = (yyvsp[-1].inst); }
#line 2681 "parse.c" /* yacc.c:1646  */
    break;

  case 62:
#line 306 "parse.y" /* yacc.c:1646  */
    {
			Symbol* s = hoc_decl((yyvsp[0].sym));
			if (s->type == UNDEF) {
				hoc_obvar_declare(s, STRING, 0);
				OPSTR(s) = (char**)emalloc(sizeof(char*));
				*OPSTR(s) = 0;
			}else if (s->type != STRING) {
				acterror(s->name, " already declared");
			}
			hoc_assign_str(OPSTR(s), "");
		}
#line 2697 "parse.c" /* yacc.c:1646  */
    break;

  case 63:
#line 319 "parse.y" /* yacc.c:1646  */
    { code(nopop); hoc_ob_check(-1); /*don't check*/}
#line 2703 "parse.c" /* yacc.c:1646  */
    break;

  case 68:
#line 327 "parse.y" /* yacc.c:1646  */
    { code(nopop); }
#line 2709 "parse.c" /* yacc.c:1646  */
    break;

  case 69:
#line 329 "parse.y" /* yacc.c:1646  */
    { (yyval.inst) = (yyvsp[0].inst);}
#line 2715 "parse.c" /* yacc.c:1646  */
    break;

  case 70:
#line 331 "parse.y" /* yacc.c:1646  */
    { defnonly("return"); (yyval.inst)=(yyvsp[0].inst); code(procret); }
#line 2721 "parse.c" /* yacc.c:1646  */
    break;

  case 71:
#line 333 "parse.y" /* yacc.c:1646  */
    {  if (indef == 3) {
			TPDYNAM; (yyval.inst) = (yyvsp[0].inst);
			code(hocobjret);
		   }else{
			TPD; defnonly("return"); (yyval.inst)=(yyvsp[0].inst);
			code(funcret);
		   }
		}
#line 2734 "parse.c" /* yacc.c:1646  */
    break;

  case 72:
#line 342 "parse.y" /* yacc.c:1646  */
    {(yyval.inst) = code(hoc_newobj_ret); codesym(hoc_which_template((yyvsp[-3].sym))); codei((yyvsp[-1].narg));
		 code(hocobjret);
		}
#line 2742 "parse.c" /* yacc.c:1646  */
    break;

  case 73:
#line 346 "parse.y" /* yacc.c:1646  */
    { if (indef != 2) {
acterror("iterator_statement used outside an iterator declaration", 0);
		  }
			code(hoc_iterator_stmt);
		}
#line 2752 "parse.c" /* yacc.c:1646  */
    break;

  case 74:
#line 352 "parse.y" /* yacc.c:1646  */
    { code(Break); (yyval.inst) = (yyvsp[0].inst); }
#line 2758 "parse.c" /* yacc.c:1646  */
    break;

  case 75:
#line 354 "parse.y" /* yacc.c:1646  */
    { code(Stop); (yyval.inst) = (yyvsp[0].inst); }
#line 2764 "parse.c" /* yacc.c:1646  */
    break;

  case 76:
#line 356 "parse.y" /* yacc.c:1646  */
    { code(Continue); (yyval.inst) = (yyvsp[0].inst); }
#line 2770 "parse.c" /* yacc.c:1646  */
    break;

  case 77:
#line 358 "parse.y" /* yacc.c:1646  */
    { (yyval.inst) = (yyvsp[-3].inst); code(call); codesym((yyvsp[-4].sym)); codei((yyvsp[-1].narg)); code(nopop); }
#line 2776 "parse.c" /* yacc.c:1646  */
    break;

  case 78:
#line 360 "parse.y" /* yacc.c:1646  */
    { (yyval.inst) = (yyvsp[0].inst); code(hoc_newline); }
#line 2782 "parse.c" /* yacc.c:1646  */
    break;

  case 79:
#line 362 "parse.y" /* yacc.c:1646  */
    { (yyval.inst) = (yyvsp[-3].inst);
		  ((yyvsp[-2].inst))[0].i = relative((yyvsp[-1].inst), (yyvsp[-2].inst), 0); /* body */
		  ((yyvsp[-2].inst))[1].i = relative((yyvsp[0].inst), (yyvsp[-2].inst), 1); /* exit */
		}
#line 2791 "parse.c" /* yacc.c:1646  */
    break;

  case 80:
#line 367 "parse.y" /* yacc.c:1646  */
    {
			((yyvsp[-4].inst))[1].i =relative((yyvsp[-1].inst), (yyvsp[-4].inst), 1);	/* body */
			((yyvsp[-4].inst))[2].i =relative((yyvsp[0].inst), (yyvsp[-4].inst), 2); /* exit from the for */
			((yyvsp[-4].inst))[3].i  =relative((yyvsp[-2].inst), (yyvsp[-4].inst), 3);	/* increment */
			(yyval.inst) = (yyvsp[-5].inst);
#if LINT
if (0){YYERROR;}
#endif
			}
#line 2805 "parse.c" /* yacc.c:1646  */
    break;

  case 81:
#line 377 "parse.y" /* yacc.c:1646  */
    { Symbol *s; (yyval.inst) = Code(varpush); codesym(s = spop());
			hoc_obvar_declare(s, VAR, 1);
		  }
#line 2813 "parse.c" /* yacc.c:1646  */
    break;

  case 82:
#line 381 "parse.y" /* yacc.c:1646  */
    {TPD; TPD; hoc_opasgn_invalid((yyvsp[-3].narg)); 
		    (yyval.inst) = code(shortfor); codei(0); codei(0);}
#line 2820 "parse.c" /* yacc.c:1646  */
    break;

  case 83:
#line 384 "parse.y" /* yacc.c:1646  */
    { (yyval.inst) = (yyvsp[-8].inst); ((yyvsp[-2].inst))[1].i = relative((yyvsp[-1].inst), (yyvsp[-2].inst), 1); /* body */
			   ((yyvsp[-2].inst))[2].i = relative((yyvsp[0].inst), (yyvsp[-2].inst), 2); /* exit */
		  }
#line 2828 "parse.c" /* yacc.c:1646  */
    break;

  case 84:
#line 388 "parse.y" /* yacc.c:1646  */
    { Symbol *s; (yyval.inst) = Code(varpush); codesym(s = spop());
			hoc_obvar_declare(s, VAR, 1);
		  }
#line 2836 "parse.c" /* yacc.c:1646  */
    break;

  case 85:
#line 392 "parse.y" /* yacc.c:1646  */
    {TPD; TPD; hoc_opasgn_invalid((yyvsp[-3].narg)); 
		     code(hoc_parallel_begin);
		     (yyval.inst) = code(shortfor); codei(0); codei(0);}
#line 2844 "parse.c" /* yacc.c:1646  */
    break;

  case 86:
#line 396 "parse.y" /* yacc.c:1646  */
    { (yyval.inst) = (yyvsp[-8].inst); ((yyvsp[-2].inst))[1].i = relative((yyvsp[-1].inst), (yyvsp[-2].inst), 1); /* body */
			   ((yyvsp[-2].inst))[2].i = relative((yyvsp[0].inst), (yyvsp[-2].inst), 2); /* exit */
			code(hoc_parallel_end);
		  }
#line 2853 "parse.c" /* yacc.c:1646  */
    break;

  case 87:
#line 401 "parse.y" /* yacc.c:1646  */
    {
		((yyvsp[-3].inst))[1].i = relative((yyvsp[-1].inst), (yyvsp[-3].inst), 1);	/* body of loop */
		((yyvsp[-3].inst))[2].i = relative((yyvsp[0].inst), (yyvsp[-3].inst), 2); }
#line 2861 "parse.c" /* yacc.c:1646  */
    break;

  case 88:
#line 405 "parse.y" /* yacc.c:1646  */
    {
		((yyvsp[-3].inst))[1].i = relative((yyvsp[-1].inst), (yyvsp[-3].inst), 1);	/* thenpart */
		((yyvsp[-3].inst))[3].i = relative((yyvsp[0].inst), (yyvsp[-3].inst), 3); }
#line 2869 "parse.c" /* yacc.c:1646  */
    break;

  case 89:
#line 409 "parse.y" /* yacc.c:1646  */
    {
		((yyvsp[-6].inst))[1].i = relative((yyvsp[-4].inst), (yyvsp[-6].inst), 1);	/* thenpart */
		((yyvsp[-6].inst))[2].i = relative((yyvsp[-1].inst), (yyvsp[-6].inst), 2);	/* elsepart */
		((yyvsp[-6].inst))[3].i = relative((yyvsp[0].inst), (yyvsp[-6].inst), 3); }
#line 2878 "parse.c" /* yacc.c:1646  */
    break;

  case 90:
#line 414 "parse.y" /* yacc.c:1646  */
    { ntab++;}
#line 2884 "parse.c" /* yacc.c:1646  */
    break;

  case 91:
#line 416 "parse.y" /* yacc.c:1646  */
    {
		ntab--; (yyval.inst) = (yyvsp[-1].inst);
		}
#line 2892 "parse.c" /* yacc.c:1646  */
    break;

  case 93:
#line 422 "parse.y" /* yacc.c:1646  */
    { (yyval.inst) = (yyvsp[-1].inst); }
#line 2898 "parse.c" /* yacc.c:1646  */
    break;

  case 94:
#line 424 "parse.y" /* yacc.c:1646  */
    { TPD; (yyval.inst) = (yyvsp[-2].inst); code(connectsection);}
#line 2904 "parse.c" /* yacc.c:1646  */
    break;

  case 95:
#line 426 "parse.y" /* yacc.c:1646  */
    { TPD; (yyval.inst) = (yyvsp[-5].inst); code(simpleconnectsection);}
#line 2910 "parse.c" /* yacc.c:1646  */
    break;

  case 96:
#line 428 "parse.y" /* yacc.c:1646  */
    { TPD; (yyval.inst) = (yyvsp[-5].inst); code(connectpointer); codesym(spop());}
#line 2916 "parse.c" /* yacc.c:1646  */
    break;

  case 97:
#line 429 "parse.y" /* yacc.c:1646  */
    {code(nrn_cppp);}
#line 2922 "parse.c" /* yacc.c:1646  */
    break;

  case 98:
#line 430 "parse.y" /* yacc.c:1646  */
    { (yyval.inst) = (yyvsp[-4].inst); code(connect_point_process_pointer);
			 hoc_ob_check(-1);}
#line 2929 "parse.c" /* yacc.c:1646  */
    break;

  case 99:
#line 433 "parse.y" /* yacc.c:1646  */
    { (yyval.inst) = (yyvsp[0].inst); code(sec_access);}
#line 2935 "parse.c" /* yacc.c:1646  */
    break;

  case 100:
#line 435 "parse.y" /* yacc.c:1646  */
    { (yyval.inst) = (yyvsp[0].inst); hoc_ob_check(SECTION); code(sec_access_object);}
#line 2941 "parse.c" /* yacc.c:1646  */
    break;

  case 101:
#line 437 "parse.y" /* yacc.c:1646  */
    { (yyval.inst) = Code(mech_access); codesym((yyvsp[0].sym));}
#line 2947 "parse.c" /* yacc.c:1646  */
    break;

  case 102:
#line 439 "parse.y" /* yacc.c:1646  */
    { (yyval.inst) = Code(mech_uninsert); codesym((yyvsp[0].sym));}
#line 2953 "parse.c" /* yacc.c:1646  */
    break;

  case 103:
#line 441 "parse.y" /* yacc.c:1646  */
    { code(sec_access_pop);}
#line 2959 "parse.c" /* yacc.c:1646  */
    break;

  case 104:
#line 443 "parse.y" /* yacc.c:1646  */
    { code(sec_access_pop); hoc_ob_check(-1);
			insertcode((yyvsp[-1].inst), (yyvsp[0].inst), ob_sec_access);}
#line 2966 "parse.c" /* yacc.c:1646  */
    break;

  case 105:
#line 446 "parse.y" /* yacc.c:1646  */
    { TPD; TPD; TPD; TPD; code(range_interpolate); codesym(spop());
		  codei((yyvsp[-3].narg));
		}
#line 2974 "parse.c" /* yacc.c:1646  */
    break;

  case 106:
#line 450 "parse.y" /* yacc.c:1646  */
    { TPD; TPD; code(range_interpolate_single); codesym(spop());
		  codei((yyvsp[-1].narg));
		}
#line 2982 "parse.c" /* yacc.c:1646  */
    break;

  case 107:
#line 454 "parse.y" /* yacc.c:1646  */
    {Symbol *s; code(varpush); codesym(s = spop());
		 hoc_obvar_declare(s, VAR, 1);
		 (yyval.inst) = code(for_segment); codei(0); codei(0);}
#line 2990 "parse.c" /* yacc.c:1646  */
    break;

  case 108:
#line 458 "parse.y" /* yacc.c:1646  */
    { (yyval.inst) = (yyvsp[-4].inst); ((yyvsp[-2].inst))[1].i = relative((yyvsp[-1].inst), (yyvsp[-2].inst), 1); /* body */
			((yyvsp[-2].inst))[2].i = relative((yyvsp[0].inst), (yyvsp[-2].inst), 2); /* exit */
		}
#line 2998 "parse.c" /* yacc.c:1646  */
    break;

  case 109:
#line 462 "parse.y" /* yacc.c:1646  */
    {Symbol *s; code(varpush); codesym(s = spop());
		hoc_obvar_declare(s, VAR, 1);}
#line 3005 "parse.c" /* yacc.c:1646  */
    break;

  case 110:
#line 465 "parse.y" /* yacc.c:1646  */
    { TPD; (yyval.inst) = code(for_segment1); codei(0); codei(0);}
#line 3011 "parse.c" /* yacc.c:1646  */
    break;

  case 111:
#line 467 "parse.y" /* yacc.c:1646  */
    { (yyval.inst) = (yyvsp[-7].inst); ((yyvsp[-2].inst))[1].i = relative((yyvsp[-1].inst), (yyvsp[-2].inst), 1); /* body */
			((yyvsp[-2].inst))[2].i = relative((yyvsp[0].inst), (yyvsp[-2].inst), 2); /* exit */
		}
#line 3019 "parse.c" /* yacc.c:1646  */
    break;

  case 112:
#line 471 "parse.y" /* yacc.c:1646  */
    {	code(hoc_push_string); codesym((Symbol*)0);
			(yyval.inst) = code(forall_section); codei(0); codei(0);}
#line 3026 "parse.c" /* yacc.c:1646  */
    break;

  case 113:
#line 474 "parse.y" /* yacc.c:1646  */
    { (yyval.inst) = (yyvsp[-3].inst); ((yyvsp[-2].inst))[1].i = relative((yyvsp[-1].inst), (yyvsp[-2].inst), 1); /* body */
			((yyvsp[-2].inst))[2].i = relative((yyvsp[0].inst), (yyvsp[-2].inst), 2); /* exit */
		}
#line 3034 "parse.c" /* yacc.c:1646  */
    break;

  case 114:
#line 478 "parse.y" /* yacc.c:1646  */
    { (yyval.inst) = code(forall_section); codei(0); codei(0);}
#line 3040 "parse.c" /* yacc.c:1646  */
    break;

  case 115:
#line 480 "parse.y" /* yacc.c:1646  */
    { (yyval.inst) = (yyvsp[-4].inst); ((yyvsp[-2].inst))[1].i = relative((yyvsp[-1].inst), (yyvsp[-2].inst), 1); /* body */
			((yyvsp[-2].inst))[2].i = relative((yyvsp[0].inst), (yyvsp[-2].inst), 2); /* exit */
		}
#line 3048 "parse.c" /* yacc.c:1646  */
    break;

  case 116:
#line 484 "parse.y" /* yacc.c:1646  */
    { (yyval.inst) = code(hoc_ifsec); codei(0); codei(0);}
#line 3054 "parse.c" /* yacc.c:1646  */
    break;

  case 117:
#line 486 "parse.y" /* yacc.c:1646  */
    { (yyval.inst) = (yyvsp[-4].inst); ((yyvsp[-2].inst))[1].i = relative((yyvsp[-1].inst), (yyvsp[-2].inst), 1); /* body */
			((yyvsp[-2].inst))[2].i = relative((yyvsp[0].inst), (yyvsp[-2].inst), 2); /* exit */
		}
#line 3062 "parse.c" /* yacc.c:1646  */
    break;

  case 118:
#line 490 "parse.y" /* yacc.c:1646  */
    {hoc_ob_check(-1);
		(yyval.inst) = code(forall_sectionlist); codei(0); codei(0); }
#line 3069 "parse.c" /* yacc.c:1646  */
    break;

  case 119:
#line 493 "parse.y" /* yacc.c:1646  */
    { (yyval.inst) = (yyvsp[-4].inst); ((yyvsp[-2].inst))[1].i = relative((yyvsp[-1].inst), (yyvsp[-2].inst), 1); /* body */
			((yyvsp[-2].inst))[2].i = relative((yyvsp[0].inst), (yyvsp[-2].inst), 2); /* exit */
		}
#line 3077 "parse.c" /* yacc.c:1646  */
    break;

  case 120:
#line 497 "parse.y" /* yacc.c:1646  */
    { hoc_ob_check(-1);
		 (yyval.inst) = code(hoc_ifseclist); codei(0); codei(0);
		}
#line 3085 "parse.c" /* yacc.c:1646  */
    break;

  case 121:
#line 502 "parse.y" /* yacc.c:1646  */
    { (yyval.inst) = (yyvsp[-4].inst); ((yyvsp[-2].inst))[1].i = relative((yyvsp[-1].inst), (yyvsp[-2].inst), 1); /* body */
			((yyvsp[-2].inst))[2].i = relative((yyvsp[0].inst), (yyvsp[-2].inst), 2); /* exit */
		}
#line 3093 "parse.c" /* yacc.c:1646  */
    break;

  case 122:
#line 509 "parse.y" /* yacc.c:1646  */
    {
		  code(hoc_iterator); codesym((yyvsp[-3].sym)); codei((yyvsp[-1].narg));
		  (yyval.inst) = progp; codein(STOP); codein(STOP);
		}
#line 3102 "parse.c" /* yacc.c:1646  */
    break;

  case 123:
#line 513 "parse.y" /* yacc.c:1646  */
    {code(hoc_push_current_object);}
#line 3108 "parse.c" /* yacc.c:1646  */
    break;

  case 124:
#line 514 "parse.y" /* yacc.c:1646  */
    {codei(ITERATOR);
		  (yyval.inst) = progp; codein(STOP); codein(STOP);
		}
#line 3116 "parse.c" /* yacc.c:1646  */
    break;

  case 125:
#line 519 "parse.y" /* yacc.c:1646  */
    {pushs((yyvsp[0].sym)); pushi(CHECK);}
#line 3122 "parse.c" /* yacc.c:1646  */
    break;

  case 126:
#line 520 "parse.y" /* yacc.c:1646  */
    {code(sec_access_push); codesym(spop()); (yyval.inst) = (yyvsp[0].inst);}
#line 3128 "parse.c" /* yacc.c:1646  */
    break;

  case 127:
#line 523 "parse.y" /* yacc.c:1646  */
    {TPD;}
#line 3134 "parse.c" /* yacc.c:1646  */
    break;

  case 128:
#line 524 "parse.y" /* yacc.c:1646  */
    {(yyval.inst) = progp; code(connect_obsec_syntax);}
#line 3140 "parse.c" /* yacc.c:1646  */
    break;

  case 129:
#line 525 "parse.y" /* yacc.c:1646  */
    {
#if 0
		 acterror("Sorry. The \"connect ob.sec...\" syntax ",
			"is not implemented");
#endif
		 hoc_ob_check(SECTION); code(ob_sec_access);
		}
#line 3152 "parse.c" /* yacc.c:1646  */
    break;

  case 130:
#line 535 "parse.y" /* yacc.c:1646  */
    { code(add_section); codesym((yyvsp[0].sym)); codei(0);}
#line 3158 "parse.c" /* yacc.c:1646  */
    break;

  case 131:
#line 537 "parse.y" /* yacc.c:1646  */
    { code(add_section); codesym((yyvsp[-1].sym)); codei((yyvsp[0].narg));}
#line 3164 "parse.c" /* yacc.c:1646  */
    break;

  case 132:
#line 539 "parse.y" /* yacc.c:1646  */
    {code(add_section); codesym((yyvsp[0].sym)); codei(0);}
#line 3170 "parse.c" /* yacc.c:1646  */
    break;

  case 133:
#line 541 "parse.y" /* yacc.c:1646  */
    { code(add_section); codesym((yyvsp[-1].sym)); codei((yyvsp[0].narg));}
#line 3176 "parse.c" /* yacc.c:1646  */
    break;

  case 134:
#line 544 "parse.y" /* yacc.c:1646  */
    {
			Symbol* s;
			s = hoc_decl((yyvsp[0].sym));
			if (s->type != UNDEF && s->type != SECTION)
				acterror(s->name, " already declared");
		}
#line 3187 "parse.c" /* yacc.c:1646  */
    break;

  case 135:
#line 552 "parse.y" /* yacc.c:1646  */
    { code(sec_access_push); codesym((Symbol *)0);}
#line 3193 "parse.c" /* yacc.c:1646  */
    break;

  case 137:
#line 555 "parse.y" /* yacc.c:1646  */
    {pushs((yyvsp[0].sym)); pushi(CHECK);}
#line 3199 "parse.c" /* yacc.c:1646  */
    break;

  case 138:
#line 556 "parse.y" /* yacc.c:1646  */
    {(yyval.inst) = (yyvsp[0].inst);}
#line 3205 "parse.c" /* yacc.c:1646  */
    break;

  case 139:
#line 559 "parse.y" /* yacc.c:1646  */
    { code3(varpush, spop(), hoc_evalpointer);}
#line 3211 "parse.c" /* yacc.c:1646  */
    break;

  case 140:
#line 561 "parse.y" /* yacc.c:1646  */
    { TPD; code(rangevarevalpointer); codesym(spop());}
#line 3217 "parse.c" /* yacc.c:1646  */
    break;

  case 141:
#line 563 "parse.y" /* yacc.c:1646  */
    {hoc_ipop(); code(hoc_ob_pointer);}
#line 3223 "parse.c" /* yacc.c:1646  */
    break;

  case 142:
#line 564 "parse.y" /* yacc.c:1646  */
    {myerr("rangevariable needs explicit arc position,eg. v(.5)");}
#line 3229 "parse.c" /* yacc.c:1646  */
    break;

  case 143:
#line 566 "parse.y" /* yacc.c:1646  */
    {(yyval.inst) = argcode(hoc_argrefarg, (yyvsp[0].narg));}
#line 3235 "parse.c" /* yacc.c:1646  */
    break;

  case 144:
#line 572 "parse.y" /* yacc.c:1646  */
    { (yyval.inst) = (yyvsp[-1].inst);}
#line 3241 "parse.c" /* yacc.c:1646  */
    break;

  case 145:
#line 574 "parse.y" /* yacc.c:1646  */
    { (yyval.inst) = progp; }
#line 3247 "parse.c" /* yacc.c:1646  */
    break;

  case 146:
#line 577 "parse.y" /* yacc.c:1646  */
    { (yyval.inst) = code(forcode); codei(0); codei(0); codei(0); }
#line 3253 "parse.c" /* yacc.c:1646  */
    break;

  case 147:
#line 580 "parse.y" /* yacc.c:1646  */
    { TPD; (yyval.inst) = (yyvsp[0].inst); codein(STOP);}
#line 3259 "parse.c" /* yacc.c:1646  */
    break;

  case 148:
#line 583 "parse.y" /* yacc.c:1646  */
    { (yyval.inst) = (yyvsp[-1].inst); codein(STOP);}
#line 3265 "parse.c" /* yacc.c:1646  */
    break;

  case 149:
#line 585 "parse.y" /* yacc.c:1646  */
    { (yyval.inst) = progp; codein(STOP);}
#line 3271 "parse.c" /* yacc.c:1646  */
    break;

  case 150:
#line 588 "parse.y" /* yacc.c:1646  */
    { TPD; codein(STOP); (yyval.inst) = (yyvsp[-1].inst);}
#line 3277 "parse.c" /* yacc.c:1646  */
    break;

  case 151:
#line 591 "parse.y" /* yacc.c:1646  */
    { (yyval.inst) = (yyvsp[0].inst); }
#line 3283 "parse.c" /* yacc.c:1646  */
    break;

  case 152:
#line 594 "parse.y" /* yacc.c:1646  */
    { (yyval.inst)=code(ifcode); codei(0); codei(0); codei(0); }
#line 3289 "parse.c" /* yacc.c:1646  */
    break;

  case 153:
#line 597 "parse.y" /* yacc.c:1646  */
    { (yyval.inst) = progp; }
#line 3295 "parse.c" /* yacc.c:1646  */
    break;

  case 154:
#line 600 "parse.y" /* yacc.c:1646  */
    { codein(STOP); (yyval.inst) = progp; }
#line 3301 "parse.c" /* yacc.c:1646  */
    break;

  case 155:
#line 603 "parse.y" /* yacc.c:1646  */
    { (yyval.inst) = progp; prog_error = (yyval.inst); }
#line 3307 "parse.c" /* yacc.c:1646  */
    break;

  case 156:
#line 605 "parse.y" /* yacc.c:1646  */
    {
			prog_parse_recover = progp;
			prog_error = (yyval.inst);
			if (nrn_fw_eq(fin, stdin) && !pipeflag)
			{	int i;
				Printf(">");
				for (i = 0; i < ntab; i++)
					Printf("	");
			}
		}
#line 3322 "parse.c" /* yacc.c:1646  */
    break;

  case 158:
#line 617 "parse.y" /* yacc.c:1646  */
    {myerr("syntax error in compound statement");}
#line 3328 "parse.c" /* yacc.c:1646  */
    break;

  case 159:
#line 622 "parse.y" /* yacc.c:1646  */
    { (yyval.inst) = code(constpush); codesym((yyvsp[0].sym)); PN;}
#line 3334 "parse.c" /* yacc.c:1646  */
    break;

  case 160:
#line 624 "parse.y" /* yacc.c:1646  */
    { (yyval.inst) = code(pushzero); PN;}
#line 3340 "parse.c" /* yacc.c:1646  */
    break;

  case 161:
#line 626 "parse.y" /* yacc.c:1646  */
    { code3(varpush, spop(), eval); PN;}
#line 3346 "parse.c" /* yacc.c:1646  */
    break;

  case 162:
#line 628 "parse.y" /* yacc.c:1646  */
    { defnonly("$"); (yyval.inst) = argcode(arg, (yyvsp[0].narg)); PN;}
#line 3352 "parse.c" /* yacc.c:1646  */
    break;

  case 163:
#line 630 "parse.y" /* yacc.c:1646  */
    { defnonly("$&"); (yyval.inst) = argrefcode(hoc_argref, (yyvsp[-1].narg), (yyvsp[0].narg)); PN;}
#line 3358 "parse.c" /* yacc.c:1646  */
    break;

  case 164:
#line 633 "parse.y" /* yacc.c:1646  */
    {code(rangepoint); codesym(spop()); PN;}
#line 3364 "parse.c" /* yacc.c:1646  */
    break;

  case 165:
#line 635 "parse.y" /* yacc.c:1646  */
    { TPD; code(rangevareval); codesym(spop()); PN;}
#line 3370 "parse.c" /* yacc.c:1646  */
    break;

  case 166:
#line 639 "parse.y" /* yacc.c:1646  */
    {code(hoc_object_eval);}
#line 3376 "parse.c" /* yacc.c:1646  */
    break;

  case 168:
#line 643 "parse.y" /* yacc.c:1646  */
    { (yyval.inst) = (yyvsp[-3].inst); code(call); codesym((yyvsp[-4].sym)); codei((yyvsp[-1].narg)); PN;}
#line 3382 "parse.c" /* yacc.c:1646  */
    break;

  case 169:
#line 645 "parse.y" /* yacc.c:1646  */
    { code(call); codesym(spop()); codei((yyvsp[-1].narg)); PN;}
#line 3388 "parse.c" /* yacc.c:1646  */
    break;

  case 170:
#line 647 "parse.y" /* yacc.c:1646  */
    { (yyval.inst)=(yyvsp[-1].inst); code(varread); codesym(spop()); PN;}
#line 3394 "parse.c" /* yacc.c:1646  */
    break;

  case 171:
#line 649 "parse.y" /* yacc.c:1646  */
    { TPD; (yyval.inst) = (yyvsp[-1].inst); code(bltin); codesym((yyvsp[-3].sym)); PN;}
#line 3400 "parse.c" /* yacc.c:1646  */
    break;

  case 172:
#line 651 "parse.y" /* yacc.c:1646  */
    { (yyval.inst) = (yyvsp[-1].inst); }
#line 3406 "parse.c" /* yacc.c:1646  */
    break;

  case 173:
#line 653 "parse.y" /* yacc.c:1646  */
    {myerr("syntax error in expression");}
#line 3412 "parse.c" /* yacc.c:1646  */
    break;

  case 174:
#line 655 "parse.y" /* yacc.c:1646  */
    { TPD; TPD; code(add); PN; }
#line 3418 "parse.c" /* yacc.c:1646  */
    break;

  case 175:
#line 657 "parse.y" /* yacc.c:1646  */
    { TPD; TPD;code(hoc_sub); PN;}
#line 3424 "parse.c" /* yacc.c:1646  */
    break;

  case 176:
#line 659 "parse.y" /* yacc.c:1646  */
    { TPD; TPD; code(mul); PN;}
#line 3430 "parse.c" /* yacc.c:1646  */
    break;

  case 177:
#line 661 "parse.y" /* yacc.c:1646  */
    { TPD; TPD; code(hoc_div); PN;}
#line 3436 "parse.c" /* yacc.c:1646  */
    break;

  case 178:
#line 663 "parse.y" /* yacc.c:1646  */
    { TPD; TPD; code(hoc_cyclic); PN;}
#line 3442 "parse.c" /* yacc.c:1646  */
    break;

  case 179:
#line 665 "parse.y" /* yacc.c:1646  */
    { TPD; TPD; code(power); PN;}
#line 3448 "parse.c" /* yacc.c:1646  */
    break;

  case 180:
#line 667 "parse.y" /* yacc.c:1646  */
    { TPD; (yyval.inst) = (yyvsp[0].inst); code(negate); PN;}
#line 3454 "parse.c" /* yacc.c:1646  */
    break;

  case 181:
#line 669 "parse.y" /* yacc.c:1646  */
    { TPD; TPD; code(gt); PN;}
#line 3460 "parse.c" /* yacc.c:1646  */
    break;

  case 182:
#line 671 "parse.y" /* yacc.c:1646  */
    { TPD; TPD; code(ge); PN;}
#line 3466 "parse.c" /* yacc.c:1646  */
    break;

  case 183:
#line 673 "parse.y" /* yacc.c:1646  */
    { TPD; TPD; code(lt); PN;}
#line 3472 "parse.c" /* yacc.c:1646  */
    break;

  case 184:
#line 675 "parse.y" /* yacc.c:1646  */
    { TPD; TPD; code(le); PN;}
#line 3478 "parse.c" /* yacc.c:1646  */
    break;

  case 185:
#line 677 "parse.y" /* yacc.c:1646  */
    { hoc_ob_check(-1); hoc_ob_check(-1); code(eq); PN;}
#line 3484 "parse.c" /* yacc.c:1646  */
    break;

  case 186:
#line 679 "parse.y" /* yacc.c:1646  */
    { hoc_ob_check(-1); hoc_ob_check(-1); code(ne); PN;}
#line 3490 "parse.c" /* yacc.c:1646  */
    break;

  case 187:
#line 681 "parse.y" /* yacc.c:1646  */
    { TPD; TPD; code(hoc_and); PN;}
#line 3496 "parse.c" /* yacc.c:1646  */
    break;

  case 188:
#line 683 "parse.y" /* yacc.c:1646  */
    { TPD; TPD; code(hoc_or); PN;}
#line 3502 "parse.c" /* yacc.c:1646  */
    break;

  case 189:
#line 685 "parse.y" /* yacc.c:1646  */
    { TPD; (yyval.inst) = (yyvsp[0].inst); code(hoc_not); PN;}
#line 3508 "parse.c" /* yacc.c:1646  */
    break;

  case 194:
#line 693 "parse.y" /* yacc.c:1646  */
    {Symbol *s; code(varpush); codesym(s=spop()); (yyval.inst) = (yyvsp[-1].inst);
		code(arayinstal); codei((yyvsp[0].narg)); hoc_obvar_declare(s, VAR, 0);}
#line 3515 "parse.c" /* yacc.c:1646  */
    break;

  case 195:
#line 696 "parse.y" /* yacc.c:1646  */
    {Symbol *s; code(varpush); codesym(s = spop());
		code(arayinstal); codei((yyvsp[0].narg)); hoc_obvar_declare(s, VAR, 0);}
#line 3522 "parse.c" /* yacc.c:1646  */
    break;

  case 196:
#line 701 "parse.y" /* yacc.c:1646  */
    {pushs((yyvsp[-1].sym)); (yyval.narg) = (yyvsp[0].narg);}
#line 3528 "parse.c" /* yacc.c:1646  */
    break;

  case 197:
#line 704 "parse.y" /* yacc.c:1646  */
    {  TPD; (yyval.narg) = 1; }
#line 3534 "parse.c" /* yacc.c:1646  */
    break;

  case 198:
#line 706 "parse.y" /* yacc.c:1646  */
    {  TPD;(yyval.narg) = (yyval.narg) + 1; }
#line 3540 "parse.c" /* yacc.c:1646  */
    break;

  case 200:
#line 712 "parse.y" /* yacc.c:1646  */
    { pushs((yyvsp[-1].sym)); (yyval.inst) = (yyvsp[0].inst); }
#line 3546 "parse.c" /* yacc.c:1646  */
    break;

  case 201:
#line 714 "parse.y" /* yacc.c:1646  */
    { if ((yyvsp[-1].sym)->subtype == USERPROPERTY) {
			code(sec_access_push); codesym((Symbol *)0);
		  }
		pushs((yyvsp[-1].sym)); pushi(CHECK);
		}
#line 3556 "parse.c" /* yacc.c:1646  */
    break;

  case 202:
#line 719 "parse.y" /* yacc.c:1646  */
    {(yyval.inst) = (yyvsp[-2].inst);}
#line 3562 "parse.c" /* yacc.c:1646  */
    break;

  case 203:
#line 721 "parse.y" /* yacc.c:1646  */
    { if ((yyvsp[0].sym)->subtype != USERPROPERTY) {
			acterror((yyvsp[0].sym)->name, "not a section variable");
		  }
		(yyval.inst) = (yyvsp[-2].inst); pushs((yyvsp[0].sym));
		}
#line 3572 "parse.c" /* yacc.c:1646  */
    break;

  case 204:
#line 735 "parse.y" /* yacc.c:1646  */
    {
		int d1, chk;
		Symbol *sym;
		d1 = ipop();
		chk = ipop();
		sym = spop();
   if (chk) {
	if (!ISARRAY(sym)) {
		if (d1)
			acterror(sym->name, "not an array variable");
	}else{
		if ( d1 == 0 ) { /*fake index list with all 0's*/
			int i;
			for (i=0; i<sym->arayinfo->nsub; i++) {
				code(pushzero);
			}
		}			
		else if ( d1 != sym->arayinfo->nsub) {
			acterror("wrong # of subscripts",sym->name);
		}
	}
   }else {
	pushi(d1); /* must check dynamically */
   }
		pushs(sym);
		}
#line 3603 "parse.c" /* yacc.c:1646  */
    break;

  case 205:
#line 764 "parse.y" /* yacc.c:1646  */
    {
			(yyval.narg) = ipop();
		}
#line 3611 "parse.c" /* yacc.c:1646  */
    break;

  case 206:
#line 770 "parse.y" /* yacc.c:1646  */
    { pushi(0); }
#line 3617 "parse.c" /* yacc.c:1646  */
    break;

  case 207:
#line 772 "parse.y" /* yacc.c:1646  */
    {  TPD;pushi(ipop() + 1); }
#line 3623 "parse.c" /* yacc.c:1646  */
    break;

  case 208:
#line 776 "parse.y" /* yacc.c:1646  */
    { TPDYNAM; code(prexpr);}
#line 3629 "parse.c" /* yacc.c:1646  */
    break;

  case 209:
#line 778 "parse.y" /* yacc.c:1646  */
    { code(prstr); }
#line 3635 "parse.c" /* yacc.c:1646  */
    break;

  case 210:
#line 780 "parse.y" /* yacc.c:1646  */
    { TPDYNAM; code(prexpr);}
#line 3641 "parse.c" /* yacc.c:1646  */
    break;

  case 211:
#line 782 "parse.y" /* yacc.c:1646  */
    { code(prstr); }
#line 3647 "parse.c" /* yacc.c:1646  */
    break;

  case 212:
#line 785 "parse.y" /* yacc.c:1646  */
    { (yyval.inst) = code(hoc_delete_symbol); codesym((yyvsp[0].sym)); }
#line 3653 "parse.c" /* yacc.c:1646  */
    break;

  case 213:
#line 789 "parse.y" /* yacc.c:1646  */
    {(yyvsp[0].sym)->type=FUNCTION; indef=1; }
#line 3659 "parse.c" /* yacc.c:1646  */
    break;

  case 214:
#line 791 "parse.y" /* yacc.c:1646  */
    { code(procret); hoc_define((yyvsp[-4].sym));
		 (yyvsp[-4].sym)->u.u_proc->nobjauto = (yyvsp[0].narg) - localcnt;
		 (yyvsp[-4].sym)->u.u_proc->nauto=(yyvsp[0].narg); indef=0; }
#line 3667 "parse.c" /* yacc.c:1646  */
    break;

  case 215:
#line 795 "parse.y" /* yacc.c:1646  */
    { (yyvsp[0].sym)->type=PROCEDURE; indef=1; }
#line 3673 "parse.c" /* yacc.c:1646  */
    break;

  case 216:
#line 797 "parse.y" /* yacc.c:1646  */
    { code(procret); hoc_define((yyvsp[-4].sym));
		 (yyvsp[-4].sym)->u.u_proc->nobjauto = (yyvsp[0].narg) - localcnt;
		 (yyvsp[-4].sym)->u.u_proc->nauto=(yyvsp[0].narg); indef=0; }
#line 3681 "parse.c" /* yacc.c:1646  */
    break;

  case 217:
#line 801 "parse.y" /* yacc.c:1646  */
    { (yyvsp[0].sym)->type = ITERATOR; indef=2; }
#line 3687 "parse.c" /* yacc.c:1646  */
    break;

  case 218:
#line 803 "parse.y" /* yacc.c:1646  */
    {code(procret); hoc_define((yyvsp[-4].sym));
		 (yyvsp[-4].sym)->u.u_proc->nobjauto = (yyvsp[0].narg) - localcnt;
		 (yyvsp[-4].sym)->u.u_proc->nauto = (yyvsp[0].narg); indef = 0; }
#line 3695 "parse.c" /* yacc.c:1646  */
    break;

  case 219:
#line 807 "parse.y" /* yacc.c:1646  */
    { (yyvsp[0].sym)->type=HOCOBJFUNCTION; indef=3; }
#line 3701 "parse.c" /* yacc.c:1646  */
    break;

  case 220:
#line 809 "parse.y" /* yacc.c:1646  */
    { code(procret); hoc_define((yyvsp[-4].sym));
		 (yyvsp[-4].sym)->u.u_proc->nobjauto = (yyvsp[0].narg) - localcnt;
		 (yyvsp[-4].sym)->u.u_proc->nauto=(yyvsp[0].narg); indef=0; }
#line 3709 "parse.c" /* yacc.c:1646  */
    break;

  case 221:
#line 814 "parse.y" /* yacc.c:1646  */
    { Symbol *s; s=yylval.sym;
		if(s->type != UNDEF) acterror(s->name, "already defined");
		s->u.u_proc = (Proc *)emalloc(sizeof(Proc));
		s->u.u_proc->defn.in = STOP;
		s->u.u_proc->list = (Symlist *)0; }
#line 3719 "parse.c" /* yacc.c:1646  */
    break;

  case 226:
#line 824 "parse.y" /* yacc.c:1646  */
    {ntab++;}
#line 3725 "parse.c" /* yacc.c:1646  */
    break;

  case 227:
#line 825 "parse.y" /* yacc.c:1646  */
    {
		ntab--;
		(yyval.narg) = (yyvsp[-4].narg) + (yyvsp[-3].narg);
		}
#line 3734 "parse.c" /* yacc.c:1646  */
    break;

  case 228:
#line 831 "parse.y" /* yacc.c:1646  */
    { (yyval.narg) = 0; }
#line 3740 "parse.c" /* yacc.c:1646  */
    break;

  case 230:
#line 835 "parse.y" /* yacc.c:1646  */
    {(yyval.narg) = 1;}
#line 3746 "parse.c" /* yacc.c:1646  */
    break;

  case 231:
#line 837 "parse.y" /* yacc.c:1646  */
    {(yyval.narg) = (yyvsp[-2].narg) + 1;}
#line 3752 "parse.c" /* yacc.c:1646  */
    break;

  case 232:
#line 840 "parse.y" /* yacc.c:1646  */
    {}
#line 3758 "parse.c" /* yacc.c:1646  */
    break;

  case 233:
#line 842 "parse.y" /* yacc.c:1646  */
    { hoc_ob_check(-1);}
#line 3764 "parse.c" /* yacc.c:1646  */
    break;

  case 235:
#line 845 "parse.y" /* yacc.c:1646  */
    {
		 code(hoc_newobj_arg); codesym(hoc_which_template((yyvsp[-3].sym))); codei((yyvsp[-1].narg));
		}
#line 3772 "parse.c" /* yacc.c:1646  */
    break;

  case 236:
#line 850 "parse.y" /* yacc.c:1646  */
    { (yyval.inst) = (yyvsp[0].inst); }
#line 3778 "parse.c" /* yacc.c:1646  */
    break;

  case 237:
#line 852 "parse.y" /* yacc.c:1646  */
    {code3(varpush, spop(), eqn_name);
		do_equation = 1; }
#line 3785 "parse.c" /* yacc.c:1646  */
    break;

  case 238:
#line 855 "parse.y" /* yacc.c:1646  */
    { (yyval.inst) = (yyvsp[-3].inst); do_equation = 0; }
#line 3791 "parse.c" /* yacc.c:1646  */
    break;

  case 239:
#line 858 "parse.y" /* yacc.c:1646  */
    {Symbol *s; code3(varpush,s= spop(), dep_make); hoc_obvar_declare(s, VAR, 0);}
#line 3797 "parse.c" /* yacc.c:1646  */
    break;

  case 240:
#line 860 "parse.y" /* yacc.c:1646  */
    {Symbol *s; code3(varpush, s=spop(), dep_make); hoc_obvar_declare(s, VAR, 0);}
#line 3803 "parse.c" /* yacc.c:1646  */
    break;

  case 243:
#line 865 "parse.y" /* yacc.c:1646  */
    { code(eqn_init); }
#line 3809 "parse.c" /* yacc.c:1646  */
    break;

  case 245:
#line 869 "parse.y" /* yacc.c:1646  */
    { code(eqn_lhs); }
#line 3815 "parse.c" /* yacc.c:1646  */
    break;

  case 246:
#line 871 "parse.y" /* yacc.c:1646  */
    { codein(STOP); TPD; }
#line 3821 "parse.c" /* yacc.c:1646  */
    break;

  case 247:
#line 874 "parse.y" /* yacc.c:1646  */
    { code(eqn_rhs); }
#line 3827 "parse.c" /* yacc.c:1646  */
    break;

  case 248:
#line 876 "parse.y" /* yacc.c:1646  */
    { codein(STOP); TPD; }
#line 3833 "parse.c" /* yacc.c:1646  */
    break;

  case 249:
#line 879 "parse.y" /* yacc.c:1646  */
    { (yyval.narg) = 0; localcnt = (yyval.narg);}
#line 3839 "parse.c" /* yacc.c:1646  */
    break;

  case 251:
#line 883 "parse.y" /* yacc.c:1646  */
    {
		Symbol *sp;
		(yyval.narg) = 1; localcnt = (yyval.narg);
		sp = install((yyvsp[0].sym)->name, AUTO, 0.0, &p_symlist);
		sp->u.u_auto = (yyval.narg);
		}
#line 3850 "parse.c" /* yacc.c:1646  */
    break;

  case 252:
#line 890 "parse.y" /* yacc.c:1646  */
    {
		Symbol *sp;
		(yyval.narg) = (yyvsp[-2].narg) + 1; localcnt = (yyval.narg);
		if (hoc_table_lookup((yyvsp[0].sym)->name, p_symlist)) {
			acterror((yyvsp[0].sym)->name, "already declared local");
		}
		sp = install((yyvsp[0].sym)->name, AUTO, 0.0, &p_symlist);
		sp->u.u_auto = (yyval.narg);
		}
#line 3864 "parse.c" /* yacc.c:1646  */
    break;

  case 253:
#line 901 "parse.y" /* yacc.c:1646  */
    { (yyval.narg) = 0;}
#line 3870 "parse.c" /* yacc.c:1646  */
    break;

  case 255:
#line 905 "parse.y" /* yacc.c:1646  */
    {
		Symbol *sp;
		(yyval.narg) = 1;
		if (hoc_table_lookup((yyvsp[0].sym)->name, p_symlist)) {
			acterror((yyvsp[0].sym)->name, "already declared local");
		}
		sp = install((yyvsp[0].sym)->name, AUTOOBJ, 0.0, &p_symlist);
		sp->u.u_auto = (yyval.narg) + localcnt;
		}
#line 3884 "parse.c" /* yacc.c:1646  */
    break;

  case 256:
#line 915 "parse.y" /* yacc.c:1646  */
    {
		Symbol *sp;
		(yyval.narg) = (yyvsp[-2].narg) + 1;
		if (hoc_table_lookup((yyvsp[0].sym)->name, p_symlist)) {
			acterror((yyvsp[0].sym)->name, "already declared local");
		}
		sp = install((yyvsp[0].sym)->name, AUTOOBJ, 0.0, &p_symlist);
		sp->u.u_auto = (yyval.narg) + localcnt;
		}
#line 3898 "parse.c" /* yacc.c:1646  */
    break;

  case 257:
#line 926 "parse.y" /* yacc.c:1646  */
    {  Symbol* s;
	   s = hoc_decl((yyvsp[0].sym));
	   if (s->subtype != NOTUSER)
		acterror("can't redeclare user variable", s->name);
	   (yyval.sym) = s;
	}
#line 3909 "parse.c" /* yacc.c:1646  */
    break;


#line 3913 "parse.c" /* yacc.c:1646  */
      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyn], &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */

  yyn = yyr1[yyn];

  yystate = yypgoto[yyn - YYNTOKENS] + *yyssp;
  if (0 <= yystate && yystate <= YYLAST && yycheck[yystate] == *yyssp)
    yystate = yytable[yystate];
  else
    yystate = yydefgoto[yyn - YYNTOKENS];

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYEMPTY : YYTRANSLATE (yychar);

  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
#if ! YYERROR_VERBOSE
      yyerror (YY_("syntax error"));
#else
# define YYSYNTAX_ERROR yysyntax_error (&yymsg_alloc, &yymsg, \
                                        yyssp, yytoken)
      {
        char const *yymsgp = YY_("syntax error");
        int yysyntax_error_status;
        yysyntax_error_status = YYSYNTAX_ERROR;
        if (yysyntax_error_status == 0)
          yymsgp = yymsg;
        else if (yysyntax_error_status == 1)
          {
            if (yymsg != yymsgbuf)
              YYSTACK_FREE (yymsg);
            yymsg = (char *) YYSTACK_ALLOC (yymsg_alloc);
            if (!yymsg)
              {
                yymsg = yymsgbuf;
                yymsg_alloc = sizeof yymsgbuf;
                yysyntax_error_status = 2;
              }
            else
              {
                yysyntax_error_status = YYSYNTAX_ERROR;
                yymsgp = yymsg;
              }
          }
        yyerror (yymsgp);
        if (yysyntax_error_status == 2)
          goto yyexhaustedlab;
      }
# undef YYSYNTAX_ERROR
#endif
    }



  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:

  /* Pacify compilers like GCC when the user code never invokes
     YYERROR and the label yyerrorlab therefore never appears in user
     code.  */
  if (/*CONSTCOND*/ 0)
     goto yyerrorlab;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYTERROR;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYTERROR)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  yystos[yystate], yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", yystos[yyn], yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturn;

/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturn;

#if !defined yyoverflow || YYERROR_VERBOSE
/*-------------------------------------------------.
| yyexhaustedlab -- memory exhaustion comes here.  |
`-------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  /* Fall through.  */
#endif

yyreturn:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  yystos[*yyssp], yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif
#if YYERROR_VERBOSE
  if (yymsg != yymsgbuf)
    YYSTACK_FREE (yymsg);
#endif
  return yyresult;
}
#line 938 "parse.y" /* yacc.c:1906  */

	/* end of grammar */

static void yyerror(const char* s)	/* called for yacc syntax error */
{
	execerror(s, (char *)0);
}

void acterror(const char* s, const char*t)	/* recover from action error while parsing */
{
	execerror(s,t);
}

static Inst* argrefcode(Pfrv pfrv, int i, int j){
	Inst* in;
	in = argcode(pfrv, i);
	codei(j);
	return in;
}

static Inst* argcode(Pfrv pfrv, int i) {
	Inst* in;
	if (i == 0) {
		Symbol* si = hoc_lookup("i");
		if (si->type != AUTO) {
			acterror("arg index used and i is not a LOCAL variable", 0);
		}
		in = code3(varpush, si, eval);		
		Code(pfrv);
		codei(0);
	}else{
		in = Code(pfrv);
		codei(i);
	}
	return in;
}

static void hoc_opasgn_invalid(int op) {
        if (op) {
                acterror("Invalid assignment operator.", "Only '=' allowed. ");
        }
} 

