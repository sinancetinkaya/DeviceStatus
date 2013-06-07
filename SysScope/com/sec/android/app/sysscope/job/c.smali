.class public final Lcom/sec/android/app/sysscope/job/c;
.super Ljava/lang/Object;


# static fields
.field private static final I:Ljava/util/Comparator;

.field private static final a:[I

.field private static final d:[I

.field private static final g:[I


# instance fields
.field private A:[I

.field private B:[I

.field private final C:Ljava/util/ArrayList;

.field private final D:Ljava/util/ArrayList;

.field private final E:Ljava/util/HashMap;

.field private F:Z

.field private G:Z

.field private H:[B

.field private final b:[J

.field private final c:[J

.field private final e:[Ljava/lang/String;

.field private final f:[J

.field private final h:[J

.field private final i:Z

.field private j:F

.field private k:F

.field private l:F

.field private m:J

.field private n:J

.field private o:J

.field private p:J

.field private q:J

.field private r:J

.field private s:J

.field private t:J

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v1, 0xf

    new-array v0, v1, [I

    fill-array-data v0, :array_22

    sput-object v0, Lcom/sec/android/app/sysscope/job/c;->a:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_44

    sput-object v0, Lcom/sec/android/app/sysscope/job/c;->d:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_66

    sput-object v0, Lcom/sec/android/app/sysscope/job/c;->g:[I

    new-instance v0, Lcom/sec/android/app/sysscope/job/d;

    invoke-direct {v0}, Lcom/sec/android/app/sysscope/job/d;-><init>()V

    sput-object v0, Lcom/sec/android/app/sysscope/job/c;->I:Ljava/util/Comparator;

    return-void

    nop

    :array_22
    .array-data 0x4
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
    .end array-data

    :array_44
    .array-data 0x4
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x12t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
    .end array-data

    :array_66
    .array-data 0x4
        0x20t 0x1t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v3, [J

    iput-object v0, p0, Lcom/sec/android/app/sysscope/job/c;->b:[J

    new-array v0, v3, [J

    iput-object v0, p0, Lcom/sec/android/app/sysscope/job/c;->c:[J

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sysscope/job/c;->e:[Ljava/lang/String;

    new-array v0, v2, [J

    iput-object v0, p0, Lcom/sec/android/app/sysscope/job/c;->f:[J

    const/4 v0, 0x7

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/sec/android/app/sysscope/job/c;->h:[J

    iput v1, p0, Lcom/sec/android/app/sysscope/job/c;->j:F

    iput v1, p0, Lcom/sec/android/app/sysscope/job/c;->k:F

    iput v1, p0, Lcom/sec/android/app/sysscope/job/c;->l:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/job/c;->C:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/job/c;->D:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/job/c;->E:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sysscope/job/c;->G:Z

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sec/android/app/sysscope/job/c;->H:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sysscope/job/c;->i:Z

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sysscope/job/c;->H:[B

    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    if-lez v2, :cond_30

    move v1, v0

    :goto_12
    if-lt v1, v2, :cond_1e

    :cond_14
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sysscope/job/c;->H:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4, v1}, Ljava/lang/String;-><init>([BIII)V

    :goto_1d
    return-object v0

    :cond_1e
    iget-object v0, p0, Lcom/sec/android/app/sysscope/job/c;->H:[B

    aget-byte v0, v0, v1
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_22} :catch_28
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_22} :catch_32

    if-eqz v0, :cond_14

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_12

    :catch_28
    move-exception v0

    const-string v1, "ProcessStats"

    const-string v2, "readFile() FileNotFoundException "

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/sysscope/engine/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_30
    :goto_30
    const/4 v0, 0x0

    goto :goto_1d

    :catch_32
    move-exception v0

    const-string v1, "ProcessStats"

    const-string v2, "readFile() IOException "

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/sysscope/engine/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30
.end method

.method private a(Lcom/sec/android/app/sysscope/job/e;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p1, Lcom/sec/android/app/sysscope/job/e;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/sec/android/app/sysscope/job/e;->g:Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v1, p1, Lcom/sec/android/app/sysscope/job/e;->g:Ljava/lang/String;

    const-string v2, "app_process"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    :cond_10
    invoke-direct {p0, p2}, Lcom/sec/android/app/sysscope/job/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_33

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_33

    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_47

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_47

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_33
    :goto_33
    iget-object v1, p1, Lcom/sec/android/app/sysscope/job/e;->h:Ljava/lang/String;

    if-eqz v1, :cond_3f

    iget-object v1, p1, Lcom/sec/android/app/sysscope/job/e;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    :cond_3f
    iput-object v0, p1, Lcom/sec/android/app/sysscope/job/e;->h:Ljava/lang/String;

    iget-object v0, p1, Lcom/sec/android/app/sysscope/job/e;->h:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p1, Lcom/sec/android/app/sysscope/job/e;->i:I

    :cond_46
    return-void

    :cond_47
    move-object v0, v1

    goto :goto_33
.end method

.method private a(Ljava/lang/String;IZ[ILjava/util/ArrayList;Ljava/util/ArrayList;)[I
    .registers 30

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v14

    if-nez v14, :cond_1a

    const/4 v2, 0x0

    move v9, v2

    :goto_f
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v3, 0x0

    const/4 v10, 0x0

    :goto_15
    if-lt v10, v9, :cond_1d

    :cond_17
    :goto_17
    if-lt v3, v12, :cond_1b0

    return-object v14

    :cond_1a
    array-length v2, v14

    move v9, v2

    goto :goto_f

    :cond_1d
    aget v4, v14, v10

    if-ltz v4, :cond_17

    if-ge v3, v12, :cond_7d

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sysscope/job/e;

    move-object v13, v2

    :goto_2c
    if-eqz v13, :cond_ee

    iget v2, v13, Lcom/sec/android/app/sysscope/job/e;->a:I

    if-ne v2, v4, :cond_ee

    const/4 v2, 0x0

    iput-boolean v2, v13, Lcom/sec/android/app/sysscope/job/e;->s:Z

    add-int/lit8 v11, v3, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sysscope/job/c;->b:[J

    iget-object v3, v13, Lcom/sec/android/app/sysscope/job/e;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/sec/android/app/sysscope/job/c;->a:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v5, v6, v2, v7}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-eqz v3, :cond_1d5

    const/4 v3, 0x0

    aget-wide v15, v2, v3

    const/4 v3, 0x1

    aget-wide v17, v2, v3

    const/4 v3, 0x2

    aget-wide v19, v2, v3

    const/4 v3, 0x3

    aget-wide v21, v2, v3

    iget-wide v2, v13, Lcom/sec/android/app/sysscope/job/e;->j:J

    cmp-long v2, v19, v2

    if-nez v2, :cond_80

    iget-wide v2, v13, Lcom/sec/android/app/sysscope/job/e;->k:J

    cmp-long v2, v21, v2

    if-nez v2, :cond_80

    const/4 v2, 0x0

    iput v2, v13, Lcom/sec/android/app/sysscope/job/e;->l:I

    const/4 v2, 0x0

    iput v2, v13, Lcom/sec/android/app/sysscope/job/e;->m:I

    const/4 v2, 0x0

    iput v2, v13, Lcom/sec/android/app/sysscope/job/e;->p:I

    const/4 v2, 0x0

    iput v2, v13, Lcom/sec/android/app/sysscope/job/e;->q:I

    iget-boolean v2, v13, Lcom/sec/android/app/sysscope/job/e;->r:Z

    if-eqz v2, :cond_1d5

    const/4 v2, 0x0

    iput-boolean v2, v13, Lcom/sec/android/app/sysscope/job/e;->r:Z

    move v2, v10

    move v3, v11

    move v4, v12

    :goto_79
    add-int/lit8 v10, v2, 0x1

    move v12, v4

    goto :goto_15

    :cond_7d
    const/4 v2, 0x0

    move-object v13, v2

    goto :goto_2c

    :cond_80
    iget-boolean v2, v13, Lcom/sec/android/app/sysscope/job/e;->r:Z

    if-nez v2, :cond_87

    const/4 v2, 0x1

    iput-boolean v2, v13, Lcom/sec/android/app/sysscope/job/e;->r:Z

    :cond_87
    if-gez p2, :cond_a9

    iget-object v2, v13, Lcom/sec/android/app/sysscope/job/e;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2}, Lcom/sec/android/app/sysscope/job/c;->a(Lcom/sec/android/app/sysscope/job/e;Ljava/lang/String;)V

    iget-object v2, v13, Lcom/sec/android/app/sysscope/job/e;->e:Ljava/util/ArrayList;

    if-eqz v2, :cond_a9

    iget-object v3, v13, Lcom/sec/android/app/sysscope/job/e;->d:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/sysscope/job/c;->B:[I

    iget-object v7, v13, Lcom/sec/android/app/sysscope/job/e;->e:Ljava/util/ArrayList;

    iget-object v8, v13, Lcom/sec/android/app/sysscope/job/e;->f:Ljava/util/ArrayList;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/sysscope/job/c;->a(Ljava/lang/String;IZ[ILjava/util/ArrayList;Ljava/util/ArrayList;)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/sysscope/job/c;->B:[I

    :cond_a9
    iget-wide v2, v13, Lcom/sec/android/app/sysscope/job/e;->j:J

    sub-long v2, v19, v2

    long-to-int v2, v2

    iput v2, v13, Lcom/sec/android/app/sysscope/job/e;->l:I

    iget-wide v2, v13, Lcom/sec/android/app/sysscope/job/e;->k:J

    sub-long v2, v21, v2

    long-to-int v2, v2

    iput v2, v13, Lcom/sec/android/app/sysscope/job/e;->m:I

    move-wide/from16 v0, v19

    iput-wide v0, v13, Lcom/sec/android/app/sysscope/job/e;->j:J

    move-wide/from16 v0, v21

    iput-wide v0, v13, Lcom/sec/android/app/sysscope/job/e;->k:J

    iget-wide v2, v13, Lcom/sec/android/app/sysscope/job/e;->n:J

    sub-long v2, v15, v2

    long-to-int v2, v2

    iput v2, v13, Lcom/sec/android/app/sysscope/job/e;->p:I

    iget-wide v2, v13, Lcom/sec/android/app/sysscope/job/e;->o:J

    sub-long v2, v17, v2

    long-to-int v2, v2

    iput v2, v13, Lcom/sec/android/app/sysscope/job/e;->q:I

    iput-wide v15, v13, Lcom/sec/android/app/sysscope/job/e;->n:J

    move-wide/from16 v0, v17

    iput-wide v0, v13, Lcom/sec/android/app/sysscope/job/e;->o:J

    iget v2, v13, Lcom/sec/android/app/sysscope/job/e;->l:I

    int-to-long v2, v2

    iget-wide v4, v13, Lcom/sec/android/app/sysscope/job/e;->j:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1d5

    iget v2, v13, Lcom/sec/android/app/sysscope/job/e;->m:I

    int-to-long v2, v2

    iget-wide v4, v13, Lcom/sec/android/app/sysscope/job/e;->k:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1d5

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v10

    move v3, v11

    move v4, v12

    goto :goto_79

    :cond_ee
    if-eqz v13, :cond_f4

    iget v2, v13, Lcom/sec/android/app/sysscope/job/e;->a:I

    if-le v2, v4, :cond_191

    :cond_f4
    new-instance v13, Lcom/sec/android/app/sysscope/job/e;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/sysscope/job/c;->i:Z

    move/from16 v0, p2

    invoke-direct {v13, v4, v0, v2}, Lcom/sec/android/app/sysscope/job/e;-><init>(IIZ)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v11, v3, 0x1

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sysscope/job/c;->e:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sysscope/job/c;->f:[J

    iget-object v5, v13, Lcom/sec/android/app/sysscope/job/e;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/sysscope/job/c;->d:[I

    const/4 v7, 0x0

    invoke-static {v5, v6, v2, v3, v7}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-eqz v3, :cond_15d

    if-gez p2, :cond_158

    const/4 v3, 0x0

    aget-object v2, v2, v3

    :goto_124
    iput-object v2, v13, Lcom/sec/android/app/sysscope/job/e;->g:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, v13, Lcom/sec/android/app/sysscope/job/e;->j:J

    const-wide/16 v2, 0x0

    iput-wide v2, v13, Lcom/sec/android/app/sysscope/job/e;->k:J

    const-wide/16 v2, 0x0

    iput-wide v2, v13, Lcom/sec/android/app/sysscope/job/e;->o:J

    iput-wide v2, v13, Lcom/sec/android/app/sysscope/job/e;->n:J

    :goto_134
    if-gez p2, :cond_16e

    iget-object v2, v13, Lcom/sec/android/app/sysscope/job/e;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2}, Lcom/sec/android/app/sysscope/job/c;->a(Lcom/sec/android/app/sysscope/job/e;Ljava/lang/String;)V

    :cond_13d
    :goto_13d
    const/4 v2, 0x0

    iput v2, v13, Lcom/sec/android/app/sysscope/job/e;->l:I

    const/4 v2, 0x0

    iput v2, v13, Lcom/sec/android/app/sysscope/job/e;->m:I

    const/4 v2, 0x0

    iput v2, v13, Lcom/sec/android/app/sysscope/job/e;->p:I

    const/4 v2, 0x0

    iput v2, v13, Lcom/sec/android/app/sysscope/job/e;->q:I

    const/4 v2, 0x1

    iput-boolean v2, v13, Lcom/sec/android/app/sysscope/job/e;->s:Z

    if-nez p3, :cond_1d5

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v10

    move v3, v11

    move v4, v12

    goto/16 :goto_79

    :cond_158
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_124

    :cond_15d
    const-string v2, "<unknown>"

    iput-object v2, v13, Lcom/sec/android/app/sysscope/job/e;->g:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, v13, Lcom/sec/android/app/sysscope/job/e;->k:J

    iput-wide v2, v13, Lcom/sec/android/app/sysscope/job/e;->j:J

    const-wide/16 v2, 0x0

    iput-wide v2, v13, Lcom/sec/android/app/sysscope/job/e;->o:J

    iput-wide v2, v13, Lcom/sec/android/app/sysscope/job/e;->n:J

    goto :goto_134

    :cond_16e
    iget-object v2, v13, Lcom/sec/android/app/sysscope/job/e;->g:Ljava/lang/String;

    iput-object v2, v13, Lcom/sec/android/app/sysscope/job/e;->h:Ljava/lang/String;

    iget-object v2, v13, Lcom/sec/android/app/sysscope/job/e;->h:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, v13, Lcom/sec/android/app/sysscope/job/e;->i:I

    iget-object v2, v13, Lcom/sec/android/app/sysscope/job/e;->e:Ljava/util/ArrayList;

    if-eqz v2, :cond_13d

    iget-object v3, v13, Lcom/sec/android/app/sysscope/job/e;->d:Ljava/lang/String;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/sysscope/job/c;->B:[I

    iget-object v7, v13, Lcom/sec/android/app/sysscope/job/e;->e:Ljava/util/ArrayList;

    iget-object v8, v13, Lcom/sec/android/app/sysscope/job/e;->f:Ljava/util/ArrayList;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/sysscope/job/c;->a(Ljava/lang/String;IZ[ILjava/util/ArrayList;Ljava/util/ArrayList;)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/sysscope/job/c;->B:[I

    goto :goto_13d

    :cond_191
    const/4 v2, 0x0

    iput v2, v13, Lcom/sec/android/app/sysscope/job/e;->l:I

    const/4 v2, 0x0

    iput v2, v13, Lcom/sec/android/app/sysscope/job/e;->m:I

    const/4 v2, 0x0

    iput v2, v13, Lcom/sec/android/app/sysscope/job/e;->p:I

    const/4 v2, 0x0

    iput v2, v13, Lcom/sec/android/app/sysscope/job/e;->q:I

    const/4 v2, 0x1

    iput-boolean v2, v13, Lcom/sec/android/app/sysscope/job/e;->t:Z

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v12, -0x1

    add-int/lit8 v2, v10, -0x1

    goto/16 :goto_79

    :cond_1b0
    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sysscope/job/e;

    const/4 v4, 0x0

    iput v4, v2, Lcom/sec/android/app/sysscope/job/e;->l:I

    const/4 v4, 0x0

    iput v4, v2, Lcom/sec/android/app/sysscope/job/e;->m:I

    const/4 v4, 0x0

    iput v4, v2, Lcom/sec/android/app/sysscope/job/e;->p:I

    const/4 v4, 0x0

    iput v4, v2, Lcom/sec/android/app/sysscope/job/e;->q:I

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/sec/android/app/sysscope/job/e;->t:Z

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_17

    :cond_1d5
    move v2, v10

    move v3, v11

    move v4, v12

    goto/16 :goto_79
.end method


# virtual methods
.method public final a()V
    .registers 16

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sysscope/job/c;->G:Z

    iget-wide v0, p0, Lcom/sec/android/app/sysscope/job/c;->m:J

    iput-wide v0, p0, Lcom/sec/android/app/sysscope/job/c;->n:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sysscope/job/c;->m:J

    const-string v1, "/proc"

    const/4 v2, -0x1

    iget-boolean v3, p0, Lcom/sec/android/app/sysscope/job/c;->G:Z

    iget-object v4, p0, Lcom/sec/android/app/sysscope/job/c;->A:[I

    iget-object v5, p0, Lcom/sec/android/app/sysscope/job/c;->C:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/sec/android/app/sysscope/job/c;->D:Ljava/util/ArrayList;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sysscope/job/c;->a(Ljava/lang/String;IZ[ILjava/util/ArrayList;Ljava/util/ArrayList;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sysscope/job/c;->A:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sysscope/job/c;->G:Z

    iget-object v0, p0, Lcom/sec/android/app/sysscope/job/c;->E:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sysscope/job/c;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_94

    iget-object v0, p0, Lcom/sec/android/app/sysscope/job/c;->h:[J

    const-string v1, "/proc/stat"

    sget-object v2, Lcom/sec/android/app/sysscope/job/c;->g:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v1

    if-eqz v1, :cond_8d

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    const/4 v3, 0x2

    aget-wide v3, v0, v3

    const/4 v5, 0x3

    aget-wide v5, v0, v5

    const/4 v7, 0x4

    aget-wide v7, v0, v7

    const/4 v9, 0x5

    aget-wide v9, v0, v9

    const/4 v11, 0x6

    aget-wide v11, v0, v11

    iget-wide v13, p0, Lcom/sec/android/app/sysscope/job/c;->o:J

    sub-long v13, v1, v13

    long-to-int v0, v13

    iput v0, p0, Lcom/sec/android/app/sysscope/job/c;->u:I

    iget-wide v13, p0, Lcom/sec/android/app/sysscope/job/c;->p:J

    sub-long v13, v3, v13

    long-to-int v0, v13

    iput v0, p0, Lcom/sec/android/app/sysscope/job/c;->v:I

    iget-wide v13, p0, Lcom/sec/android/app/sysscope/job/c;->q:J

    sub-long v13, v7, v13

    long-to-int v0, v13

    iput v0, p0, Lcom/sec/android/app/sysscope/job/c;->w:I

    iget-wide v13, p0, Lcom/sec/android/app/sysscope/job/c;->r:J

    sub-long v13, v9, v13

    long-to-int v0, v13

    iput v0, p0, Lcom/sec/android/app/sysscope/job/c;->x:I

    iget-wide v13, p0, Lcom/sec/android/app/sysscope/job/c;->s:J

    sub-long v13, v11, v13

    long-to-int v0, v13

    iput v0, p0, Lcom/sec/android/app/sysscope/job/c;->y:I

    iget-wide v13, p0, Lcom/sec/android/app/sysscope/job/c;->t:J

    sub-long v13, v5, v13

    long-to-int v0, v13

    iput v0, p0, Lcom/sec/android/app/sysscope/job/c;->z:I

    iput-wide v1, p0, Lcom/sec/android/app/sysscope/job/c;->o:J

    iput-wide v3, p0, Lcom/sec/android/app/sysscope/job/c;->p:J

    iput-wide v7, p0, Lcom/sec/android/app/sysscope/job/c;->q:J

    iput-wide v9, p0, Lcom/sec/android/app/sysscope/job/c;->r:J

    iput-wide v11, p0, Lcom/sec/android/app/sysscope/job/c;->s:J

    iput-wide v5, p0, Lcom/sec/android/app/sysscope/job/c;->t:J

    :cond_8d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sysscope/job/c;->F:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sysscope/job/c;->G:Z

    return-void

    :cond_94
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sysscope/job/e;

    iget-object v2, p0, Lcom/sec/android/app/sysscope/job/c;->E:Ljava/util/HashMap;

    iget v3, v0, Lcom/sec/android/app/sysscope/job/e;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d
.end method
