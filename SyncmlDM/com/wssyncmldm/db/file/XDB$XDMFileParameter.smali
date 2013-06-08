.class final enum Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;
.super Ljava/lang/Enum;
.source "XDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssyncmldm/db/file/XDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "XDMFileParameter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

.field public static final enum FileBootstrapWbxml:Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

.field public static final enum FileFirmwareData:Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

.field public static final enum FileLargeObjectData:Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

.field public static final enum FileMax:Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

.field public static final enum FileObjectData:Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

.field public static final enum FileObjectTreeInfo:Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

.field public static final enum FileTndsXmlData:Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;


# instance fields
.field private final nFileId:I

.field private final nIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 73
    new-instance v0, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

    const-string v1, "FileObjectTreeInfo"

    const/16 v2, 0x100

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->FileObjectTreeInfo:Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

    .line 74
    new-instance v0, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

    const-string v1, "FileObjectData"

    const/16 v2, 0x101

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->FileObjectData:Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

    .line 75
    new-instance v0, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

    const-string v1, "FileFirmwareData"

    const/16 v2, 0x102

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->FileFirmwareData:Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

    .line 76
    new-instance v0, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

    const-string v1, "FileLargeObjectData"

    const/16 v2, 0x103

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->FileLargeObjectData:Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

    .line 77
    new-instance v0, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

    const-string v1, "FileBootstrapWbxml"

    const/16 v2, 0x104

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->FileBootstrapWbxml:Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

    .line 78
    new-instance v0, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

    const-string v1, "FileTndsXmlData"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/16 v4, 0x105

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->FileTndsXmlData:Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

    .line 79
    new-instance v0, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

    const-string v1, "FileMax"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/16 v4, 0x106

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->FileMax:Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

    .line 71
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

    sget-object v1, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->FileObjectTreeInfo:Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->FileObjectData:Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->FileFirmwareData:Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

    aput-object v1, v0, v7

    sget-object v1, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->FileLargeObjectData:Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

    aput-object v1, v0, v8

    sget-object v1, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->FileBootstrapWbxml:Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->FileTndsXmlData:Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->FileMax:Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->$VALUES:[Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .parameter
    .parameter
    .parameter "nIndex"
    .parameter "nFileId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    iput p3, p0, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->nIndex:I

    .line 87
    iput p4, p0, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->nFileId:I

    .line 88
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;
    .registers 2
    .parameter "name"

    .prologue
    .line 71
    const-class v0, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

    return-object v0
.end method

.method public static values()[Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;
    .registers 1

    .prologue
    .line 71
    sget-object v0, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->$VALUES:[Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

    invoke-virtual {v0}, [Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

    return-object v0
.end method


# virtual methods
.method FileId()I
    .registers 2

    .prologue
    .line 97
    iget v0, p0, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->nFileId:I

    return v0
.end method

.method Index()I
    .registers 2

    .prologue
    .line 92
    iget v0, p0, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->nIndex:I

    return v0
.end method
