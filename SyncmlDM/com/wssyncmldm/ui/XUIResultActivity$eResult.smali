.class final enum Lcom/wssyncmldm/ui/XUIResultActivity$eResult;
.super Ljava/lang/Enum;
.source "XUIResultActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssyncmldm/ui/XUIResultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "eResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wssyncmldm/ui/XUIResultActivity$eResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

.field public static final enum GENERIC_AUTHENTICATION_FAILURE:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

.field public static final enum GENERIC_BAD_URL:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

.field public static final enum GENERIC_CLIENT_ERROR:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

.field public static final enum GENERIC_CORRUPTED_FW_UP:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

.field public static final enum GENERIC_DOWNLOAD_FAILED_NETWORK:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

.field public static final enum GENERIC_DOWNLOAD_FAILED_OUT_MEMORY:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

.field public static final enum GENERIC_FAILED_FW_UP_VALIDATION:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

.field public static final enum GENERIC_MAX:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

.field public static final enum GENERIC_NOT_ACCEPTABLE:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

.field public static final enum GENERIC_NOT_IMPLEMENTED:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

.field public static final enum GENERIC_PACKAGE_MISMATCH:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

.field public static final enum GENERIC_REQUEST_TIME_OUT:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

.field public static final enum GENERIC_SERVER_ERROR:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

.field public static final enum GENERIC_SERVER_UNAVAILABLE:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

.field public static final enum GENERIC_SUCCESSFUL:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

.field public static final enum GENERIC_SUCCESSFUL_VENDOR_SPECIFIED:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

.field public static final enum GENERIC_UNDEFINED_ERROR:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

.field public static final enum GENERIC_UPDATE_FAILED:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

.field public static final enum GENERIC_UPDATE_FAILED_OUT_MEMORY:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

.field public static final enum GENERIC_USER_CANCELED_DOWNLOAD:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;


# instance fields
.field private final nindex:I

.field private final szbuf:Ljava/lang/String;

.field private final szidx:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    const-string v1, "GENERIC_SUCCESSFUL"

    const-string v4, "200"

    const-string v5, "Successful"

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->GENERIC_SUCCESSFUL:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    .line 34
    new-instance v3, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    const-string v4, "GENERIC_SUCCESSFUL_VENDOR_SPECIFIED"

    const-string v7, "250"

    const-string v8, ""

    move v5, v9

    move v6, v9

    invoke-direct/range {v3 .. v8}, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->GENERIC_SUCCESSFUL_VENDOR_SPECIFIED:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    .line 35
    new-instance v3, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    const-string v4, "GENERIC_CLIENT_ERROR"

    const-string v7, "400"

    const-string v8, ""

    move v5, v10

    move v6, v10

    invoke-direct/range {v3 .. v8}, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->GENERIC_CLIENT_ERROR:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    .line 36
    new-instance v3, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    const-string v4, "GENERIC_USER_CANCELED_DOWNLOAD"

    const-string v7, "401"

    const-string v8, ""

    move v5, v11

    move v6, v11

    invoke-direct/range {v3 .. v8}, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->GENERIC_USER_CANCELED_DOWNLOAD:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    .line 37
    new-instance v3, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    const-string v4, "GENERIC_CORRUPTED_FW_UP"

    const-string v7, "402"

    const-string v8, ""

    move v5, v12

    move v6, v12

    invoke-direct/range {v3 .. v8}, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->GENERIC_CORRUPTED_FW_UP:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    .line 38
    new-instance v3, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    const-string v4, "GENERIC_PACKAGE_MISMATCH"

    const/4 v5, 0x5

    const/4 v6, 0x5

    const-string v7, "403"

    const-string v8, ""

    invoke-direct/range {v3 .. v8}, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->GENERIC_PACKAGE_MISMATCH:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    .line 39
    new-instance v3, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    const-string v4, "GENERIC_FAILED_FW_UP_VALIDATION"

    const/4 v5, 0x6

    const/4 v6, 0x6

    const-string v7, "404"

    const-string v8, ""

    invoke-direct/range {v3 .. v8}, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->GENERIC_FAILED_FW_UP_VALIDATION:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    .line 40
    new-instance v3, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    const-string v4, "GENERIC_NOT_ACCEPTABLE"

    const/4 v5, 0x7

    const/4 v6, 0x7

    const-string v7, "405"

    const-string v8, ""

    invoke-direct/range {v3 .. v8}, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->GENERIC_NOT_ACCEPTABLE:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    .line 41
    new-instance v3, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    const-string v4, "GENERIC_AUTHENTICATION_FAILURE"

    const/16 v5, 0x8

    const/16 v6, 0x8

    const-string v7, "406"

    const-string v8, ""

    invoke-direct/range {v3 .. v8}, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->GENERIC_AUTHENTICATION_FAILURE:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    .line 42
    new-instance v3, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    const-string v4, "GENERIC_REQUEST_TIME_OUT"

    const/16 v5, 0x9

    const/16 v6, 0x9

    const-string v7, "407"

    const-string v8, ""

    invoke-direct/range {v3 .. v8}, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->GENERIC_REQUEST_TIME_OUT:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    .line 43
    new-instance v3, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    const-string v4, "GENERIC_NOT_IMPLEMENTED"

    const/16 v5, 0xa

    const/16 v6, 0xa

    const-string v7, "408"

    const-string v8, ""

    invoke-direct/range {v3 .. v8}, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->GENERIC_NOT_IMPLEMENTED:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    .line 44
    new-instance v3, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    const-string v4, "GENERIC_UNDEFINED_ERROR"

    const/16 v5, 0xb

    const/16 v6, 0xb

    const-string v7, "409"

    const-string v8, ""

    invoke-direct/range {v3 .. v8}, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->GENERIC_UNDEFINED_ERROR:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    .line 45
    new-instance v3, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    const-string v4, "GENERIC_UPDATE_FAILED"

    const/16 v5, 0xc

    const/16 v6, 0xc

    const-string v7, "410"

    const-string v8, ""

    invoke-direct/range {v3 .. v8}, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->GENERIC_UPDATE_FAILED:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    .line 46
    new-instance v3, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    const-string v4, "GENERIC_BAD_URL"

    const/16 v5, 0xd

    const/16 v6, 0xd

    const-string v7, "411"

    const-string v8, ""

    invoke-direct/range {v3 .. v8}, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->GENERIC_BAD_URL:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    .line 47
    new-instance v3, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    const-string v4, "GENERIC_SERVER_UNAVAILABLE"

    const/16 v5, 0xe

    const/16 v6, 0xe

    const-string v7, "412"

    const-string v8, ""

    invoke-direct/range {v3 .. v8}, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->GENERIC_SERVER_UNAVAILABLE:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    .line 48
    new-instance v3, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    const-string v4, "GENERIC_SERVER_ERROR"

    const/16 v5, 0xf

    const/16 v6, 0xf

    const-string v7, "500"

    const-string v8, ""

    invoke-direct/range {v3 .. v8}, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->GENERIC_SERVER_ERROR:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    .line 49
    new-instance v3, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    const-string v4, "GENERIC_DOWNLOAD_FAILED_OUT_MEMORY"

    const/16 v5, 0x10

    const/16 v6, 0x10

    const-string v7, "501"

    const-string v8, ""

    invoke-direct/range {v3 .. v8}, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->GENERIC_DOWNLOAD_FAILED_OUT_MEMORY:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    .line 50
    new-instance v3, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    const-string v4, "GENERIC_UPDATE_FAILED_OUT_MEMORY"

    const/16 v5, 0x11

    const/16 v6, 0x11

    const-string v7, "502"

    const-string v8, ""

    invoke-direct/range {v3 .. v8}, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->GENERIC_UPDATE_FAILED_OUT_MEMORY:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    .line 51
    new-instance v3, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    const-string v4, "GENERIC_DOWNLOAD_FAILED_NETWORK"

    const/16 v5, 0x12

    const/16 v6, 0x12

    const-string v7, "503"

    const-string v8, ""

    invoke-direct/range {v3 .. v8}, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->GENERIC_DOWNLOAD_FAILED_NETWORK:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    .line 52
    new-instance v3, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    const-string v4, "GENERIC_MAX"

    const/16 v5, 0x13

    const/16 v6, 0x13

    const-string v7, ""

    const-string v8, ""

    invoke-direct/range {v3 .. v8}, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->GENERIC_MAX:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    .line 31
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    sget-object v1, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->GENERIC_SUCCESSFUL:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->GENERIC_SUCCESSFUL_VENDOR_SPECIFIED:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    aput-object v1, v0, v9

    sget-object v1, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->GENERIC_CLIENT_ERROR:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    aput-object v1, v0, v10

    sget-object v1, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->GENERIC_USER_CANCELED_DOWNLOAD:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    aput-object v1, v0, v11

    sget-object v1, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->GENERIC_CORRUPTED_FW_UP:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->GENERIC_PACKAGE_MISMATCH:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->GENERIC_FAILED_FW_UP_VALIDATION:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->GENERIC_NOT_ACCEPTABLE:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->GENERIC_AUTHENTICATION_FAILURE:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->GENERIC_REQUEST_TIME_OUT:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->GENERIC_NOT_IMPLEMENTED:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->GENERIC_UNDEFINED_ERROR:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->GENERIC_UPDATE_FAILED:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->GENERIC_BAD_URL:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->GENERIC_SERVER_UNAVAILABLE:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->GENERIC_SERVER_ERROR:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->GENERIC_DOWNLOAD_FAILED_OUT_MEMORY:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->GENERIC_UPDATE_FAILED_OUT_MEMORY:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->GENERIC_DOWNLOAD_FAILED_NETWORK:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->GENERIC_MAX:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->$VALUES:[Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter "idx"
    .parameter "Index"
    .parameter "Buf"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput p3, p0, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->nindex:I

    .line 60
    iput-object p4, p0, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->szidx:Ljava/lang/String;

    .line 61
    iput-object p5, p0, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->szbuf:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wssyncmldm/ui/XUIResultActivity$eResult;
    .registers 2
    .parameter "name"

    .prologue
    .line 31
    const-class v0, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    return-object v0
.end method

.method public static values()[Lcom/wssyncmldm/ui/XUIResultActivity$eResult;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->$VALUES:[Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    invoke-virtual {v0}, [Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    return-object v0
.end method


# virtual methods
.method index()I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->nindex:I

    return v0
.end method

.method szBuf()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->szbuf:Ljava/lang/String;

    return-object v0
.end method

.method szIndex()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->szidx:Ljava/lang/String;

    return-object v0
.end method
