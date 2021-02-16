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

/* /local/src/master/nrn/src/modlunit/parse1.y,v 1.11 1999/02/27 21:13:50 hines Exp */

#include <../../nmodlconf.h>
#include <stdlib.h>
#include "model.h"

/* Constructs a parse tree. No translation is done, ie. on exit printing
the intoken list will make an exact copy of the input file.
All tokens and productions are of Item type and consist of STRING, SYMBOL,
and LIST.
SPACE and NEWLINE are in the intoken list but are not yacc tokens.

All explicitly declared names are given their subtype
and a pointer to their declaration. All "used" names are marked with
their usage for later error checking.
*/

extern Symbol *checklocal();
extern int next_intoken();
extern Item *title;
extern int declare_level;
extern int parse_pass, restart_pass;
extern List *solvelist;

#define IFP(n)	if (parse_pass == n)
#define IFR(n)	if (restart_pass == n)
#define P1	IFP(1)
#define P2	IFP(2)
#define P3	IFP(3)
#define R0	IFR(0)
#define R1	IFR(1)

static int yylex();
static void yyerror();

#if YYBISON 
#define myerr(arg) static int ierr=0;\
if (!(ierr++))yyerror(arg); --yyssp; --yyvsp; YYERROR
#else
#define myerr(arg) static int ierr=0;\
if (!(ierr++))yyerror(arg); --yyps; --yypv; YYERROR
#endif

extern Item *lastok;	/* last token accepted by expr */
static int blocktype;
static int unitflagsave; /*must turn off units in restartpass0 in kinetic block */
static List* netreceive_arglist;
static List* args;
extern int lexcontext;

#line 118 "parse1.c" /* yacc.c:339  */

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
    TITLE = 260,
    CONSTANT = 261,
    INDEPENDENT = 262,
    ASSIGNED = 263,
    STATE = 264,
    END_VERBATIM = 265,
    END_COMMENT = 266,
    UNITS = 267,
    BREAKPOINT = 268,
    PARAMETER = 269,
    INITIAL1 = 270,
    DERIVATIVE = 271,
    SOLVE = 272,
    USING = 273,
    WITH = 274,
    STEPPED = 275,
    DISCRETE = 276,
    FROM = 277,
    TO = 278,
    BY = 279,
    WHILE = 280,
    IF = 281,
    ELSE = 282,
    START1 = 283,
    STEP = 284,
    SENS = 285,
    SOLVEFOR = 286,
    PROCEDURE = 287,
    PARTIAL = 288,
    DEL = 289,
    DEL2 = 290,
    DEFINE1 = 291,
    IFERROR = 292,
    DERFUNC = 293,
    EQUATION = 294,
    TERMINAL = 295,
    LINEAR = 296,
    NONLINEAR = 297,
    FUNCTION1 = 298,
    LOCAL = 299,
    METHOD = 300,
    LIN1 = 301,
    NONLIN1 = 302,
    PUTQ = 303,
    GETQ = 304,
    FUNCTION_TABLE = 305,
    INCLUDE1 = 306,
    PROTECT = 307,
    OR = 308,
    AND = 309,
    GT = 310,
    GE = 311,
    LT = 312,
    LE = 313,
    EQ = 314,
    NE = 315,
    NOT = 316,
    NAME = 317,
    PRIME = 318,
    REAL = 319,
    INTEGER = 320,
    DEFINEDVAR = 321,
    KINETIC = 322,
    CONSERVE = 323,
    REACTION = 324,
    REACT1 = 325,
    COMPARTMENT = 326,
    LONGDIFUS = 327,
    PARTEQN = 328,
    STRING = 329,
    PLOT = 330,
    VS = 331,
    LAG = 332,
    RESET = 333,
    MATCH = 334,
    MODEL_LEVEL = 335,
    SWEEP = 336,
    FIRST = 337,
    LAST = 338,
    SPACE = 339,
    NEWLINE = 340,
    TO_EOL = 341,
    STUFF = 342,
    UNITBLK = 343,
    UNITSON = 344,
    UNITSOFF = 345,
    TABLE = 346,
    DEPEND = 347,
    NEURON = 348,
    SUFFIX = 349,
    NONSPECIFIC = 350,
    READ = 351,
    WRITE = 352,
    USEION = 353,
    VALENCE = 354,
    GLOBAL = 355,
    SECTION = 356,
    RANGE = 357,
    POINTER = 358,
    EXTERNAL = 359,
    BEFORE = 360,
    AFTER = 361,
    ELECTRODE_CURRENT = 362,
    CONSTRUCTOR = 363,
    DESTRUCTOR = 364,
    NETRECEIVE = 365,
    FOR_NETCONS = 366,
    WATCH = 367,
    THREADSAFE = 368,
    UNARYMINUS = 369
  };
#endif
/* Tokens.  */
#define VERBATIM 258
#define COMMENT 259
#define TITLE 260
#define CONSTANT 261
#define INDEPENDENT 262
#define ASSIGNED 263
#define STATE 264
#define END_VERBATIM 265
#define END_COMMENT 266
#define UNITS 267
#define BREAKPOINT 268
#define PARAMETER 269
#define INITIAL1 270
#define DERIVATIVE 271
#define SOLVE 272
#define USING 273
#define WITH 274
#define STEPPED 275
#define DISCRETE 276
#define FROM 277
#define TO 278
#define BY 279
#define WHILE 280
#define IF 281
#define ELSE 282
#define START1 283
#define STEP 284
#define SENS 285
#define SOLVEFOR 286
#define PROCEDURE 287
#define PARTIAL 288
#define DEL 289
#define DEL2 290
#define DEFINE1 291
#define IFERROR 292
#define DERFUNC 293
#define EQUATION 294
#define TERMINAL 295
#define LINEAR 296
#define NONLINEAR 297
#define FUNCTION1 298
#define LOCAL 299
#define METHOD 300
#define LIN1 301
#define NONLIN1 302
#define PUTQ 303
#define GETQ 304
#define FUNCTION_TABLE 305
#define INCLUDE1 306
#define PROTECT 307
#define OR 308
#define AND 309
#define GT 310
#define GE 311
#define LT 312
#define LE 313
#define EQ 314
#define NE 315
#define NOT 316
#define NAME 317
#define PRIME 318
#define REAL 319
#define INTEGER 320
#define DEFINEDVAR 321
#define KINETIC 322
#define CONSERVE 323
#define REACTION 324
#define REACT1 325
#define COMPARTMENT 326
#define LONGDIFUS 327
#define PARTEQN 328
#define STRING 329
#define PLOT 330
#define VS 331
#define LAG 332
#define RESET 333
#define MATCH 334
#define MODEL_LEVEL 335
#define SWEEP 336
#define FIRST 337
#define LAST 338
#define SPACE 339
#define NEWLINE 340
#define TO_EOL 341
#define STUFF 342
#define UNITBLK 343
#define UNITSON 344
#define UNITSOFF 345
#define TABLE 346
#define DEPEND 347
#define NEURON 348
#define SUFFIX 349
#define NONSPECIFIC 350
#define READ 351
#define WRITE 352
#define USEION 353
#define VALENCE 354
#define GLOBAL 355
#define SECTION 356
#define RANGE 357
#define POINTER 358
#define EXTERNAL 359
#define BEFORE 360
#define AFTER 361
#define ELECTRODE_CURRENT 362
#define CONSTRUCTOR 363
#define DESTRUCTOR 364
#define NETRECEIVE 365
#define FOR_NETCONS 366
#define WATCH 367
#define THREADSAFE 368
#define UNARYMINUS 369

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE YYSTYPE;
union YYSTYPE
{
#line 53 "parse1.y" /* yacc.c:355  */

	Item	*qp;

#line 390 "parse1.c" /* yacc.c:355  */
};
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_PARSE_H_INCLUDED  */

/* Copy the second part of user declarations.  */

#line 405 "parse1.c" /* yacc.c:358  */

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
#define YYLAST   1265

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  132
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  146
/* YYNRULES -- Number of rules.  */
#define YYNRULES  345
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  672

/* YYTRANSLATE[YYX] -- Symbol number corresponding to YYX as returned
   by yylex, with out-of-bounds checking.  */
#define YYUNDEFTOK  2
#define YYMAXUTOK   369

#define YYTRANSLATE(YYX)                                                \
  ((unsigned int) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, without out-of-bounds checking.  */
static const yytype_uint8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,   130,     2,     2,
      55,    56,    61,    60,    67,    62,     2,    63,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,    66,     2,
       2,    64,     2,     2,    59,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,    57,     2,    58,    65,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,    53,     2,    54,    68,     2,     2,     2,
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
      45,    46,    47,    48,    49,    50,    51,    52,    69,    70,
      71,    72,    73,    74,    75,    76,    77,    78,    79,    80,
      81,    82,    83,    84,    85,    86,    87,    88,    89,    90,
      91,    92,    93,    94,    95,    96,    97,    98,    99,   100,
     101,   102,   103,   104,   105,   106,   107,   108,   109,   110,
     111,   112,   113,   114,   115,   116,   117,   118,   119,   120,
     121,   122,   123,   124,   125,   126,   127,   128,   129,   131
};

#if YYDEBUG
  /* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_uint16 yyrline[] =
{
       0,   114,   114,   115,   118,   119,   121,   121,   121,   121,
     121,   121,   121,   122,   123,   125,   128,   130,   132,   134,
     137,   140,   142,   144,   147,   148,   148,   151,   151,   151,
     151,   151,   152,   152,   152,   154,   155,   158,   159,   161,
     166,   168,   170,   173,   174,   176,   176,   180,   181,   184,
     185,   187,   190,   191,   193,   196,   197,   199,   200,   202,
     204,   207,   207,   209,   210,   212,   214,   217,   220,   221,
     223,   227,   229,   231,   233,   236,   237,   240,   242,   244,
     246,   248,   252,   253,   255,   258,   259,   262,   263,   265,
     266,   269,   270,   273,   276,   277,   278,   280,   282,   284,
     286,   297,   308,   314,   314,   316,   316,   318,   318,   320,
     320,   322,   322,   324,   324,   326,   326,   328,   328,   330,
     330,   332,   332,   334,   334,   336,   336,   338,   338,   340,
     340,   342,   342,   347,   347,   348,   348,   350,   352,   354,
     356,   357,   358,   359,   361,   363,   366,   367,   369,   371,
     375,   376,   380,   381,   383,   384,   385,   386,   387,   388,
     389,   390,   391,   392,   393,   394,   395,   396,   397,   398,
     399,   400,   401,   402,   403,   404,   405,   406,   407,   408,
     411,   423,   430,   437,   444,   452,   460,   462,   463,   464,
     465,   466,   467,   468,   470,   471,   477,   478,   481,   482,
     483,   484,   485,   486,   487,   488,   489,   490,   491,   492,
     493,   494,   495,   496,   498,   498,   504,   505,   507,   508,
     509,   510,   512,   512,   514,   517,   518,   520,   522,   525,
     526,   529,   530,   532,   534,   537,   540,   543,   546,   549,
     558,   564,   568,   570,   570,   573,   572,   581,   590,   594,
     596,   610,   622,   630,   629,   643,   646,   647,   648,   650,
     653,   652,   681,   684,   686,   688,   691,   692,   696,   697,
     699,   704,   709,   711,   713,   715,   716,   719,   721,   723,
     724,   725,   726,   730,   730,   736,   742,   744,   747,   747,
     753,   759,   761,   764,   765,   767,   770,   772,   774,   776,
     778,   779,   780,   781,   785,   786,   788,   792,   793,   796,
     797,   799,   800,   802,   804,   805,   807,   808,   809,   813,
     814,   818,   817,   827,   828,   830,   831,   833,   835,   837,
     839,   841,   843,   845,   848,   849,   851,   853,   855,   857,
     860,   862,   864,   868,   869,   871
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || 0
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "VERBATIM", "COMMENT", "TITLE",
  "CONSTANT", "INDEPENDENT", "ASSIGNED", "STATE", "END_VERBATIM",
  "END_COMMENT", "UNITS", "BREAKPOINT", "PARAMETER", "INITIAL1",
  "DERIVATIVE", "SOLVE", "USING", "WITH", "STEPPED", "DISCRETE", "FROM",
  "TO", "BY", "WHILE", "IF", "ELSE", "START1", "STEP", "SENS", "SOLVEFOR",
  "PROCEDURE", "PARTIAL", "DEL", "DEL2", "DEFINE1", "IFERROR", "DERFUNC",
  "EQUATION", "TERMINAL", "LINEAR", "NONLINEAR", "FUNCTION1", "LOCAL",
  "METHOD", "LIN1", "NONLIN1", "PUTQ", "GETQ", "FUNCTION_TABLE",
  "INCLUDE1", "PROTECT", "'{'", "'}'", "'('", "')'", "'['", "']'", "'@'",
  "'+'", "'*'", "'-'", "'/'", "'='", "'^'", "':'", "','", "'~'", "OR",
  "AND", "GT", "GE", "LT", "LE", "EQ", "NE", "NOT", "NAME", "PRIME",
  "REAL", "INTEGER", "DEFINEDVAR", "KINETIC", "CONSERVE", "REACTION",
  "REACT1", "COMPARTMENT", "LONGDIFUS", "PARTEQN", "STRING", "PLOT", "VS",
  "LAG", "RESET", "MATCH", "MODEL_LEVEL", "SWEEP", "FIRST", "LAST",
  "SPACE", "NEWLINE", "TO_EOL", "STUFF", "UNITBLK", "UNITSON", "UNITSOFF",
  "TABLE", "DEPEND", "NEURON", "SUFFIX", "NONSPECIFIC", "READ", "WRITE",
  "USEION", "VALENCE", "GLOBAL", "SECTION", "RANGE", "POINTER", "EXTERNAL",
  "BEFORE", "AFTER", "ELECTRODE_CURRENT", "CONSTRUCTOR", "DESTRUCTOR",
  "NETRECEIVE", "FOR_NETCONS", "WATCH", "THREADSAFE", "'%'", "UNARYMINUS",
  "$accept", "top", "all", "all1", "title", "verbatim", "comment",
  "unitflag", "include1", "define1", "Name", "declare", "$@1", "declare1",
  "constblk", "constbody", "constasgn", "units", "Units", "$@2", "limits",
  "tolerance", "stepblk", "stepbdy", "stepped", "numlist", "name",
  "number", "NUMBER", "integer", "real", "indepblk", "indepbody",
  "indepdef", "withby", "depblk", "depbody", "depdef", "opstart",
  "stateblk", "statbody", "plotdecl", "pvlist", "optindex", "unitblk",
  "unitbody", "unitdef", "factordef", "proc", "$@3", "$@4", "$@5", "$@6",
  "$@7", "$@8", "$@9", "$@10", "$@11", "$@12", "$@13", "$@14", "$@15",
  "$@16", "$@17", "$@18", "$@19", "initblk", "constructblk", "destructblk",
  "bablk", "stmtlist", "locallist", "locallist1", "locoptarray",
  "stmtlist1", "stmt", "asgn", "varname", "intexpr", "expr", "funccall",
  "$@20", "exprlist", "exprlist1", "fromstmt", "$@21", "opinc",
  "whilestmt", "ifstmt", "optelseif", "optelse", "initstmt", "derivblk",
  "linblk", "nonlinblk", "discretblk", "partialblk", "pareqn", "firstlast",
  "funcblk", "$@22", "functbl", "arglist", "arglist1", "procedblk",
  "netrecblk", "$@23", "watchstmt", "watch1", "fornetcon", "$@24",
  "solveblk", "ifsolerr", "solvefor", "solvefor1", "eqnblk", "terminalblk",
  "sens", "conserve", "consreact", "compart", "$@25", "compartlist",
  "longdifus", "$@26", "ldifuslist", "namelist", "kineticblk", "reaction",
  "react", "lagstmt", "tablestmt", "tablst", "dependlst", "queuestmt",
  "matchblk", "matchlist", "match", "matchname", "neuronblk", "$@27",
  "nrnstmt", "optnamelist", "nrnuse", "nrnlist", "valence", YY_NULLPTR
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
     305,   306,   307,   123,   125,    40,    41,    91,    93,    64,
      43,    42,    45,    47,    61,    94,    58,    44,   126,   308,
     309,   310,   311,   312,   313,   314,   315,   316,   317,   318,
     319,   320,   321,   322,   323,   324,   325,   326,   327,   328,
     329,   330,   331,   332,   333,   334,   335,   336,   337,   338,
     339,   340,   341,   342,   343,   344,   345,   346,   347,   348,
     349,   350,   351,   352,   353,   354,   355,   356,   357,   358,
     359,   360,   361,   362,   363,   364,   365,   366,   367,   368,
      37,   369
};
# endif

#define YYPACT_NINF -557

#define yypact_value_is_default(Yystate) \
  (!!((Yystate) == (-557)))

#define YYTABLE_NINF -320

#define yytable_value_is_error(Yytable_value) \
  0

  /* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
     STATE-NUM.  */
static const yytype_int16 yypact[] =
{
     712,  -557,    37,   769,  -557,    77,   115,    33,   103,   113,
     123,   142,   184,   189,    79,   106,   190,    21,   207,   204,
    -557,  -557,  -557,  -557,  -557,  -557,  -557,  -557,  -557,  -557,
    -557,  -557,  -557,  -557,  -557,  -557,  -557,  -557,  -557,  -557,
     279,   323,   334,   309,   314,   330,   302,   333,   251,   377,
     406,   321,   329,   418,   381,   350,   361,  -557,  -557,  -557,
    -557,  -557,  -557,  -557,  -557,  -557,  -557,  -557,  -557,   278,
    -557,   436,   431,  -557,  -557,  -557,  -557,  -557,   451,   -31,
    -557,  -557,   457,   460,  -557,   448,  -557,   460,  -557,   449,
    -557,   450,  -557,   453,  -557,   454,  -557,   468,  -557,    27,
    -557,   460,  -557,   473,  -557,   460,  -557,   460,  -557,   474,
    -557,   475,  -557,    35,    35,    90,     5,    75,    80,   145,
     -10,  -557,  -557,  -557,   278,  -557,   476,   278,  -557,   352,
     352,   390,   250,  -557,   470,  -557,   460,  -557,   491,   491,
     480,   481,   503,  -557,   352,  -557,   460,  -557,  -557,   460,
     491,   460,   460,   460,   460,  -557,  -557,  -557,  -557,   289,
    -557,  -557,  -557,   507,   135,  -557,  -557,  -557,   291,  -557,
    -557,  -557,  -557,  -557,   495,  -557,   505,   436,   514,   451,
     451,  -557,  -557,  -557,  -557,   501,     1,  -557,  -557,   192,
    -557,   508,  -557,   149,   460,   516,   460,   352,   352,   352,
     518,   519,   517,  -557,  -557,   460,  -557,  -557,  -557,  -557,
     278,   310,   512,  -557,   310,  -557,   310,   310,   278,   518,
     310,  -557,  -557,  -557,  -557,  -557,   562,   288,  -557,   518,
    -557,  -557,   510,   151,   513,   151,   151,   151,   151,   151,
     151,   520,  -557,   603,  -557,   460,   176,   177,   539,   544,
     178,   352,   352,    -1,  -557,   252,   169,    34,    52,   388,
     462,    85,    61,  -557,   547,   520,    42,    53,  -557,  -557,
    -557,   548,  -557,  -557,  -557,   545,  -557,  -557,  -557,  -557,
    -557,  -557,   541,  -557,  -557,  -557,  -557,  -557,  -557,  -557,
    -557,  -557,  -557,  -557,  -557,  -557,  -557,   532,  -557,   555,
     556,   560,  -557,  -557,   352,  -557,   559,   313,  -557,   518,
    -557,  -557,   310,  -557,   596,   598,  -557,   564,   551,   282,
     563,   570,  -557,   120,  -557,   518,  -557,  -557,  -557,  -557,
     565,   335,   565,   565,   565,   565,   565,   565,  -557,   567,
    -557,  -557,  -557,  -557,    20,  -557,   573,   252,   252,  -557,
     567,  -557,  -557,   568,  -557,  -557,   252,   252,   252,   518,
    -557,  1138,  -557,  -557,   278,  -557,   382,  -557,   256,  -557,
     382,  -557,   132,   307,   860,   365,   884,  -557,   553,   581,
     575,  -557,   616,    95,   567,   533,  -557,   352,  -557,   252,
    -557,    46,   252,   587,  -557,   518,   518,   460,   460,   518,
     518,  -557,   512,   576,   310,   310,    81,   310,  -557,   310,
    -557,   310,  -557,   574,  -557,  -557,   566,   151,   151,   520,
     601,   460,  -557,    46,   953,   974,   995,   582,   582,  -557,
     252,   252,   252,   252,   252,   252,   252,   252,   252,   252,
     252,   252,   252,   252,   356,   591,  -557,   347,   252,  -557,
     395,   578,   577,   401,   586,   580,   592,   583,   597,   398,
     584,   585,  -557,   236,    83,  -557,   605,   520,   646,   614,
    1016,  -557,    46,  -557,  -557,   458,  1172,  -557,  -557,  -557,
    -557,  -557,  -557,   512,  -557,   310,   653,   655,   310,   518,
     613,  -557,  -557,   518,  -557,   147,   -55,  -557,   648,  -557,
     263,   460,   460,  -557,   315,   582,   315,   582,  1172,   582,
    1189,   506,   379,   379,   379,   379,   379,   379,  -557,  1172,
     191,  -557,    46,   382,  -557,  1172,   382,  -557,   631,   634,
      -9,   252,  -557,    89,   252,  -557,   129,   398,  -557,  -557,
     635,   633,  -557,   617,  -557,  -557,   252,   567,   252,  -557,
     376,   444,  -557,    46,    46,    46,    46,   460,  -557,   628,
    -557,   278,   518,   677,   551,  -557,  -557,   151,   326,  -557,
    -557,  -557,    46,  -557,  -557,  -557,   154,   487,  -557,  -557,
     252,   252,   252,   908,  -557,  -557,   932,  -557,  -557,   643,
     638,   668,   647,  1037,   836,   460,  -557,  -557,   339,  -557,
     339,  -557,  -557,  -557,   655,   551,   310,  -557,   -55,   376,
    -557,   237,   679,  -557,  1172,  -557,  1058,  1079,  1155,   580,
     583,   640,   252,   652,  -557,   650,   252,  -557,   518,  -557,
     655,  -557,  -557,    46,  -557,    -8,  -557,  -557,  -557,   252,
     167,   205,   252,  1172,   644,   252,   604,  -557,   518,   428,
     460,   656,  -557,  1100,  -557,  -557,  1172,   667,  1172,   278,
     551,  -557,   252,  -557,   664,  -557,  -557,  1121,   651,   460,
    -557,  -557
};

  /* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
     Performed when YYTABLE does not specify something else to do.  Zero
     means the default is an error.  */
static const yytype_uint16 yydefact[] =
{
       0,     3,     0,     2,     1,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
      18,    19,   321,     5,     6,    11,    12,    13,    14,     8,
       9,    24,    27,    31,    28,    29,    30,    32,    33,    10,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     7,    34,    16,
      17,    15,    37,    68,    75,    85,    37,    52,    22,     0,
     147,   150,   146,    20,    88,    23,    58,    57,    91,     0,
      25,    94,     0,     0,   104,     0,   106,     0,   108,     0,
     110,     0,   112,     0,   114,     0,   116,     0,   118,     0,
     120,     0,   122,     0,   124,     0,   126,     0,   128,     0,
     130,     0,   132,     0,     0,     0,     0,     0,     0,     0,
       0,    63,    64,    21,     0,   148,     0,     0,    89,     0,
       0,     0,     0,   323,   152,   137,     0,   273,   268,   268,
       0,     0,     0,   255,   248,   274,     0,   138,   139,     0,
     268,     0,     0,     0,     0,   134,   136,    42,    35,    43,
      38,    72,    67,     0,     0,    69,    81,    74,    82,    76,
      84,    86,    36,    51,     0,    53,     0,   150,     0,    91,
      91,    26,   102,    93,    45,     0,     0,    95,    96,     0,
     152,     0,   234,     0,     0,   269,     0,   248,   248,   248,
      43,     0,   249,   237,   238,     0,   140,   142,   141,   143,
       0,     0,    47,    44,     0,    70,     0,     0,     0,    43,
       0,   151,   149,    92,    90,    87,     0,     0,    98,     0,
     339,   322,     0,     0,     0,     0,     0,     0,     0,     0,
       0,   334,   325,     0,   179,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   144,     0,    23,     0,     0,     0,
       0,     0,     0,   173,     0,   307,     0,     0,   162,   163,
     175,   182,   159,   153,   154,     0,   160,   156,   157,   158,
     176,   171,   177,   178,   161,   164,   166,   167,   168,   165,
     169,   170,   172,   174,   272,   270,   235,     0,   236,     0,
       0,     0,   250,   253,     0,   295,     0,     0,    62,    43,
      59,    61,     0,    40,     0,     0,    83,     0,    49,    43,
       0,     0,    65,     0,    66,     0,    97,   324,   342,   340,
     326,     0,   330,   329,   328,   331,   332,   327,   293,   335,
     333,   145,   233,   265,   266,   224,     0,     0,     0,   276,
     275,   311,   312,    23,   155,   213,     0,     0,     0,    43,
     194,     0,   196,   214,     0,   278,     0,   279,     0,   299,
       0,   300,     0,    23,     0,    23,     0,   242,     0,     0,
       0,   305,     0,     0,   308,   309,   262,   248,   258,     0,
     256,     0,     0,     0,   271,    43,    43,     0,     0,    43,
      43,    60,    47,     0,     0,     0,    82,     0,    77,     0,
      54,     0,    46,     0,   100,    99,     0,     0,     0,     0,
       0,     0,   263,     0,     0,     0,     0,   212,   211,   195,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,   184,   280,     0,     0,   301,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,   318,   316,     0,   314,     0,     0,     0,     0,
       0,   193,     0,   186,   187,     0,   180,   257,   245,   247,
     252,   254,   251,    47,    39,     0,     0,    82,     0,    43,
       0,    56,    55,     0,   341,   343,   343,   294,   266,   267,
       0,     0,     0,   197,   198,   200,   199,   201,   181,   202,
     203,   204,   205,   207,   206,   208,   209,   210,   219,   218,
       0,   217,     0,     0,   281,   277,     0,   302,     0,     0,
       0,     0,   286,     0,     0,   291,     0,     0,   243,   244,
       0,     0,   304,     0,   313,   315,     0,   310,     0,   260,
       0,     0,   183,     0,     0,     0,     0,     0,    41,     0,
      73,     0,    43,     0,    49,    50,   101,     0,     0,   336,
     337,   264,     0,   227,   229,   215,     0,     0,   282,   303,
       0,     0,     0,     0,   285,   287,     0,   290,   292,     0,
       0,     0,     0,     0,     0,     0,   259,   188,   189,   191,
     190,   192,   246,    48,    82,    49,     0,    78,   343,     0,
     344,   225,   231,   221,   220,   185,     0,     0,     0,     0,
       0,     0,     0,     0,   320,     0,     0,   261,    43,    79,
      82,   338,   345,     0,   222,     0,   228,   298,   297,     0,
       0,     0,     0,   241,     0,     0,     0,    71,    43,   226,
       0,     0,   232,     0,   284,   289,   240,     0,   317,     0,
      49,   223,     0,   296,     0,   306,    80,     0,     0,     0,
     239,   230
};

  /* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -557,  -557,  -557,  -557,  -557,   731,   732,   733,  -557,  -557,
    -171,  -557,  -557,   606,  -557,   672,  -557,  -199,  -106,  -557,
    -388,  -556,  -557,  -557,  -557,  -557,   -12,  -201,   432,   -69,
    -223,  -557,  -557,   579,  -557,  -557,  -557,   622,  -389,  -557,
    -557,  -557,  -557,   322,  -557,  -557,  -557,  -557,  -557,  -557,
    -557,  -557,  -557,  -557,  -557,  -557,  -557,  -557,  -557,  -557,
    -557,  -557,  -557,  -557,  -557,  -557,  -557,  -557,  -557,   627,
     -80,   608,  -557,   569,   557,  -557,   496,  -168,  -384,  -167,
    -180,  -557,  -557,  -557,  -557,  -557,  -557,  -557,  -557,  -557,
    -557,  -557,  -557,  -557,  -557,  -557,  -557,  -557,   213,  -557,
    -557,  -557,  -157,  -557,  -557,  -557,  -557,  -557,   358,  -557,
    -557,  -557,   259,   139,  -557,  -557,  -557,  -557,  -557,  -557,
    -557,  -557,   140,  -557,  -557,   138,  -241,  -557,  -557,   308,
    -557,  -557,  -557,  -557,  -557,  -557,  -557,   296,  -557,  -557,
    -557,  -557,  -557,  -557,  -206,  -486
};

  /* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
      -1,     2,     3,    23,    24,   268,   269,   270,    28,    29,
      77,    30,   131,    31,    32,   115,   160,   212,   213,   226,
     313,   408,    33,   120,   175,   319,   271,   309,   310,   324,
     359,    34,   116,   165,   561,    35,   117,   169,   219,    36,
     118,    37,    79,   128,    38,   132,   187,   188,    39,    40,
      41,    42,    43,    44,    45,    46,    47,    48,    49,    50,
      51,    52,    53,    54,    55,    56,    84,   106,   108,   155,
     272,    57,    72,   125,   191,   273,   274,   360,   475,   361,
     362,   444,   520,   521,   277,   650,   634,   278,   279,   612,
     636,   280,    86,    90,    92,   104,   110,   281,   540,    94,
     557,    96,   201,   202,    98,   100,   398,   282,   390,   283,
     595,   284,   422,   194,   195,    88,   102,   285,   286,   368,
     287,   454,   533,   288,   456,   536,   339,   112,   289,   372,
     290,   291,   385,   468,   292,   293,   464,   465,   466,    58,
      82,   189,   340,   242,   330,   569
};

  /* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
     positive, shift that token.  If negative, reduce the rule whose
     number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
     123,   302,   228,   135,   325,    78,   161,   137,   607,   350,
     570,   276,   416,   314,   484,   315,   316,   489,   651,   320,
     318,   145,    74,   275,   384,   147,   186,   148,   143,   332,
     333,   334,   335,   336,   337,   365,   129,     4,   420,   500,
     299,   300,   301,   386,   173,   134,   582,   471,   151,   629,
     152,   450,   153,   369,   388,   176,   192,   421,   178,   162,
     568,   130,   381,   276,   154,   229,   203,   255,   174,   204,
     338,   206,   207,   208,   209,   275,   166,   353,    76,   338,
      68,   166,   144,   163,   462,   275,   377,    59,   551,   367,
     371,   157,   374,   376,   338,   558,   462,   387,   562,    75,
      76,   472,   164,   488,   666,   168,   168,    70,   389,   217,
     402,   403,   353,    76,   296,   366,   298,   179,   180,   378,
     410,   323,   631,   326,    75,   305,    60,   121,   122,   167,
     353,    76,   200,   370,   170,    61,   161,   544,   577,    75,
      76,   306,   311,   584,   158,   311,   157,   311,   311,   317,
     294,   311,   328,    75,    76,   355,    62,    69,    75,    76,
     429,    75,    76,   379,   380,   342,    63,   585,   159,   598,
     599,   600,   601,    75,    76,   184,    64,   343,   345,   349,
     424,   425,   413,   587,    71,   200,   200,   200,   611,   426,
     427,   428,   450,   230,   451,    65,   478,   479,   446,   172,
     482,   483,   449,   486,   487,   452,   490,   588,   491,   356,
     492,   495,   496,   163,   416,   628,   357,   414,   453,   415,
     473,   654,   470,   159,   363,   476,   547,   295,   364,   329,
     469,   358,   256,    76,   322,   121,   122,    66,   311,   351,
     352,   648,    67,   311,   613,   585,   231,   575,   497,   649,
     382,   182,   473,   355,   344,   346,    75,    81,   576,   655,
     567,   633,   568,   504,   505,   506,   507,   508,   509,   510,
     511,   512,   513,   514,   515,   516,   517,   519,   196,   524,
      73,   525,   527,   588,   559,   371,   572,   563,    80,   205,
     564,  -319,   399,   543,    83,   445,   338,   553,   554,   555,
     556,   473,   232,   233,   183,   184,   234,   356,   235,   236,
     237,   238,   239,   216,   357,   240,   447,   480,   481,   217,
     448,   241,   474,   553,   554,   555,   556,   596,   185,   358,
     256,    76,   322,   121,   122,   311,   311,   184,   311,    85,
     311,   499,   311,   184,   184,   610,   210,    87,   218,   409,
      89,   473,    95,   211,   474,   578,    91,   355,   579,   121,
     122,   608,   363,   605,   583,    97,   364,   586,   322,   121,
     122,   463,   307,    93,  -283,   200,   431,    99,   433,   593,
     435,   594,   473,   473,   473,   473,   632,   566,   609,   355,
     308,   121,   122,   308,   121,   122,     8,     9,    10,    11,
     554,   473,   556,   474,    12,   630,   322,   121,   122,   614,
      13,   356,  -216,   616,   617,   618,   311,   101,   357,   311,
     363,   573,   574,  -216,   364,   353,    76,   103,   523,   647,
      75,    76,  -288,   358,   256,    76,   322,   121,   122,   430,
     431,   432,   433,   356,   435,   105,   518,   417,   418,   660,
     357,   109,   463,   474,   107,   643,   322,   121,   122,   646,
     353,    76,   473,   355,   111,   358,   373,    76,   322,   121,
     122,   113,   653,   353,    76,   656,   526,   602,   658,   353,
      76,    17,   370,   114,   474,   474,   474,   474,   553,   554,
     555,   556,   604,   124,    19,   667,   538,   539,   126,    22,
     597,   224,   225,   474,   553,   554,   555,   556,   127,   244,
     133,     5,     6,   134,    15,   627,   552,   356,   553,   554,
     555,   556,   193,   245,   357,   246,   136,   138,   139,   214,
     247,   140,   141,   248,   249,   197,   198,   311,   250,   358,
     375,    76,   322,   121,   122,   615,   142,   553,   554,   555,
     556,   146,   149,   150,   177,   652,   251,   252,   199,   220,
     253,   134,   254,   221,   474,   227,   430,   431,   432,   433,
     661,   435,   223,   184,   321,   303,   255,   438,   439,   440,
     441,   442,   443,   297,   304,   312,   256,    76,   327,   671,
     665,   331,   257,   258,   347,   259,   260,   261,    75,   348,
     383,   262,   263,   264,   244,   391,     5,     6,   393,   392,
     394,   395,   396,    20,    21,   265,   397,   400,   245,   404,
     246,   405,   406,   659,   407,   247,   412,   364,   248,   249,
     411,   458,   416,   250,   419,   266,   267,   423,   459,   460,
     461,   467,   389,   485,   494,   493,   498,   435,   522,   528,
     529,   251,   252,   531,   537,   253,   134,   341,   532,   534,
     546,   535,   541,   542,   430,   431,   432,   433,   548,   435,
     549,   255,   560,   436,   437,   438,   439,   440,   441,   442,
     443,   256,    76,   217,   565,   421,   580,   257,   258,   581,
     259,   260,   261,   590,   591,   592,   262,   263,   264,   603,
     606,   621,   622,   623,   642,   624,   635,   644,    20,    21,
     265,   662,    -4,     1,   645,    -4,    -4,    -4,    -4,    -4,
      -4,    -4,   657,   664,   668,    -4,    -4,    -4,    -4,   670,
     266,   267,    -4,    -4,    25,    26,    27,   181,   119,   401,
     171,   156,   190,   215,    -4,    -4,   222,   243,    -4,   354,
     589,   477,    -4,    -4,    -4,    -4,    -4,   571,   641,   640,
     545,   530,    -4,    -4,     0,     0,     0,     0,     0,     0,
       0,     0,     5,     6,     7,     8,     9,    10,    11,     0,
       0,     0,  -107,    12,  -103,  -105,     0,     0,     0,    13,
    -123,     0,     0,     0,     0,    -4,     0,     0,     0,     0,
       0,  -117,  -129,    -4,     0,    14,     0,     0,    -4,  -121,
    -109,  -111,  -113,    15,     0,     0,    -4,    -4,    -4,  -115,
      16,    -4,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    -4,    -4,     0,    -4,    -4,    -4,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,  -131,     0,     0,     0,     0,     0,     0,   626,
      17,     0,     0,     0,     0,    18,     0,     0,     0,     0,
       0,     0,     0,    19,    20,    21,     0,     0,    22,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
    -133,  -135,     0,  -125,  -127,  -119,   430,   431,   432,   433,
       0,   435,     0,     0,     0,   436,   437,   438,   439,   440,
     441,   442,   443,   455,     0,     0,     0,     0,     0,     0,
     430,   431,   432,   433,     0,   435,     0,     0,     0,   436,
     437,   438,   439,   440,   441,   442,   443,   457,     0,     0,
       0,     0,     0,     0,   430,   431,   432,   433,     0,   435,
       0,     0,     0,   436,   437,   438,   439,   440,   441,   442,
     443,   619,     0,     0,     0,     0,     0,     0,   430,   431,
     432,   433,     0,   435,     0,     0,     0,   436,   437,   438,
     439,   440,   441,   442,   443,   620,     0,     0,     0,     0,
       0,     0,   430,   431,   432,   433,     0,   435,     0,     0,
       0,   436,   437,   438,   439,   440,   441,   442,   443,   501,
       0,     0,     0,   430,   431,   432,   433,     0,   435,     0,
       0,     0,   436,   437,   438,   439,   440,   441,   442,   443,
     502,     0,     0,     0,   430,   431,   432,   433,     0,   435,
       0,     0,     0,   436,   437,   438,   439,   440,   441,   442,
     443,   503,     0,     0,     0,   430,   431,   432,   433,     0,
     435,     0,     0,     0,   436,   437,   438,   439,   440,   441,
     442,   443,   550,     0,     0,     0,   430,   431,   432,   433,
       0,   435,     0,     0,     0,   436,   437,   438,   439,   440,
     441,   442,   443,   625,     0,     0,     0,   430,   431,   432,
     433,     0,   435,     0,     0,     0,   436,   437,   438,   439,
     440,   441,   442,   443,   637,     0,     0,     0,   430,   431,
     432,   433,     0,   435,     0,     0,     0,   436,   437,   438,
     439,   440,   441,   442,   443,   638,     0,     0,     0,   430,
     431,   432,   433,     0,   435,     0,     0,     0,   436,   437,
     438,   439,   440,   441,   442,   443,   663,     0,     0,     0,
     430,   431,   432,   433,     0,   435,     0,     0,     0,   436,
     437,   438,   439,   440,   441,   442,   443,   669,     0,     0,
       0,   430,   431,   432,   433,     0,   435,     0,     0,     0,
     436,   437,   438,   439,   440,   441,   442,   443,   430,   431,
     432,   433,   434,   435,     0,     0,     0,   436,   437,   438,
     439,   440,   441,   442,   443,   430,   431,   432,   433,     0,
     435,     0,   639,     0,   436,   437,   438,   439,   440,   441,
     442,   443,   430,   431,   432,   433,     0,   435,     0,     0,
       0,   436,   437,   438,   439,   440,   441,   442,   443,   430,
     431,   432,   433,     0,   435,     0,     0,     0,     0,   437,
     438,   439,   440,   441,   442,   443
};

static const yytype_int16 yycheck[] =
{
      69,   200,     1,    83,   227,    17,     1,    87,   564,   250,
     496,   191,    67,   214,   402,   216,   217,   406,    26,   220,
     219,   101,     1,   191,   265,   105,   132,   107,     1,   235,
     236,   237,   238,   239,   240,     1,    67,     0,    18,   423,
     197,   198,   199,     1,    54,    53,    55,     1,    13,   605,
      15,    60,    17,     1,     1,   124,   136,    37,   127,    54,
     115,    92,     1,   243,    29,    64,   146,    68,    78,   149,
     241,   151,   152,   153,   154,   243,     1,    78,    79,   250,
       1,     1,    55,    78,     1,   253,     1,    10,   472,   257,
     258,     1,   259,   260,   265,   483,     1,    55,   487,    78,
      79,    55,    97,    22,   660,   117,   118,     1,    55,    28,
     309,   312,    78,    79,   194,    81,   196,   129,   130,    34,
     319,   227,   608,   229,    78,   205,    11,    81,    82,    54,
      78,    79,   144,    81,    54,   102,     1,    54,   522,    78,
      79,   210,   211,    54,    54,   214,     1,   216,   217,   218,
       1,   220,     1,    78,    79,     1,    53,    78,    78,    79,
     359,    78,    79,    78,    79,   245,    53,    78,    78,   553,
     554,   555,   556,    78,    79,    55,    53,     1,     1,     1,
     347,   348,    62,    54,    78,   197,   198,   199,   572,   356,
     357,   358,    60,     1,    62,    53,   395,   396,   366,    54,
     399,   400,   370,   404,   405,    73,   407,    78,   409,    55,
     411,   417,   418,    78,    67,   604,    62,   323,    86,   325,
     391,    54,   389,    78,    55,   392,   467,    78,    59,    78,
     387,    77,    78,    79,    80,    81,    82,    53,   307,   251,
     252,   630,    53,   312,    90,    78,    54,    56,   419,   633,
     262,     1,   423,     1,    78,    78,    78,    53,    67,    54,
     113,    24,   115,   430,   431,   432,   433,   434,   435,   436,
     437,   438,   439,   440,   441,   442,   443,   444,   139,   447,
      90,   448,   450,    78,   485,   453,    23,   488,    81,   150,
     489,    55,   304,    57,    15,   364,   467,    60,    61,    62,
      63,   472,   110,   111,    54,    55,   114,    55,   116,   117,
     118,   119,   120,    22,    62,   123,    60,   397,   398,    28,
      64,   129,   391,    60,    61,    62,    63,   550,    78,    77,
      78,    79,    80,    81,    82,   404,   405,    55,   407,    16,
     409,   421,   411,    55,    55,   568,    57,    13,    57,    67,
      41,   522,    50,    64,   423,   523,    42,     1,   526,    81,
      82,   567,    55,   562,   531,    32,    59,   534,    80,    81,
      82,   383,    62,    43,    67,   387,    61,   126,    63,   546,
      65,   548,   553,   554,   555,   556,   609,   493,    62,     1,
      80,    81,    82,    80,    81,    82,     6,     7,     8,     9,
      61,   572,    63,   472,    14,   606,    80,    81,    82,   576,
      20,    55,    56,   580,   581,   582,   485,    40,    62,   488,
      55,   501,   502,    67,    59,    78,    79,    21,    81,   628,
      78,    79,    67,    77,    78,    79,    80,    81,    82,    60,
      61,    62,    63,    55,    65,   124,    90,   112,   113,   648,
      62,    33,   464,   522,   125,   622,    80,    81,    82,   626,
      78,    79,   633,     1,    83,    77,    78,    79,    80,    81,
      82,   121,   639,    78,    79,   642,    81,   557,   645,    78,
      79,    91,    81,   122,   553,   554,   555,   556,    60,    61,
      62,    63,   561,    57,   104,   662,    98,    99,    67,   109,
      56,   179,   180,   572,    60,    61,    62,    63,    57,     1,
      53,     3,     4,    53,    44,   595,    58,    55,    60,    61,
      62,    63,    31,    15,    62,    17,    78,    78,    78,    22,
      22,    78,    78,    25,    26,    55,    55,   606,    30,    77,
      78,    79,    80,    81,    82,    58,    78,    60,    61,    62,
      63,    78,    78,    78,    78,   635,    48,    49,    55,    64,
      52,    53,    54,    58,   633,    64,    60,    61,    62,    63,
     650,    65,    58,    55,    12,    56,    68,    71,    72,    73,
      74,    75,    76,    67,    67,    73,    78,    79,    78,   669,
     659,    78,    84,    85,    55,    87,    88,    89,    78,    55,
      53,    93,    94,    95,     1,    57,     3,     4,    67,    64,
      78,    56,    56,   105,   106,   107,    56,    58,    15,    23,
      17,    23,    58,    19,    73,    22,    56,    59,    25,    26,
      67,    78,    67,    30,    67,   127,   128,    64,    57,    64,
      24,   108,    55,    67,    78,    71,    45,    65,    57,    71,
      73,    48,    49,    67,    57,    52,    53,    54,    78,    67,
      55,    78,    78,    78,    60,    61,    62,    63,    22,    65,
      56,    68,    19,    69,    70,    71,    72,    73,    74,    75,
      76,    78,    79,    28,    71,    37,    55,    84,    85,    55,
      87,    88,    89,    58,    61,    78,    93,    94,    95,    71,
      23,    58,    64,    35,    64,    58,    27,    55,   105,   106,
     107,    55,     0,     1,    64,     3,     4,     5,     6,     7,
       8,     9,    78,    56,    60,    13,    14,    15,    16,    78,
     127,   128,    20,    21,     3,     3,     3,   131,    66,   307,
     118,   114,   134,   164,    32,    33,   177,   190,    36,   253,
     537,   393,    40,    41,    42,    43,    44,   498,   620,   619,
     464,   453,    50,    51,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,     3,     4,     5,     6,     7,     8,     9,    -1,
      -1,    -1,    13,    14,    15,    16,    -1,    -1,    -1,    20,
      21,    -1,    -1,    -1,    -1,    83,    -1,    -1,    -1,    -1,
      -1,    32,    33,    91,    -1,    36,    -1,    -1,    96,    40,
      41,    42,    43,    44,    -1,    -1,   104,   105,   106,    50,
      51,   109,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,   121,   122,    -1,   124,   125,   126,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    83,    -1,    -1,    -1,    -1,    -1,    -1,    23,
      91,    -1,    -1,    -1,    -1,    96,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,   104,   105,   106,    -1,    -1,   109,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
     121,   122,    -1,   124,   125,   126,    60,    61,    62,    63,
      -1,    65,    -1,    -1,    -1,    69,    70,    71,    72,    73,
      74,    75,    76,    53,    -1,    -1,    -1,    -1,    -1,    -1,
      60,    61,    62,    63,    -1,    65,    -1,    -1,    -1,    69,
      70,    71,    72,    73,    74,    75,    76,    53,    -1,    -1,
      -1,    -1,    -1,    -1,    60,    61,    62,    63,    -1,    65,
      -1,    -1,    -1,    69,    70,    71,    72,    73,    74,    75,
      76,    53,    -1,    -1,    -1,    -1,    -1,    -1,    60,    61,
      62,    63,    -1,    65,    -1,    -1,    -1,    69,    70,    71,
      72,    73,    74,    75,    76,    53,    -1,    -1,    -1,    -1,
      -1,    -1,    60,    61,    62,    63,    -1,    65,    -1,    -1,
      -1,    69,    70,    71,    72,    73,    74,    75,    76,    56,
      -1,    -1,    -1,    60,    61,    62,    63,    -1,    65,    -1,
      -1,    -1,    69,    70,    71,    72,    73,    74,    75,    76,
      56,    -1,    -1,    -1,    60,    61,    62,    63,    -1,    65,
      -1,    -1,    -1,    69,    70,    71,    72,    73,    74,    75,
      76,    56,    -1,    -1,    -1,    60,    61,    62,    63,    -1,
      65,    -1,    -1,    -1,    69,    70,    71,    72,    73,    74,
      75,    76,    56,    -1,    -1,    -1,    60,    61,    62,    63,
      -1,    65,    -1,    -1,    -1,    69,    70,    71,    72,    73,
      74,    75,    76,    56,    -1,    -1,    -1,    60,    61,    62,
      63,    -1,    65,    -1,    -1,    -1,    69,    70,    71,    72,
      73,    74,    75,    76,    56,    -1,    -1,    -1,    60,    61,
      62,    63,    -1,    65,    -1,    -1,    -1,    69,    70,    71,
      72,    73,    74,    75,    76,    56,    -1,    -1,    -1,    60,
      61,    62,    63,    -1,    65,    -1,    -1,    -1,    69,    70,
      71,    72,    73,    74,    75,    76,    56,    -1,    -1,    -1,
      60,    61,    62,    63,    -1,    65,    -1,    -1,    -1,    69,
      70,    71,    72,    73,    74,    75,    76,    56,    -1,    -1,
      -1,    60,    61,    62,    63,    -1,    65,    -1,    -1,    -1,
      69,    70,    71,    72,    73,    74,    75,    76,    60,    61,
      62,    63,    64,    65,    -1,    -1,    -1,    69,    70,    71,
      72,    73,    74,    75,    76,    60,    61,    62,    63,    -1,
      65,    -1,    67,    -1,    69,    70,    71,    72,    73,    74,
      75,    76,    60,    61,    62,    63,    -1,    65,    -1,    -1,
      -1,    69,    70,    71,    72,    73,    74,    75,    76,    60,
      61,    62,    63,    -1,    65,    -1,    -1,    -1,    -1,    70,
      71,    72,    73,    74,    75,    76
};

  /* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
     symbol of state STATE-NUM.  */
static const yytype_uint16 yystos[] =
{
       0,     1,   133,   134,     0,     3,     4,     5,     6,     7,
       8,     9,    14,    20,    36,    44,    51,    91,    96,   104,
     105,   106,   109,   135,   136,   137,   138,   139,   140,   141,
     143,   145,   146,   154,   163,   167,   171,   173,   176,   180,
     181,   182,   183,   184,   185,   186,   187,   188,   189,   190,
     191,   192,   193,   194,   195,   196,   197,   203,   271,    10,
      11,   102,    53,    53,    53,    53,    53,    53,     1,    78,
       1,    78,   204,    90,     1,    78,    79,   142,   158,   174,
      81,    53,   272,    15,   198,    16,   224,    13,   247,    41,
     225,    42,   226,    43,   231,    50,   233,    32,   236,   126,
     237,    40,   248,    21,   227,   124,   199,   125,   200,    33,
     228,    83,   259,   121,   122,   147,   164,   168,   172,   147,
     155,    81,    82,   161,    57,   205,    67,    57,   175,    67,
      92,   144,   177,    53,    53,   202,    78,   202,    78,    78,
      78,    78,    78,     1,    55,   202,    78,   202,   202,    78,
      78,    13,    15,    17,    29,   201,   201,     1,    54,    78,
     148,     1,    54,    78,    97,   165,     1,    54,   158,   169,
      54,   169,    54,    54,    78,   156,   161,    78,   161,   158,
     158,   145,     1,    54,    55,    78,   150,   178,   179,   273,
     203,   206,   202,    31,   245,   246,   245,    55,    55,    55,
     158,   234,   235,   202,   202,   245,   202,   202,   202,   202,
      57,    64,   149,   150,    22,   165,    22,    28,    57,   170,
      64,    58,   205,    58,   175,   175,   151,    64,     1,    64,
       1,    54,   110,   111,   114,   116,   117,   118,   119,   120,
     123,   129,   275,   206,     1,    15,    17,    22,    25,    26,
      30,    48,    49,    52,    54,    68,    78,    84,    85,    87,
      88,    89,    93,    94,    95,   107,   127,   128,   137,   138,
     139,   158,   202,   207,   208,   209,   212,   216,   219,   220,
     223,   229,   239,   241,   243,   249,   250,   252,   255,   260,
     262,   263,   266,   267,     1,    78,   202,    67,   202,   234,
     234,   234,   149,    56,    67,   202,   161,    62,    80,   159,
     160,   161,    73,   152,   159,   159,   159,   161,   149,   157,
     159,    12,    80,   150,   161,   162,   150,    78,     1,    78,
     276,    78,   276,   276,   276,   276,   276,   276,   142,   258,
     274,    54,   202,     1,    78,     1,    78,    55,    55,     1,
     258,   158,   158,    78,   208,     1,    55,    62,    77,   162,
     209,   211,   212,    55,    59,     1,    81,   209,   251,     1,
      81,   209,   261,    78,   211,    78,   211,     1,    34,    78,
      79,     1,   158,    53,   258,   264,     1,    55,     1,    55,
     240,    57,    64,    67,    78,    56,    56,    56,   238,   158,
      58,   160,   149,   159,    23,    23,    58,    73,   153,    67,
     149,    67,    56,    62,   150,   150,    67,   112,   113,    67,
      18,    37,   244,    64,   211,   211,   211,   211,   211,   149,
      60,    61,    62,    63,    64,    65,    69,    70,    71,    72,
      73,    74,    75,    76,   213,   161,   209,    60,    64,   209,
      60,    62,    73,    86,   253,    53,   256,    53,    78,    57,
      64,    24,     1,   158,   268,   269,   270,   108,   265,   234,
     211,     1,    55,   142,   161,   210,   211,   240,   149,   149,
     202,   202,   149,   149,   152,    67,   159,   159,    22,   170,
     159,   159,   159,    71,    78,   276,   276,   142,    45,   202,
     210,    56,    56,    56,   211,   211,   211,   211,   211,   211,
     211,   211,   211,   211,   211,   211,   211,   211,    90,   211,
     214,   215,    57,    81,   209,   211,    81,   209,    71,    73,
     261,    67,    78,   254,    67,    78,   257,    57,    98,    99,
     230,    78,    78,    57,    54,   269,    55,   258,    22,    56,
      56,   210,    58,    60,    61,    62,    63,   232,   152,   159,
      19,   166,   170,   159,   149,    71,   150,   113,   115,   277,
     277,   244,    23,   202,   202,    56,    67,   210,   209,   209,
      55,    55,    55,   211,    54,    78,   211,    54,    78,   230,
      58,    61,    78,   211,   211,   242,   162,    56,   210,   210,
     210,   210,   202,    71,   161,   149,    23,   153,   276,    62,
     162,   210,   221,    90,   211,    58,   211,   211,   211,    53,
      53,    58,    64,    35,    58,    56,    23,   202,   170,   153,
     159,   277,   162,    24,   218,    27,   222,    56,    56,    67,
     254,   257,    64,   211,    55,    64,   211,   149,   170,   210,
     217,    26,   202,   211,    54,    54,   211,    78,   211,    19,
     149,   202,    55,    56,    56,   161,   153,   211,    60,    56,
      78,   202
};

  /* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_uint16 yyr1[] =
{
       0,   132,   133,   133,   134,   134,   135,   135,   135,   135,
     135,   135,   135,   135,   135,   136,   137,   138,   139,   139,
     140,   141,   141,   142,   143,   144,   143,   145,   145,   145,
     145,   145,   145,   145,   145,   146,   146,   147,   147,   148,
     148,   148,   148,   149,   149,   151,   150,   152,   152,   153,
     153,   154,   155,   155,   156,   157,   157,   158,   158,   159,
     159,   160,   160,   161,   161,   162,   162,   163,   164,   164,
     164,   165,   165,   166,   167,   168,   168,   169,   169,   169,
     169,   169,   170,   170,   171,   172,   172,   173,   173,   174,
     174,   175,   175,   176,   177,   177,   177,   178,   178,   179,
     179,   179,   179,   181,   180,   182,   180,   183,   180,   184,
     180,   185,   180,   186,   180,   187,   180,   188,   180,   189,
     180,   190,   180,   191,   180,   192,   180,   193,   180,   194,
     180,   195,   180,   196,   180,   197,   180,   198,   199,   200,
     201,   201,   201,   201,   202,   202,   203,   203,   204,   204,
     205,   205,   206,   206,   207,   207,   207,   207,   207,   207,
     207,   207,   207,   207,   207,   207,   207,   207,   207,   207,
     207,   207,   207,   207,   207,   207,   207,   207,   207,   207,
     208,   208,   209,   209,   209,   209,   210,   210,   210,   210,
     210,   210,   210,   210,   211,   211,   211,   211,   211,   211,
     211,   211,   211,   211,   211,   211,   211,   211,   211,   211,
     211,   211,   211,   211,   213,   212,   214,   214,   215,   215,
     215,   215,   217,   216,   216,   218,   218,   219,   220,   221,
     221,   222,   222,   223,   224,   225,   226,   227,   228,   229,
     229,   229,   229,   230,   230,   232,   231,   233,   234,   234,
     235,   235,   236,   238,   237,   237,   239,   239,   239,   240,
     242,   241,   241,   243,   243,   243,   244,   244,   245,   245,
     246,   246,   246,   247,   248,   249,   249,   250,   250,   251,
     251,   251,   251,   253,   252,   252,   254,   254,   256,   255,
     255,   257,   257,   258,   258,   259,   260,   260,   260,   260,
     261,   261,   261,   261,   262,   262,   263,   264,   264,   265,
     265,   266,   266,   267,   268,   268,   269,   269,   269,   270,
     270,   272,   271,   273,   273,   273,   273,   273,   273,   273,
     273,   273,   273,   273,   274,   274,   275,   275,   275,   275,
     276,   276,   276,   277,   277,   277
};

  /* YYR2[YYN] -- Number of symbols on the right hand side of rule YYN.  */
static const yytype_uint8 yyr2[] =
{
       0,     2,     1,     1,     0,     2,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     2,     2,     2,     1,     1,
       2,     3,     2,     1,     1,     0,     4,     1,     1,     1,
       1,     1,     1,     1,     1,     4,     4,     0,     2,     5,
       3,     6,     1,     0,     1,     0,     4,     0,     5,     0,
       3,     4,     0,     2,     4,     3,     3,     1,     1,     1,
       2,     1,     1,     1,     1,     1,     1,     4,     0,     2,
       3,     9,     1,     1,     4,     0,     2,     4,     7,     8,
      11,     1,     0,     2,     4,     0,     2,     5,     2,     2,
       4,     0,     3,     4,     0,     2,     2,     3,     2,     4,
       4,     6,     1,     0,     2,     0,     2,     0,     2,     0,
       2,     0,     2,     0,     2,     0,     2,     0,     2,     0,
       2,     0,     2,     0,     2,     0,     2,     0,     2,     0,
       2,     0,     2,     0,     3,     0,     3,     2,     2,     2,
       2,     2,     2,     2,     3,     4,     2,     2,     2,     4,
       0,     3,     0,     2,     1,     2,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       3,     4,     1,     4,     3,     6,     1,     1,     3,     3,
       3,     3,     3,     1,     1,     2,     1,     3,     3,     3,
       3,     3,     3,     3,     3,     3,     3,     3,     3,     3,
       3,     2,     2,     1,     0,     5,     0,     1,     1,     1,
       3,     3,     0,     9,     2,     0,     2,     5,     7,     0,
       7,     0,     2,     2,     3,     4,     4,     3,     3,    11,
       8,     7,     2,     1,     1,     0,     8,     6,     0,     1,
       2,     4,     6,     0,     6,     2,     2,     3,     2,     4,
       0,     6,     2,     3,     5,     2,     0,     2,     0,     1,
       2,     3,     2,     2,     2,     2,     2,     4,     2,     1,
       2,     3,     4,     0,     8,     5,     1,     2,     0,     8,
       5,     1,     2,     1,     3,     4,     9,     7,     7,     2,
       1,     2,     3,     4,     4,     2,     9,     0,     1,     0,
       2,     2,     2,     4,     1,     2,     1,     6,     1,     1,
       4,     0,     5,     0,     3,     2,     3,     3,     3,     3,
       3,     3,     3,     3,     0,     1,     5,     5,     7,     1,
       1,     3,     1,     0,     2,     3
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
        case 3:
#line 115 "parse1.y" /* yacc.c:1646  */
    {diag("Illegal block", (char *)0);}
#line 2117 "parse1.c" /* yacc.c:1646  */
    break;

  case 4:
#line 118 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = ITEM0;}
#line 2123 "parse1.c" /* yacc.c:1646  */
    break;

  case 15:
#line 126 "parse1.y" /* yacc.c:1646  */
    {P1{if (!title) title = (yyvsp[0].qp);}}
#line 2129 "parse1.c" /* yacc.c:1646  */
    break;

  case 18:
#line 133 "parse1.y" /* yacc.c:1646  */
    { unitonflag = unitflagsave = 1;}
#line 2135 "parse1.c" /* yacc.c:1646  */
    break;

  case 19:
#line 135 "parse1.y" /* yacc.c:1646  */
    {unitonflag = unitflagsave = 0;}
#line 2141 "parse1.c" /* yacc.c:1646  */
    break;

  case 20:
#line 138 "parse1.y" /* yacc.c:1646  */
    {P1{include_file((yyvsp[0].qp));}}
#line 2147 "parse1.c" /* yacc.c:1646  */
    break;

  case 21:
#line 141 "parse1.y" /* yacc.c:1646  */
    {P1{define_value((yyvsp[-1].qp), (yyvsp[0].qp));}}
#line 2153 "parse1.c" /* yacc.c:1646  */
    break;

  case 22:
#line 142 "parse1.y" /* yacc.c:1646  */
    {myerr("syntax: DEFINE name integer");}
#line 2159 "parse1.c" /* yacc.c:1646  */
    break;

  case 23:
#line 145 "parse1.y" /* yacc.c:1646  */
    {P1{(yyvsp[0].qp)->element = (void *)checklocal(SYM((yyvsp[0].qp)));}}
#line 2165 "parse1.c" /* yacc.c:1646  */
    break;

  case 25:
#line 148 "parse1.y" /* yacc.c:1646  */
    {declare_level = atoi(STR((yyvsp[0].qp)));}
#line 2171 "parse1.c" /* yacc.c:1646  */
    break;

  case 26:
#line 149 "parse1.y" /* yacc.c:1646  */
    {declare_level = 0;}
#line 2177 "parse1.c" /* yacc.c:1646  */
    break;

  case 37:
#line 158 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = ITEM0;}
#line 2183 "parse1.c" /* yacc.c:1646  */
    break;

  case 39:
#line 165 "parse1.y" /* yacc.c:1646  */
    {P1{(yyval.qp) = itemarray(7, (yyvsp[-4].qp), (yyvsp[-1].qp), ITEM0, (yyvsp[-2].qp),ITEM0,ITEM0,ITEM0); declare(modlunitCONST, (yyvsp[-4].qp), (yyval.qp));}}
#line 2189 "parse1.c" /* yacc.c:1646  */
    break;

  case 40:
#line 167 "parse1.y" /* yacc.c:1646  */
    {P1{(yyval.qp) = itemarray(7, (yyvsp[-2].qp), (yyvsp[-1].qp), ITEM0,ITEM0,ITEM0,ITEM0,ITEM0); declare(modlunitCONST, (yyvsp[-2].qp), (yyval.qp));}}
#line 2195 "parse1.c" /* yacc.c:1646  */
    break;

  case 41:
#line 169 "parse1.y" /* yacc.c:1646  */
    {P1{(yyval.qp) = itemarray(7, (yyvsp[-5].qp), (yyvsp[-1].qp), (yyvsp[-3].qp), ITEM0, ITEM0,ITEM0,ITEM0); declare(modlunitCONST, (yyvsp[-5].qp), (yyval.qp));}}
#line 2201 "parse1.c" /* yacc.c:1646  */
    break;

  case 42:
#line 170 "parse1.y" /* yacc.c:1646  */
    {myerr("name = number");}
#line 2207 "parse1.c" /* yacc.c:1646  */
    break;

  case 43:
#line 173 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = ITEM0;}
#line 2213 "parse1.c" /* yacc.c:1646  */
    break;

  case 45:
#line 176 "parse1.y" /* yacc.c:1646  */
    {P1{lex_units();}}
#line 2219 "parse1.c" /* yacc.c:1646  */
    break;

  case 46:
#line 177 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = (yyvsp[-1].qp); lastok = (yyvsp[0].qp); P2{unitcheck(STR((yyvsp[-1].qp)));}}
#line 2225 "parse1.c" /* yacc.c:1646  */
    break;

  case 47:
#line 180 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = ITEM0;}
#line 2231 "parse1.c" /* yacc.c:1646  */
    break;

  case 49:
#line 184 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = ITEM0;}
#line 2237 "parse1.c" /* yacc.c:1646  */
    break;

  case 52:
#line 190 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = ITEM0;}
#line 2243 "parse1.c" /* yacc.c:1646  */
    break;

  case 54:
#line 194 "parse1.y" /* yacc.c:1646  */
    {P1{(yyval.qp) = itemarray(3,(yyvsp[-3].qp), (yyvsp[0].qp), (yyvsp[-1].qp)); declare(STEP1, (yyvsp[-3].qp), (yyval.qp));}}
#line 2249 "parse1.c" /* yacc.c:1646  */
    break;

  case 57:
#line 199 "parse1.y" /* yacc.c:1646  */
    {lastok = (yyvsp[0].qp);}
#line 2255 "parse1.c" /* yacc.c:1646  */
    break;

  case 58:
#line 200 "parse1.y" /* yacc.c:1646  */
    {lastok = (yyvsp[0].qp);}
#line 2261 "parse1.c" /* yacc.c:1646  */
    break;

  case 59:
#line 203 "parse1.y" /* yacc.c:1646  */
    {lastok = (yyvsp[0].qp);}
#line 2267 "parse1.c" /* yacc.c:1646  */
    break;

  case 60:
#line 205 "parse1.y" /* yacc.c:1646  */
    {lastok = (yyvsp[0].qp);}
#line 2273 "parse1.c" /* yacc.c:1646  */
    break;

  case 65:
#line 213 "parse1.y" /* yacc.c:1646  */
    {lastok = (yyvsp[0].qp);}
#line 2279 "parse1.c" /* yacc.c:1646  */
    break;

  case 66:
#line 215 "parse1.y" /* yacc.c:1646  */
    {lastok = (yyvsp[0].qp);}
#line 2285 "parse1.c" /* yacc.c:1646  */
    break;

  case 68:
#line 220 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = ITEM0;}
#line 2291 "parse1.c" /* yacc.c:1646  */
    break;

  case 69:
#line 222 "parse1.y" /* yacc.c:1646  */
    {P1{declare(INDEP, ITMA((yyvsp[0].qp))[0], (yyvsp[0].qp));}}
#line 2297 "parse1.c" /* yacc.c:1646  */
    break;

  case 70:
#line 224 "parse1.y" /* yacc.c:1646  */
    {P1{ITMA((yyvsp[0].qp))[7] = (yyvsp[-1].qp); declare(INDEP, ITMA((yyvsp[0].qp))[0], (yyvsp[0].qp));}}
#line 2303 "parse1.c" /* yacc.c:1646  */
    break;

  case 71:
#line 228 "parse1.y" /* yacc.c:1646  */
    {P1{(yyval.qp) = itemarray(8, (yyvsp[-8].qp), (yyvsp[0].qp), (yyvsp[-6].qp), (yyvsp[-4].qp), (yyvsp[-3].qp), (yyvsp[-2].qp), (yyvsp[-1].qp), ITEM0);}}
#line 2309 "parse1.c" /* yacc.c:1646  */
    break;

  case 72:
#line 229 "parse1.y" /* yacc.c:1646  */
    {myerr("name FROM number TO number WITH integer");}
#line 2315 "parse1.c" /* yacc.c:1646  */
    break;

  case 75:
#line 236 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = ITEM0;}
#line 2321 "parse1.c" /* yacc.c:1646  */
    break;

  case 76:
#line 238 "parse1.y" /* yacc.c:1646  */
    {P1{declare(DEP, ITMA((yyvsp[0].qp))[0], (yyvsp[0].qp));}}
#line 2327 "parse1.c" /* yacc.c:1646  */
    break;

  case 77:
#line 241 "parse1.y" /* yacc.c:1646  */
    {P1{(yyval.qp) = itemarray(7, (yyvsp[-3].qp), (yyvsp[-1].qp), ITEM0, ITEM0, ITEM0, (yyvsp[-2].qp), ITEM0);}}
#line 2333 "parse1.c" /* yacc.c:1646  */
    break;

  case 78:
#line 243 "parse1.y" /* yacc.c:1646  */
    {P1{(yyval.qp) = itemarray(7, (yyvsp[-6].qp), (yyvsp[-1].qp), (yyvsp[-4].qp), ITEM0, ITEM0, (yyvsp[-2].qp), ITEM0);}}
#line 2339 "parse1.c" /* yacc.c:1646  */
    break;

  case 79:
#line 245 "parse1.y" /* yacc.c:1646  */
    {P1{(yyval.qp) = itemarray(7, (yyvsp[-7].qp), (yyvsp[-1].qp), ITEM0, (yyvsp[-5].qp), (yyvsp[-3].qp), (yyvsp[-2].qp), ITEM0);}}
#line 2345 "parse1.c" /* yacc.c:1646  */
    break;

  case 80:
#line 247 "parse1.y" /* yacc.c:1646  */
    {P1{(yyval.qp) = itemarray(7, (yyvsp[-10].qp), (yyvsp[-1].qp), (yyvsp[-8].qp), (yyvsp[-5].qp), (yyvsp[-3].qp), (yyvsp[-2].qp), ITEM0);}}
#line 2351 "parse1.c" /* yacc.c:1646  */
    break;

  case 81:
#line 248 "parse1.y" /* yacc.c:1646  */
    {
diag("name FROM number TO number START number\n",
"FROM...TO and START are optional, name can be name[integer]\n");}
#line 2359 "parse1.c" /* yacc.c:1646  */
    break;

  case 82:
#line 252 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = ITEM0;}
#line 2365 "parse1.c" /* yacc.c:1646  */
    break;

  case 83:
#line 253 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = (yyvsp[0].qp);}
#line 2371 "parse1.c" /* yacc.c:1646  */
    break;

  case 85:
#line 258 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = ITEM0;}
#line 2377 "parse1.c" /* yacc.c:1646  */
    break;

  case 86:
#line 260 "parse1.y" /* yacc.c:1646  */
    {P1{declare(STAT, ITMA((yyvsp[0].qp))[0], (yyvsp[0].qp));}}
#line 2383 "parse1.c" /* yacc.c:1646  */
    break;

  case 88:
#line 263 "parse1.y" /* yacc.c:1646  */
    { myerr("PLOT namelist VS name");}
#line 2389 "parse1.c" /* yacc.c:1646  */
    break;

  case 91:
#line 269 "parse1.y" /* yacc.c:1646  */
    { (yyval.qp) = ITEM0;}
#line 2395 "parse1.c" /* yacc.c:1646  */
    break;

  case 92:
#line 271 "parse1.y" /* yacc.c:1646  */
    { (yyval.qp) = (yyvsp[-1].qp);}
#line 2401 "parse1.c" /* yacc.c:1646  */
    break;

  case 94:
#line 276 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = ITEM0;}
#line 2407 "parse1.c" /* yacc.c:1646  */
    break;

  case 97:
#line 281 "parse1.y" /* yacc.c:1646  */
    {P1{install_units(STR((yyvsp[-2].qp)), STR((yyvsp[0].qp)));}}
#line 2413 "parse1.c" /* yacc.c:1646  */
    break;

  case 98:
#line 282 "parse1.y" /* yacc.c:1646  */
    {myerr("Unit definition syntax: (units) = (units)");}
#line 2419 "parse1.c" /* yacc.c:1646  */
    break;

  case 99:
#line 285 "parse1.y" /* yacc.c:1646  */
    {P1{(yyval.qp) = itemarray(3, (yyvsp[-3].qp), (yyvsp[0].qp), (yyvsp[-1].qp)); declare(UFACTOR, (yyvsp[-3].qp), (yyval.qp));}}
#line 2425 "parse1.c" /* yacc.c:1646  */
    break;

  case 100:
#line 287 "parse1.y" /* yacc.c:1646  */
    {P1{Item *q; double d, unit_mag();
		    Unit_push(STR((yyvsp[-1].qp)));
			Unit_push(STR((yyvsp[0].qp))); unit_div();
			dimensionless();
			Sprintf(buf, "%g", unit_mag());
			(yyval.qp) = itemarray(3, (yyvsp[-3].qp), (yyvsp[0].qp), lappendstr(misc, buf));
/*printf("%s has value %s and units (%s)\n", SYM($1)->name, buf, STR($5));*/
		    unit_pop();
		    declare(UFACTOR, (yyvsp[-3].qp), (yyval.qp));
		}}
#line 2440 "parse1.c" /* yacc.c:1646  */
    break;

  case 101:
#line 298 "parse1.y" /* yacc.c:1646  */
    {P1{ Item *q; double unit_mag();
		    Unit_push(STR((yyvsp[-3].qp))); Unit_push(STR((yyvsp[0].qp))); unit_div();
		    q = lappendstr(misc, unit_str());
		    dimensionless();
		    Sprintf(buf, "%g", 1./unit_mag());
		    (yyval.qp) = itemarray(3, (yyvsp[-5].qp), lappendstr(misc, buf), q),
/*printf("%s has value %s and units (%s)\n", SYM($1)->name, STR(q), buf );*/
		    unit_pop();
		    declare(UFACTOR, (yyvsp[-5].qp), (yyval.qp));
		}}
#line 2455 "parse1.c" /* yacc.c:1646  */
    break;

  case 102:
#line 308 "parse1.y" /* yacc.c:1646  */
    {myerr("Unit factor syntax: examples:\n\
foot2inch = (foot) -> (inch)\n\
F = 96520 (coulombs)\n\
R = (k-mole) (joule/degC)");
		}
#line 2465 "parse1.c" /* yacc.c:1646  */
    break;

  case 103:
#line 314 "parse1.y" /* yacc.c:1646  */
    {blocktype = INITIAL1;}
#line 2471 "parse1.c" /* yacc.c:1646  */
    break;

  case 104:
#line 315 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = (yyvsp[0].qp);}
#line 2477 "parse1.c" /* yacc.c:1646  */
    break;

  case 105:
#line 316 "parse1.y" /* yacc.c:1646  */
    {lexcontext = NONLINEAR; blocktype = DERIVATIVE;}
#line 2483 "parse1.c" /* yacc.c:1646  */
    break;

  case 106:
#line 317 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = (yyvsp[0].qp);}
#line 2489 "parse1.c" /* yacc.c:1646  */
    break;

  case 107:
#line 318 "parse1.y" /* yacc.c:1646  */
    {blocktype = BREAKPOINT;}
#line 2495 "parse1.c" /* yacc.c:1646  */
    break;

  case 108:
#line 319 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = (yyvsp[0].qp);}
#line 2501 "parse1.c" /* yacc.c:1646  */
    break;

  case 109:
#line 320 "parse1.y" /* yacc.c:1646  */
    {lexcontext = blocktype = LINEAR;}
#line 2507 "parse1.c" /* yacc.c:1646  */
    break;

  case 110:
#line 321 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = (yyvsp[0].qp);}
#line 2513 "parse1.c" /* yacc.c:1646  */
    break;

  case 111:
#line 322 "parse1.y" /* yacc.c:1646  */
    {lexcontext = blocktype = NONLINEAR;}
#line 2519 "parse1.c" /* yacc.c:1646  */
    break;

  case 112:
#line 323 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = (yyvsp[0].qp);}
#line 2525 "parse1.c" /* yacc.c:1646  */
    break;

  case 113:
#line 324 "parse1.y" /* yacc.c:1646  */
    {blocktype = FUNCTION1;}
#line 2531 "parse1.c" /* yacc.c:1646  */
    break;

  case 114:
#line 325 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = (yyvsp[0].qp);}
#line 2537 "parse1.c" /* yacc.c:1646  */
    break;

  case 115:
#line 326 "parse1.y" /* yacc.c:1646  */
    {blocktype = FUNCTION_TABLE;}
#line 2543 "parse1.c" /* yacc.c:1646  */
    break;

  case 116:
#line 327 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = (yyvsp[0].qp);}
#line 2549 "parse1.c" /* yacc.c:1646  */
    break;

  case 117:
#line 328 "parse1.y" /* yacc.c:1646  */
    {blocktype = PROCEDURE;}
#line 2555 "parse1.c" /* yacc.c:1646  */
    break;

  case 118:
#line 329 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = (yyvsp[0].qp);}
#line 2561 "parse1.c" /* yacc.c:1646  */
    break;

  case 119:
#line 330 "parse1.y" /* yacc.c:1646  */
    {blocktype = PROCEDURE;}
#line 2567 "parse1.c" /* yacc.c:1646  */
    break;

  case 120:
#line 331 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = (yyvsp[0].qp);}
#line 2573 "parse1.c" /* yacc.c:1646  */
    break;

  case 121:
#line 332 "parse1.y" /* yacc.c:1646  */
    {blocktype = TERMINAL;}
#line 2579 "parse1.c" /* yacc.c:1646  */
    break;

  case 122:
#line 333 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = (yyvsp[0].qp);}
#line 2585 "parse1.c" /* yacc.c:1646  */
    break;

  case 123:
#line 334 "parse1.y" /* yacc.c:1646  */
    {blocktype = DISCRETE;}
#line 2591 "parse1.c" /* yacc.c:1646  */
    break;

  case 124:
#line 335 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = (yyvsp[0].qp);}
#line 2597 "parse1.c" /* yacc.c:1646  */
    break;

  case 125:
#line 336 "parse1.y" /* yacc.c:1646  */
    {blocktype = CONSTRUCTOR;}
#line 2603 "parse1.c" /* yacc.c:1646  */
    break;

  case 126:
#line 337 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = (yyvsp[0].qp);}
#line 2609 "parse1.c" /* yacc.c:1646  */
    break;

  case 127:
#line 338 "parse1.y" /* yacc.c:1646  */
    {blocktype = DESTRUCTOR;}
#line 2615 "parse1.c" /* yacc.c:1646  */
    break;

  case 128:
#line 339 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = (yyvsp[0].qp);}
#line 2621 "parse1.c" /* yacc.c:1646  */
    break;

  case 129:
#line 340 "parse1.y" /* yacc.c:1646  */
    {lexcontext = blocktype = PARTIAL;}
#line 2627 "parse1.c" /* yacc.c:1646  */
    break;

  case 130:
#line 341 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = (yyvsp[0].qp);}
#line 2633 "parse1.c" /* yacc.c:1646  */
    break;

  case 131:
#line 342 "parse1.y" /* yacc.c:1646  */
    {lexcontext = blocktype = KINETIC;
		P3 R0{unitflagsave=unitonflag; unitonflag=0;}}
#line 2640 "parse1.c" /* yacc.c:1646  */
    break;

  case 132:
#line 345 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = (yyvsp[0].qp); P3{ R0{unitonflag=unitflagsave;}
		R1{clear_compartlist();} parse_restart((yyval.qp), 1);}}
#line 2647 "parse1.c" /* yacc.c:1646  */
    break;

  case 133:
#line 347 "parse1.y" /* yacc.c:1646  */
    {blocktype = BEFORE;}
#line 2653 "parse1.c" /* yacc.c:1646  */
    break;

  case 134:
#line 347 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = (yyvsp[-1].qp);}
#line 2659 "parse1.c" /* yacc.c:1646  */
    break;

  case 135:
#line 348 "parse1.y" /* yacc.c:1646  */
    {blocktype = AFTER;}
#line 2665 "parse1.c" /* yacc.c:1646  */
    break;

  case 136:
#line 348 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = (yyvsp[-1].qp);}
#line 2671 "parse1.c" /* yacc.c:1646  */
    break;

  case 144:
#line 362 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = (yyvsp[-1].qp);}
#line 2677 "parse1.c" /* yacc.c:1646  */
    break;

  case 145:
#line 364 "parse1.y" /* yacc.c:1646  */
    {P1{poplocal();}}
#line 2683 "parse1.c" /* yacc.c:1646  */
    break;

  case 147:
#line 367 "parse1.y" /* yacc.c:1646  */
    {myerr("Illegal LOCAL declaration");}
#line 2689 "parse1.c" /* yacc.c:1646  */
    break;

  case 148:
#line 370 "parse1.y" /* yacc.c:1646  */
    {P1{pushlocal((yyvsp[-1].qp), (yyvsp[0].qp));}}
#line 2695 "parse1.c" /* yacc.c:1646  */
    break;

  case 149:
#line 372 "parse1.y" /* yacc.c:1646  */
    {P1{install_local((yyvsp[-1].qp), (yyvsp[0].qp));}}
#line 2701 "parse1.c" /* yacc.c:1646  */
    break;

  case 150:
#line 375 "parse1.y" /* yacc.c:1646  */
    { (yyval.qp) = ITEM0;}
#line 2707 "parse1.c" /* yacc.c:1646  */
    break;

  case 151:
#line 377 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = (yyvsp[-1].qp);}
#line 2713 "parse1.c" /* yacc.c:1646  */
    break;

  case 152:
#line 380 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = ITEM0;}
#line 2719 "parse1.c" /* yacc.c:1646  */
    break;

  case 179:
#line 409 "parse1.y" /* yacc.c:1646  */
    {myerr("Illegal statement");}
#line 2725 "parse1.c" /* yacc.c:1646  */
    break;

  case 180:
#line 412 "parse1.y" /* yacc.c:1646  */
    {
		  P3 {
			if (SYM((yyvsp[-2].qp))->subtype & LOCL) {
				SYM((yyvsp[-2].qp))->u.str = stralloc(unit_str(), (char *)0);
				unit_pop();
			}else{
			   unit_push((yyvsp[-2].qp)); unit_swap();
			   unit_cmp((yyvsp[-2].qp), (yyvsp[-1].qp), lastok); unit_pop();
			}
		  }
		}
#line 2741 "parse1.c" /* yacc.c:1646  */
    break;

  case 181:
#line 424 "parse1.y" /* yacc.c:1646  */
    {
		  P3 {
			unit_cmp((yyvsp[-2].qp), (yyvsp[-1].qp), lastok); unit_pop();
		  }
		}
#line 2751 "parse1.c" /* yacc.c:1646  */
    break;

  case 182:
#line 431 "parse1.y" /* yacc.c:1646  */
    {lastok = (yyvsp[0].qp);
		  P1{SYM((yyvsp[0].qp))->usage |= DEP;}
		  P2{ if (SYM((yyvsp[0].qp))->subtype & ARRAY) {
			myerr("variable needs an index");}
		  }
		}
#line 2762 "parse1.c" /* yacc.c:1646  */
    break;

  case 183:
#line 438 "parse1.y" /* yacc.c:1646  */
    {lastok = (yyvsp[0].qp); 
		  P1{SYM((yyvsp[-3].qp))->usage |= DEP;}
		  P2{ if ((SYM((yyvsp[-3].qp))->subtype & ARRAY) == 0)
			{myerr("variable is not an array");}
		  }
		}
#line 2773 "parse1.c" /* yacc.c:1646  */
    break;

  case 184:
#line 445 "parse1.y" /* yacc.c:1646  */
    {lastok = (yyvsp[0].qp);
		  P1{SYM((yyvsp[-2].qp))->usage |= DEP;}
		  P2{ if (SYM((yyvsp[-2].qp))->subtype & ARRAY) {
			myerr("variable needs an index");}
		  }
		}
#line 2784 "parse1.c" /* yacc.c:1646  */
    break;

  case 185:
#line 453 "parse1.y" /* yacc.c:1646  */
    {lastok = (yyvsp[0].qp);
		  P1{SYM((yyvsp[-5].qp))->usage |= DEP;}
		  P2{ if ((SYM((yyvsp[-5].qp))->subtype & ARRAY) == 0)
			{myerr("variable is not an array");}
		  }
		}
#line 2795 "parse1.c" /* yacc.c:1646  */
    break;

  case 186:
#line 461 "parse1.y" /* yacc.c:1646  */
    {lastok = (yyvsp[0].qp); P1{SYM((yyvsp[0].qp))->usage |= DEP;}}
#line 2801 "parse1.c" /* yacc.c:1646  */
    break;

  case 187:
#line 462 "parse1.y" /* yacc.c:1646  */
    { lastok = (yyvsp[0].qp);}
#line 2807 "parse1.c" /* yacc.c:1646  */
    break;

  case 188:
#line 463 "parse1.y" /* yacc.c:1646  */
    { lastok = (yyvsp[0].qp);}
#line 2813 "parse1.c" /* yacc.c:1646  */
    break;

  case 193:
#line 468 "parse1.y" /* yacc.c:1646  */
    {myerr("Illegal integer expression");}
#line 2819 "parse1.c" /* yacc.c:1646  */
    break;

  case 194:
#line 470 "parse1.y" /* yacc.c:1646  */
    {P3{unit_push((yyvsp[0].qp));}}
#line 2825 "parse1.c" /* yacc.c:1646  */
    break;

  case 195:
#line 471 "parse1.y" /* yacc.c:1646  */
    {P3{if ((yyvsp[0].qp)) {
				Unit_push(STR((yyvsp[0].qp)));
			     }else{		
				Unit_push((char *)0);
			     }
			}}
#line 2836 "parse1.c" /* yacc.c:1646  */
    break;

  case 196:
#line 477 "parse1.y" /* yacc.c:1646  */
    {P3{unit_push((yyvsp[0].qp));}}
#line 2842 "parse1.c" /* yacc.c:1646  */
    break;

  case 197:
#line 478 "parse1.y" /* yacc.c:1646  */
    { lastok = (yyvsp[0].qp);
			  P3{ifcnvfac((yyvsp[0].qp));}
			}
#line 2850 "parse1.c" /* yacc.c:1646  */
    break;

  case 198:
#line 481 "parse1.y" /* yacc.c:1646  */
    {P3{unit_cmp((yyvsp[-2].qp), (yyvsp[-1].qp), lastok);}}
#line 2856 "parse1.c" /* yacc.c:1646  */
    break;

  case 199:
#line 482 "parse1.y" /* yacc.c:1646  */
    {P3{unit_cmp((yyvsp[-2].qp), (yyvsp[-1].qp), lastok);}}
#line 2862 "parse1.c" /* yacc.c:1646  */
    break;

  case 200:
#line 483 "parse1.y" /* yacc.c:1646  */
    {P3{unit_mul();}}
#line 2868 "parse1.c" /* yacc.c:1646  */
    break;

  case 201:
#line 484 "parse1.y" /* yacc.c:1646  */
    {P3{unit_div();}}
#line 2874 "parse1.c" /* yacc.c:1646  */
    break;

  case 202:
#line 485 "parse1.y" /* yacc.c:1646  */
    {P3{unit_exponent((yyvsp[0].qp), lastok);}}
#line 2880 "parse1.c" /* yacc.c:1646  */
    break;

  case 203:
#line 486 "parse1.y" /* yacc.c:1646  */
    {P3{unit_logic(1, (yyvsp[-2].qp), (yyvsp[-1].qp), lastok);}}
#line 2886 "parse1.c" /* yacc.c:1646  */
    break;

  case 204:
#line 487 "parse1.y" /* yacc.c:1646  */
    {P3{unit_logic(1, (yyvsp[-2].qp), (yyvsp[-1].qp), lastok);}}
#line 2892 "parse1.c" /* yacc.c:1646  */
    break;

  case 205:
#line 488 "parse1.y" /* yacc.c:1646  */
    {P3{unit_logic(2, (yyvsp[-2].qp), (yyvsp[-1].qp), lastok);}}
#line 2898 "parse1.c" /* yacc.c:1646  */
    break;

  case 206:
#line 489 "parse1.y" /* yacc.c:1646  */
    {P3{unit_logic(2, (yyvsp[-2].qp), (yyvsp[-1].qp), lastok);}}
#line 2904 "parse1.c" /* yacc.c:1646  */
    break;

  case 207:
#line 490 "parse1.y" /* yacc.c:1646  */
    {P3{unit_logic(2, (yyvsp[-2].qp), (yyvsp[-1].qp), lastok);}}
#line 2910 "parse1.c" /* yacc.c:1646  */
    break;

  case 208:
#line 491 "parse1.y" /* yacc.c:1646  */
    {P3{unit_logic(2, (yyvsp[-2].qp), (yyvsp[-1].qp), lastok);}}
#line 2916 "parse1.c" /* yacc.c:1646  */
    break;

  case 209:
#line 492 "parse1.y" /* yacc.c:1646  */
    {P3{unit_logic(2, (yyvsp[-2].qp), (yyvsp[-1].qp), lastok);}}
#line 2922 "parse1.c" /* yacc.c:1646  */
    break;

  case 210:
#line 493 "parse1.y" /* yacc.c:1646  */
    {P3{unit_logic(2, (yyvsp[-2].qp), (yyvsp[-1].qp), lastok);}}
#line 2928 "parse1.c" /* yacc.c:1646  */
    break;

  case 211:
#line 494 "parse1.y" /* yacc.c:1646  */
    {P3{unit_pop(); Unit_push("");}}
#line 2934 "parse1.c" /* yacc.c:1646  */
    break;

  case 213:
#line 496 "parse1.y" /* yacc.c:1646  */
    {myerr("Illegal expression");}
#line 2940 "parse1.c" /* yacc.c:1646  */
    break;

  case 214:
#line 498 "parse1.y" /* yacc.c:1646  */
    {P3{unit_push_args((yyvsp[-1].qp));}}
#line 2946 "parse1.c" /* yacc.c:1646  */
    break;

  case 215:
#line 499 "parse1.y" /* yacc.c:1646  */
    { lastok = (yyvsp[0].qp); P1{SYM((yyvsp[-4].qp))->usage |= FUNCT;}
		  P3{unit_done_args();}
		}
#line 2954 "parse1.c" /* yacc.c:1646  */
    break;

  case 216:
#line 504 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = ITEM0; }
#line 2960 "parse1.c" /* yacc.c:1646  */
    break;

  case 218:
#line 507 "parse1.y" /* yacc.c:1646  */
    {P3{unit_chk_arg((yyvsp[0].qp), lastok);}}
#line 2966 "parse1.c" /* yacc.c:1646  */
    break;

  case 220:
#line 509 "parse1.y" /* yacc.c:1646  */
    {P3{unit_chk_arg((yyvsp[0].qp), lastok);}}
#line 2972 "parse1.c" /* yacc.c:1646  */
    break;

  case 222:
#line 512 "parse1.y" /* yacc.c:1646  */
    {P1{pushlocal((yyvsp[-5].qp), ITEM0);}}
#line 2978 "parse1.c" /* yacc.c:1646  */
    break;

  case 223:
#line 513 "parse1.y" /* yacc.c:1646  */
    {P1{(yyval.qp) = itemarray(6, (yyvsp[-8].qp), (yyvsp[-7].qp), (yyvsp[-5].qp), (yyvsp[-3].qp), (yyvsp[-2].qp), (yyvsp[0].qp)); poplocal();}}
#line 2984 "parse1.c" /* yacc.c:1646  */
    break;

  case 224:
#line 514 "parse1.y" /* yacc.c:1646  */
    {
myerr("FROM intvar = intexpr TO intexpr BY intexpr { statements }");}
#line 2991 "parse1.c" /* yacc.c:1646  */
    break;

  case 225:
#line 517 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = ITEM0;}
#line 2997 "parse1.c" /* yacc.c:1646  */
    break;

  case 227:
#line 520 "parse1.y" /* yacc.c:1646  */
    {P3{unit_pop();}}
#line 3003 "parse1.c" /* yacc.c:1646  */
    break;

  case 228:
#line 522 "parse1.y" /* yacc.c:1646  */
    {P3{unit_pop();}}
#line 3009 "parse1.c" /* yacc.c:1646  */
    break;

  case 229:
#line 525 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = ITEM0;}
#line 3015 "parse1.c" /* yacc.c:1646  */
    break;

  case 230:
#line 526 "parse1.y" /* yacc.c:1646  */
    {P3{unit_pop();}}
#line 3021 "parse1.c" /* yacc.c:1646  */
    break;

  case 231:
#line 529 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = ITEM0;}
#line 3027 "parse1.c" /* yacc.c:1646  */
    break;

  case 234:
#line 535 "parse1.y" /* yacc.c:1646  */
    {P1{(yyval.qp) = itemarray(3, (yyvsp[-2].qp), (yyvsp[-1].qp), (yyvsp[0].qp)); declare(DERF, (yyvsp[-1].qp), (yyval.qp));}}
#line 3033 "parse1.c" /* yacc.c:1646  */
    break;

  case 235:
#line 538 "parse1.y" /* yacc.c:1646  */
    {P1{(yyval.qp) = itemarray(4, (yyvsp[-3].qp), (yyvsp[-2].qp), (yyvsp[-1].qp), (yyvsp[0].qp)); declare(LINF, (yyvsp[-2].qp), (yyval.qp));}}
#line 3039 "parse1.c" /* yacc.c:1646  */
    break;

  case 236:
#line 541 "parse1.y" /* yacc.c:1646  */
    {P1{(yyval.qp) = itemarray(4, (yyvsp[-3].qp), (yyvsp[-2].qp), (yyvsp[-1].qp), (yyvsp[0].qp)); declare(NLINF, (yyvsp[-2].qp), (yyval.qp));}}
#line 3045 "parse1.c" /* yacc.c:1646  */
    break;

  case 237:
#line 544 "parse1.y" /* yacc.c:1646  */
    {P1{(yyval.qp) = itemarray(3, (yyvsp[-2].qp), (yyvsp[-1].qp), (yyvsp[0].qp)); declare(DISCF, (yyvsp[-1].qp), (yyval.qp));}}
#line 3051 "parse1.c" /* yacc.c:1646  */
    break;

  case 238:
#line 547 "parse1.y" /* yacc.c:1646  */
    {P1{(yyval.qp) = itemarray(3, (yyvsp[-2].qp), (yyvsp[-1].qp), (yyvsp[0].qp)); declare(PARF, (yyvsp[-1].qp), (yyval.qp));}}
#line 3057 "parse1.c" /* yacc.c:1646  */
    break;

  case 239:
#line 550 "parse1.y" /* yacc.c:1646  */
    {lastok = (yyvsp[0].qp);
		 P3{
			unit_push((yyvsp[-7].qp)); unit_del(2); unit_mul();
			unit_push((yyvsp[-3].qp)); unit_mul();
			unit_push((yyvsp[0].qp)); unit_cmp((yyvsp[-7].qp), (yyvsp[-1].qp), (yyvsp[0].qp));
			unit_push((yyvsp[-9].qp)); unit_swap(); unit_cmp((yyvsp[-9].qp), (yyvsp[-8].qp), (yyvsp[0].qp));
			unit_pop();
		}}
#line 3070 "parse1.c" /* yacc.c:1646  */
    break;

  case 240:
#line 559 "parse1.y" /* yacc.c:1646  */
    {P3{
			unit_del(1);
			unit_push((yyvsp[-5].qp)); unit_mul(); unit_swap();
			unit_cmp((yyvsp[-6].qp),(yyvsp[-1].qp),lastok); unit_pop();
		}}
#line 3080 "parse1.c" /* yacc.c:1646  */
    break;

  case 241:
#line 565 "parse1.y" /* yacc.c:1646  */
    {P3{unit_push((yyvsp[-5].qp)); unit_swap();
		    unit_cmp((yyvsp[-5].qp),(yyvsp[-1].qp),lastok); unit_pop();
		}}
#line 3088 "parse1.c" /* yacc.c:1646  */
    break;

  case 242:
#line 568 "parse1.y" /* yacc.c:1646  */
    {myerr("Illeqal partial diffeq");}
#line 3094 "parse1.c" /* yacc.c:1646  */
    break;

  case 245:
#line 573 "parse1.y" /* yacc.c:1646  */
    {P1{pushlocal((yyvsp[-4].qp), ITEM0); func_unit((yyvsp[-4].qp), (yyvsp[0].qp));}}
#line 3100 "parse1.c" /* yacc.c:1646  */
    break;

  case 246:
#line 575 "parse1.y" /* yacc.c:1646  */
    {P1{
		    declare(FUNCT, (yyvsp[-6].qp), itemarray(3, (yyvsp[-6].qp), (yyvsp[-2].qp), (yyvsp[-4].qp)));
		    poplocal(); poplocal(); SYM((yyvsp[-6].qp))->usage |= FUNCT;
		   }
		}
#line 3110 "parse1.c" /* yacc.c:1646  */
    break;

  case 247:
#line 582 "parse1.y" /* yacc.c:1646  */
    {P1{pushlocal((yyvsp[-4].qp), ITEM0); func_unit((yyvsp[-4].qp), (yyvsp[0].qp));}
		 P1{
		    declare(FUNCT, (yyvsp[-4].qp), itemarray(3, (yyvsp[-4].qp), (yyvsp[0].qp), (yyvsp[-2].qp)));
		    poplocal(); poplocal(); SYM((yyvsp[-4].qp))->usage |= FUNCT;
		   }
		}
#line 3121 "parse1.c" /* yacc.c:1646  */
    break;

  case 248:
#line 590 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = ITEM0; P1{pushlocal(ITEM0, ITEM0);}
			if (args) { freelist(&args); }
			args = newlist();
		}
#line 3130 "parse1.c" /* yacc.c:1646  */
    break;

  case 250:
#line 597 "parse1.y" /* yacc.c:1646  */
    {P1{
		    if (args) { freelist(&args); }
		    args = newlist();
		    (yyval.qp) = (Item *)newlist();
		    pushlocal((yyvsp[-1].qp), ITEM0);
		    Lappendsym(args, checklocal(SYM((yyvsp[-1].qp))));
		    if ((yyvsp[0].qp)) {
			checklocal(SYM((yyvsp[-1].qp)))->u.str = STR((yyvsp[0].qp));
			Lappendstr((List *)(yyval.qp), STR((yyvsp[0].qp)));
		    }else{
			Lappendstr((List *)(yyval.qp), "");
		    }
		}}
#line 3148 "parse1.c" /* yacc.c:1646  */
    break;

  case 251:
#line 611 "parse1.y" /* yacc.c:1646  */
    {P1{
		    pushlocal((yyvsp[-1].qp), ITEM0);
		    Lappendsym(args, checklocal(SYM((yyvsp[-1].qp))));
		    if ((yyvsp[0].qp)) {
			checklocal(SYM((yyvsp[-1].qp)))->u.str = STR((yyvsp[0].qp));
			Lappendstr((List *)(yyvsp[-3].qp), STR((yyvsp[0].qp)));
		    }else{
			Lappendstr((List *)(yyvsp[-3].qp), "");
		    }
		}}
#line 3163 "parse1.c" /* yacc.c:1646  */
    break;

  case 252:
#line 623 "parse1.y" /* yacc.c:1646  */
    {P1{
		    declare(PROCED, (yyvsp[-4].qp), itemarray(3, (yyvsp[-4].qp), ITEM0, (yyvsp[-2].qp)));
		    poplocal(); SYM((yyvsp[-4].qp))->usage |= FUNCT;
		   }
		}
#line 3173 "parse1.c" /* yacc.c:1646  */
    break;

  case 253:
#line 630 "parse1.y" /* yacc.c:1646  */
    {P1{
			List* l; Item* q;
			if ((yyvsp[-1].qp) == ITEM0) {
				diag("NET_RECEIVE must have at least one argument", (char*)0);
			}
			l = newlist();
			q = lappendsym(l, install("flag", NAME));
			pushlocal(q, ITEM0);
			Lappendstr((List *)(yyvsp[-1].qp), "");
			netreceive_arglist = args; args = (List*)0;
		}}
#line 3189 "parse1.c" /* yacc.c:1646  */
    break;

  case 254:
#line 642 "parse1.y" /* yacc.c:1646  */
    { P1{poplocal();}}
#line 3195 "parse1.c" /* yacc.c:1646  */
    break;

  case 255:
#line 643 "parse1.y" /* yacc.c:1646  */
    { myerr("Illegal NETRECEIVE block");}
#line 3201 "parse1.c" /* yacc.c:1646  */
    break;

  case 258:
#line 648 "parse1.y" /* yacc.c:1646  */
    { myerr("Illegal WATCH statement");}
#line 3207 "parse1.c" /* yacc.c:1646  */
    break;

  case 260:
#line 653 "parse1.y" /* yacc.c:1646  */
    {P1{ Item* q1, *q2;
		  q1 = netreceive_arglist->next;
		  q2 = args->next;
		  while (q1 != netreceive_arglist && q2 != args) {
			Symbol* s1 = SYM(q1);
			Symbol* s2 = SYM(q2);
			if (s1->u.str) { /* s2 must be nil or same */
				if (s2->u.str) {
					if (strcmp(s1->u.str, s2->u.str) != 0) {
						diag(s1->name, " in FOR_NETCONS arglist does not have same units as corresponding arg in NET_RECEIVE arglist");
					}
				}else{
					s2->u.str = s1->u.str;
				}
			}else{ /* s2 must be nil */
				if (s2->u.str) {
					diag(s1->name, " in FOR_NETCONS arglist does not have same units as corresponding arg in NET_RECEIVE arglist");
				}
			}
/*printf("|%s|%s|  |%s|%s|\n", s1->name, s1->u.str, s2->name, s2->u.str);*/
			q1 = q1->next;
			q2 = q2->next;
		  }
		  if (q1 != netreceive_arglist || q2 != args) {
			diag("NET_RECEIVE and FOR_NETCONS do not have same number of arguments", (char*)0);
		  }
		}}
#line 3239 "parse1.c" /* yacc.c:1646  */
    break;

  case 262:
#line 681 "parse1.y" /* yacc.c:1646  */
    { myerr("Illegal FOR_NETCONS statement");}
#line 3245 "parse1.c" /* yacc.c:1646  */
    break;

  case 263:
#line 685 "parse1.y" /* yacc.c:1646  */
    {P1{(yyval.qp) = itemarray(4, (yyvsp[-2].qp), (yyvsp[-1].qp), ITEM0, (yyvsp[0].qp)); lappenditem(solvelist, (yyval.qp));}}
#line 3251 "parse1.c" /* yacc.c:1646  */
    break;

  case 264:
#line 687 "parse1.y" /* yacc.c:1646  */
    {P1{(yyval.qp) = itemarray(4, (yyvsp[-4].qp), (yyvsp[-3].qp), (yyvsp[-2].qp), (yyvsp[-1].qp)); lappenditem(solvelist, (yyval.qp));}}
#line 3257 "parse1.c" /* yacc.c:1646  */
    break;

  case 265:
#line 688 "parse1.y" /* yacc.c:1646  */
    { myerr("Illegal SOLVE statement");}
#line 3263 "parse1.c" /* yacc.c:1646  */
    break;

  case 266:
#line 691 "parse1.y" /* yacc.c:1646  */
    { (yyval.qp) = ITEM0; }
#line 3269 "parse1.c" /* yacc.c:1646  */
    break;

  case 267:
#line 693 "parse1.y" /* yacc.c:1646  */
    { (yyval.qp) = (yyvsp[0].qp); }
#line 3275 "parse1.c" /* yacc.c:1646  */
    break;

  case 268:
#line 696 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = ITEM0;}
#line 3281 "parse1.c" /* yacc.c:1646  */
    break;

  case 270:
#line 700 "parse1.y" /* yacc.c:1646  */
    { P2{if(!(SYM((yyvsp[0].qp))->subtype&STAT)){
			myerr("Not a STATE");}
		  }
		}
#line 3290 "parse1.c" /* yacc.c:1646  */
    break;

  case 271:
#line 705 "parse1.y" /* yacc.c:1646  */
    { P2{if(!(SYM((yyvsp[-1].qp))->subtype&STAT)){
			myerr("Not a STATE");}
		  }
		}
#line 3299 "parse1.c" /* yacc.c:1646  */
    break;

  case 272:
#line 709 "parse1.y" /* yacc.c:1646  */
    {myerr("Syntax: SOLVEFOR name, name, ...");}
#line 3305 "parse1.c" /* yacc.c:1646  */
    break;

  case 276:
#line 716 "parse1.y" /* yacc.c:1646  */
    {myerr("syntax is SENS var1, var2, var3, etc");}
#line 3311 "parse1.c" /* yacc.c:1646  */
    break;

  case 277:
#line 720 "parse1.y" /* yacc.c:1646  */
    {P3{unit_cmp((yyvsp[-2].qp), (yyvsp[-1].qp), lastok);}}
#line 3317 "parse1.c" /* yacc.c:1646  */
    break;

  case 278:
#line 721 "parse1.y" /* yacc.c:1646  */
    {myerr("Illegal CONSERVE syntax");}
#line 3323 "parse1.c" /* yacc.c:1646  */
    break;

  case 279:
#line 723 "parse1.y" /* yacc.c:1646  */
    {P3{consreact_push((yyvsp[0].qp));}}
#line 3329 "parse1.c" /* yacc.c:1646  */
    break;

  case 280:
#line 724 "parse1.y" /* yacc.c:1646  */
    {P3{consreact_push((yyvsp[0].qp));}}
#line 3335 "parse1.c" /* yacc.c:1646  */
    break;

  case 281:
#line 725 "parse1.y" /* yacc.c:1646  */
    {P3{consreact_push((yyvsp[0].qp)); unit_cmp((yyvsp[-2].qp),(yyvsp[-1].qp),lastok);}}
#line 3341 "parse1.c" /* yacc.c:1646  */
    break;

  case 282:
#line 726 "parse1.y" /* yacc.c:1646  */
    {
		  P3{consreact_push((yyvsp[0].qp)); unit_cmp((yyvsp[-3].qp),(yyvsp[-2].qp),lastok);}
		}
#line 3349 "parse1.c" /* yacc.c:1646  */
    break;

  case 283:
#line 730 "parse1.y" /* yacc.c:1646  */
    {P1{pushlocal((yyvsp[0].qp), ITEM0);}}
#line 3355 "parse1.c" /* yacc.c:1646  */
    break;

  case 284:
#line 731 "parse1.y" /* yacc.c:1646  */
    {P1{poplocal();}
		  P3{
		    unit_pop();
		  }
		}
#line 3365 "parse1.c" /* yacc.c:1646  */
    break;

  case 285:
#line 737 "parse1.y" /* yacc.c:1646  */
    { P3{
		    unit_pop();
		  }
		}
#line 3374 "parse1.c" /* yacc.c:1646  */
    break;

  case 286:
#line 743 "parse1.y" /* yacc.c:1646  */
    {P3 R0{unit_compartlist((yyvsp[0].qp));}}
#line 3380 "parse1.c" /* yacc.c:1646  */
    break;

  case 287:
#line 745 "parse1.y" /* yacc.c:1646  */
    {P3 R0{unit_compartlist((yyvsp[0].qp));}}
#line 3386 "parse1.c" /* yacc.c:1646  */
    break;

  case 288:
#line 747 "parse1.y" /* yacc.c:1646  */
    {P1{pushlocal((yyvsp[0].qp), ITEM0);}}
#line 3392 "parse1.c" /* yacc.c:1646  */
    break;

  case 289:
#line 748 "parse1.y" /* yacc.c:1646  */
    {P1{poplocal();}
		  P3{
		    unit_pop();
		  }
		}
#line 3402 "parse1.c" /* yacc.c:1646  */
    break;

  case 290:
#line 754 "parse1.y" /* yacc.c:1646  */
    { P3{
		    unit_pop();
		  }
		}
#line 3411 "parse1.c" /* yacc.c:1646  */
    break;

  case 291:
#line 760 "parse1.y" /* yacc.c:1646  */
    {P3 R0{unit_ldifuslist((yyvsp[0].qp), unitflagsave);}}
#line 3417 "parse1.c" /* yacc.c:1646  */
    break;

  case 292:
#line 762 "parse1.y" /* yacc.c:1646  */
    {P3 R0{unit_ldifuslist((yyvsp[0].qp), unitflagsave);}}
#line 3423 "parse1.c" /* yacc.c:1646  */
    break;

  case 295:
#line 768 "parse1.y" /* yacc.c:1646  */
    {P1{declare(KINF, (yyvsp[-2].qp), ITEM0);}}
#line 3429 "parse1.c" /* yacc.c:1646  */
    break;

  case 296:
#line 771 "parse1.y" /* yacc.c:1646  */
    {P3{kinunits((yyvsp[-6].qp), restart_pass);}}
#line 3435 "parse1.c" /* yacc.c:1646  */
    break;

  case 297:
#line 773 "parse1.y" /* yacc.c:1646  */
    {P3{kinunits((yyvsp[-4].qp), restart_pass);}}
#line 3441 "parse1.c" /* yacc.c:1646  */
    break;

  case 298:
#line 775 "parse1.y" /* yacc.c:1646  */
    {P3{kinunits((yyvsp[-4].qp), restart_pass);}}
#line 3447 "parse1.c" /* yacc.c:1646  */
    break;

  case 299:
#line 776 "parse1.y" /* yacc.c:1646  */
    {myerr("Illegal reaction syntax");}
#line 3453 "parse1.c" /* yacc.c:1646  */
    break;

  case 300:
#line 778 "parse1.y" /* yacc.c:1646  */
    {P3{R1{ureactadd((yyvsp[0].qp));} unit_push((yyvsp[0].qp));}}
#line 3459 "parse1.c" /* yacc.c:1646  */
    break;

  case 301:
#line 779 "parse1.y" /* yacc.c:1646  */
    {P3{R1{ureactadd((yyvsp[0].qp));} unit_push((yyvsp[0].qp)); Unit_push((char*)0); unit_exponent((yyvsp[-1].qp),(yyvsp[-1].qp));}}
#line 3465 "parse1.c" /* yacc.c:1646  */
    break;

  case 302:
#line 780 "parse1.y" /* yacc.c:1646  */
    {P3{R1{ureactadd((yyvsp[0].qp));}unit_push((yyvsp[0].qp)); unit_mul();}}
#line 3471 "parse1.c" /* yacc.c:1646  */
    break;

  case 303:
#line 781 "parse1.y" /* yacc.c:1646  */
    {
		  P3{R1{ureactadd((yyvsp[0].qp));}unit_push((yyvsp[0].qp)); Unit_push((char*)0); unit_exponent((yyvsp[-1].qp),(yyvsp[-1].qp)); unit_mul();}
		}
#line 3479 "parse1.c" /* yacc.c:1646  */
    break;

  case 305:
#line 786 "parse1.y" /* yacc.c:1646  */
    {myerr("Lag syntax is: LAG name BY const");}
#line 3485 "parse1.c" /* yacc.c:1646  */
    break;

  case 306:
#line 789 "parse1.y" /* yacc.c:1646  */
    {P3{unit_pop(); unit_pop();}}
#line 3491 "parse1.c" /* yacc.c:1646  */
    break;

  case 307:
#line 792 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = ITEM0;}
#line 3497 "parse1.c" /* yacc.c:1646  */
    break;

  case 309:
#line 796 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = ITEM0;}
#line 3503 "parse1.c" /* yacc.c:1646  */
    break;

  case 318:
#line 810 "parse1.y" /* yacc.c:1646  */
    {myerr("MATCH syntax is state0 or state(expr)=expr or\
state[i](expr(i)) = expr(i)");}
#line 3510 "parse1.c" /* yacc.c:1646  */
    break;

  case 321:
#line 818 "parse1.y" /* yacc.c:1646  */
    {
			  lastok = (yyvsp[0].qp);
#if NRNUNIT
			  P2{nrn_unit_chk();}
#endif
			}
#line 3521 "parse1.c" /* yacc.c:1646  */
    break;

  case 322:
#line 825 "parse1.y" /* yacc.c:1646  */
    {lastok = (yyvsp[-2].qp);}
#line 3527 "parse1.c" /* yacc.c:1646  */
    break;

  case 324:
#line 829 "parse1.y" /* yacc.c:1646  */
    { P1{nrn_list((yyvsp[-1].qp), (yyvsp[0].qp));}}
#line 3533 "parse1.c" /* yacc.c:1646  */
    break;

  case 326:
#line 832 "parse1.y" /* yacc.c:1646  */
    { P1{nrn_list((yyvsp[-1].qp),(yyvsp[0].qp));}}
#line 3539 "parse1.c" /* yacc.c:1646  */
    break;

  case 327:
#line 834 "parse1.y" /* yacc.c:1646  */
    { P1{nrn_list((yyvsp[-1].qp),(yyvsp[0].qp));}}
#line 3545 "parse1.c" /* yacc.c:1646  */
    break;

  case 328:
#line 836 "parse1.y" /* yacc.c:1646  */
    { P1{nrn_list((yyvsp[-1].qp), (yyvsp[0].qp));}}
#line 3551 "parse1.c" /* yacc.c:1646  */
    break;

  case 329:
#line 838 "parse1.y" /* yacc.c:1646  */
    { P1{nrn_list((yyvsp[-1].qp), (yyvsp[0].qp));}}
#line 3557 "parse1.c" /* yacc.c:1646  */
    break;

  case 330:
#line 840 "parse1.y" /* yacc.c:1646  */
    { P1{nrn_list((yyvsp[-1].qp), (yyvsp[0].qp));}}
#line 3563 "parse1.c" /* yacc.c:1646  */
    break;

  case 331:
#line 842 "parse1.y" /* yacc.c:1646  */
    { P1{nrn_list((yyvsp[-1].qp), (yyvsp[0].qp));}}
#line 3569 "parse1.c" /* yacc.c:1646  */
    break;

  case 332:
#line 844 "parse1.y" /* yacc.c:1646  */
    { P1{nrn_list((yyvsp[-1].qp), (yyvsp[0].qp));}}
#line 3575 "parse1.c" /* yacc.c:1646  */
    break;

  case 334:
#line 848 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = NULL;}
#line 3581 "parse1.c" /* yacc.c:1646  */
    break;

  case 336:
#line 852 "parse1.y" /* yacc.c:1646  */
    {P1{nrn_use((yyvsp[-3].qp), (yyvsp[-1].qp), ITEM0);}}
#line 3587 "parse1.c" /* yacc.c:1646  */
    break;

  case 337:
#line 854 "parse1.y" /* yacc.c:1646  */
    {P1{nrn_use((yyvsp[-3].qp), ITEM0, (yyvsp[-1].qp));}}
#line 3593 "parse1.c" /* yacc.c:1646  */
    break;

  case 338:
#line 856 "parse1.y" /* yacc.c:1646  */
    {P1{nrn_use((yyvsp[-5].qp), (yyvsp[-3].qp), (yyvsp[-1].qp));}}
#line 3599 "parse1.c" /* yacc.c:1646  */
    break;

  case 339:
#line 858 "parse1.y" /* yacc.c:1646  */
    {myerr("syntax is: USEION ion READ list WRITE list");}
#line 3605 "parse1.c" /* yacc.c:1646  */
    break;

  case 340:
#line 861 "parse1.y" /* yacc.c:1646  */
    {P1{(yyval.qp) = (Item *)newlist(); Lappendsym((List *)(yyval.qp), SYM((yyvsp[0].qp)));}}
#line 3611 "parse1.c" /* yacc.c:1646  */
    break;

  case 341:
#line 863 "parse1.y" /* yacc.c:1646  */
    {P1{ Lappendsym((List *)(yyvsp[-2].qp), SYM((yyvsp[0].qp)));}}
#line 3617 "parse1.c" /* yacc.c:1646  */
    break;

  case 342:
#line 865 "parse1.y" /* yacc.c:1646  */
    {myerr("syntax is: keyword name , name, ..., name");}
#line 3623 "parse1.c" /* yacc.c:1646  */
    break;

  case 343:
#line 868 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = ITEM0;}
#line 3629 "parse1.c" /* yacc.c:1646  */
    break;

  case 344:
#line 870 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = (yyvsp[0].qp);}
#line 3635 "parse1.c" /* yacc.c:1646  */
    break;

  case 345:
#line 872 "parse1.y" /* yacc.c:1646  */
    {(yyval.qp) = (yyvsp[0].qp);}
#line 3641 "parse1.c" /* yacc.c:1646  */
    break;


#line 3645 "parse1.c" /* yacc.c:1646  */
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
#line 874 "parse1.y" /* yacc.c:1906  */

	/* end of grammar */

static void yyerror(s)	/* called for yacc syntax error */
	char *s;
{
	Fprintf(stderr, "%s:\n ", s);
}

static int yylex() {return next_intoken(&(yylval.qp));}

#if !NRNUNIT
void nrn_list(q1, q2)
	Item *q1, *q2;
{
	/*ARGSUSED*/
}
void nrn_use(q1, q2, q3)
	Item *q1, *q2, *q3;
{
	/*ARGSUSED*/
}
#endif

