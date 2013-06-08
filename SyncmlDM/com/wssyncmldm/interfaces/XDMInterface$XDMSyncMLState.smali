.class public final enum Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;
.super Ljava/lang/Enum;
.source "XDMInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssyncmldm/interfaces/XDMInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "XDMSyncMLState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

.field public static final enum XDM_STATE_ABORT_ALERT:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

.field public static final enum XDM_STATE_CLIENT_INIT_MGMT:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

.field public static final enum XDM_STATE_FINISH:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

.field public static final enum XDM_STATE_GENERIC_ALERT:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

.field public static final enum XDM_STATE_GENERIC_ALERT_REPORT:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

.field public static final enum XDM_STATE_INIT:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

.field public static final enum XDM_STATE_NONE:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

.field public static final enum XDM_STATE_PROCESSING:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 147
    new-instance v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    const-string v1, "XDM_STATE_NONE"

    invoke-direct {v0, v1, v3}, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;->XDM_STATE_NONE:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    .line 148
    new-instance v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    const-string v1, "XDM_STATE_INIT"

    invoke-direct {v0, v1, v4}, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;->XDM_STATE_INIT:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    .line 149
    new-instance v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    const-string v1, "XDM_STATE_CLIENT_INIT_MGMT"

    invoke-direct {v0, v1, v5}, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;->XDM_STATE_CLIENT_INIT_MGMT:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    .line 150
    new-instance v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    const-string v1, "XDM_STATE_PROCESSING"

    invoke-direct {v0, v1, v6}, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;->XDM_STATE_PROCESSING:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    .line 151
    new-instance v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    const-string v1, "XDM_STATE_GENERIC_ALERT"

    invoke-direct {v0, v1, v7}, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;->XDM_STATE_GENERIC_ALERT:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    .line 152
    new-instance v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    const-string v1, "XDM_STATE_GENERIC_ALERT_REPORT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;->XDM_STATE_GENERIC_ALERT_REPORT:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    .line 153
    new-instance v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    const-string v1, "XDM_STATE_ABORT_ALERT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;->XDM_STATE_ABORT_ALERT:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    .line 154
    new-instance v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    const-string v1, "XDM_STATE_FINISH"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;->XDM_STATE_FINISH:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    .line 145
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    sget-object v1, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;->XDM_STATE_NONE:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;->XDM_STATE_INIT:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;->XDM_STATE_CLIENT_INIT_MGMT:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;->XDM_STATE_PROCESSING:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;->XDM_STATE_GENERIC_ALERT:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;->XDM_STATE_GENERIC_ALERT_REPORT:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;->XDM_STATE_ABORT_ALERT:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;->XDM_STATE_FINISH:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;->$VALUES:[Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

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
    .line 145
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;
    .registers 2
    .parameter "name"

    .prologue
    .line 145
    const-class v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    return-object v0
.end method

.method public static values()[Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;
    .registers 1

    .prologue
    .line 145
    sget-object v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;->$VALUES:[Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    invoke-virtual {v0}, [Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    return-object v0
.end method
