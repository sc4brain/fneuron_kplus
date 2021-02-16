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
#line 1 "parse1.y" /* yacc.c:339  */

/* /local/src/master/nrn/src/nmodl/parse1.y,v 4.11 1999/03/24 18:34:08 hines Exp */

#include <../../nmodlconf.h>
#include "modl.h"
#include <stdlib.h>

#if defined(__STDC__)
#define sdebug(arg1,arg2) {}
#define qdebug(arg1,arg2) {}
#else
#define sdebug(arg1,arg2) {Fprintf(stderr,"arg1:%s\n", arg2); Fflush(stderr);}
#define qdebug(arg1,arg2) {Item *q; Fprintf(stderr,"arg1:");Fflush(stderr);\
	for (q=arg2; q->type != 0; q=q->next){\
		if (q->type == SYMBOL)\
			Fprintf(stderr,"%s\n", SYM(q)->name);\
		else if (q->type == STRING)\
			Fprintf(stderr,"%s\n", STR(q);\
		else\
			Fprintf(stderr,"Illegal Item type\n");\
		Fflush(stderr);}\
		Fprintf(stderr,"\n");Fflush(stderr);}
#endif

#define ldebug(arg1, arg2) qdebug(arg1, arg2->next)

extern int yylex(), yyparse();
static void yyerror();

#if YYBISON
#define myerr(arg) static int ierr=0;\
if (!(ierr++))yyerror(arg); --yyssp; --yyvsp; YYERROR
#else
#define myerr(arg) static int ierr=0;\
if (!(ierr++))yyerror(arg); --yyps; --yypv; YYERROR
#endif

int brkpnt_exists;
int assert_threadsafe;
int usederivstatearray;
extern int protect_;
extern int vectorize;
extern int in_comment_; /* allow non-ascii in a COMMENT */
extern char *modelline;
extern Item* protect_astmt(Item*, Item*);
extern List* toplocal_;
static List* toplocal1_;
extern List *firstlist; /* NAME symbols in order that they appear in file */
extern int lexcontext; /* ':' can return 3 different tokens */
extern List *solveforlist; /* List of symbols that are actually to be solved
				for in a block. See in_solvefor() */
static int stateblock; /* 0 if dependent, 1 if state */
static int blocktype;
static int saw_verbatim_; /* only print the notice once */
static int inequation; /* inside an equation?*/
static int nstate;	/* number of states seen in an expression */
static int leftside;	/* inside left hand side of equation? */
static int pstate;	/* number of state in a primary expression */
static int tstate;	/* number of states in a term */
static Item *lastok;	/* last token accepted by expr */
static int sensused;	/* a SENS statement occurred in this block */
static Symbol *matchindex; /* local symbol for implied MATCH loop */
static int model_level = 0; /* the model level prepended to declaration
				blocks by merge */
static int scopindep = 0;/* SCoP independent explicitly declared if 1 */
static int extdef2 = 0; /* flag that says we are in an EXTDEF2 function */
static List *table_list = LIST0; /* table information for TABLE statement */
static int forallindex = 0;	/* 0 not in FORALL, -1 just starting, 
					>0 index of arrays used (must all
					be the same */
static Item* astmt_end_;	/* see kinetic.c vectorizing */
static int nr_argcnt_, argcnt_; /* for matching number of args in NET_RECEIVE
				 and FOR_NETCONS */

#line 141 "parse1.c" /* yacc.c:339  */

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
    VERBATIM = 258,
    COMMENT = 259,
    MODEL = 260,
    CONSTANT = 261,
    INDEPENDENT = 262,
    DEPENDENT = 263,
    STATE = 264,
    INITIAL1 = 265,
    DERIVATIVE = 266,
    SOLVE = 267,
    USING = 268,
    WITH = 269,
    STEPPED = 270,
    DISCRETE = 271,
    FROM = 272,
    FORALL1 = 273,
    TO = 274,
    BY = 275,
    WHILE = 276,
    IF = 277,
    ELSE = 278,
    START1 = 279,
    STEP = 280,
    SENS = 281,
    SOLVEFOR = 282,
    PROCEDURE = 283,
    PARTIAL = 284,
    DEL = 285,
    DEL2 = 286,
    DEFINE1 = 287,
    IFERROR = 288,
    PARAMETER = 289,
    DERFUNC = 290,
    EQUATION = 291,
    TERMINAL = 292,
    LINEAR = 293,
    NONLINEAR = 294,
    FUNCTION1 = 295,
    LOCAL = 296,
    METHOD = 297,
    LIN1 = 298,
    NONLIN1 = 299,
    PUTQ = 300,
    GETQ = 301,
    TABLE = 302,
    DEPEND = 303,
    BREAKPOINT = 304,
    INCLUDE1 = 305,
    FUNCTION_TABLE = 306,
    PROTECT = 307,
    NRNMUTEXLOCK = 308,
    NRNMUTEXUNLOCK = 309,
    OR = 310,
    AND = 311,
    GT = 312,
    LT = 313,
    LE = 314,
    EQ = 315,
    NE = 316,
    NOT = 317,
    NAME = 318,
    PRIME = 319,
    REAL = 320,
    INTEGER = 321,
    DEFINEDVAR = 322,
    STRING = 323,
    PLOT = 324,
    VS = 325,
    LAG = 326,
    RESET = 327,
    MATCH = 328,
    MODEL_LEVEL = 329,
    SWEEP = 330,
    FIRST = 331,
    LAST = 332,
    KINETIC = 333,
    CONSERVE = 334,
    REACTION = 335,
    REACT1 = 336,
    COMPARTMENT = 337,
    UNITS = 338,
    UNITSON = 339,
    UNITSOFF = 340,
    LONGDIFUS = 341,
    NEURON = 342,
    SUFFIX = 343,
    NONSPECIFIC = 344,
    READ = 345,
    WRITE = 346,
    USEION = 347,
    VALENCE = 348,
    THREADSAFE = 349,
    GLOBAL = 350,
    SECTION = 351,
    RANGE = 352,
    POINTER = 353,
    EXTERNAL = 354,
    BEFORE = 355,
    AFTER = 356,
    WATCH = 357,
    ELECTRODE_CURRENT = 358,
    CONSTRUCTOR = 359,
    DESTRUCTOR = 360,
    NETRECEIVE = 361,
    FOR_NETCONS = 362,
    GE = 363,
    UNARYMINUS = 364
  };
#endif
/* Tokens.  */
#define VERBATIM 258
#define COMMENT 259
#define MODEL 260
#define CONSTANT 261
#define INDEPENDENT 262
#define DEPENDENT 263
#define STATE 264
#define INITIAL1 265
#define DERIVATIVE 266
#define SOLVE 267
#define USING 268
#define WITH 269
#define STEPPED 270
#define DISCRETE 271
#define FROM 272
#define FORALL1 273
#define TO 274
#define BY 275
#define WHILE 276
#define IF 277
#define ELSE 278
#define START1 279
#define STEP 280
#define SENS 281
#define SOLVEFOR 282
#define PROCEDURE 283
#define PARTIAL 284
#define DEL 285
#define DEL2 286
#define DEFINE1 287
#define IFERROR 288
#define PARAMETER 289
#define DERFUNC 290
#define EQUATION 291
#define TERMINAL 292
#define LINEAR 293
#define NONLINEAR 294
#define FUNCTION1 295
#define LOCAL 296
#define METHOD 297
#define LIN1 298
#define NONLIN1 299
#define PUTQ 300
#define GETQ 301
#define TABLE 302
#define DEPEND 303
#define BREAKPOINT 304
#define INCLUDE1 305
#define FUNCTION_TABLE 306
#define PROTECT 307
#define NRNMUTEXLOCK 308
#define NRNMUTEXUNLOCK 309
#define OR 310
#define AND 311
#define GT 312
#define LT 313
#define LE 314
#define EQ 315
#define NE 316
#define NOT 317
#define NAME 318
#define PRIME 319
#define REAL 320
#define INTEGER 321
#define DEFINEDVAR 322
#define STRING 323
#define PLOT 324
#define VS 325
#define LAG 326
#define RESET 327
#define MATCH 328
#define MODEL_LEVEL 329
#define SWEEP 330
#define FIRST 331
#define LAST 332
#define KINETIC 333
#define CONSERVE 334
#define REACTION 335
#define REACT1 336
#define COMPARTMENT 337
#define UNITS 338
#define UNITSON 339
#define UNITSOFF 340
#define LONGDIFUS 341
#define NEURON 342
#define SUFFIX 343
#define NONSPECIFIC 344
#define READ 345
#define WRITE 346
#define USEION 347
#define VALENCE 348
#define THREADSAFE 349
#define GLOBAL 350
#define SECTION 351
#define RANGE 352
#define POINTER 353
#define EXTERNAL 354
#define BEFORE 355
#define AFTER 356
#define WATCH 357
#define ELECTRODE_CURRENT 358
#define CONSTRUCTOR 359
#define DESTRUCTOR 360
#define NETRECEIVE 361
#define FOR_NETCONS 362
#define GE 363
#define UNARYMINUS 364

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE YYSTYPE;
union YYSTYPE
{
#line 76 "parse1.y" /* yacc.c:355  */

	Item	*qp;
	char	*str;
	List	*lp;
	int	i;

#line 406 "parse1.c" /* yacc.c:355  */
};
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_PARSE_H_INCLUDED  */

/* Copy the second part of user declarations.  */

#line 421 "parse1.c" /* yacc.c:358  */

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
#define YYFINAL  4
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   1354

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  127
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  165
/* YYNRULES -- Number of rules.  */
#define YYNRULES  388
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  762

/* YYTRANSLATE[YYX] -- Symbol number corresponding to YYX as returned
   by yylex, with out-of-bounds checking.  */
#define YYUNDEFTOK  2
#define YYMAXUTOK   364

#define YYTRANSLATE(YYX)                                                \
  ((unsigned int) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, without out-of-bounds checking.  */
static const yytype_uint8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,   125,     2,     2,
      57,    58,    63,    62,    69,    64,     2,    65,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,    68,     2,
       2,    66,     2,     2,    61,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,    59,     2,    60,    67,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,    55,     2,    56,    70,     2,     2,     2,
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
      71,    72,    73,    74,    75,    76,    77,    78,    79,    80,
      81,    82,    83,    84,    85,    86,    87,    88,    89,    90,
      91,    92,    93,    94,    95,    96,    97,    98,    99,   100,
     101,   102,   103,   104,   105,   106,   107,   108,   109,   110,
     111,   112,   113,   114,   115,   116,   117,   118,   119,   120,
     121,   122,   123,   124,   126
};

#if YYDEBUG
  /* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_uint16 yyrline[] =
{
       0,   131,   131,   132,   134,   135,   136,   149,   150,   151,
     151,   154,   153,   159,   168,   175,   176,   179,   183,   185,
     194,   196,   202,   202,   202,   202,   202,   203,   203,   203,
     203,   205,   207,   208,   212,   216,   218,   223,   225,   226,
     228,   228,   232,   233,   236,   237,   243,   245,   246,   249,
     253,   254,   256,   257,   259,   260,   267,   267,   269,   270,
     272,   273,   279,   281,   282,   284,   284,   289,   294,   296,
     298,   298,   300,   301,   304,   308,   314,   318,   324,   328,
     329,   332,   333,   338,   338,   340,   345,   347,   355,   359,
     360,   363,   363,   365,   365,   366,   366,   367,   367,   368,
     368,   369,   369,   370,   370,   371,   371,   372,   372,   373,
     373,   374,   374,   375,   375,   376,   376,   377,   377,   378,
     378,   379,   379,   380,   380,   382,   385,   388,   391,   391,
     392,   396,   395,   404,   406,   421,   436,   437,   440,   441,
     441,   443,   445,   446,   447,   448,   449,   450,   451,   461,
     463,   464,   465,   466,   467,   468,   469,   471,   472,   473,
     477,   478,   479,   480,   481,   482,   483,   486,   489,   489,
     493,   493,   496,   500,   520,   529,   536,   551,   574,   577,
     581,   589,   590,   591,   592,   593,   594,   595,   597,   598,
     599,   600,   601,   602,   603,   604,   605,   608,   609,   610,
     611,   612,   613,   614,   615,   616,   617,   618,   620,   622,
     627,   629,   632,   635,   638,   642,   648,   654,   660,   661,
     662,   664,   667,   672,   671,   689,   690,   691,   692,   693,
     695,   695,   718,   721,   722,   724,   724,   743,   746,   748,
     750,   751,   758,   759,   766,   770,   770,   776,   782,   786,
     791,   795,   797,   799,   802,   802,   804,   832,   831,   860,
     861,   861,   863,   867,   872,   891,   890,   908,   910,   918,
     921,   923,   926,   927,   931,   935,   937,   941,   943,   945,
     949,   952,   954,   956,   958,   960,   962,   964,   966,   968,
     971,   972,   974,   974,   984,   986,   987,   988,   989,   990,
     991,   992,   993,   994,   997,   998,  1001,  1006,  1008,  1011,
    1015,  1015,  1019,  1022,  1021,  1025,  1029,  1028,  1032,  1035,
    1036,  1038,  1045,  1045,  1047,  1049,  1051,  1053,  1054,  1055,
    1056,  1058,  1060,  1062,  1063,  1065,  1065,  1068,  1069,  1071,
    1073,  1080,  1084,  1086,  1091,  1095,  1096,  1097,  1099,  1101,
    1103,  1109,  1119,  1128,  1134,  1136,  1137,  1144,  1159,  1162,
    1163,  1165,  1167,  1171,  1172,  1175,  1178,  1179,  1181,  1182,
    1184,  1186,  1188,  1190,  1192,  1194,  1196,  1199,  1201,  1203,
    1205,  1208,  1209,  1211,  1215,  1216,  1219,  1220,  1222
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || 0
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "VERBATIM", "COMMENT", "MODEL",
  "CONSTANT", "INDEPENDENT", "DEPENDENT", "STATE", "INITIAL1",
  "DERIVATIVE", "SOLVE", "USING", "WITH", "STEPPED", "DISCRETE", "FROM",
  "FORALL1", "TO", "BY", "WHILE", "IF", "ELSE", "START1", "STEP", "SENS",
  "SOLVEFOR", "PROCEDURE", "PARTIAL", "DEL", "DEL2", "DEFINE1", "IFERROR",
  "PARAMETER", "DERFUNC", "EQUATION", "TERMINAL", "LINEAR", "NONLINEAR",
  "FUNCTION1", "LOCAL", "METHOD", "LIN1", "NONLIN1", "PUTQ", "GETQ",
  "TABLE", "DEPEND", "BREAKPOINT", "INCLUDE1", "FUNCTION_TABLE", "PROTECT",
  "NRNMUTEXLOCK", "NRNMUTEXUNLOCK", "'{'", "'}'", "'('", "')'", "'['",
  "']'", "'@'", "'+'", "'*'", "'-'", "'/'", "'='", "'^'", "':'", "','",
  "'~'", "OR", "AND", "GT", "LT", "LE", "EQ", "NE", "NOT", "NAME", "PRIME",
  "REAL", "INTEGER", "DEFINEDVAR", "STRING", "PLOT", "VS", "LAG", "RESET",
  "MATCH", "MODEL_LEVEL", "SWEEP", "FIRST", "LAST", "KINETIC", "CONSERVE",
  "REACTION", "REACT1", "COMPARTMENT", "UNITS", "UNITSON", "UNITSOFF",
  "LONGDIFUS", "NEURON", "SUFFIX", "NONSPECIFIC", "READ", "WRITE",
  "USEION", "VALENCE", "THREADSAFE", "GLOBAL", "SECTION", "RANGE",
  "POINTER", "EXTERNAL", "BEFORE", "AFTER", "WATCH", "ELECTRODE_CURRENT",
  "CONSTRUCTOR", "DESTRUCTOR", "NETRECEIVE", "FOR_NETCONS", "GE", "'%'",
  "UNARYMINUS", "$accept", "top", "all", "$@1", "$@2", "model", "line",
  "define1", "Name", "declare", "parmblk", "parmbody", "parmasgn", "units",
  "unit", "@3", "uniton", "limits", "stepblk", "stepbdy", "stepped",
  "numlist", "name", "number", "NUMBER", "integer", "real", "indepblk",
  "indepbody", "$@4", "indepdef", "withby", "depblk", "$@5", "depbody",
  "depdef", "opstart", "abstol", "stateblk", "$@6", "plotdecl", "pvlist",
  "optindex", "proc", "$@7", "$@8", "$@9", "$@10", "$@11", "$@12", "$@13",
  "$@14", "$@15", "$@16", "$@17", "$@18", "$@19", "$@20", "$@21", "$@22",
  "$@23", "initblk", "constructblk", "destructblk", "stmtlist", "$@24",
  "locallist", "$@25", "locallist1", "locoptarray", "stmtlist1", "$@26",
  "ostmt", "astmt", "$@27", "$@28", "asgn", "varname", "intexpr", "expr",
  "nonlineqn", "lineqn", "leftlinexpr", "linexpr", "primary", "term",
  "funccall", "$@29", "exprlist", "fromstmt", "$@30", "opinc",
  "forallstmt", "$@31", "whilestmt", "ifstmt", "optelseif", "optelse",
  "derivblk", "linblk", "$@32", "nonlinblk", "discretblk", "partialblk",
  "pareqn", "firstlast", "functableblk", "funcblk", "$@33", "arglist",
  "$@34", "arglist1", "procedblk", "netrecblk", "$@35", "initstmt",
  "solveblk", "ifsolerr", "solvefor", "solvefor1", "brkptblk",
  "terminalblk", "bablk", "watchstmt", "watch1", "watchdir", "fornetcon",
  "$@36", "aexpr", "sens", "senslist", "conserve", "$@37", "compart",
  "$@38", "ldifus", "$@39", "namelist", "kineticblk", "reaction", "$@40",
  "react", "lagstmt", "queuestmt", "matchblk", "$@41", "matchlist",
  "match", "matchname", "unitblk", "unitbody", "unitdef", "factordef",
  "constblk", "conststmt", "tablestmt", "tablst", "tablst1", "dependlst",
  "neuronblk", "nrnstmt", "nrnuse", "nrnlist", "optnrnlist", "valence", YY_NULLPTR
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
     305,   306,   307,   308,   309,   123,   125,    40,    41,    91,
      93,    64,    43,    42,    45,    47,    61,    94,    58,    44,
     126,   310,   311,   312,   313,   314,   315,   316,   317,   318,
     319,   320,   321,   322,   323,   324,   325,   326,   327,   328,
     329,   330,   331,   332,   333,   334,   335,   336,   337,   338,
     339,   340,   341,   342,   343,   344,   345,   346,   347,   348,
     349,   350,   351,   352,   353,   354,   355,   356,   357,   358,
     359,   360,   361,   362,   363,    37,   364
};
# endif

#define YYPACT_NINF -554

#define yypact_value_is_default(Yystate) \
  (!!((Yystate) == (-554)))

#define YYTABLE_NINF -385

#define yytable_value_is_error(Yytable_value) \
  0

  /* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
     STATE-NUM.  */
static const yytype_int16 yypact[] =
{
     648,  -554,   105,   771,  -554,  -554,  -554,  -554,   -23,    -8,
    -554,  -554,    79,    17,    85,    65,    75,    45,    80,   116,
    -554,  -554,   132,   469,  -554,  -554,  -554,  -554,  -554,  -554,
    -554,  -554,  -554,  -554,  -554,  -554,  -554,  -554,  -554,  -554,
    -554,   171,   177,  -554,  -554,    86,  -554,  -554,   184,  -554,
    -554,  -554,  -554,  -554,   195,   -35,  -554,  -554,  -554,  -554,
     256,   276,   257,   315,   332,   337,   356,   272,   379,   411,
     417,   378,   355,   381,   463,   410,   405,   -39,    54,  -554,
    -554,   -11,  -554,   165,   482,   476,   471,  -554,   101,   101,
     348,   287,  1098,   499,  -554,   477,  -554,   499,  -554,   483,
    -554,   486,  -554,   487,  -554,   491,  -554,    10,  -554,   499,
    -554,   500,  -554,    69,  -554,   503,  -554,   499,  -554,   499,
    -554,   522,  -554,   385,   385,  -554,   542,  -554,  -554,   592,
    -554,  -554,    32,   149,  -554,   544,  -554,  -554,  -554,   395,
    -554,   190,  -554,   541,   552,   195,   195,  -554,  -554,  -554,
    -554,   555,     5,  -554,  -554,  -554,   557,    74,   162,   203,
      74,    74,    74,    74,    74,    74,  -554,   599,   585,   499,
     588,   615,   615,   589,   590,  -554,   602,   605,   499,  -554,
     499,   615,   622,   623,   614,  -554,   499,   499,   499,   499,
    -554,  -554,   324,   324,   185,  -554,  -554,    19,  -554,  -554,
     324,   190,   324,   607,  -554,  -554,  -554,   624,   482,  -554,
    -554,  -554,   625,   196,  -554,   637,  -554,  -554,  -554,   631,
    -554,   186,   631,  -554,   631,   631,   631,   631,   631,   631,
    -554,  -554,  -554,   647,  -554,   266,  -554,   635,   499,   602,
     602,   657,   101,  -554,   650,   674,   499,  -554,  -554,   602,
     675,   676,   684,   685,   386,  -554,   637,  -554,  -554,   686,
    -554,   324,   324,   190,   637,    63,   659,   683,   637,   406,
    -554,  -554,  -554,  -554,  -554,    23,  -554,   637,  -554,   671,
      74,    74,   421,   515,  -554,  -554,  -554,   499,   673,   697,
     696,   698,  -554,   637,   690,  -554,  -554,   699,   702,  -554,
    -554,  -554,  -554,  -554,  -554,   324,   743,  -554,   703,   693,
     324,  -554,   324,   637,   607,   712,   710,  -554,  -554,  -554,
     367,   -40,  -554,  -554,  -554,   248,   713,   792,  -554,   688,
    -554,   716,   524,   586,  -554,   729,  -554,  -554,   637,   637,
     499,  -554,   101,  -554,   637,   780,   324,    89,   406,  -554,
    -554,  -554,   607,  -554,   406,   637,    74,   446,  -554,  -554,
     241,  -554,   190,    94,  -554,  -554,  -554,   499,   273,   285,
     289,   740,   741,    47,   101,   101,    37,  -554,  -554,   215,
      81,  -554,  -554,   129,   535,   709,    20,    29,  -554,   745,
    -554,  -554,  -554,  -554,  -554,  -554,  -554,  -554,   730,  -554,
    -554,  -554,  -554,  -554,  -554,  -554,  -554,  -554,   178,  -554,
     524,  -554,   524,   524,   524,   637,  -554,  1158,  -554,  -554,
     524,   118,  -554,  -554,   742,   275,   277,  -554,  -554,  -554,
    -554,   499,   750,   637,  -554,  -554,   190,   783,   324,   637,
     738,  -554,   746,  -554,   -40,   406,  -554,   754,  -554,   638,
     761,  -554,    94,  -554,  -554,   610,   768,  -554,    26,  -554,
    -554,  -554,  -554,   524,   524,  -554,  -554,   763,  -554,  -554,
    -554,  -554,   782,   765,   757,   774,   775,  -554,   822,   788,
    -554,   433,   442,   849,   478,   872,  -554,   644,  -554,  -554,
     602,  -554,   801,  -554,   245,  -554,   284,  1194,   949,   797,
     797,  -554,   524,   524,   524,   524,   524,   524,   524,   524,
     524,   524,   524,   524,   524,   524,   969,   277,   586,   118,
     118,   118,   118,   499,   803,  -554,  -554,   783,   637,   846,
     693,  -554,  -554,  -554,  -554,  -554,  1194,   -32,    94,   786,
    -554,    94,    94,    94,    94,  -554,   824,   499,  -554,   802,
     499,   989,  1012,   245,   796,   850,   796,   810,   307,   798,
     799,   145,   314,  -554,   804,  -554,   804,  -554,   644,   644,
     637,  -554,  -554,   672,   818,  -554,  -554,   433,   809,   811,
    -554,  -554,   513,   797,   513,   797,  1194,   797,  1211,  1230,
     790,   790,   790,   790,   790,   790,  -554,   275,   277,   277,
    -554,  -554,   828,  -554,   637,   693,   324,  -554,  -554,   361,
     649,  -554,   354,  -554,   354,  -554,   853,   832,    94,   833,
     499,   499,  -554,   765,   524,  -554,   307,  -554,  -554,   831,
     834,  -554,  -554,   485,   154,  -554,   838,   524,   524,  -554,
     113,   524,   157,   510,   829,  -554,   644,   644,   644,   644,
     644,  -554,  -554,   644,  -554,   245,  -554,   841,   842,   433,
    -554,  -554,  -554,   783,  -554,  1194,  -554,  -554,  -554,   328,
    -554,   844,   845,   419,   843,   836,   874,   827,  -554,  -554,
     524,  1194,   895,  -554,  -554,   926,  -554,  -554,   533,   829,
     533,   829,   829,   764,   499,  -554,   524,   524,   219,   637,
      94,  -554,  -554,   524,   851,   524,   852,   847,  1032,   804,
     804,   406,   862,  1052,  1075,   524,   693,   350,   885,   175,
     524,  1194,   840,  -554,   863,   270,   282,  -554,  -554,  -554,
    -554,  1178,  -554,    94,   499,    -6,  -554,   848,  1194,   870,
     524,  -554,  -554,   524,   628,   875,   876,   882,  -554,   878,
    1194,  1095,  -554,   524,  -554,   873,  -554,  1115,  -554,   499,
     886,  -554
};

  /* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
     Performed when YYTABLE does not specify something else to do.  Zero
     means the default is an error.  */
static const yytype_uint16 yydefact[] =
{
       0,     3,     0,    11,     1,    13,    14,    18,     0,     0,
      70,    83,     0,     0,     0,     0,     0,     0,     0,     0,
      42,    43,     0,    91,     5,     7,     8,    22,    15,    26,
      23,    24,    25,    27,     6,    29,    30,    28,    17,   355,
      63,     0,     0,    47,    20,     0,    32,   133,     0,    16,
      86,    21,    53,    52,    89,     0,     9,   345,   366,    12,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,    72,
      72,     0,    19,     0,   136,   132,     0,    87,     0,     0,
       0,     0,     0,     0,    92,     0,    94,     0,    96,     0,
      98,     0,   100,     0,   102,     0,   104,     0,   106,     0,
     108,     0,   110,     0,   112,     0,   114,     0,   116,     0,
     118,     0,   120,     0,     0,   354,     0,    68,    62,     0,
      65,    64,     0,     0,    46,     0,    48,    37,    31,    38,
      33,     0,   134,     0,     0,    89,    89,    10,   353,   344,
      40,     0,     0,   346,   347,   365,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   368,   128,     0,     0,
       0,   274,   274,     0,     0,   267,   260,     0,     0,   250,
       0,   274,     0,     0,     0,   285,     0,     0,     0,     0,
     122,   124,     0,     0,     0,    78,    71,    79,    73,    84,
       0,     0,     0,    44,    39,    58,    59,     0,   136,    90,
      88,    85,     0,     0,   349,     0,   367,   383,   381,   369,
     380,     0,   385,   376,   373,   371,   372,   374,   375,   370,
     138,   138,   125,     0,   279,     0,   245,   275,     0,   260,
     260,     0,     0,   280,     0,     0,     0,   126,   127,   260,
       0,     0,     0,     0,     0,    57,    38,    54,    56,     0,
      66,     0,     0,     0,    38,    38,     0,     0,    38,     0,
      35,   137,   135,    41,    60,     0,    61,     0,   348,     0,
       0,     0,   139,   139,   244,   278,   276,     0,     0,     0,
       0,     0,   265,    38,   261,   248,   249,     0,     0,   283,
     282,   284,   281,    55,   356,     0,     0,    80,     0,    81,
       0,    49,     0,    38,    44,     0,     0,   351,   350,   382,
     386,   386,   209,   208,   168,    21,   176,     0,   141,     0,
     167,     0,     0,     0,   172,     0,   277,   247,    38,    38,
       0,   262,     0,   321,    38,     0,     0,    79,     0,    74,
      51,    50,    44,    34,     0,     0,     0,     0,   377,   378,
       0,   223,     0,     0,   166,   148,   149,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,   164,   165,     0,
       0,   156,   335,     0,     0,     0,     0,     0,   160,     0,
     140,   142,   143,   144,   145,   158,   161,   147,   162,   163,
     150,   153,   151,   152,   154,   155,   157,   159,     0,   171,
       0,   207,     0,     0,     0,    38,   188,     0,   190,   222,
       0,     0,   219,   218,     0,   210,   211,   215,   220,   246,
     257,     0,     0,    38,   256,    69,     0,    79,     0,    38,
       0,    36,     0,   352,   386,     0,   387,    21,   169,     0,
     178,   187,     0,   180,   181,     0,     0,   271,   272,   232,
     230,   237,   235,     0,     0,   307,   308,   306,   333,   334,
     358,   361,   363,   360,     0,     0,     0,   332,     0,     0,
     312,     0,    21,     0,    21,     0,   288,     0,   286,   294,
     260,   146,     0,   326,     0,   327,     0,   173,     0,   206,
     205,   189,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,   212,     0,     0,
       0,     0,     0,     0,     0,   266,   263,    79,    38,     0,
      81,    82,    45,   379,   388,   227,   226,     0,     0,     0,
     177,     0,     0,     0,     0,   268,     0,     0,   269,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,   313,     0,   316,     0,   305,     0,     0,
      38,   295,   297,     0,     0,   287,   328,     0,     0,     0,
     322,   191,   192,   194,   193,   195,   174,   196,   197,   198,
     199,   200,   202,   203,   204,   201,   221,   175,   213,   214,
     216,   217,     0,   264,    38,    81,     0,    75,   224,     0,
       0,   182,   183,   185,   184,   186,   272,     0,     0,     0,
       0,     0,   309,   364,     0,   362,     0,   254,   255,     0,
       0,   331,   341,   339,     0,   337,     0,     0,     0,   319,
       0,     0,     0,     0,   304,   296,     0,     0,     0,     0,
       0,   290,   291,     0,   292,     0,   329,     0,     0,     0,
     258,    67,    76,    79,   229,   228,   179,   270,   273,     0,
     236,     0,     0,     0,     0,     0,     0,     0,   336,   338,
       0,   311,     0,   315,   320,     0,   318,   298,   299,   301,
     300,   302,   303,     0,     0,   330,     0,     0,     0,    38,
       0,   238,   240,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,    81,   233,   242,     0,
       0,   253,     0,   343,     0,     0,     0,   289,   293,   325,
     324,     0,    77,     0,     0,     0,   239,     0,   252,     0,
       0,   314,   317,     0,   234,     0,     0,     0,   357,     0,
     340,     0,   231,     0,   243,     0,   323,     0,   251,     0,
       0,   241
};

  /* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -554,  -554,  -554,  -554,  -554,  -554,  -554,  -554,  -169,   861,
    -554,  -554,  -554,  -237,   -84,  -554,   626,  -289,  -554,  -554,
    -554,  -554,   -15,  -158,   678,  -140,  -190,  -554,  -554,  -554,
     747,  -554,  -554,  -554,   881,  -554,  -344,  -521,  -554,  -554,
    -554,  -554,   263,  -554,  -554,  -554,  -554,  -554,  -554,  -554,
    -554,  -554,  -554,  -554,  -554,  -554,  -554,  -554,  -554,  -554,
    -554,  -554,  -554,  -554,   -97,  -554,   787,  -554,  -554,   748,
     724,  -554,  -554,  -554,  -554,  -554,   603,   -98,  -444,   120,
    -554,  -554,  -554,   447,  -411,    16,  -218,  -554,  -554,  -554,
    -554,  -554,  -554,  -554,  -554,  -554,  -554,  -554,  -554,  -554,
    -554,  -554,  -554,  -554,  -554,   338,  -554,  -554,  -554,  -225,
    -554,  -554,  -554,  -554,  -554,  -554,  -554,   358,  -131,  -554,
    -554,  -554,   854,  -554,   484,  -554,  -554,  -554,  -511,  -554,
    -554,  -554,  -554,  -554,  -554,  -554,  -554,  -553,  -554,  -554,
    -554,  -477,  -554,  -554,  -554,  -554,  -554,   341,  -554,  -554,
    -554,  -554,  -554,  -554,  -554,  -554,  -554,   423,  -554,  -554,
    -554,  -554,    55,  -554,  -316
};

  /* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
      -1,     2,     3,    90,    23,    24,    38,    25,    53,    26,
      27,    83,   140,   203,   204,   212,    28,   270,    29,    81,
     136,   265,   326,   256,   257,   276,   415,    30,    78,   194,
     131,   436,    31,    41,   132,   198,   264,   349,    32,    42,
      33,    55,    87,    59,    60,    61,    62,    63,    64,    65,
      66,    67,    68,    69,    70,    71,    72,    73,    74,    75,
      76,    94,   118,   120,   168,   230,    34,    48,    85,   142,
     282,   327,   390,   328,   360,   329,   330,   416,   455,   417,
     332,   333,   424,   425,   426,   427,   418,   449,   537,   391,
     549,   734,   392,   550,   393,   394,   718,   736,    96,   100,
     287,   102,   112,   114,   395,   629,   122,   104,   523,   241,
     242,   294,   106,   108,   340,   396,   397,   548,   236,   237,
      98,   110,   190,   398,   488,   653,   399,   694,   573,   400,
     467,   401,   481,   402,   638,   403,   641,   640,   116,   409,
     659,   496,   404,   405,   406,   479,   634,   635,   636,    35,
      91,   153,   154,    36,    77,   407,   472,   473,   555,    37,
      92,   166,   219,   223,   358
};

  /* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
     positive, shift that token.  If negative, reduce the rule whose
     number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
     170,   207,    54,   439,   562,   359,   214,   152,   539,   607,
     517,   175,   177,   642,   290,   291,   746,   125,    44,   304,
     182,   486,   183,   277,   298,   353,   608,   309,   311,   279,
     489,   314,    39,   195,    88,   259,   261,   609,   470,   546,
     126,   238,   266,   262,   268,   134,    50,    40,   465,   167,
     246,    89,   258,   258,  -359,   127,   341,   643,   644,   547,
     258,   267,   258,   441,   334,   334,    47,   176,   135,   357,
     179,   215,   233,   145,   146,   217,   352,   487,   263,   315,
     150,   244,   477,   245,   662,  -359,   490,   316,   196,   250,
     251,   252,   253,   528,   610,   451,    45,   612,   613,   614,
     615,   430,   431,   306,   307,     4,   438,   434,   598,   599,
     128,    51,    52,   262,   258,   428,    51,   197,   197,   419,
     150,   258,   258,   308,    51,    52,   447,    52,   533,   275,
     480,   278,   310,   129,    43,   688,   689,   690,   691,   692,
      46,   289,   693,   422,  -131,   130,   632,   345,   180,   297,
     195,   452,   350,   218,   351,   632,   725,   726,   440,    49,
      51,    52,    56,   220,   442,   258,   137,   446,    82,   683,
     258,    57,   258,    51,   669,   420,   205,   206,   501,   493,
      51,    52,   698,   604,   331,   331,   127,    58,   437,   737,
     335,   317,   684,   318,   453,   732,   526,   325,    52,   274,
     205,   206,   530,   428,   217,   199,   258,   471,  -310,  -310,
     678,  -310,  -310,   686,   222,   224,   225,   226,   227,   228,
     229,   138,   450,   454,    51,    52,    79,   293,    51,    52,
     389,   422,    80,    51,    52,   423,   684,   502,   503,   504,
     505,   221,   507,   432,   139,   474,   508,   509,   510,   511,
     512,   513,   514,   150,    86,   534,   717,   447,    52,  -384,
     205,   206,   331,    84,   129,   574,    93,   285,   494,   572,
     456,   443,   205,   206,   457,   466,   715,   274,   205,   206,
     529,   577,   218,   453,   322,   323,   459,    95,   148,   744,
     461,   605,   280,   281,   475,   476,   527,   570,   258,   515,
     428,   428,   428,   428,   428,   361,    97,  -384,  -384,   362,
     495,  -384,   454,  -384,  -384,  -384,  -384,  -384,  -384,   699,
     447,    52,  -384,   423,   447,    52,   741,   433,   422,   422,
     422,   422,   422,   645,   524,   320,   321,   519,   742,   520,
     521,   494,   522,   149,   150,   286,   577,   700,   578,   684,
     572,   572,   458,    99,     8,     9,    10,    11,   579,   468,
     469,   684,   411,    12,   460,   478,   151,   661,   462,   453,
     733,   101,   453,   453,   453,   453,   577,   103,   570,   570,
     637,   580,    14,   495,   105,   471,   185,   625,   254,   571,
     541,   542,   543,   544,   107,   186,   576,   187,   454,   627,
     628,   454,   454,   454,   454,   255,   205,   206,   210,   211,
     188,   444,   541,   542,   543,   544,   109,   542,   412,   544,
     423,   423,   423,   423,   423,   413,   602,   111,   572,   572,
     572,   572,   572,    17,   189,   572,   279,   655,   703,   414,
     325,    52,   274,   205,   206,   664,   113,    19,   663,   453,
     617,    22,   150,   619,   201,   622,   570,   570,   570,   570,
     570,   202,   716,   570,   322,   323,   258,   255,   205,   206,
     571,   571,   115,   324,   356,   117,   357,  -129,   454,   656,
     -93,   502,   503,   504,   505,  -109,   507,   274,   205,   206,
     508,   509,   510,   511,   512,   513,   514,  -103,  -111,   361,
     325,    52,   119,   362,   483,   485,  -107,   -97,   -99,  -101,
     445,   563,   447,    52,   121,   205,   206,  -170,   -95,   494,
    -119,   727,   124,   671,   672,   411,   123,   274,   205,   206,
     497,   453,   498,   499,   500,   361,   411,   600,   601,   362,
     516,   141,  -342,   515,   677,   143,   633,   565,   571,   571,
     571,   571,   571,   144,   167,   571,   169,   695,   322,   323,
     454,   495,   171,  -113,   453,   172,   173,   324,   687,   536,
     174,  -130,   646,   647,   648,   649,   503,   650,   505,   178,
     507,   412,   181,   551,   552,  -121,  -123,   419,   413,  -115,
    -117,  -105,   412,   454,   325,    52,   647,   712,   649,   413,
     650,   184,   414,   325,    52,   274,   205,   206,   192,   193,
     200,  -170,   209,   414,   482,    52,   274,   205,   206,   633,
     208,   213,   582,   583,   584,   585,   586,   587,   588,   589,
     590,   591,   592,   593,   594,   595,   216,   745,   747,   411,
      15,   232,   235,   420,   234,   567,   239,   240,    -4,     1,
     421,    -4,    -4,    -4,    -4,    -4,    -4,    -4,    -4,    -4,
    -259,   243,   760,    -4,    -4,   325,    52,   274,   205,   206,
     540,   249,   541,   542,   543,   544,    -4,    -4,   247,   248,
      -4,   269,    -4,   273,   271,    -4,    -4,    -4,    -4,    -4,
     541,   542,   543,   544,   150,   412,  -225,    -4,    -4,    -4,
     279,   568,   413,   284,   288,   305,   295,  -225,   569,   666,
     411,   541,   542,   543,   544,   292,   414,   325,    52,   274,
     205,   206,   535,   325,    52,   274,   205,   206,   312,   665,
     296,   299,   300,    -4,   646,   647,   648,   649,    -4,   650,
     301,   302,    -4,   313,   673,   651,   652,    -4,    -4,    -4,
     319,    -4,   336,   337,   338,   343,   339,   681,   682,   342,
     344,   685,   346,   347,    -4,    -4,   412,   348,    -4,    -4,
      -4,    -2,   363,   413,     5,     6,     7,     8,     9,    10,
      11,   354,   410,   355,   408,   429,    12,   414,   484,    52,
     274,   205,   206,   364,   435,   365,   366,   463,   464,   492,
     708,   491,   367,    13,   368,    14,   525,   262,   518,   369,
     370,   531,    15,   371,   372,   362,   713,   714,   373,   532,
     538,    16,   711,   719,   545,   721,   646,   647,   648,   649,
     554,   650,   553,   558,   556,   731,   557,   374,   375,   376,
     738,   559,   560,   561,   611,   377,   378,   167,   541,   542,
     543,   544,   502,   503,   504,   505,    17,   507,   487,   603,
     750,    18,   379,   751,   507,   606,   616,   624,   618,   626,
      19,    20,    21,   757,    22,    51,   654,   630,   631,   380,
     381,   382,   657,   639,   660,   658,   547,   383,   668,   670,
     384,   675,    20,    21,   385,   680,   650,   676,   696,   697,
     701,   702,   705,   704,   564,   706,   707,   723,   735,   722,
     386,   502,   503,   504,   505,   387,   507,   720,   728,   739,
     508,   509,   510,   511,   512,   513,   514,   566,   749,   740,
     748,   752,   303,   753,   502,   503,   504,   505,   754,   507,
     755,   260,   761,   508,   509,   510,   511,   512,   513,   514,
     709,   147,   758,   388,   231,   283,   272,   502,   503,   504,
     505,   133,   507,   448,   674,   597,   508,   509,   510,   511,
     512,   513,   514,   515,   667,   679,   575,   623,   191,     0,
       0,   710,     0,     0,     0,     0,     0,     0,   502,   503,
     504,   505,     0,   507,     0,     0,   515,   508,   509,   510,
     511,   512,   513,   514,     0,     0,     0,   581,     0,     0,
       0,   502,   503,   504,   505,     0,   507,     0,     0,   515,
     508,   509,   510,   511,   512,   513,   514,   596,     0,     0,
       0,   502,   503,   504,   505,     0,   507,     0,     0,     0,
     508,   509,   510,   511,   512,   513,   514,   620,     0,     0,
     515,   502,   503,   504,   505,     0,   507,     0,     0,     0,
     508,   509,   510,   511,   512,   513,   514,     0,     0,     0,
     621,     0,     0,   515,   502,   503,   504,   505,     0,   507,
       0,     0,     0,   508,   509,   510,   511,   512,   513,   514,
     724,     0,     0,   515,   502,   503,   504,   505,     0,   507,
       0,     0,     0,   508,   509,   510,   511,   512,   513,   514,
     729,     0,     0,   515,   502,   503,   504,   505,     0,   507,
       0,     0,     0,   508,   509,   510,   511,   512,   513,   514,
       0,     0,     0,   730,     0,     0,   515,   502,   503,   504,
     505,     0,   507,     0,     0,     0,   508,   509,   510,   511,
     512,   513,   514,   756,   155,     0,   515,   502,   503,   504,
     505,     0,   507,     0,     0,     0,   508,   509,   510,   511,
     512,   513,   514,   759,     0,     0,   515,   502,   503,   504,
     505,     0,   507,     0,     0,     0,   508,   509,   510,   511,
     512,   513,   514,     0,     0,     0,     0,     0,     0,   515,
       0,     0,   156,   157,     0,     0,   158,     0,   159,   160,
     161,   162,   163,   164,     0,     0,     0,   165,     0,   515,
     502,   503,   504,   505,   506,   507,     0,     0,     0,   508,
     509,   510,   511,   512,   513,   514,     0,     0,     0,   515,
     502,   503,   504,   505,     0,   507,     0,   743,     0,   508,
     509,   510,   511,   512,   513,   514,   502,   503,   504,   505,
       0,   507,     0,     0,     0,   508,   509,   510,   511,   512,
     513,   514,     0,   502,   503,   504,   505,     0,   507,     0,
       0,     0,   515,   509,   510,   511,   512,   513,   514,     0,
       0,     0,   502,   503,   504,   505,     0,   507,     0,     0,
       0,     0,   515,   510,   511,   512,   513,   514,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   515,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,   515,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   515
};

static const yytype_int16 yycheck[] =
{
      97,   141,    17,   347,   481,   321,     1,    91,   452,   530,
     421,     1,   109,   566,   239,   240,    22,    56,     1,   256,
     117,     1,   119,   213,   249,   314,    58,   264,   265,    69,
       1,   268,    55,     1,    69,   193,    17,    69,     1,    13,
      79,   172,   200,    24,   202,    56,     1,    55,     1,    55,
     181,    86,   192,   193,    17,     1,   293,   568,   569,    33,
     200,   201,   202,   352,   282,   283,     1,    57,    79,   109,
       1,    66,   169,    88,    89,     1,   313,    57,    59,   269,
      57,   178,     1,   180,   605,    48,    57,    64,    56,   186,
     187,   188,   189,   437,   538,     1,    79,   541,   542,   543,
     544,   338,   339,   261,   262,     0,    17,   344,   519,   520,
      56,    79,    80,    24,   254,   333,    79,   132,   133,     1,
      57,   261,   262,   263,    79,    80,    79,    80,   444,   213,
       1,   215,    69,    79,    55,   646,   647,   648,   649,   650,
      55,   238,   653,   333,    79,    91,     1,   305,    79,   246,
       1,    57,   310,    79,   312,     1,   709,   710,   348,    84,
      79,    80,    82,     1,   354,   305,     1,   357,    82,    56,
     310,    55,   312,    79,   618,    57,    82,    83,   415,     1,
      79,    80,   659,   527,   282,   283,     1,    55,   346,    14,
     287,   275,    79,   277,   363,   716,   433,    79,    80,    81,
      82,    83,   439,   421,     1,    56,   346,   376,    79,    80,
      56,    82,    83,    56,   159,   160,   161,   162,   163,   164,
     165,    56,   362,   363,    79,    80,    55,   242,    79,    80,
     327,   421,    55,    79,    80,   333,    79,    62,    63,    64,
      65,    79,    67,   340,    79,    30,    71,    72,    73,    74,
      75,    76,    77,    57,    59,   445,   700,    79,    80,    56,
      82,    83,   360,    79,    79,   490,    10,     1,   408,   487,
     367,   355,    82,    83,     1,   373,    57,    81,    82,    83,
     438,    62,    79,   452,    43,    44,     1,    11,     1,   733,
       1,   528,   106,   107,    79,    80,   436,   487,   438,   124,
     518,   519,   520,   521,   522,    57,    49,   104,   105,    61,
     408,   108,   452,   110,   111,   112,   113,   114,   115,   663,
      79,    80,   119,   421,    79,    80,    56,   342,   518,   519,
     520,   521,   522,   570,   431,   280,   281,    62,    56,    64,
      63,   481,    65,    56,    57,    79,    62,    19,    64,    79,
     568,   569,    79,    38,     6,     7,     8,     9,    74,   374,
     375,    79,     1,    15,    79,   380,    79,   604,    79,   538,
      20,    39,   541,   542,   543,   544,    62,    40,   568,   569,
      66,    97,    34,   481,    28,   554,     1,   556,    64,   487,
      62,    63,    64,    65,   122,    10,   494,    12,   538,    92,
      93,   541,   542,   543,   544,    81,    82,    83,   145,   146,
      25,   356,    62,    63,    64,    65,    37,    63,    57,    65,
     518,   519,   520,   521,   522,    64,   523,    16,   646,   647,
     648,   649,   650,    85,    49,   653,    69,   577,    19,    78,
      79,    80,    81,    82,    83,    84,    29,    99,   606,   618,
     547,   103,    57,   550,    59,   553,   646,   647,   648,   649,
     650,    66,   699,   653,    43,    44,   606,    81,    82,    83,
     568,   569,    94,    52,   107,   120,   109,    56,   618,   577,
      11,    62,    63,    64,    65,    16,    67,    81,    82,    83,
      71,    72,    73,    74,    75,    76,    77,    28,    29,    57,
      79,    80,   121,    61,   384,   385,    37,    38,    39,    40,
      64,    69,    79,    80,    51,    82,    83,    96,    49,   659,
      51,   711,   117,   620,   621,     1,   116,    81,    82,    83,
     410,   700,   412,   413,   414,    57,     1,   521,   522,    61,
     420,    59,    57,   124,    59,    69,   561,    69,   646,   647,
     648,   649,   650,    82,    55,   653,    79,   655,    43,    44,
     700,   659,    79,    94,   733,    79,    79,    52,    58,   449,
      79,    56,    62,    63,    64,    65,    63,    67,    65,    79,
      67,    57,    79,   463,   464,   116,   117,     1,    64,   120,
     121,   122,    57,   733,    79,    80,    63,   694,    65,    64,
      67,    79,    78,    79,    80,    81,    82,    83,    66,    17,
      66,    96,    60,    78,    79,    80,    81,    82,    83,   634,
      79,    66,   502,   503,   504,   505,   506,   507,   508,   509,
     510,   511,   512,   513,   514,   515,    79,   734,   735,     1,
      41,    56,    27,    57,    56,     1,    57,    57,     0,     1,
      64,     3,     4,     5,     6,     7,     8,     9,    10,    11,
      58,    56,   759,    15,    16,    79,    80,    81,    82,    83,
      60,    57,    62,    63,    64,    65,    28,    29,    56,    56,
      32,    74,    34,    58,    60,    37,    38,    39,    40,    41,
      62,    63,    64,    65,    57,    57,    58,    49,    50,    51,
      69,    57,    64,    56,    69,    19,    56,    69,    64,    60,
       1,    62,    63,    64,    65,    58,    78,    79,    80,    81,
      82,    83,    84,    79,    80,    81,    82,    83,    69,   609,
      56,    56,    56,    85,    62,    63,    64,    65,    90,    67,
      56,    56,    94,    60,   624,    73,    74,    99,   100,   101,
      79,   103,    79,    56,    58,    56,    58,   637,   638,    69,
      58,   641,    19,    60,   116,   117,    57,    74,   120,   121,
     122,     0,    59,    64,     3,     4,     5,     6,     7,     8,
       9,    69,    66,    73,    96,    56,    15,    78,    79,    80,
      81,    82,    83,     1,    14,     3,     4,    57,    57,    69,
     680,    56,    10,    32,    12,    34,    56,    24,    66,    17,
      18,    73,    41,    21,    22,    61,   696,   697,    26,    73,
      59,    50,    58,   703,    56,   705,    62,    63,    64,    65,
      48,    67,    69,    59,    69,   715,    79,    45,    46,    47,
     720,    66,    20,    55,    58,    53,    54,    55,    62,    63,
      64,    65,    62,    63,    64,    65,    85,    67,    57,    56,
     740,    90,    70,   743,    67,    19,    42,    17,    66,    59,
      99,   100,   101,   753,   103,    79,    58,    79,    79,    87,
      88,    89,    73,    79,    56,    74,    33,    95,    56,    56,
      98,    60,   100,   101,   102,    57,    67,    63,    57,    57,
      56,    56,    66,    60,    55,    31,    79,    60,    23,    57,
     118,    62,    63,    64,    65,   123,    67,    66,    56,    79,
      71,    72,    73,    74,    75,    76,    77,    55,    58,    66,
      82,    56,   254,    57,    62,    63,    64,    65,    56,    67,
      62,   194,    56,    71,    72,    73,    74,    75,    76,    77,
      55,    90,    79,   327,   167,   231,   208,    62,    63,    64,
      65,    80,    67,   360,   626,   518,    71,    72,    73,    74,
      75,    76,    77,   124,   616,   634,   492,   554,   124,    -1,
      -1,    55,    -1,    -1,    -1,    -1,    -1,    -1,    62,    63,
      64,    65,    -1,    67,    -1,    -1,   124,    71,    72,    73,
      74,    75,    76,    77,    -1,    -1,    -1,    58,    -1,    -1,
      -1,    62,    63,    64,    65,    -1,    67,    -1,    -1,   124,
      71,    72,    73,    74,    75,    76,    77,    58,    -1,    -1,
      -1,    62,    63,    64,    65,    -1,    67,    -1,    -1,    -1,
      71,    72,    73,    74,    75,    76,    77,    58,    -1,    -1,
     124,    62,    63,    64,    65,    -1,    67,    -1,    -1,    -1,
      71,    72,    73,    74,    75,    76,    77,    -1,    -1,    -1,
      58,    -1,    -1,   124,    62,    63,    64,    65,    -1,    67,
      -1,    -1,    -1,    71,    72,    73,    74,    75,    76,    77,
      58,    -1,    -1,   124,    62,    63,    64,    65,    -1,    67,
      -1,    -1,    -1,    71,    72,    73,    74,    75,    76,    77,
      58,    -1,    -1,   124,    62,    63,    64,    65,    -1,    67,
      -1,    -1,    -1,    71,    72,    73,    74,    75,    76,    77,
      -1,    -1,    -1,    58,    -1,    -1,   124,    62,    63,    64,
      65,    -1,    67,    -1,    -1,    -1,    71,    72,    73,    74,
      75,    76,    77,    58,    56,    -1,   124,    62,    63,    64,
      65,    -1,    67,    -1,    -1,    -1,    71,    72,    73,    74,
      75,    76,    77,    58,    -1,    -1,   124,    62,    63,    64,
      65,    -1,    67,    -1,    -1,    -1,    71,    72,    73,    74,
      75,    76,    77,    -1,    -1,    -1,    -1,    -1,    -1,   124,
      -1,    -1,   104,   105,    -1,    -1,   108,    -1,   110,   111,
     112,   113,   114,   115,    -1,    -1,    -1,   119,    -1,   124,
      62,    63,    64,    65,    66,    67,    -1,    -1,    -1,    71,
      72,    73,    74,    75,    76,    77,    -1,    -1,    -1,   124,
      62,    63,    64,    65,    -1,    67,    -1,    69,    -1,    71,
      72,    73,    74,    75,    76,    77,    62,    63,    64,    65,
      -1,    67,    -1,    -1,    -1,    71,    72,    73,    74,    75,
      76,    77,    -1,    62,    63,    64,    65,    -1,    67,    -1,
      -1,    -1,   124,    72,    73,    74,    75,    76,    77,    -1,
      -1,    -1,    62,    63,    64,    65,    -1,    67,    -1,    -1,
      -1,    -1,   124,    73,    74,    75,    76,    77,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   124,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,   124,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,   124
};

  /* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
     symbol of state STATE-NUM.  */
static const yytype_uint16 yystos[] =
{
       0,     1,   128,   129,     0,     3,     4,     5,     6,     7,
       8,     9,    15,    32,    34,    41,    50,    85,    90,    99,
     100,   101,   103,   131,   132,   134,   136,   137,   143,   145,
     154,   159,   165,   167,   193,   276,   280,   286,   133,    55,
      55,   160,   166,    55,     1,    79,    55,     1,   194,    84,
       1,    79,    80,   135,   149,   168,    82,    55,    55,   170,
     171,   172,   173,   174,   175,   176,   177,   178,   179,   180,
     181,   182,   183,   184,   185,   186,   187,   281,   155,    55,
      55,   146,    82,   138,    79,   195,    59,   169,    69,    86,
     130,   277,   287,    10,   188,    11,   225,    49,   247,    38,
     226,    39,   228,    40,   234,    28,   239,   122,   240,    37,
     248,    16,   229,    29,   230,    94,   265,   120,   189,   121,
     190,    51,   233,   116,   117,    56,    79,     1,    56,    79,
      91,   157,   161,   161,    56,    79,   147,     1,    56,    79,
     139,    59,   196,    69,    82,   149,   149,   136,     1,    56,
      57,    79,   141,   278,   279,    56,   104,   105,   108,   110,
     111,   112,   113,   114,   115,   119,   288,    55,   191,    79,
     191,    79,    79,    79,    79,     1,    57,   191,    79,     1,
      79,    79,   191,   191,    79,     1,    10,    12,    25,    49,
     249,   249,    66,    17,   156,     1,    56,   149,   162,    56,
      66,    59,    66,   140,   141,    82,    83,   152,    79,    60,
     169,   169,   142,    66,     1,    66,    79,     1,    79,   289,
       1,    79,   289,   290,   289,   289,   289,   289,   289,   289,
     192,   193,    56,   191,    56,    27,   245,   246,   245,    57,
      57,   236,   237,    56,   191,   191,   245,    56,    56,    57,
     191,   191,   191,   191,    64,    81,   150,   151,   152,   150,
     157,    17,    24,    59,   163,   148,   150,   152,   150,    74,
     144,    60,   196,    58,    81,   141,   152,   153,   141,    69,
     106,   107,   197,   197,    56,     1,    79,   227,    69,   191,
     236,   236,    58,   149,   238,    56,    56,   191,   236,    56,
      56,    56,    56,   151,   140,    19,   150,   150,   152,   140,
      69,   140,    69,    60,   140,   153,    64,   141,   141,    79,
     289,   289,    43,    44,    52,    79,   149,   198,   200,   202,
     203,   204,   207,   208,   213,   191,    79,    56,    58,    58,
     241,   140,    69,    56,    58,   150,    19,    60,    74,   164,
     150,   150,   140,   144,    69,    73,   107,   109,   291,   291,
     201,    57,    61,    59,     1,     3,     4,    10,    12,    17,
      18,    21,    22,    26,    45,    46,    47,    53,    54,    70,
      87,    88,    89,    95,    98,   102,   118,   123,   143,   191,
     199,   216,   219,   221,   222,   231,   242,   243,   250,   253,
     256,   258,   260,   262,   269,   270,   271,   282,    96,   266,
      66,     1,    57,    64,    78,   153,   204,   206,   213,     1,
      57,    64,   153,   204,   209,   210,   211,   212,   213,    56,
     140,   140,   191,   149,   140,    14,   158,   150,    17,   163,
     153,   144,   153,   141,   289,    64,   153,    79,   203,   214,
     152,     1,    57,   135,   152,   205,   191,     1,    79,     1,
      79,     1,    79,    57,    57,     1,   204,   257,   149,   149,
       1,   135,   283,   284,    30,    79,    80,     1,   149,   272,
       1,   259,    79,   206,    79,   206,     1,    57,   251,     1,
      57,    56,    69,     1,   152,   204,   268,   206,   206,   206,
     206,   140,    62,    63,    64,    65,    66,    67,    71,    72,
      73,    74,    75,    76,    77,   124,   206,   211,    66,    62,
      64,    63,    65,   235,   191,    56,   140,   152,   163,   150,
     140,    73,    73,   291,   153,    84,   206,   215,    59,   205,
      60,    62,    63,    64,    65,    56,    13,    33,   244,   217,
     220,   206,   206,    69,    48,   285,    69,    79,    59,    66,
      20,    55,   268,    69,    55,    69,    55,     1,    57,    64,
     153,   204,   213,   255,   236,   251,   204,    62,    64,    74,
      97,    58,   206,   206,   206,   206,   206,   206,   206,   206,
     206,   206,   206,   206,   206,   206,    58,   210,   211,   211,
     212,   212,   191,    56,   163,   140,    19,   164,    58,    69,
     205,    58,   205,   205,   205,   205,    42,   191,    66,   191,
      58,    58,   204,   284,    17,   135,    59,    92,    93,   232,
      79,    79,     1,   149,   273,   274,   275,    66,   261,    79,
     264,   263,   264,   255,   255,   140,    62,    63,    64,    65,
      67,    73,    74,   252,    58,   152,   204,    73,    74,   267,
      56,   140,   164,   150,    84,   206,    60,   244,    56,   205,
      56,   191,   191,   206,   232,    60,    63,    59,    56,   274,
      57,   206,   206,    56,    79,   206,    56,    58,   255,   255,
     255,   255,   255,   255,   254,   204,    57,    57,   268,   163,
      19,    56,    56,    19,    60,    66,    31,    79,   206,    55,
      55,    58,   191,   206,   206,    57,   140,   205,   223,   206,
      66,   206,    57,    60,    58,   264,   264,   153,    56,    58,
      58,   206,   164,    20,   218,    23,   224,    14,   206,    79,
      66,    56,    56,    69,   205,   191,    22,   191,    82,    58,
     206,   206,    56,    57,    56,    62,    58,   206,    79,    58,
     191,    56
};

  /* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_uint16 yyr1[] =
{
       0,   127,   128,   128,   129,   129,   129,   129,   129,   130,
     129,   131,   129,   129,   129,   129,   129,   132,   133,   134,
     134,   135,   136,   136,   136,   136,   136,   136,   136,   136,
     136,   137,   138,   138,   139,   139,   139,   139,   140,   140,
     142,   141,   143,   143,   144,   144,   145,   146,   146,   147,
     148,   148,   149,   149,   150,   150,   151,   151,   152,   152,
     153,   153,   154,   155,   155,   156,   155,   157,   157,   158,
     160,   159,   161,   161,   162,   162,   162,   162,   162,   163,
     163,   164,   164,   166,   165,   167,   167,   168,   168,   169,
     169,   171,   170,   172,   170,   173,   170,   174,   170,   175,
     170,   176,   170,   177,   170,   178,   170,   179,   170,   180,
     170,   181,   170,   182,   170,   183,   170,   184,   170,   185,
     170,   186,   170,   187,   170,   188,   189,   190,   192,   191,
     191,   194,   193,   193,   195,   195,   196,   196,   197,   198,
     197,   197,   199,   199,   199,   199,   199,   199,   199,   199,
     199,   199,   199,   199,   199,   199,   199,   199,   199,   199,
     199,   199,   199,   199,   199,   199,   199,   200,   201,   200,
     202,   200,   200,   203,   203,   203,   204,   204,   204,   204,
     205,   205,   205,   205,   205,   205,   205,   205,   206,   206,
     206,   206,   206,   206,   206,   206,   206,   206,   206,   206,
     206,   206,   206,   206,   206,   206,   206,   206,   207,   208,
     209,   210,   210,   210,   210,   211,   211,   211,   212,   212,
     212,   212,   212,   214,   213,   215,   215,   215,   215,   215,
     217,   216,   216,   218,   218,   220,   219,   219,   221,   222,
     223,   223,   224,   224,   225,   227,   226,   228,   229,   230,
     230,   231,   231,   231,   232,   232,   233,   235,   234,   236,
     237,   236,   238,   238,   239,   241,   240,   240,   242,   243,
     243,   243,   244,   244,   245,   245,   246,   246,   246,   247,
     248,   249,   249,   249,   249,   249,   250,   250,   250,   251,
     252,   252,   254,   253,   253,   255,   255,   255,   255,   255,
     255,   255,   255,   255,   255,   255,   256,   256,   257,   257,
     259,   258,   258,   261,   260,   260,   263,   262,   262,   264,
     264,   265,   267,   266,   266,   266,   266,   268,   268,   268,
     268,   269,   269,   270,   270,   272,   271,   273,   273,   274,
     274,   274,   275,   275,   276,   277,   277,   277,   278,   278,
     279,   279,   279,   279,   280,   281,   281,   282,   282,   283,
     283,   284,   284,   285,   285,   286,   287,   287,   287,   287,
     287,   287,   287,   287,   287,   287,   287,   288,   288,   288,
     288,   289,   289,   289,   290,   290,   291,   291,   291
};

  /* YYR2[YYN] -- Number of symbols on the right hand side of rule YYN.  */
static const yytype_uint8 yyr2[] =
{
       0,     2,     1,     1,     0,     2,     2,     2,     2,     0,
       5,     0,     3,     2,     2,     2,     3,     2,     0,     3,
       2,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     4,     0,     2,     5,     3,     6,     1,     0,     1,
       0,     3,     1,     1,     0,     5,     4,     0,     2,     4,
       3,     3,     1,     1,     1,     2,     1,     1,     1,     1,
       1,     1,     4,     0,     2,     0,     4,     9,     1,     1,
       0,     5,     0,     2,     4,     7,     8,    11,     1,     0,
       2,     0,     3,     0,     5,     5,     2,     2,     4,     0,
       3,     0,     2,     0,     2,     0,     2,     0,     2,     0,
       2,     0,     2,     0,     2,     0,     2,     0,     2,     0,
       2,     0,     2,     0,     2,     0,     2,     0,     2,     0,
       2,     0,     3,     0,     3,     3,     3,     3,     0,     3,
       3,     0,     3,     2,     2,     4,     0,     3,     0,     0,
       3,     2,     1,     1,     1,     1,     2,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     0,     3,
       0,     2,     1,     3,     4,     4,     1,     4,     3,     6,
       1,     1,     3,     3,     3,     3,     3,     1,     1,     2,
       1,     3,     3,     3,     3,     3,     3,     3,     3,     3,
       3,     3,     3,     3,     3,     2,     2,     1,     1,     1,
       1,     1,     2,     3,     3,     1,     3,     3,     1,     1,
       1,     3,     1,     0,     5,     0,     1,     1,     3,     3,
       0,    10,     2,     0,     2,     0,     5,     2,     6,     8,
       0,     8,     0,     3,     4,     0,     6,     5,     4,     4,
       2,    11,     8,     7,     1,     1,     6,     0,     9,     0,
       0,     2,     2,     4,     8,     0,     7,     2,     3,     3,
       5,     2,     0,     3,     0,     1,     2,     3,     2,     3,
       3,     3,     3,     3,     3,     1,     2,     3,     2,     6,
       1,     1,     0,     7,     2,     1,     2,     1,     3,     3,
       3,     3,     3,     3,     2,     1,     2,     2,     1,     3,
       0,     5,     2,     0,     8,     5,     0,     8,     5,     1,
       2,     5,     0,    10,     7,     7,     2,     1,     2,     3,
       4,     4,     2,     2,     2,     0,     5,     1,     2,     1,
       6,     1,     1,     4,     4,     0,     2,     2,     3,     2,
       4,     4,     6,     1,     4,     0,     5,     9,     2,     0,
       1,     1,     3,     0,     2,     4,     0,     3,     2,     3,
       3,     3,     3,     3,     3,     3,     3,     5,     5,     7,
       2,     1,     3,     1,     0,     1,     0,     2,     3
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
#line 131 "parse1.y" /* yacc.c:1646  */
    {/*ldebug(top, intoken)*/;}
#line 2194 "parse1.c" /* yacc.c:1646  */
    break;

  case 3:
#line 132 "parse1.y" /* yacc.c:1646  */
    {diag("Illegal block", (char *)0);}
#line 2200 "parse1.c" /* yacc.c:1646  */
    break;

  case 6:
#line 138 "parse1.y" /* yacc.c:1646  */
    {Item* q; replacstr((yyvsp[0].qp), "static double");
		vectorize_substitute((yyvsp[0].qp), "/*Top LOCAL");
		vectorize_substitute(lastok->next, "*/\n");
		movelist((yyvsp[0].qp), lastok->next, firstlist);
		if (!toplocal_) {toplocal_ = newlist();}
		ITERATE(q, toplocal1_) {
			assert(SYM(q)->name[0] == '_' && SYM(q)->name[1] == 'l');
			SYM(q)->name[1] = 'z';
		}
		movelist(toplocal1_->next, toplocal1_->prev, toplocal_);
		}
#line 2216 "parse1.c" /* yacc.c:1646  */
    break;

  case 9:
#line 151 "parse1.y" /* yacc.c:1646  */
    {model_level = atoi(STR((yyvsp[0].qp)));}
#line 2222 "parse1.c" /* yacc.c:1646  */
    break;

  case 10:
#line 152 "parse1.y" /* yacc.c:1646  */
    {model_level = 0;}
#line 2228 "parse1.c" /* yacc.c:1646  */
    break;

  case 11:
#line 154 "parse1.y" /* yacc.c:1646  */
    {if (sensused)
			diag("sensitivity analysis not implemented for",
				" this block type");
		}
#line 2237 "parse1.c" /* yacc.c:1646  */
    break;

  case 13:
#line 161 "parse1.y" /* yacc.c:1646  */
    {inblock(SYM((yyvsp[0].qp))->name); replacstr((yyvsp[0].qp), "\n/*VERBATIM*/\n");
		if (!assert_threadsafe && !saw_verbatim_) {
 		 fprintf(stderr, "Notice: VERBATIM blocks are not thread safe\n");
		 saw_verbatim_ = 1;
		 vectorize = 0;
		}
		movelist((yyvsp[0].qp),intoken->prev, procfunc);}
#line 2249 "parse1.c" /* yacc.c:1646  */
    break;

  case 14:
#line 170 "parse1.y" /* yacc.c:1646  */
    {
		in_comment_ = 1;
		inblock(SYM((yyvsp[0].qp))->name); deltokens((yyvsp[0].qp), intoken->prev);
		in_comment_ = 0;
		}
#line 2259 "parse1.c" /* yacc.c:1646  */
    break;

  case 16:
#line 177 "parse1.y" /* yacc.c:1646  */
    {include_file((yyvsp[0].qp));}
#line 2265 "parse1.c" /* yacc.c:1646  */
    break;

  case 17:
#line 180 "parse1.y" /* yacc.c:1646  */
    {if (modelline == NULL) modelline = (yyvsp[0].str);
			deltokens((yyvsp[-1].qp), intoken->prev);}
#line 2272 "parse1.c" /* yacc.c:1646  */
    break;

  case 18:
#line 183 "parse1.y" /* yacc.c:1646  */
    {(yyval.str) = inputline();}
#line 2278 "parse1.c" /* yacc.c:1646  */
    break;

  case 19:
#line 188 "parse1.y" /* yacc.c:1646  */
    { Symbol *sp = SYM((yyvsp[-1].qp));
	 if (sp->subtype)
		diag(sp->name, " used before DEFINEed");
	 sp->u.str = STR((yyvsp[0].qp));
	 sp->type = DEFINEDVAR;
	 deltokens((yyvsp[-2].qp), (yyvsp[0].qp));}
#line 2289 "parse1.c" /* yacc.c:1646  */
    break;

  case 20:
#line 194 "parse1.y" /* yacc.c:1646  */
    {myerr("syntax: DEFINE name integer");}
#line 2295 "parse1.c" /* yacc.c:1646  */
    break;

  case 21:
#line 197 "parse1.y" /* yacc.c:1646  */
    { Symbol *checklocal();
		  SYM((yyvsp[0].qp)) = checklocal(SYM((yyvsp[0].qp)));  /* it was a bug
			when this was done to the lookahead token in lex */
		}
#line 2304 "parse1.c" /* yacc.c:1646  */
    break;

  case 31:
#line 205 "parse1.y" /* yacc.c:1646  */
    {deltokens((yyvsp[-3].qp), (yyvsp[0].qp));}
#line 2310 "parse1.c" /* yacc.c:1646  */
    break;

  case 33:
#line 209 "parse1.y" /* yacc.c:1646  */
    { explicit_decl(model_level, (yyvsp[0].qp));}
#line 2316 "parse1.c" /* yacc.c:1646  */
    break;

  case 34:
#line 215 "parse1.y" /* yacc.c:1646  */
    {parminstall(SYM((yyvsp[-4].qp)), STR((yyvsp[-2].qp)), (yyvsp[-1].str), (yyvsp[0].str));}
#line 2322 "parse1.c" /* yacc.c:1646  */
    break;

  case 35:
#line 217 "parse1.y" /* yacc.c:1646  */
    {parminstall(SYM((yyvsp[-2].qp)), "0", (yyvsp[-1].str), (yyvsp[0].str));}
#line 2328 "parse1.c" /* yacc.c:1646  */
    break;

  case 36:
#line 219 "parse1.y" /* yacc.c:1646  */
    { int i = atoi(STR((yyvsp[-3].qp)));
		  if (i < 1) diag("Array index must be > 0", (char*)0);
		  parm_array_install(SYM((yyvsp[-5].qp)), "0", (yyvsp[-1].str), (yyvsp[0].str), i);
		}
#line 2337 "parse1.c" /* yacc.c:1646  */
    break;

  case 37:
#line 223 "parse1.y" /* yacc.c:1646  */
    {diag("name = number", (char *)0);}
#line 2343 "parse1.c" /* yacc.c:1646  */
    break;

  case 38:
#line 225 "parse1.y" /* yacc.c:1646  */
    {(yyval.str) = stralloc("", (char *)0);}
#line 2349 "parse1.c" /* yacc.c:1646  */
    break;

  case 40:
#line 228 "parse1.y" /* yacc.c:1646  */
    {(yyval.str) = inputtopar();}
#line 2355 "parse1.c" /* yacc.c:1646  */
    break;

  case 41:
#line 230 "parse1.y" /* yacc.c:1646  */
    {(yyval.str) = (yyvsp[-1].str); delete((yyvsp[-2].qp)); delete((yyvsp[0].qp));}
#line 2361 "parse1.c" /* yacc.c:1646  */
    break;

  case 42:
#line 232 "parse1.y" /* yacc.c:1646  */
    {replacstr((yyvsp[0].qp), "");}
#line 2367 "parse1.c" /* yacc.c:1646  */
    break;

  case 43:
#line 233 "parse1.y" /* yacc.c:1646  */
    {replacstr((yyvsp[0].qp), "");}
#line 2373 "parse1.c" /* yacc.c:1646  */
    break;

  case 44:
#line 236 "parse1.y" /* yacc.c:1646  */
    {(yyval.str) = stralloc("", (char*)0);}
#line 2379 "parse1.c" /* yacc.c:1646  */
    break;

  case 45:
#line 238 "parse1.y" /* yacc.c:1646  */
    {
		 Sprintf(buf, "%s %s", STR((yyvsp[-3].qp)), STR((yyvsp[-1].qp)));
		 (yyval.str) = stralloc(buf, (char*)0);
		}
#line 2388 "parse1.c" /* yacc.c:1646  */
    break;

  case 46:
#line 243 "parse1.y" /* yacc.c:1646  */
    {deltokens((yyvsp[-3].qp), (yyvsp[0].qp));}
#line 2394 "parse1.c" /* yacc.c:1646  */
    break;

  case 48:
#line 247 "parse1.y" /* yacc.c:1646  */
    { explicit_decl(model_level, (yyvsp[0].qp)); }
#line 2400 "parse1.c" /* yacc.c:1646  */
    break;

  case 49:
#line 251 "parse1.y" /* yacc.c:1646  */
    {steppedinstall(SYM((yyvsp[-3].qp)), (yyvsp[-1].qp), lastok, (yyvsp[0].str));}
#line 2406 "parse1.c" /* yacc.c:1646  */
    break;

  case 54:
#line 259 "parse1.y" /* yacc.c:1646  */
    {lastok = (yyvsp[0].qp);}
#line 2412 "parse1.c" /* yacc.c:1646  */
    break;

  case 55:
#line 262 "parse1.y" /* yacc.c:1646  */
    { Sprintf(buf, "-%s", STR((yyvsp[0].qp)));
		 STR((yyvsp[0].qp)) = stralloc(buf, STR((yyvsp[0].qp))); (yyval.qp) = (yyvsp[0].qp);
		delete((yyvsp[-1].qp)); lastok = (yyvsp[0].qp);
		}
#line 2421 "parse1.c" /* yacc.c:1646  */
    break;

  case 59:
#line 270 "parse1.y" /* yacc.c:1646  */
    {replacstr((yyvsp[0].qp), SYM((yyvsp[0].qp))->u.str);}
#line 2427 "parse1.c" /* yacc.c:1646  */
    break;

  case 60:
#line 272 "parse1.y" /* yacc.c:1646  */
    {lastok = (yyvsp[0].qp);}
#line 2433 "parse1.c" /* yacc.c:1646  */
    break;

  case 61:
#line 274 "parse1.y" /* yacc.c:1646  */
    {Sprintf(buf, "%s.0", STR((yyvsp[0].qp)));
		STR((yyvsp[0].qp)) = stralloc(buf, STR((yyvsp[0].qp)));
		lastok = (yyvsp[0].qp);
		}
#line 2442 "parse1.c" /* yacc.c:1646  */
    break;

  case 62:
#line 279 "parse1.y" /* yacc.c:1646  */
    {deltokens((yyvsp[-3].qp), (yyvsp[0].qp));}
#line 2448 "parse1.c" /* yacc.c:1646  */
    break;

  case 64:
#line 283 "parse1.y" /* yacc.c:1646  */
    { explicit_decl(model_level, (yyvsp[0].qp)); }
#line 2454 "parse1.c" /* yacc.c:1646  */
    break;

  case 65:
#line 284 "parse1.y" /* yacc.c:1646  */
    {scopindep = 1;}
#line 2460 "parse1.c" /* yacc.c:1646  */
    break;

  case 66:
#line 285 "parse1.y" /* yacc.c:1646  */
    { explicit_decl(model_level, (yyvsp[0].qp));
		  scopindep = 0;
		}
#line 2468 "parse1.c" /* yacc.c:1646  */
    break;

  case 67:
#line 291 "parse1.y" /* yacc.c:1646  */
    {indepinstall(SYM((yyvsp[-8].qp)), STR((yyvsp[-6].qp)),
		 STR((yyvsp[-4].qp)), STR((yyvsp[-2].qp)), (yyvsp[-1].qp), (yyvsp[0].str), scopindep);
		}
#line 2476 "parse1.c" /* yacc.c:1646  */
    break;

  case 68:
#line 294 "parse1.y" /* yacc.c:1646  */
    {diag("name FROM number TO number WITH integer\n", (char *)0);}
#line 2482 "parse1.c" /* yacc.c:1646  */
    break;

  case 70:
#line 298 "parse1.y" /* yacc.c:1646  */
    {stateblock = 0;}
#line 2488 "parse1.c" /* yacc.c:1646  */
    break;

  case 71:
#line 298 "parse1.y" /* yacc.c:1646  */
    {deltokens((yyvsp[-4].qp), (yyvsp[0].qp));}
#line 2494 "parse1.c" /* yacc.c:1646  */
    break;

  case 73:
#line 302 "parse1.y" /* yacc.c:1646  */
    { explicit_decl(model_level, (yyvsp[0].qp));}
#line 2500 "parse1.c" /* yacc.c:1646  */
    break;

  case 74:
#line 306 "parse1.y" /* yacc.c:1646  */
    {depinstall(stateblock, SYM((yyvsp[-3].qp)), 0, "0", "1", (yyvsp[-1].str), (yyvsp[-2].qp), 1, (yyvsp[0].str));
		 }
#line 2507 "parse1.c" /* yacc.c:1646  */
    break;

  case 75:
#line 309 "parse1.y" /* yacc.c:1646  */
    {int i = atoi(STR((yyvsp[-4].qp)));
		 if (i < 1) diag("Array index must be > 0", (char *)0);
		 depinstall(stateblock, SYM((yyvsp[-6].qp)), i,
			 "0", "1", (yyvsp[-1].str), (yyvsp[-2].qp), 1, (yyvsp[0].str));
		}
#line 2517 "parse1.c" /* yacc.c:1646  */
    break;

  case 76:
#line 315 "parse1.y" /* yacc.c:1646  */
    {depinstall(stateblock, SYM((yyvsp[-7].qp)), 0, STR((yyvsp[-5].qp)),
		 STR((yyvsp[-3].qp)), (yyvsp[-1].str), (yyvsp[-2].qp), 1, (yyvsp[0].str));
		}
#line 2525 "parse1.c" /* yacc.c:1646  */
    break;

  case 77:
#line 319 "parse1.y" /* yacc.c:1646  */
    {int i = atoi(STR((yyvsp[-8].qp)));
		 if (i < 1) diag("Array index must be > 0", (char *)0);
		 depinstall(stateblock, SYM((yyvsp[-10].qp)), i,
		 STR((yyvsp[-5].qp)), STR((yyvsp[-3].qp)), (yyvsp[-1].str), (yyvsp[-2].qp), 1, (yyvsp[0].str));
		}
#line 2535 "parse1.c" /* yacc.c:1646  */
    break;

  case 78:
#line 324 "parse1.y" /* yacc.c:1646  */
    {
diag("name FROM number TO number START number\n",
"FROM...TO and START are optional, name can be name[integer]\n");}
#line 2543 "parse1.c" /* yacc.c:1646  */
    break;

  case 79:
#line 328 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = ITEM0;}
#line 2549 "parse1.c" /* yacc.c:1646  */
    break;

  case 80:
#line 329 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = (yyvsp[0].qp);}
#line 2555 "parse1.c" /* yacc.c:1646  */
    break;

  case 81:
#line 332 "parse1.y" /* yacc.c:1646  */
    { (yyval.str) = stralloc("", (char*)0);}
#line 2561 "parse1.c" /* yacc.c:1646  */
    break;

  case 82:
#line 334 "parse1.y" /* yacc.c:1646  */
    {
			(yyval.str) = stralloc(STR((yyvsp[-1].qp)), (char*)0);
		}
#line 2569 "parse1.c" /* yacc.c:1646  */
    break;

  case 83:
#line 338 "parse1.y" /* yacc.c:1646  */
    {stateblock = 1;}
#line 2575 "parse1.c" /* yacc.c:1646  */
    break;

  case 84:
#line 338 "parse1.y" /* yacc.c:1646  */
    {deltokens((yyvsp[-4].qp), (yyvsp[0].qp));}
#line 2581 "parse1.c" /* yacc.c:1646  */
    break;

  case 85:
#line 342 "parse1.y" /* yacc.c:1646  */
    { Item *q;
		 q = linsertsym(plotlist, SYM((yyvsp[-1].qp))); Insertstr(q->next, (yyvsp[0].str)); }
#line 2588 "parse1.c" /* yacc.c:1646  */
    break;

  case 86:
#line 345 "parse1.y" /* yacc.c:1646  */
    { diag("PLOT namelist VS name", (char *)0);}
#line 2594 "parse1.c" /* yacc.c:1646  */
    break;

  case 87:
#line 348 "parse1.y" /* yacc.c:1646  */
    { if (plotlist->next == plotlist) {
			Lappendsym(plotlist, SYM((yyvsp[-1].qp)));
			Lappendstr(plotlist, (yyvsp[0].str));
		  }else{
			diag("Only one PLOT declaration allowed", (char *)0);
		  }
		}
#line 2606 "parse1.c" /* yacc.c:1646  */
    break;

  case 88:
#line 356 "parse1.y" /* yacc.c:1646  */
    { Lappendsym(plotlist, SYM((yyvsp[-1].qp))); Lappendstr(plotlist, (yyvsp[0].str));}
#line 2612 "parse1.c" /* yacc.c:1646  */
    break;

  case 89:
#line 359 "parse1.y" /* yacc.c:1646  */
    { (yyval.str) = "-1";}
#line 2618 "parse1.c" /* yacc.c:1646  */
    break;

  case 90:
#line 361 "parse1.y" /* yacc.c:1646  */
    { (yyval.str) = STR((yyvsp[-1].qp));}
#line 2624 "parse1.c" /* yacc.c:1646  */
    break;

  case 91:
#line 363 "parse1.y" /* yacc.c:1646  */
    {blocktype = INITIAL1;}
#line 2630 "parse1.c" /* yacc.c:1646  */
    break;

  case 93:
#line 365 "parse1.y" /* yacc.c:1646  */
    {lexcontext = NONLINEAR; blocktype = DERIVATIVE;}
#line 2636 "parse1.c" /* yacc.c:1646  */
    break;

  case 95:
#line 366 "parse1.y" /* yacc.c:1646  */
    {blocktype = BREAKPOINT;}
#line 2642 "parse1.c" /* yacc.c:1646  */
    break;

  case 97:
#line 367 "parse1.y" /* yacc.c:1646  */
    {lexcontext = blocktype = LINEAR;}
#line 2648 "parse1.c" /* yacc.c:1646  */
    break;

  case 99:
#line 368 "parse1.y" /* yacc.c:1646  */
    {lexcontext = blocktype = NONLINEAR;}
#line 2654 "parse1.c" /* yacc.c:1646  */
    break;

  case 101:
#line 369 "parse1.y" /* yacc.c:1646  */
    {blocktype = FUNCTION1;}
#line 2660 "parse1.c" /* yacc.c:1646  */
    break;

  case 103:
#line 370 "parse1.y" /* yacc.c:1646  */
    {blocktype = PROCEDURE;}
#line 2666 "parse1.c" /* yacc.c:1646  */
    break;

  case 105:
#line 371 "parse1.y" /* yacc.c:1646  */
    {blocktype = NETRECEIVE;}
#line 2672 "parse1.c" /* yacc.c:1646  */
    break;

  case 107:
#line 372 "parse1.y" /* yacc.c:1646  */
    {blocktype = TERMINAL;}
#line 2678 "parse1.c" /* yacc.c:1646  */
    break;

  case 109:
#line 373 "parse1.y" /* yacc.c:1646  */
    {blocktype = DISCRETE;}
#line 2684 "parse1.c" /* yacc.c:1646  */
    break;

  case 111:
#line 374 "parse1.y" /* yacc.c:1646  */
    {lexcontext = blocktype = PARTIAL;}
#line 2690 "parse1.c" /* yacc.c:1646  */
    break;

  case 113:
#line 375 "parse1.y" /* yacc.c:1646  */
    {lexcontext = blocktype = KINETIC;ostmt_start();}
#line 2696 "parse1.c" /* yacc.c:1646  */
    break;

  case 114:
#line 375 "parse1.y" /* yacc.c:1646  */
    {see_ostmt();}
#line 2702 "parse1.c" /* yacc.c:1646  */
    break;

  case 115:
#line 376 "parse1.y" /* yacc.c:1646  */
    {blocktype = CONSTRUCTOR;}
#line 2708 "parse1.c" /* yacc.c:1646  */
    break;

  case 117:
#line 377 "parse1.y" /* yacc.c:1646  */
    {blocktype = DESTRUCTOR;}
#line 2714 "parse1.c" /* yacc.c:1646  */
    break;

  case 119:
#line 378 "parse1.y" /* yacc.c:1646  */
    {blocktype = FUNCTION_TABLE;}
#line 2720 "parse1.c" /* yacc.c:1646  */
    break;

  case 121:
#line 379 "parse1.y" /* yacc.c:1646  */
    {blocktype = BEFORE;}
#line 2726 "parse1.c" /* yacc.c:1646  */
    break;

  case 123:
#line 380 "parse1.y" /* yacc.c:1646  */
    {blocktype = AFTER;}
#line 2732 "parse1.c" /* yacc.c:1646  */
    break;

  case 125:
#line 383 "parse1.y" /* yacc.c:1646  */
    {movelist((yyvsp[-1].qp), (yyvsp[0].qp), initfunc);}
#line 2738 "parse1.c" /* yacc.c:1646  */
    break;

  case 126:
#line 386 "parse1.y" /* yacc.c:1646  */
    {movelist((yyvsp[-1].qp), (yyvsp[0].qp), constructorfunc);}
#line 2744 "parse1.c" /* yacc.c:1646  */
    break;

  case 127:
#line 389 "parse1.y" /* yacc.c:1646  */
    {movelist((yyvsp[-1].qp), (yyvsp[0].qp), destructorfunc);}
#line 2750 "parse1.c" /* yacc.c:1646  */
    break;

  case 128:
#line 391 "parse1.y" /* yacc.c:1646  */
    {pushlocal();}
#line 2756 "parse1.c" /* yacc.c:1646  */
    break;

  case 129:
#line 391 "parse1.y" /* yacc.c:1646  */
    {poplocal();}
#line 2762 "parse1.c" /* yacc.c:1646  */
    break;

  case 130:
#line 393 "parse1.y" /* yacc.c:1646  */
    {poplocal();}
#line 2768 "parse1.c" /* yacc.c:1646  */
    break;

  case 131:
#line 396 "parse1.y" /* yacc.c:1646  */
    {
		  if (toplocal1_) {freelist(&toplocal1_);}
		  toplocal1_ = newlist();
		}
#line 2777 "parse1.c" /* yacc.c:1646  */
    break;

  case 132:
#line 401 "parse1.y" /* yacc.c:1646  */
    { replacstr((yyvsp[-2].qp), "double");
		  Insertstr(lastok->next, ";\n");
		}
#line 2785 "parse1.c" /* yacc.c:1646  */
    break;

  case 133:
#line 404 "parse1.y" /* yacc.c:1646  */
    {myerr("Illegal LOCAL declaration");}
#line 2791 "parse1.c" /* yacc.c:1646  */
    break;

  case 134:
#line 409 "parse1.y" /* yacc.c:1646  */
    {int a2; pushlocal();
		 a2 = SYM((yyvsp[-1].qp))->assigned_to_; /* in case marked threadsafe */
		 SYM((yyvsp[-1].qp)) = copylocal(SYM((yyvsp[-1].qp)));
		 SYM((yyvsp[-1].qp))->assigned_to_ = a2;
		 lappendsym(toplocal1_, SYM((yyvsp[-1].qp)));
		 if ((yyvsp[0].i)) {
			SYM((yyvsp[-1].qp))->araydim = (yyvsp[0].i);
			SYM((yyvsp[-1].qp))->subtype |= ARRAY;
		 }else{
			lastok = (yyvsp[-1].qp);
		 }
		}
#line 2808 "parse1.c" /* yacc.c:1646  */
    break;

  case 135:
#line 422 "parse1.y" /* yacc.c:1646  */
    {
		 int a2 = SYM((yyvsp[-1].qp))->assigned_to_; /* in case marked threadsafe */
		 SYM((yyvsp[-1].qp)) = copylocal(SYM((yyvsp[-1].qp)));
		 SYM((yyvsp[-1].qp))->assigned_to_ = a2;
		 lappendsym(toplocal1_, SYM((yyvsp[-1].qp)));
		 if ((yyvsp[0].i)) {
			SYM((yyvsp[-1].qp))->araydim = (yyvsp[0].i);
			SYM((yyvsp[-1].qp))->subtype |= ARRAY;
		 }else{
			lastok = (yyvsp[-1].qp);
		 }
		}
#line 2825 "parse1.c" /* yacc.c:1646  */
    break;

  case 136:
#line 436 "parse1.y" /* yacc.c:1646  */
    {(yyval.i) = 0;}
#line 2831 "parse1.c" /* yacc.c:1646  */
    break;

  case 137:
#line 438 "parse1.y" /* yacc.c:1646  */
    {(yyval.i) = atoi(STR((yyvsp[-1].qp))); lastok = (yyvsp[0].qp);}
#line 2837 "parse1.c" /* yacc.c:1646  */
    break;

  case 139:
#line 441 "parse1.y" /* yacc.c:1646  */
    {if (blocktype == KINETIC) see_ostmt();}
#line 2843 "parse1.c" /* yacc.c:1646  */
    break;

  case 140:
#line 442 "parse1.y" /* yacc.c:1646  */
    {if (blocktype == KINETIC) see_ostmt();}
#line 2849 "parse1.c" /* yacc.c:1646  */
    break;

  case 141:
#line 443 "parse1.y" /* yacc.c:1646  */
    {if (blocktype == KINETIC) { see_astmt((yyvsp[0].qp), astmt_end_); }}
#line 2855 "parse1.c" /* yacc.c:1646  */
    break;

  case 148:
#line 452 "parse1.y" /* yacc.c:1646  */
    {inblock(SYM((yyvsp[0].qp))->name);
		replacstr((yyvsp[0].qp), "\n/*VERBATIM*/\n");
		if (!assert_threadsafe && !saw_verbatim_) {
 		 fprintf(stderr, "Notice: VERBATIM blocks are not thread safe\n");
		 saw_verbatim_ = 1;
		 vectorize = 0;
		}
		}
#line 2868 "parse1.c" /* yacc.c:1646  */
    break;

  case 149:
#line 462 "parse1.y" /* yacc.c:1646  */
    {inblock(SYM((yyvsp[0].qp))->name); deltokens((yyvsp[0].qp), intoken->prev);}
#line 2874 "parse1.c" /* yacc.c:1646  */
    break;

  case 151:
#line 464 "parse1.y" /* yacc.c:1646  */
    {check_block(KINETIC, blocktype, "COMPARTMENT");}
#line 2880 "parse1.c" /* yacc.c:1646  */
    break;

  case 152:
#line 465 "parse1.y" /* yacc.c:1646  */
    {check_block(KINETIC, blocktype, "LONGDIFUS");}
#line 2886 "parse1.c" /* yacc.c:1646  */
    break;

  case 153:
#line 466 "parse1.y" /* yacc.c:1646  */
    {check_block(KINETIC, blocktype, "CONSERVE");}
#line 2892 "parse1.c" /* yacc.c:1646  */
    break;

  case 156:
#line 470 "parse1.y" /* yacc.c:1646  */
    { replacstr((yyvsp[0].qp), " _reset = 1;\n"); }
#line 2898 "parse1.c" /* yacc.c:1646  */
    break;

  case 159:
#line 474 "parse1.y" /* yacc.c:1646  */
    {if (blocktype !=FUNCTION1 && blocktype != PROCEDURE) {
			diag("TABLE valid only for FUNCTION or PROCEDURE", (char *)0);
		}}
#line 2906 "parse1.c" /* yacc.c:1646  */
    break;

  case 164:
#line 481 "parse1.y" /* yacc.c:1646  */
    { nrnmutex(1,(yyvsp[0].qp)); }
#line 2912 "parse1.c" /* yacc.c:1646  */
    break;

  case 165:
#line 482 "parse1.y" /* yacc.c:1646  */
    { nrnmutex(0,(yyvsp[0].qp)); }
#line 2918 "parse1.c" /* yacc.c:1646  */
    break;

  case 166:
#line 484 "parse1.y" /* yacc.c:1646  */
    {myerr("Illegal statement");}
#line 2924 "parse1.c" /* yacc.c:1646  */
    break;

  case 167:
#line 488 "parse1.y" /* yacc.c:1646  */
    {astmt_end_ = insertsym(lastok->next, semi);}
#line 2930 "parse1.c" /* yacc.c:1646  */
    break;

  case 168:
#line 489 "parse1.y" /* yacc.c:1646  */
    {protect_ = 1;}
#line 2936 "parse1.c" /* yacc.c:1646  */
    break;

  case 169:
#line 490 "parse1.y" /* yacc.c:1646  */
    {protect_ = 0; astmt_end_ = insertsym(lastok->next, semi);
			astmt_end_ = protect_astmt((yyvsp[-2].qp), astmt_end_);
		}
#line 2944 "parse1.c" /* yacc.c:1646  */
    break;

  case 170:
#line 493 "parse1.y" /* yacc.c:1646  */
    {inequation = 1;}
#line 2950 "parse1.c" /* yacc.c:1646  */
    break;

  case 171:
#line 493 "parse1.y" /* yacc.c:1646  */
    {
		(yyval.qp) = (yyvsp[0].qp); inequation = 0;
		astmt_end_ = insertstr(lastok->next->next->next, "");}
#line 2958 "parse1.c" /* yacc.c:1646  */
    break;

  case 172:
#line 497 "parse1.y" /* yacc.c:1646  */
    {astmt_end_ = insertsym(lastok->next, semi);}
#line 2964 "parse1.c" /* yacc.c:1646  */
    break;

  case 173:
#line 502 "parse1.y" /* yacc.c:1646  */
    { if (blocktype == DERIVATIVE && SYM((yyvsp[-2].qp))->type == PRIME) {
			/* put Dvar in a derivative used list */
			deriv_used(SYM((yyvsp[-2].qp)), (yyvsp[0].qp), lastok);
			}
		  if (blocktype == DERIVATIVE && (SYM((yyvsp[-2].qp))->subtype & STAT)) {
			Fprintf(stderr,
"WARNING: %s (a STATE) is assigned a value\
 in a DERIVATIVE block.\n Multistep integrators (such as Runge) may not\
 work correctly.\n", SYM((yyvsp[-2].qp))->name);
		  }
		  if (blocktype == DISCRETE && SYM((yyvsp[-2].qp))->type == NAME
			&& (SYM((yyvsp[-2].qp))->subtype & STAT)) {
			SYM((yyvsp[-2].qp))->used++;
			}
#if NOCMODL
		  nrn_var_assigned(SYM((yyvsp[-2].qp)));
#endif
		}
#line 2987 "parse1.c" /* yacc.c:1646  */
    break;

  case 174:
#line 522 "parse1.y" /* yacc.c:1646  */
    { inequation = 0;
		Insertstr((yyvsp[-2].qp), " -(");
		replacstr((yyvsp[-1].qp), ") + ");
		if (nstate == 0)
{yyerror("previous equation contains no state variables"); YYERROR;}
		 eqnqueue((yyvsp[-3].qp));
		}
#line 2999 "parse1.c" /* yacc.c:1646  */
    break;

  case 175:
#line 530 "parse1.y" /* yacc.c:1646  */
    { inequation = 0;
		delete((yyvsp[-1].qp));
		if (nstate == 0)
{yyerror("previous equation contains no state variables"); YYERROR;}
		}
#line 3009 "parse1.c" /* yacc.c:1646  */
    break;

  case 176:
#line 538 "parse1.y" /* yacc.c:1646  */
    {lastok = (yyvsp[0].qp);
		if (!extdef2){SYM((yyvsp[0].qp))->usage |= DEP;}
		if (SYM((yyvsp[0].qp))->subtype & ARRAY && !extdef2)
			{myerr("variable needs an index");}
		if (inequation && (SYM((yyvsp[0].qp))->subtype & STAT) && in_solvefor(SYM((yyvsp[0].qp)))) {
			SYM((yyvsp[0].qp))->used++;
			nstate++; pstate++; tstate++;
		}
		if (SYM((yyvsp[0].qp))->subtype & INTGER) {
			lastok = insertstr((yyvsp[0].qp)->next, ")");
			(yyvsp[0].qp) = insertstr((yyvsp[0].qp), "((double)");
		}
		}
#line 3027 "parse1.c" /* yacc.c:1646  */
    break;

  case 177:
#line 552 "parse1.y" /* yacc.c:1646  */
    {lastok = (yyvsp[0].qp);
		if (SYM((yyvsp[-3].qp))->type == PRIME) {
			usederivstatearray = 1;
		}
		SYM((yyvsp[-3].qp))->usage |= DEP;
		if ((SYM((yyvsp[-3].qp))->subtype & ARRAY) == 0)
			{myerr("variable is not an array");}
		if (inequation && (SYM((yyvsp[-3].qp))->subtype & STAT) && in_solvefor(SYM((yyvsp[-3].qp)))) {
			SYM((yyvsp[-3].qp))->used++;
			nstate++; pstate++; tstate++;
		}
		  if (forallindex) {
			if (forallindex == -1) {
				forallindex = SYM((yyvsp[-3].qp))->araydim;
			}
			if (forallindex != SYM((yyvsp[-3].qp))->araydim) {
Sprintf(buf, "%s dimension not same as other dimensions used in FORALL statement",
SYM((yyvsp[-3].qp))->name);
				diag(buf, (char *)0);
			}
		  }
		}
#line 3054 "parse1.c" /* yacc.c:1646  */
    break;

  case 178:
#line 575 "parse1.y" /* yacc.c:1646  */
    {lastok = (yyvsp[0].qp);
		SYM((yyvsp[-2].qp))->usage |= DEP; disc_var_seen((yyvsp[-2].qp), (yyvsp[-1].qp), (yyvsp[0].qp), 0);}
#line 3061 "parse1.c" /* yacc.c:1646  */
    break;

  case 179:
#line 578 "parse1.y" /* yacc.c:1646  */
    {lastok = (yyvsp[0].qp);
		SYM((yyvsp[-5].qp))->usage |= DEP; disc_var_seen((yyvsp[-5].qp), (yyvsp[-4].qp), (yyvsp[-3].qp), ARRAY);}
#line 3068 "parse1.c" /* yacc.c:1646  */
    break;

  case 180:
#line 582 "parse1.y" /* yacc.c:1646  */
    {lastok = (yyvsp[0].qp);
		 SYM((yyvsp[0].qp))->usage |= DEP;
		 if (!(SYM((yyvsp[0].qp))->subtype & INTGER)) {
		 	lastok = insertstr((yyvsp[0].qp)->next, ")");
			(yyvsp[0].qp) = insertstr((yyvsp[0].qp), "((int)");
		 }
		}
#line 3080 "parse1.c" /* yacc.c:1646  */
    break;

  case 181:
#line 589 "parse1.y" /* yacc.c:1646  */
    { lastok = (yyvsp[0].qp);}
#line 3086 "parse1.c" /* yacc.c:1646  */
    break;

  case 182:
#line 590 "parse1.y" /* yacc.c:1646  */
    { lastok = (yyvsp[0].qp);}
#line 3092 "parse1.c" /* yacc.c:1646  */
    break;

  case 187:
#line 595 "parse1.y" /* yacc.c:1646  */
    {myerr("Illegal integer expression");}
#line 3098 "parse1.c" /* yacc.c:1646  */
    break;

  case 191:
#line 600 "parse1.y" /* yacc.c:1646  */
    {lastok = (yyvsp[0].qp);}
#line 3104 "parse1.c" /* yacc.c:1646  */
    break;

  case 196:
#line 606 "parse1.y" /* yacc.c:1646  */
    { (yyval.qp) = insertstr((yyvsp[-2].qp), "pow("); replacstr((yyvsp[-1].qp), ",");
			lastok = insertstr(lastok->next, ")"); }
#line 3111 "parse1.c" /* yacc.c:1646  */
    break;

  case 197:
#line 608 "parse1.y" /* yacc.c:1646  */
    {replacstr((yyvsp[-1].qp), " ||");}
#line 3117 "parse1.c" /* yacc.c:1646  */
    break;

  case 198:
#line 609 "parse1.y" /* yacc.c:1646  */
    {replacstr((yyvsp[-1].qp), " &&");}
#line 3123 "parse1.c" /* yacc.c:1646  */
    break;

  case 203:
#line 614 "parse1.y" /* yacc.c:1646  */
    {replacstr((yyvsp[-1].qp), " ==");}
#line 3129 "parse1.c" /* yacc.c:1646  */
    break;

  case 204:
#line 615 "parse1.y" /* yacc.c:1646  */
    {replacstr((yyvsp[-1].qp), " !=");}
#line 3135 "parse1.c" /* yacc.c:1646  */
    break;

  case 205:
#line 616 "parse1.y" /* yacc.c:1646  */
    {replacstr((yyvsp[-1].qp), " !");}
#line 3141 "parse1.c" /* yacc.c:1646  */
    break;

  case 207:
#line 618 "parse1.y" /* yacc.c:1646  */
    {myerr("Illegal expression");}
#line 3147 "parse1.c" /* yacc.c:1646  */
    break;

  case 208:
#line 620 "parse1.y" /* yacc.c:1646  */
    {inequation = 1; nstate = 0;}
#line 3153 "parse1.c" /* yacc.c:1646  */
    break;

  case 209:
#line 624 "parse1.y" /* yacc.c:1646  */
    {inequation = 1; nstate = 0;
		pstate = 0; tstate = 0; init_lineq((yyvsp[0].qp)); leftside = -1;}
#line 3160 "parse1.c" /* yacc.c:1646  */
    break;

  case 210:
#line 627 "parse1.y" /* yacc.c:1646  */
    {leftside = 1;}
#line 3166 "parse1.c" /* yacc.c:1646  */
    break;

  case 211:
#line 631 "parse1.y" /* yacc.c:1646  */
    {linterm((yyvsp[0].qp), lastok, pstate, leftside); pstate = 0;}
#line 3172 "parse1.c" /* yacc.c:1646  */
    break;

  case 212:
#line 633 "parse1.y" /* yacc.c:1646  */
    {delete((yyvsp[-1].qp));
		linterm((yyvsp[0].qp), lastok, pstate, -leftside); pstate = 0;}
#line 3179 "parse1.c" /* yacc.c:1646  */
    break;

  case 213:
#line 636 "parse1.y" /* yacc.c:1646  */
    {delete((yyvsp[-1].qp));
		linterm((yyvsp[0].qp), lastok, pstate, leftside); pstate = 0;}
#line 3186 "parse1.c" /* yacc.c:1646  */
    break;

  case 214:
#line 639 "parse1.y" /* yacc.c:1646  */
    {delete((yyvsp[-1].qp));
		linterm((yyvsp[0].qp), lastok, pstate, -leftside); pstate = 0;}
#line 3193 "parse1.c" /* yacc.c:1646  */
    break;

  case 215:
#line 643 "parse1.y" /* yacc.c:1646  */
    { if (tstate == 1) {
			lin_state_term((yyvsp[0].qp), lastok);
		  }
		  tstate = 0;
		}
#line 3203 "parse1.c" /* yacc.c:1646  */
    break;

  case 216:
#line 649 "parse1.y" /* yacc.c:1646  */
    { if (tstate == 1) {
			lin_state_term((yyvsp[0].qp), lastok);
		  }
		  tstate = 0;
		}
#line 3213 "parse1.c" /* yacc.c:1646  */
    break;

  case 217:
#line 655 "parse1.y" /* yacc.c:1646  */
    { if (tstate) {
			diag("state ocurs in denominator", (char *)0);
		  }
		}
#line 3222 "parse1.c" /* yacc.c:1646  */
    break;

  case 220:
#line 662 "parse1.y" /* yacc.c:1646  */
    {if (tstate) diag("states not permitted in function calls",
			(char *)0);}
#line 3229 "parse1.c" /* yacc.c:1646  */
    break;

  case 221:
#line 664 "parse1.y" /* yacc.c:1646  */
    { lastok = (yyvsp[0].qp);
			if (tstate) diag("states not permitted between ",
				"parentheses");}
#line 3237 "parse1.c" /* yacc.c:1646  */
    break;

  case 222:
#line 668 "parse1.y" /* yacc.c:1646  */
    {diag("Some operators are not permitted in linear\n",
"expressions unless the terms containing them are\nenclosed in parentheses");}
#line 3244 "parse1.c" /* yacc.c:1646  */
    break;

  case 223:
#line 672 "parse1.y" /* yacc.c:1646  */
    { if (SYM((yyvsp[-1].qp))->subtype & EXTDEF2) { extdef2 = 1;}}
#line 3250 "parse1.c" /* yacc.c:1646  */
    break;

  case 224:
#line 674 "parse1.y" /* yacc.c:1646  */
    {lastok = (yyvsp[0].qp); SYM((yyvsp[-4].qp))->usage |= FUNCT;
		 if (SYM((yyvsp[-4].qp))->subtype & EXTDEF2) { extdef2 = 0;}
		 if (SYM((yyvsp[-4].qp))->subtype & EXTDEF3) { add_reset_args((yyvsp[-3].qp));}
		 if (SYM((yyvsp[-4].qp))->subtype & EXTDEF4) { add_nrnthread_arg((yyvsp[-3].qp));}
		 if (SYM((yyvsp[-4].qp))->subtype & EXTDEF5) {
			if (!assert_threadsafe) {
fprintf(stderr, "Notice: %s is not thread safe\n", SYM((yyvsp[-4].qp))->name);
				vectorize = 0;
			}
		 }
#if VECTORIZE
		 vectorize_use_func((yyvsp[-4].qp),(yyvsp[-3].qp),(yyvsp[-1].qp),(yyvsp[0].qp),blocktype);
#endif
		}
#line 3269 "parse1.c" /* yacc.c:1646  */
    break;

  case 225:
#line 689 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = ITEM0;}
#line 3275 "parse1.c" /* yacc.c:1646  */
    break;

  case 230:
#line 695 "parse1.y" /* yacc.c:1646  */
    {pushlocal(); SYM((yyvsp[0].qp)) = copylocal(SYM((yyvsp[0].qp)));
			SYM((yyvsp[0].qp))->subtype |= INTGER;}
#line 3282 "parse1.c" /* yacc.c:1646  */
    break;

  case 231:
#line 699 "parse1.y" /* yacc.c:1646  */
    { replacstr((yyvsp[-9].qp), "{int ");
		poplocal();
		Insertstr((yyvsp[-6].qp), ";for (");
		Insertstr((yyvsp[-6].qp), SYM((yyvsp[-8].qp))->name);
		Insertstr((yyvsp[-4].qp), ";");
		Insertstr((yyvsp[-4].qp), SYM((yyvsp[-8].qp))->name);
		replacstr((yyvsp[-4].qp), "<=");
		if ((yyvsp[-2].qp)) {
			Insertstr((yyvsp[-2].qp), ";");
			Insertstr((yyvsp[-2].qp), SYM((yyvsp[-8].qp))->name);
			replacstr((yyvsp[-2].qp), "+=");
		} else {
			Insertstr((yyvsp[-1].qp), ";");
			Insertstr((yyvsp[-1].qp), SYM((yyvsp[-8].qp))->name);
			Insertstr((yyvsp[-1].qp), "++");
		}
		Insertstr((yyvsp[-1].qp), ")");
		Insertstr((yyvsp[0].qp), "}");
		}
#line 3306 "parse1.c" /* yacc.c:1646  */
    break;

  case 232:
#line 718 "parse1.y" /* yacc.c:1646  */
    {
myerr("FROM intvar = intexpr TO intexpr BY intexpr { statements }");}
#line 3313 "parse1.c" /* yacc.c:1646  */
    break;

  case 233:
#line 721 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = ITEM0;}
#line 3319 "parse1.c" /* yacc.c:1646  */
    break;

  case 235:
#line 724 "parse1.y" /* yacc.c:1646  */
    {pushlocal(); SYM((yyvsp[0].qp)) = copylocal(SYM((yyvsp[0].qp)));
			  SYM((yyvsp[0].qp))->subtype |= INTGER;
			  if (forallindex) {
diag("Nested FORALL statements not allowed", (char *)0);
			  }
			  forallindex = -1;
			}
#line 3331 "parse1.c" /* yacc.c:1646  */
    break;

  case 236:
#line 733 "parse1.y" /* yacc.c:1646  */
    { replacstr((yyvsp[-4].qp), "{int ");
		poplocal();
		if (forallindex == -1) {
diag("FORALL range is undefined since no arrays used", " within the statement");
		}
		Sprintf(buf, "; for (%s=0; %s<%d; %s++)", SYM((yyvsp[-3].qp))->name,
			SYM((yyvsp[-3].qp))->name, forallindex, SYM((yyvsp[-3].qp))->name);
		Insertstr((yyvsp[-1].qp), buf);
		Insertstr((yyvsp[0].qp), "}");
		}
#line 3346 "parse1.c" /* yacc.c:1646  */
    break;

  case 237:
#line 743 "parse1.y" /* yacc.c:1646  */
    {
myerr("FORALL intvar { statements }");}
#line 3353 "parse1.c" /* yacc.c:1646  */
    break;

  case 241:
#line 752 "parse1.y" /* yacc.c:1646  */
    {
#if VECTORIZE
			vectorize_if_else_stmt(blocktype);
#endif
		}
#line 3363 "parse1.c" /* yacc.c:1646  */
    break;

  case 243:
#line 760 "parse1.y" /* yacc.c:1646  */
    {
#if VECTORIZE
			vectorize_if_else_stmt(blocktype);
#endif
		}
#line 3373 "parse1.c" /* yacc.c:1646  */
    break;

  case 244:
#line 768 "parse1.y" /* yacc.c:1646  */
    {massagederiv((yyvsp[-3].qp), (yyvsp[-2].qp), (yyvsp[-1].qp), (yyvsp[0].qp), sensused); sensused = 0;}
#line 3379 "parse1.c" /* yacc.c:1646  */
    break;

  case 245:
#line 770 "parse1.y" /* yacc.c:1646  */
    {init_linblk((yyvsp[-1].qp));}
#line 3385 "parse1.c" /* yacc.c:1646  */
    break;

  case 246:
#line 772 "parse1.y" /* yacc.c:1646  */
    {massage_linblk((yyvsp[-5].qp), (yyvsp[-4].qp), (yyvsp[-1].qp), (yyvsp[0].qp), sensused);
		lexcontext = 0; sensused = 0;
		}
#line 3393 "parse1.c" /* yacc.c:1646  */
    break;

  case 247:
#line 778 "parse1.y" /* yacc.c:1646  */
    {massagenonlin((yyvsp[-4].qp), (yyvsp[-3].qp), (yyvsp[-1].qp), (yyvsp[0].qp), sensused);
		lexcontext = 0; sensused = 0;
		}
#line 3401 "parse1.c" /* yacc.c:1646  */
    break;

  case 248:
#line 784 "parse1.y" /* yacc.c:1646  */
    {massagediscblk((yyvsp[-3].qp), (yyvsp[-2].qp), (yyvsp[-1].qp), (yyvsp[0].qp));}
#line 3407 "parse1.c" /* yacc.c:1646  */
    break;

  case 249:
#line 788 "parse1.y" /* yacc.c:1646  */
    {massagepartial((yyvsp[-3].qp), (yyvsp[-2].qp), (yyvsp[-1].qp), (yyvsp[0].qp));
		lexcontext = 0;
		}
#line 3415 "parse1.c" /* yacc.c:1646  */
    break;

  case 250:
#line 791 "parse1.y" /* yacc.c:1646  */
    {
diag("within the PARTIAL block must occur an equation with the syntax ---\n",
"~ V' = F*DEL2(V) + G\n"); }
#line 3423 "parse1.c" /* yacc.c:1646  */
    break;

  case 251:
#line 796 "parse1.y" /* yacc.c:1646  */
    {partial_eqn((yyvsp[-9].qp), (yyvsp[-7].qp), (yyvsp[-3].qp), (yyvsp[0].qp));}
#line 3429 "parse1.c" /* yacc.c:1646  */
    break;

  case 252:
#line 798 "parse1.y" /* yacc.c:1646  */
    {partial_bndry(0, (yyvsp[-5].qp), (yyvsp[-3].qp), (yyvsp[0].qp), lastok);}
#line 3435 "parse1.c" /* yacc.c:1646  */
    break;

  case 253:
#line 800 "parse1.y" /* yacc.c:1646  */
    {partial_bndry(2, (yyvsp[-5].qp), (yyvsp[-3].qp), (yyvsp[0].qp), lastok);}
#line 3441 "parse1.c" /* yacc.c:1646  */
    break;

  case 256:
#line 805 "parse1.y" /* yacc.c:1646  */
    {Item *b1, *b2;
		Symbol* s = SYM((yyvsp[-4].qp));
		s->varnum = argcnt_;
		b1 = insertstr((yyvsp[-1].qp)->next, "{\n");
		b2 = insertstr(b1->next, "}\n");

#define GLOBFUNCT 1
#if GLOBFUNCT && NMODL
		replacstr((yyvsp[-5].qp), "\ndouble");
#else
		replacstr((yyvsp[-5].qp), "\nstatic double");
#endif
		defarg((yyvsp[-3].qp), (yyvsp[-1].qp));
		movelist((yyvsp[-5].qp), b2, procfunc);
		if (SYM((yyvsp[-4].qp))->subtype & FUNCT) {
			diag(SYM((yyvsp[-4].qp))->name, " declared as FUNCTION twice");
		}
		SYM((yyvsp[-4].qp))->subtype |= FUNCT;
		SYM((yyvsp[-4].qp))->usage |= FUNCT;
#if HMODL || NMODL
		hocfunc(s, (yyvsp[-3].qp), (yyvsp[-1].qp));
#endif
		function_table(s, (yyvsp[-3].qp), (yyvsp[-1].qp), b1, b2);
		poplocal();
		}
#line 3471 "parse1.c" /* yacc.c:1646  */
    break;

  case 257:
#line 832 "parse1.y" /* yacc.c:1646  */
    {IGNORE(copylocal(SYM((yyvsp[-4].qp))));}
#line 3477 "parse1.c" /* yacc.c:1646  */
    break;

  case 258:
#line 836 "parse1.y" /* yacc.c:1646  */
    { Symbol *s = SYM((yyvsp[-7].qp));
		s->varnum = argcnt_;
		table_massage(table_list, (yyvsp[-8].qp), (yyvsp[-7].qp), (yyvsp[-5].lp)); freelist(&table_list);
#if GLOBFUNCT && NMODL
		replacstr((yyvsp[-8].qp), "\ndouble");
#else
		replacstr((yyvsp[-8].qp), "\nstatic double");
#endif
		defarg((yyvsp[-6].qp), (yyvsp[-4].qp));
		Sprintf(buf, "double _l%s;\n", s->name);
		Insertstr((yyvsp[-1].qp)->next, buf);
		Sprintf(buf, "\nreturn _l%s;\n", s->name);
		Insertstr((yyvsp[0].qp), buf);
		movelist((yyvsp[-8].qp), (yyvsp[0].qp), procfunc);
		if (SYM((yyvsp[-7].qp))->subtype & FUNCT) {
			diag(SYM((yyvsp[-7].qp))->name, " declared as FUNCTION twice");
		}
		SYM((yyvsp[-7].qp))->subtype |= FUNCT;
		SYM((yyvsp[-7].qp))->usage |= FUNCT;
#if HMODL || NMODL
		hocfunc(s, (yyvsp[-6].qp), (yyvsp[-4].qp));
#endif
		poplocal(); freelist(&(yyvsp[-5].lp));}
#line 3505 "parse1.c" /* yacc.c:1646  */
    break;

  case 259:
#line 860 "parse1.y" /* yacc.c:1646  */
    {pushlocal(); (yyval.lp) = LIST0; argcnt_ = 0;}
#line 3511 "parse1.c" /* yacc.c:1646  */
    break;

  case 260:
#line 861 "parse1.y" /* yacc.c:1646  */
    {pushlocal();}
#line 3517 "parse1.c" /* yacc.c:1646  */
    break;

  case 261:
#line 861 "parse1.y" /* yacc.c:1646  */
    {(yyval.lp) = (yyvsp[0].lp);}
#line 3523 "parse1.c" /* yacc.c:1646  */
    break;

  case 262:
#line 864 "parse1.y" /* yacc.c:1646  */
    {SYM((yyvsp[-1].qp)) = copylocal(SYM((yyvsp[-1].qp))); argcnt_ = 1;
		 (yyval.lp) = newlist(); Lappendsym((yyval.lp), SYM((yyvsp[-1].qp)));
		}
#line 3531 "parse1.c" /* yacc.c:1646  */
    break;

  case 263:
#line 868 "parse1.y" /* yacc.c:1646  */
    {SYM((yyvsp[-1].qp)) = copylocal(SYM((yyvsp[-1].qp))); Lappendsym((yyval.lp), SYM((yyvsp[-1].qp)));
		 ++argcnt_;
		}
#line 3539 "parse1.c" /* yacc.c:1646  */
    break;

  case 264:
#line 873 "parse1.y" /* yacc.c:1646  */
    {Symbol *s = SYM((yyvsp[-6].qp));
		s->u.i = 0; 	/* avoid objectcenter warning if solved */
		s->varnum = argcnt_; /* allow proper number of "double" in prototype */
		table_massage(table_list, (yyvsp[-7].qp), (yyvsp[-6].qp), (yyvsp[-4].lp)); freelist(&table_list);
		replacstr((yyvsp[-7].qp), "\nstatic int "); defarg((yyvsp[-5].qp), (yyvsp[-3].qp));
		Insertstr((yyvsp[0].qp), " return 0;");
		movelist((yyvsp[-7].qp), (yyvsp[0].qp), procfunc);
		if (SYM((yyvsp[-6].qp))->subtype & PROCED) {
			diag(SYM((yyvsp[-6].qp))->name, " declared as PROCEDURE twice");
		}
		SYM((yyvsp[-6].qp))->subtype |= PROCED;
		SYM((yyvsp[-6].qp))->usage |= FUNCT;
#if HMODL || NMODL
		hocfunc(s, (yyvsp[-5].qp), (yyvsp[-3].qp));
#endif
		poplocal(); freelist(&(yyvsp[-4].lp));}
#line 3560 "parse1.c" /* yacc.c:1646  */
    break;

  case 265:
#line 891 "parse1.y" /* yacc.c:1646  */
    {
			nr_argcnt_ = argcnt_;
			/* add flag arg */
			if ((yyvsp[-1].lp) == LIST0) {
diag("NET_RECEIVE block"," must have at least one argument");
			}
			Lappendsym((yyvsp[-1].lp), copylocal(install("flag", NAME)));
		}
#line 3573 "parse1.c" /* yacc.c:1646  */
    break;

  case 266:
#line 900 "parse1.y" /* yacc.c:1646  */
    {
		replacstr((yyvsp[-6].qp), "\nstatic void _net_receive");
		movelist((yyvsp[-6].qp), (yyvsp[0].qp), procfunc);
#if NMODL
		net_receive((yyvsp[-4].lp), (yyvsp[-5].qp), (yyvsp[-3].qp), (yyvsp[-1].qp), (yyvsp[0].qp));
#endif
		poplocal(); freelist(&(yyvsp[-4].lp));
		}
#line 3586 "parse1.c" /* yacc.c:1646  */
    break;

  case 267:
#line 908 "parse1.y" /* yacc.c:1646  */
    { myerr("syntax: NET_RECEIVE ( weight ) {stmtlist}");}
#line 3592 "parse1.c" /* yacc.c:1646  */
    break;

  case 268:
#line 911 "parse1.y" /* yacc.c:1646  */
    {
			check_block(NETRECEIVE, blocktype, "INITIAL");
#if NMODL
			net_init((yyvsp[-2].qp), (yyvsp[0].qp));
#endif
		}
#line 3603 "parse1.c" /* yacc.c:1646  */
    break;

  case 269:
#line 920 "parse1.y" /* yacc.c:1646  */
    { solvequeue((yyvsp[-1].qp), ITEM0, blocktype, (yyvsp[0].qp)); }
#line 3609 "parse1.c" /* yacc.c:1646  */
    break;

  case 270:
#line 922 "parse1.y" /* yacc.c:1646  */
    { solvequeue((yyvsp[-3].qp), (yyvsp[-1].qp), blocktype, (yyvsp[0].qp)); }
#line 3615 "parse1.c" /* yacc.c:1646  */
    break;

  case 271:
#line 923 "parse1.y" /* yacc.c:1646  */
    { myerr("Illegal SOLVE statement");}
#line 3621 "parse1.c" /* yacc.c:1646  */
    break;

  case 272:
#line 926 "parse1.y" /* yacc.c:1646  */
    { (yyval.qp) = ITEM0; }
#line 3627 "parse1.c" /* yacc.c:1646  */
    break;

  case 273:
#line 928 "parse1.y" /* yacc.c:1646  */
    { (yyval.qp) = (yyvsp[0].qp); }
#line 3633 "parse1.c" /* yacc.c:1646  */
    break;

  case 274:
#line 931 "parse1.y" /* yacc.c:1646  */
    { if (solveforlist) {
			freelist(&solveforlist);
		  }
		}
#line 3642 "parse1.c" /* yacc.c:1646  */
    break;

  case 276:
#line 938 "parse1.y" /* yacc.c:1646  */
    { solveforlist = newlist(); Lappendsym(solveforlist, SYM((yyvsp[0].qp)));
		  delete((yyvsp[-1].qp)); delete((yyvsp[0].qp));
		}
#line 3650 "parse1.c" /* yacc.c:1646  */
    break;

  case 277:
#line 942 "parse1.y" /* yacc.c:1646  */
    { Lappendsym(solveforlist, SYM((yyvsp[0].qp))); delete((yyvsp[-1].qp)); delete((yyvsp[0].qp));}
#line 3656 "parse1.c" /* yacc.c:1646  */
    break;

  case 278:
#line 943 "parse1.y" /* yacc.c:1646  */
    { myerr("Syntax: SOLVEFOR name, name, ...");}
#line 3662 "parse1.c" /* yacc.c:1646  */
    break;

  case 279:
#line 947 "parse1.y" /* yacc.c:1646  */
    {brkpnt_exists = 1; movelist((yyvsp[-1].qp), (yyvsp[0].qp), modelfunc);}
#line 3668 "parse1.c" /* yacc.c:1646  */
    break;

  case 280:
#line 950 "parse1.y" /* yacc.c:1646  */
    {movelist((yyvsp[-1].qp), (yyvsp[0].qp), termfunc);}
#line 3674 "parse1.c" /* yacc.c:1646  */
    break;

  case 281:
#line 953 "parse1.y" /* yacc.c:1646  */
    {bablk(blocktype, BREAKPOINT, (yyvsp[-1].qp), (yyvsp[0].qp));}
#line 3680 "parse1.c" /* yacc.c:1646  */
    break;

  case 282:
#line 955 "parse1.y" /* yacc.c:1646  */
    {bablk(blocktype, SOLVE, (yyvsp[-1].qp), (yyvsp[0].qp));}
#line 3686 "parse1.c" /* yacc.c:1646  */
    break;

  case 283:
#line 957 "parse1.y" /* yacc.c:1646  */
    {bablk(blocktype, INITIAL1, (yyvsp[-1].qp), (yyvsp[0].qp));}
#line 3692 "parse1.c" /* yacc.c:1646  */
    break;

  case 284:
#line 959 "parse1.y" /* yacc.c:1646  */
    {bablk(blocktype, STEP, (yyvsp[-1].qp), (yyvsp[0].qp));}
#line 3698 "parse1.c" /* yacc.c:1646  */
    break;

  case 285:
#line 960 "parse1.y" /* yacc.c:1646  */
    {myerr("[BEFORE AFTER] [BREAKPOINT SOLVE INITIAL STEP] { stmt }");}
#line 3704 "parse1.c" /* yacc.c:1646  */
    break;

  case 286:
#line 963 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = (yyvsp[0].qp); delete((yyvsp[-1].qp));}
#line 3710 "parse1.c" /* yacc.c:1646  */
    break;

  case 287:
#line 965 "parse1.y" /* yacc.c:1646  */
    {delete((yyvsp[-1].qp));}
#line 3716 "parse1.c" /* yacc.c:1646  */
    break;

  case 288:
#line 966 "parse1.y" /* yacc.c:1646  */
    {myerr("WATCH (expr > expr) flag");}
#line 3722 "parse1.c" /* yacc.c:1646  */
    break;

  case 289:
#line 969 "parse1.y" /* yacc.c:1646  */
    {watchstmt((yyvsp[-5].qp), (yyvsp[-3].qp), (yyvsp[-1].qp), (yyvsp[0].qp), blocktype); (yyval.qp)=(yyvsp[0].qp);}
#line 3728 "parse1.c" /* yacc.c:1646  */
    break;

  case 292:
#line 974 "parse1.y" /* yacc.c:1646  */
    {
			if (blocktype != NETRECEIVE) {
				diag("\"FOR_NETCONS\" statement only allowed in NET_RECEIVE block", (char*)0);
			}
			if (argcnt_ != nr_argcnt_) {
				diag("FOR_NETCONS and NET_RECEIVE do not have same number of arguments", (char*)0);
			}
		}
#line 3741 "parse1.c" /* yacc.c:1646  */
    break;

  case 293:
#line 983 "parse1.y" /* yacc.c:1646  */
    {fornetcon((yyvsp[-6].qp), (yyvsp[-5].qp), (yyvsp[-4].lp), (yyvsp[-3].qp), (yyvsp[-1].qp), (yyvsp[0].qp)); (yyval.qp) = (yyvsp[0].qp); }
#line 3747 "parse1.c" /* yacc.c:1646  */
    break;

  case 294:
#line 984 "parse1.y" /* yacc.c:1646  */
    { myerr("syntax: FOR_NETCONS(args,like,netreceive) { stmtlist}");}
#line 3753 "parse1.c" /* yacc.c:1646  */
    break;

  case 298:
#line 989 "parse1.y" /* yacc.c:1646  */
    {lastok = (yyvsp[0].qp);}
#line 3759 "parse1.c" /* yacc.c:1646  */
    break;

  case 303:
#line 995 "parse1.y" /* yacc.c:1646  */
    { (yyval.qp) = insertstr((yyvsp[-2].qp), "pow("); replacstr((yyvsp[-1].qp), ",");
			lastok = insertstr(lastok->next, ")"); }
#line 3766 "parse1.c" /* yacc.c:1646  */
    break;

  case 305:
#line 998 "parse1.y" /* yacc.c:1646  */
    {myerr("Illegal expression");}
#line 3772 "parse1.c" /* yacc.c:1646  */
    break;

  case 306:
#line 1003 "parse1.y" /* yacc.c:1646  */
    { sensused = 1;
		  delete((yyvsp[-1].qp));
		}
#line 3780 "parse1.c" /* yacc.c:1646  */
    break;

  case 307:
#line 1006 "parse1.y" /* yacc.c:1646  */
    {myerr("syntax is SENS var1, var2, var3, etc");}
#line 3786 "parse1.c" /* yacc.c:1646  */
    break;

  case 308:
#line 1010 "parse1.y" /* yacc.c:1646  */
    { sensparm((yyvsp[0].qp)); delete((yyvsp[0].qp));}
#line 3792 "parse1.c" /* yacc.c:1646  */
    break;

  case 309:
#line 1012 "parse1.y" /* yacc.c:1646  */
    { sensparm((yyvsp[0].qp)); deltokens((yyvsp[-1].qp), (yyvsp[0].qp));}
#line 3798 "parse1.c" /* yacc.c:1646  */
    break;

  case 310:
#line 1015 "parse1.y" /* yacc.c:1646  */
    {extdef2 = 0; }
#line 3804 "parse1.c" /* yacc.c:1646  */
    break;

  case 311:
#line 1016 "parse1.y" /* yacc.c:1646  */
    {/* react originally designed for reactions and is unchanged*/
		extdef2 = 0;
		massageconserve((yyvsp[-4].qp), (yyvsp[-1].qp), lastok);}
#line 3812 "parse1.c" /* yacc.c:1646  */
    break;

  case 312:
#line 1019 "parse1.y" /* yacc.c:1646  */
    {myerr("Illegal CONSERVE syntax");}
#line 3818 "parse1.c" /* yacc.c:1646  */
    break;

  case 313:
#line 1022 "parse1.y" /* yacc.c:1646  */
    {pushlocal(); SYM((yyvsp[-1].qp)) = copylocal(SYM((yyvsp[-1].qp)));}
#line 3824 "parse1.c" /* yacc.c:1646  */
    break;

  case 314:
#line 1024 "parse1.y" /* yacc.c:1646  */
    {massagecompart((yyvsp[-3].qp), (yyvsp[-2].qp), (yyvsp[0].qp), SYM((yyvsp[-6].qp))); poplocal();}
#line 3830 "parse1.c" /* yacc.c:1646  */
    break;

  case 315:
#line 1026 "parse1.y" /* yacc.c:1646  */
    {massagecompart((yyvsp[-3].qp), (yyvsp[-2].qp), (yyvsp[0].qp), SYM0);}
#line 3836 "parse1.c" /* yacc.c:1646  */
    break;

  case 316:
#line 1029 "parse1.y" /* yacc.c:1646  */
    {pushlocal(); SYM((yyvsp[-1].qp)) = copylocal(SYM((yyvsp[-1].qp)));}
#line 3842 "parse1.c" /* yacc.c:1646  */
    break;

  case 317:
#line 1031 "parse1.y" /* yacc.c:1646  */
    {massageldifus((yyvsp[-3].qp), (yyvsp[-2].qp), (yyvsp[0].qp), SYM((yyvsp[-6].qp))); poplocal();}
#line 3848 "parse1.c" /* yacc.c:1646  */
    break;

  case 318:
#line 1033 "parse1.y" /* yacc.c:1646  */
    {massageldifus((yyvsp[-3].qp), (yyvsp[-2].qp), (yyvsp[0].qp), SYM0);}
#line 3854 "parse1.c" /* yacc.c:1646  */
    break;

  case 321:
#line 1041 "parse1.y" /* yacc.c:1646  */
    {massagekinetic((yyvsp[-4].qp), (yyvsp[-3].qp), (yyvsp[-1].qp), (yyvsp[0].qp), sensused);
		lexcontext = 0; sensused = 0;
		}
#line 3862 "parse1.c" /* yacc.c:1646  */
    break;

  case 322:
#line 1045 "parse1.y" /* yacc.c:1646  */
    {leftreact();}
#line 3868 "parse1.c" /* yacc.c:1646  */
    break;

  case 323:
#line 1046 "parse1.y" /* yacc.c:1646  */
    {massagereaction((yyvsp[-9].qp),(yyvsp[-7].qp),(yyvsp[-4].qp),(yyvsp[-2].qp),(yyvsp[0].qp));}
#line 3874 "parse1.c" /* yacc.c:1646  */
    break;

  case 324:
#line 1048 "parse1.y" /* yacc.c:1646  */
    {flux((yyvsp[-6].qp), (yyvsp[-4].qp), (yyvsp[0].qp));}
#line 3880 "parse1.c" /* yacc.c:1646  */
    break;

  case 325:
#line 1050 "parse1.y" /* yacc.c:1646  */
    {flux((yyvsp[-6].qp), (yyvsp[-4].qp), (yyvsp[0].qp));}
#line 3886 "parse1.c" /* yacc.c:1646  */
    break;

  case 326:
#line 1051 "parse1.y" /* yacc.c:1646  */
    {myerr("Illegal reaction syntax");}
#line 3892 "parse1.c" /* yacc.c:1646  */
    break;

  case 327:
#line 1053 "parse1.y" /* yacc.c:1646  */
    {reactname((yyvsp[0].qp), lastok, ITEM0);}
#line 3898 "parse1.c" /* yacc.c:1646  */
    break;

  case 328:
#line 1054 "parse1.y" /* yacc.c:1646  */
    {reactname((yyvsp[0].qp), lastok, (yyvsp[-1].qp));}
#line 3904 "parse1.c" /* yacc.c:1646  */
    break;

  case 329:
#line 1055 "parse1.y" /* yacc.c:1646  */
    {reactname((yyvsp[0].qp), lastok, ITEM0);}
#line 3910 "parse1.c" /* yacc.c:1646  */
    break;

  case 330:
#line 1056 "parse1.y" /* yacc.c:1646  */
    {reactname((yyvsp[0].qp), lastok, (yyvsp[-1].qp));}
#line 3916 "parse1.c" /* yacc.c:1646  */
    break;

  case 331:
#line 1059 "parse1.y" /* yacc.c:1646  */
    {lag_stmt((yyvsp[-3].qp), blocktype);}
#line 3922 "parse1.c" /* yacc.c:1646  */
    break;

  case 332:
#line 1060 "parse1.y" /* yacc.c:1646  */
    {myerr("Lag syntax is: LAG name BY const");}
#line 3928 "parse1.c" /* yacc.c:1646  */
    break;

  case 333:
#line 1062 "parse1.y" /* yacc.c:1646  */
    {queue_stmt((yyvsp[-1].qp), (yyvsp[0].qp));}
#line 3934 "parse1.c" /* yacc.c:1646  */
    break;

  case 334:
#line 1063 "parse1.y" /* yacc.c:1646  */
    {queue_stmt((yyvsp[-1].qp), (yyvsp[0].qp));}
#line 3940 "parse1.c" /* yacc.c:1646  */
    break;

  case 335:
#line 1065 "parse1.y" /* yacc.c:1646  */
    {checkmatch(blocktype);}
#line 3946 "parse1.c" /* yacc.c:1646  */
    break;

  case 336:
#line 1066 "parse1.y" /* yacc.c:1646  */
    {deltokens((yyvsp[-4].qp), (yyvsp[0].qp));}
#line 3952 "parse1.c" /* yacc.c:1646  */
    break;

  case 339:
#line 1072 "parse1.y" /* yacc.c:1646  */
    {matchinitial((yyvsp[0].qp));}
#line 3958 "parse1.c" /* yacc.c:1646  */
    break;

  case 340:
#line 1074 "parse1.y" /* yacc.c:1646  */
    { matchbound((yyvsp[-5].qp), (yyvsp[-4].qp), (yyvsp[-2].qp), (yyvsp[0].qp), lastok, matchindex);
		  if (matchindex) {
			poplocal();
			matchindex = SYM0;
		  }
		}
#line 3969 "parse1.c" /* yacc.c:1646  */
    break;

  case 341:
#line 1081 "parse1.y" /* yacc.c:1646  */
    {myerr("MATCH syntax is state0 or state(expr)=expr or\
state[i](expr(i)) = expr(i)");}
#line 3976 "parse1.c" /* yacc.c:1646  */
    break;

  case 342:
#line 1085 "parse1.y" /* yacc.c:1646  */
    {matchindex = SYM0;}
#line 3982 "parse1.c" /* yacc.c:1646  */
    break;

  case 343:
#line 1087 "parse1.y" /* yacc.c:1646  */
    { pushlocal();
		  matchindex = copylocal(SYM((yyvsp[-1].qp)));
		}
#line 3990 "parse1.c" /* yacc.c:1646  */
    break;

  case 344:
#line 1092 "parse1.y" /* yacc.c:1646  */
    { deltokens((yyvsp[-3].qp),(yyvsp[0].qp));}
#line 3996 "parse1.c" /* yacc.c:1646  */
    break;

  case 345:
#line 1095 "parse1.y" /* yacc.c:1646  */
    {modl_units();}
#line 4002 "parse1.c" /* yacc.c:1646  */
    break;

  case 348:
#line 1100 "parse1.y" /* yacc.c:1646  */
    {install_units((yyvsp[-2].str), (yyvsp[0].str));}
#line 4008 "parse1.c" /* yacc.c:1646  */
    break;

  case 349:
#line 1101 "parse1.y" /* yacc.c:1646  */
    {myerr("Unit definition syntax: (units) = (units)");}
#line 4014 "parse1.c" /* yacc.c:1646  */
    break;

  case 350:
#line 1104 "parse1.y" /* yacc.c:1646  */
    { SYM((yyvsp[-3].qp))->subtype |= nmodlCONST;
		  Sprintf(buf, "static double %s = %s;\n", SYM((yyvsp[-3].qp))->name,
			STR((yyvsp[-1].qp)));
		  Lappendstr(firstlist, buf);
		}
#line 4024 "parse1.c" /* yacc.c:1646  */
    break;

  case 351:
#line 1110 "parse1.y" /* yacc.c:1646  */
    {Item *q; double d, unit_mag();
		    Unit_push((yyvsp[-1].str));
			Unit_push((yyvsp[0].str)); unit_div();
		    SYM((yyvsp[-3].qp))->subtype |= nmodlCONST;
		    Sprintf(buf, "static double %s = %g;\n", SYM((yyvsp[-3].qp))->name,
			unit_mag());
		    Lappendstr(firstlist, buf);
		    unit_pop();
		}
#line 4038 "parse1.c" /* yacc.c:1646  */
    break;

  case 352:
#line 1120 "parse1.y" /* yacc.c:1646  */
    { double unit_mag();
		    Unit_push((yyvsp[-3].str)); Unit_push((yyvsp[0].str)); unit_div();
		    SYM((yyvsp[-5].qp))->subtype |= nmodlCONST;
		    Sprintf(buf, "static double %s = %g;\n", SYM((yyvsp[-5].qp))->name,
			unit_mag());
		    Lappendstr(firstlist, buf);
		    unit_pop();
		}
#line 4051 "parse1.c" /* yacc.c:1646  */
    break;

  case 353:
#line 1128 "parse1.y" /* yacc.c:1646  */
    {myerr("Unit factor syntax: examples:\n\
foot2inch = (foot) -> (inch)\n\
F = 96520 (coulomb)\n\
R = (k-mole) (joule/degC)");
		}
#line 4061 "parse1.c" /* yacc.c:1646  */
    break;

  case 356:
#line 1138 "parse1.y" /* yacc.c:1646  */
    { SYM((yyvsp[-3].qp))->subtype |= nmodlCONST;
		  Sprintf(buf, "static double %s = %s;\n", SYM((yyvsp[-3].qp))->name,
			STR((yyvsp[-1].qp)));
		  Lappendstr(firstlist, buf);
		}
#line 4071 "parse1.c" /* yacc.c:1646  */
    break;

  case 357:
#line 1145 "parse1.y" /* yacc.c:1646  */
    { Item *q;
		  if (table_list) {
			diag("only one TABLE per function", (char *)0);
		  }
		  table_list = newlist();
		  Lappendlst(table_list, (yyvsp[-7].lp));
		  q = lappendlst(table_list, newlist());
		  movelist((yyvsp[-5].qp)->next, (yyvsp[-3].qp)->prev, LST(q));
		  q = lappendlst(table_list, newlist());
		  movelist((yyvsp[-3].qp)->next, (yyvsp[-1].qp)->prev, LST(q));
		  Lappendstr(table_list, STR((yyvsp[0].qp)));
		  Lappendlst(table_list, (yyvsp[-6].lp));
		  deltokens((yyvsp[-8].qp), (yyvsp[0].qp));
		}
#line 4090 "parse1.c" /* yacc.c:1646  */
    break;

  case 358:
#line 1159 "parse1.y" /* yacc.c:1646  */
    { myerr("syntax: TABLE [list] [DEPEND list] FROM expr TO expr WITH integer");}
#line 4096 "parse1.c" /* yacc.c:1646  */
    break;

  case 359:
#line 1162 "parse1.y" /* yacc.c:1646  */
    {(yyval.lp) = LIST0;}
#line 4102 "parse1.c" /* yacc.c:1646  */
    break;

  case 361:
#line 1166 "parse1.y" /* yacc.c:1646  */
    {(yyval.lp) = newlist(); Lappendsym((yyval.lp), SYM((yyvsp[0].qp)));}
#line 4108 "parse1.c" /* yacc.c:1646  */
    break;

  case 362:
#line 1168 "parse1.y" /* yacc.c:1646  */
    { Lappendsym((yyvsp[-2].lp), SYM((yyvsp[0].qp)));}
#line 4114 "parse1.c" /* yacc.c:1646  */
    break;

  case 363:
#line 1171 "parse1.y" /* yacc.c:1646  */
    {(yyval.lp) = LIST0;}
#line 4120 "parse1.c" /* yacc.c:1646  */
    break;

  case 364:
#line 1173 "parse1.y" /* yacc.c:1646  */
    {(yyval.lp) = (yyvsp[0].lp);}
#line 4126 "parse1.c" /* yacc.c:1646  */
    break;

  case 365:
#line 1176 "parse1.y" /* yacc.c:1646  */
    { deltokens((yyvsp[-3].qp),(yyvsp[0].qp));}
#line 4132 "parse1.c" /* yacc.c:1646  */
    break;

  case 367:
#line 1180 "parse1.y" /* yacc.c:1646  */
    { nrn_list((yyvsp[-1].qp), (yyvsp[0].qp));}
#line 4138 "parse1.c" /* yacc.c:1646  */
    break;

  case 369:
#line 1183 "parse1.y" /* yacc.c:1646  */
    { nrn_list((yyvsp[-1].qp),(yyvsp[0].qp));}
#line 4144 "parse1.c" /* yacc.c:1646  */
    break;

  case 370:
#line 1185 "parse1.y" /* yacc.c:1646  */
    { nrn_list((yyvsp[-1].qp),(yyvsp[0].qp));}
#line 4150 "parse1.c" /* yacc.c:1646  */
    break;

  case 371:
#line 1187 "parse1.y" /* yacc.c:1646  */
    { nrn_list((yyvsp[-1].qp), (yyvsp[0].qp));}
#line 4156 "parse1.c" /* yacc.c:1646  */
    break;

  case 372:
#line 1189 "parse1.y" /* yacc.c:1646  */
    { nrn_list((yyvsp[-1].qp), (yyvsp[0].qp));}
#line 4162 "parse1.c" /* yacc.c:1646  */
    break;

  case 373:
#line 1191 "parse1.y" /* yacc.c:1646  */
    { nrn_list((yyvsp[-1].qp), (yyvsp[0].qp));}
#line 4168 "parse1.c" /* yacc.c:1646  */
    break;

  case 374:
#line 1193 "parse1.y" /* yacc.c:1646  */
    { nrn_list((yyvsp[-1].qp), (yyvsp[0].qp));}
#line 4174 "parse1.c" /* yacc.c:1646  */
    break;

  case 375:
#line 1195 "parse1.y" /* yacc.c:1646  */
    { nrn_list((yyvsp[-1].qp), (yyvsp[0].qp));}
#line 4180 "parse1.c" /* yacc.c:1646  */
    break;

  case 376:
#line 1197 "parse1.y" /* yacc.c:1646  */
    { threadsafe_seen((yyvsp[-1].qp), (yyvsp[0].qp)); }
#line 4186 "parse1.c" /* yacc.c:1646  */
    break;

  case 377:
#line 1200 "parse1.y" /* yacc.c:1646  */
    {nrn_use((yyvsp[-3].qp), (yyvsp[-1].qp), ITEM0, (yyvsp[0].qp));}
#line 4192 "parse1.c" /* yacc.c:1646  */
    break;

  case 378:
#line 1202 "parse1.y" /* yacc.c:1646  */
    {nrn_use((yyvsp[-3].qp), ITEM0, (yyvsp[-1].qp), (yyvsp[0].qp));}
#line 4198 "parse1.c" /* yacc.c:1646  */
    break;

  case 379:
#line 1204 "parse1.y" /* yacc.c:1646  */
    {nrn_use((yyvsp[-5].qp), (yyvsp[-3].qp), (yyvsp[-1].qp), (yyvsp[0].qp));}
#line 4204 "parse1.c" /* yacc.c:1646  */
    break;

  case 380:
#line 1206 "parse1.y" /* yacc.c:1646  */
    {myerr("syntax is: USEION ion READ list WRITE list");}
#line 4210 "parse1.c" /* yacc.c:1646  */
    break;

  case 382:
#line 1210 "parse1.y" /* yacc.c:1646  */
    { delete((yyvsp[-1].qp)); (yyval.qp) = (yyvsp[0].qp);}
#line 4216 "parse1.c" /* yacc.c:1646  */
    break;

  case 383:
#line 1212 "parse1.y" /* yacc.c:1646  */
    {myerr("syntax is: keyword name , name, ..., name");}
#line 4222 "parse1.c" /* yacc.c:1646  */
    break;

  case 384:
#line 1215 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = NULL;}
#line 4228 "parse1.c" /* yacc.c:1646  */
    break;

  case 386:
#line 1219 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = ITEM0;}
#line 4234 "parse1.c" /* yacc.c:1646  */
    break;

  case 387:
#line 1221 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = (yyvsp[0].qp);}
#line 4240 "parse1.c" /* yacc.c:1646  */
    break;

  case 388:
#line 1224 "parse1.y" /* yacc.c:1646  */
    { Sprintf(buf, "-%s", STR((yyvsp[0].qp)));
		 STR((yyvsp[0].qp)) = stralloc(buf, STR((yyvsp[0].qp))); (yyval.qp) = (yyvsp[0].qp);
		delete((yyvsp[-1].qp)); lastok = (yyvsp[0].qp);
		}
#line 4249 "parse1.c" /* yacc.c:1646  */
    break;


#line 4253 "parse1.c" /* yacc.c:1646  */
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
#line 1229 "parse1.y" /* yacc.c:1906  */

void yyerror(s)	/* called for yacc syntax error */
	char *s;
{
	Fprintf(stderr, "%s:\n ", s);
}


#if !NMODL
void nrn_list(q1, q2)
	Item *q1, *q2;
{
	/*ARGSUSED*/
}
void nrn_use(q1, q2, q3, q4)
	Item *q1, *q2, *q3, *q4;
{
	/*ARGSUSED*/
}
#endif
