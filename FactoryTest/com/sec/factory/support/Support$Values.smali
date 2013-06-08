.class Lcom/sec/factory/support/Support$Values;
.super Ljava/lang/Object;
.source "Support.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/support/Support;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Values"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 997
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 997
    invoke-static {p0, p1}, Lcom/sec/factory/support/Support$Values;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 997
    invoke-static {p0, p1}, Lcom/sec/factory/support/Support$Values;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 997
    invoke-static {p0, p1, p2}, Lcom/sec/factory/support/Support$Values;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 997
    invoke-static {p0, p1}, Lcom/sec/factory/support/Support$Values;->getInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;)F
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 997
    invoke-static {p0, p1}, Lcom/sec/factory/support/Support$Values;->getFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method private static getBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .parameter "id"
    .parameter "resultField"

    .prologue
    .line 999
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sec/factory/support/Support$Values;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 9
    .parameter "id"
    .parameter "resultField"
    .parameter "defaultValue"

    .prologue
    .line 1003
    move v1, p2

    .line 1005
    .local v1, value:Z
    :try_start_1
    invoke-static {}, Lcom/sec/factory/support/XMLDataStorage;->instance()Lcom/sec/factory/support/XMLDataStorage;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/sec/factory/support/XMLDataStorage;->getAttributeValueById(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1007
    const-string v2, "Support"

    const-string v3, "Values.getBoolean"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_31} :catch_32

    .line 1011
    :goto_31
    return v1

    .line 1008
    :catch_32
    move-exception v0

    .line 1009
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    goto :goto_31
.end method

.method private static getFloat(Ljava/lang/String;Ljava/lang/String;)F
    .registers 8
    .parameter "id"
    .parameter "resultField"

    .prologue
    .line 1053
    const/4 v1, 0x0

    .line 1055
    .local v1, value:F
    :try_start_1
    invoke-static {}, Lcom/sec/factory/support/XMLDataStorage;->instance()Lcom/sec/factory/support/XMLDataStorage;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/sec/factory/support/XMLDataStorage;->getAttributeValueById(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 1057
    const-string v2, "Support"

    const-string v3, "Values.getFloat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_31} :catch_32

    .line 1061
    :goto_31
    return v1

    .line 1058
    :catch_32
    move-exception v0

    .line 1059
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    goto :goto_31
.end method

.method private static getInt(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .parameter "id"
    .parameter "resultField"

    .prologue
    .line 1041
    const/4 v1, 0x0

    .line 1043
    .local v1, value:I
    :try_start_1
    invoke-static {}, Lcom/sec/factory/support/XMLDataStorage;->instance()Lcom/sec/factory/support/XMLDataStorage;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/sec/factory/support/XMLDataStorage;->getAttributeValueById(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1045
    const-string v2, "Support"

    const-string v3, "Values.getInt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_31} :catch_32

    .line 1049
    :goto_31
    return v1

    .line 1046
    :catch_32
    move-exception v0

    .line 1047
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    goto :goto_31
.end method

.method private static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "id"
    .parameter "resultField"

    .prologue
    .line 1027
    const-string v1, "Unknown"

    .line 1029
    .local v1, value:Ljava/lang/String;
    :try_start_2
    invoke-static {}, Lcom/sec/factory/support/XMLDataStorage;->instance()Lcom/sec/factory/support/XMLDataStorage;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/sec/factory/support/XMLDataStorage;->getAttributeValueById(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1030
    const-string v2, "Support"

    const-string v3, "Values.getString"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2e} :catch_33

    .line 1034
    :goto_2e
    if-nez v1, :cond_32

    .line 1035
    const-string v1, "Unknown"

    .line 1037
    :cond_32
    return-object v1

    .line 1031
    :catch_33
    move-exception v0

    .line 1032
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    goto :goto_2e
.end method
