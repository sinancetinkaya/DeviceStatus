.class public Lcom/wssyncmldm/agent/XDMDebug;
.super Ljava/lang/Object;
.source "XDMDebug.java"


# static fields
.field private static final DEBUG_EXCEPTION_LOG_TAG:Ljava/lang/String; = "DBG_DM"

.field private static DEBUG_LOG_ON_:Z = false

.field private static final DEBUG_LOG_TAG:Ljava/lang/String; = "DBG_DM"

.field private static DEBUG_PRIVATE_LOG_ON:Z

.field private static DEBUG_WBXML_DUMP:Z

.field private static DEBUG_WBXML_FILE:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 20
    sput-boolean v1, Lcom/wssyncmldm/agent/XDMDebug;->DEBUG_LOG_ON_:Z

    .line 21
    sput-boolean v1, Lcom/wssyncmldm/agent/XDMDebug;->DEBUG_PRIVATE_LOG_ON:Z

    .line 23
    sput-boolean v0, Lcom/wssyncmldm/agent/XDMDebug;->DEBUG_WBXML_DUMP:Z

    .line 24
    sput-boolean v0, Lcom/wssyncmldm/agent/XDMDebug;->DEBUG_WBXML_FILE:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static XDM_DEBUG(Ljava/lang/String;)V
    .registers 7
    .parameter "szContent"

    .prologue
    const/4 v5, 0x1

    .line 31
    sget-boolean v4, Lcom/wssyncmldm/agent/XDMDebug;->DEBUG_LOG_ON_:Z

    if-eqz v4, :cond_54

    .line 33
    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 34
    .local v3, trace:[Ljava/lang/StackTraceElement;
    const-string v2, ""

    .line 35
    .local v2, szMsg:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 37
    .local v1, strBuffer:Ljava/lang/StringBuffer;
    array-length v4, v3

    if-lt v4, v5, :cond_55

    .line 39
    aget-object v0, v3, v5

    .line 40
    .local v0, elt:Ljava/lang/StackTraceElement;
    const-string v4, "["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmGetReleaseVer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    const-string v4, "]["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    const-string v4, "Line:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 45
    const-string v4, "]["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    const-string v4, "] "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    const-string v4, "DBG_DM"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .end local v0           #elt:Ljava/lang/StackTraceElement;
    .end local v1           #strBuffer:Ljava/lang/StringBuffer;
    .end local v2           #szMsg:Ljava/lang/String;
    .end local v3           #trace:[Ljava/lang/StackTraceElement;
    :cond_54
    :goto_54
    return-void

    .line 54
    .restart local v1       #strBuffer:Ljava/lang/StringBuffer;
    .restart local v2       #szMsg:Ljava/lang/String;
    .restart local v3       #trace:[Ljava/lang/StackTraceElement;
    :cond_55
    const-string v4, "DBG_DM"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54
.end method

.method public static XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    .registers 7
    .parameter "szContent"

    .prologue
    const/4 v5, 0x1

    .line 61
    sget-boolean v4, Lcom/wssyncmldm/agent/XDMDebug;->DEBUG_LOG_ON_:Z

    if-eqz v4, :cond_54

    .line 63
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 64
    .local v1, strBuffer:Ljava/lang/StringBuffer;
    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 65
    .local v3, trace:[Ljava/lang/StackTraceElement;
    const-string v2, ""

    .line 67
    .local v2, szMsg:Ljava/lang/String;
    array-length v4, v3

    if-lt v4, v5, :cond_55

    .line 69
    aget-object v0, v3, v5

    .line 71
    .local v0, elt:Ljava/lang/StackTraceElement;
    const-string v4, "Warning!!! ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmGetReleaseVer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    const-string v4, "]["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    const-string v4, "Line:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 76
    const-string v4, "]["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    const-string v4, "] "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    const-string v4, "DBG_DM"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .end local v0           #elt:Ljava/lang/StackTraceElement;
    .end local v1           #strBuffer:Ljava/lang/StringBuffer;
    .end local v2           #szMsg:Ljava/lang/String;
    .end local v3           #trace:[Ljava/lang/StackTraceElement;
    :cond_54
    :goto_54
    return-void

    .line 86
    .restart local v1       #strBuffer:Ljava/lang/StringBuffer;
    .restart local v2       #szMsg:Ljava/lang/String;
    .restart local v3       #trace:[Ljava/lang/StackTraceElement;
    :cond_55
    const-string v4, "DBG_DM"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54
.end method

.method public static XDM_DEBUG_PRIVATE(Ljava/lang/String;)V
    .registers 1
    .parameter "szContent"

    .prologue
    .line 148
    return-void
.end method

.method public static XDM_DUMP([BI)V
    .registers 10
    .parameter "szBuf"
    .parameter "pos"

    .prologue
    const/16 v7, 0x20

    const/4 v6, 0x0

    .line 152
    if-nez p0, :cond_b

    .line 154
    const-string v4, "szBuf is null"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 191
    :cond_a
    return-void

    .line 158
    :cond_b
    const/4 v0, 0x0

    .line 159
    .local v0, i:I
    array-length v1, p0

    .line 160
    .local v1, len:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .local v2, szAsc:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v3, szDump:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    :goto_18
    if-ge v0, v1, :cond_a

    .line 165
    add-int v4, v0, p1

    aget-byte v4, p0, v4

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibHexToChar(I)I

    move-result v4

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    add-int v4, v0, p1

    aget-byte v4, p0, v4

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibHexToChar(I)I

    move-result v4

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    add-int v4, v0, p1

    aget-byte v4, p0, v4

    if-lt v4, v7, :cond_7e

    add-int v4, v0, p1

    aget-byte v4, p0, v4

    const/16 v5, 0x7e

    if-gt v4, v5, :cond_7e

    .line 171
    add-int v4, v0, p1

    aget-byte v4, p0, v4

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    :goto_51
    rem-int/lit8 v4, v0, 0x10

    const/16 v5, 0xf

    if-eq v4, v5, :cond_5b

    add-int/lit8 v4, v1, -0x1

    if-ne v0, v4, :cond_7b

    .line 180
    :cond_5b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_69

    .line 182
    const-string v4, "   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 185
    :cond_69
    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 188
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 163
    :cond_7b
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 175
    :cond_7e
    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_51
.end method

.method public static xdmGetPrivateLogStatus()Z
    .registers 1

    .prologue
    .line 229
    sget-boolean v0, Lcom/wssyncmldm/agent/XDMDebug;->DEBUG_PRIVATE_LOG_ON:Z

    return v0
.end method

.method public static xdmGetWbxmlDumpStatus()Z
    .registers 1

    .prologue
    .line 216
    sget-boolean v0, Lcom/wssyncmldm/agent/XDMDebug;->DEBUG_WBXML_DUMP:Z

    return v0
.end method

.method public static xdmGetWbxmlFileStatus()Z
    .registers 1

    .prologue
    .line 203
    sget-boolean v0, Lcom/wssyncmldm/agent/XDMDebug;->DEBUG_WBXML_FILE:Z

    return v0
.end method

.method public static xdmReadFile(Ljava/lang/String;)[B
    .registers 6
    .parameter "szFile"

    .prologue
    .line 260
    const/4 v0, 0x0

    .line 263
    .local v0, bytearray:[B
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 264
    .local v2, fileinputstream:Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    .line 265
    .local v3, numberBytes:I
    new-array v0, v3, [B

    .line 266
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 267
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_13

    .line 274
    .end local v2           #fileinputstream:Ljava/io/FileInputStream;
    .end local v3           #numberBytes:I
    :goto_12
    return-object v0

    .line 269
    :catch_13
    move-exception v1

    .line 271
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_12
.end method

.method public static xdmSetPrivateLogOnOff()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 221
    const-string v0, ""

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 222
    sget-boolean v0, Lcom/wssyncmldm/agent/XDMDebug;->DEBUG_PRIVATE_LOG_ON:Z

    if-nez v0, :cond_42

    move v0, v1

    :goto_b
    sput-boolean v0, Lcom/wssyncmldm/agent/XDMDebug;->DEBUG_PRIVATE_LOG_ON:Z

    .line 223
    invoke-static {}, Lcom/wssyncmldm/XDMApplication;->xdmGetContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XDM_PRIVATE_LOG_ON : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/wssyncmldm/agent/XDMDebug;->DEBUG_PRIVATE_LOG_ON:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/wssyncmldm/XDMService;->xdmShowToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XDM_PRIVATE_LOG_ON : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/wssyncmldm/agent/XDMDebug;->DEBUG_PRIVATE_LOG_ON:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 225
    return-void

    .line 222
    :cond_42
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static xdmSetWbxmlDumpLogOnOff()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 208
    const-string v0, ""

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 209
    sget-boolean v0, Lcom/wssyncmldm/agent/XDMDebug;->DEBUG_WBXML_DUMP:Z

    if-nez v0, :cond_42

    move v0, v1

    :goto_b
    sput-boolean v0, Lcom/wssyncmldm/agent/XDMDebug;->DEBUG_WBXML_DUMP:Z

    .line 210
    invoke-static {}, Lcom/wssyncmldm/XDMApplication;->xdmGetContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEBUG_WBXML_DUMP : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/wssyncmldm/agent/XDMDebug;->DEBUG_WBXML_DUMP:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/wssyncmldm/XDMService;->xdmShowToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DEBUG_WBXML_DUMP : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/wssyncmldm/agent/XDMDebug;->DEBUG_WBXML_DUMP:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 212
    return-void

    .line 209
    :cond_42
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static xdmSetWbxmlFileLogOnOff()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 195
    const-string v0, ""

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 196
    sget-boolean v0, Lcom/wssyncmldm/agent/XDMDebug;->DEBUG_WBXML_FILE:Z

    if-nez v0, :cond_42

    move v0, v1

    :goto_b
    sput-boolean v0, Lcom/wssyncmldm/agent/XDMDebug;->DEBUG_WBXML_FILE:Z

    .line 197
    invoke-static {}, Lcom/wssyncmldm/XDMApplication;->xdmGetContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WBXML_FILE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/wssyncmldm/agent/XDMDebug;->DEBUG_WBXML_FILE:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/wssyncmldm/XDMService;->xdmShowToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WBXML_FILE : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/wssyncmldm/agent/XDMDebug;->DEBUG_WBXML_FILE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 199
    return-void

    .line 196
    :cond_42
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static xdmWriteFile(Ljava/lang/String;[B)V
    .registers 7
    .parameter "szFile"
    .parameter "data"

    .prologue
    .line 234
    const/4 v1, 0x0

    .line 237
    .local v1, fw:Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_36
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_1f

    .line 238
    .end local v1           #fw:Ljava/io/DataOutputStream;
    .local v2, fw:Ljava/io/DataOutputStream;
    :try_start_b
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_46
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_49

    .line 246
    if-eqz v2, :cond_4c

    .line 249
    :try_start_10
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_15

    move-object v1, v2

    .line 256
    .end local v2           #fw:Ljava/io/DataOutputStream;
    .restart local v1       #fw:Ljava/io/DataOutputStream;
    :cond_14
    :goto_14
    return-void

    .line 251
    .end local v1           #fw:Ljava/io/DataOutputStream;
    .restart local v2       #fw:Ljava/io/DataOutputStream;
    :catch_15
    move-exception v0

    .line 253
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    move-object v1, v2

    .line 254
    .end local v2           #fw:Ljava/io/DataOutputStream;
    .restart local v1       #fw:Ljava/io/DataOutputStream;
    goto :goto_14

    .line 240
    .end local v0           #e:Ljava/io/IOException;
    :catch_1f
    move-exception v0

    .line 242
    .local v0, e:Ljava/lang/Exception;
    :goto_20
    :try_start_20
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_36

    .line 246
    if-eqz v1, :cond_14

    .line 249
    :try_start_29
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_14

    .line 251
    :catch_2d
    move-exception v0

    .line 253
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_14

    .line 246
    .end local v0           #e:Ljava/io/IOException;
    :catchall_36
    move-exception v3

    :goto_37
    if-eqz v1, :cond_3c

    .line 249
    :try_start_39
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d

    .line 254
    :cond_3c
    :goto_3c
    throw v3

    .line 251
    :catch_3d
    move-exception v0

    .line 253
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_3c

    .line 246
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fw:Ljava/io/DataOutputStream;
    .restart local v2       #fw:Ljava/io/DataOutputStream;
    :catchall_46
    move-exception v3

    move-object v1, v2

    .end local v2           #fw:Ljava/io/DataOutputStream;
    .restart local v1       #fw:Ljava/io/DataOutputStream;
    goto :goto_37

    .line 240
    .end local v1           #fw:Ljava/io/DataOutputStream;
    .restart local v2       #fw:Ljava/io/DataOutputStream;
    :catch_49
    move-exception v0

    move-object v1, v2

    .end local v2           #fw:Ljava/io/DataOutputStream;
    .restart local v1       #fw:Ljava/io/DataOutputStream;
    goto :goto_20

    .end local v1           #fw:Ljava/io/DataOutputStream;
    .restart local v2       #fw:Ljava/io/DataOutputStream;
    :cond_4c
    move-object v1, v2

    .end local v2           #fw:Ljava/io/DataOutputStream;
    .restart local v1       #fw:Ljava/io/DataOutputStream;
    goto :goto_14
.end method
