.class public final enum Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;
.super Ljava/lang/Enum;
.source "XDMInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssyncmldm/interfaces/XDMInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "XDMAtomicStep"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

.field public static final enum XDM_ATOMIC_NONE:Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

.field public static final enum XDM_ATOMIC_STEP_NOT_EXEC:Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

.field public static final enum XDM_ATOMIC_STEP_ROLLBACK:Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 140
    new-instance v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    const-string v1, "XDM_ATOMIC_NONE"

    invoke-direct {v0, v1, v2}, Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;->XDM_ATOMIC_NONE:Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    .line 141
    new-instance v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    const-string v1, "XDM_ATOMIC_STEP_ROLLBACK"

    invoke-direct {v0, v1, v3}, Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;->XDM_ATOMIC_STEP_ROLLBACK:Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    .line 142
    new-instance v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    const-string v1, "XDM_ATOMIC_STEP_NOT_EXEC"

    invoke-direct {v0, v1, v4}, Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;->XDM_ATOMIC_STEP_NOT_EXEC:Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    .line 138
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    sget-object v1, Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;->XDM_ATOMIC_NONE:Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;->XDM_ATOMIC_STEP_ROLLBACK:Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;->XDM_ATOMIC_STEP_NOT_EXEC:Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;->$VALUES:[Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

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
    .line 138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;
    .registers 2
    .parameter "name"

    .prologue
    .line 138
    const-class v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    return-object v0
.end method

.method public static values()[Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;
    .registers 1

    .prologue
    .line 138
    sget-object v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;->$VALUES:[Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    invoke-virtual {v0}, [Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    return-object v0
.end method
