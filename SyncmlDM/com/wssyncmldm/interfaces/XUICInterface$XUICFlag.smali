.class public final enum Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;
.super Ljava/lang/Enum;
.source "XUICInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssyncmldm/interfaces/XUICInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "XUICFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

.field public static final enum UIC_CANCELED:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

.field public static final enum UIC_FALSE:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

.field public static final enum UIC_NONE:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

.field public static final enum UIC_TIMEOUT:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

.field public static final enum UIC_TRUE:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    const-string v1, "UIC_NONE"

    invoke-direct {v0, v1, v2}, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;->UIC_NONE:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    .line 8
    new-instance v0, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    const-string v1, "UIC_TRUE"

    invoke-direct {v0, v1, v3}, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;->UIC_TRUE:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    .line 9
    new-instance v0, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    const-string v1, "UIC_FALSE"

    invoke-direct {v0, v1, v4}, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;->UIC_FALSE:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    .line 10
    new-instance v0, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    const-string v1, "UIC_CANCELED"

    invoke-direct {v0, v1, v5}, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;->UIC_CANCELED:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    .line 11
    new-instance v0, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    const-string v1, "UIC_TIMEOUT"

    invoke-direct {v0, v1, v6}, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;->UIC_TIMEOUT:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    .line 5
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    sget-object v1, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;->UIC_NONE:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;->UIC_TRUE:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;->UIC_FALSE:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;->UIC_CANCELED:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;->UIC_TIMEOUT:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    aput-object v1, v0, v6

    sput-object v0, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;->$VALUES:[Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;
    .registers 2
    .parameter "name"

    .prologue
    .line 5
    const-class v0, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    return-object v0
.end method

.method public static values()[Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;
    .registers 1

    .prologue
    .line 5
    sget-object v0, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;->$VALUES:[Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    invoke-virtual {v0}, [Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    return-object v0
.end method
