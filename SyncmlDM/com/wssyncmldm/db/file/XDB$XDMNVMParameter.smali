.class final enum Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;
.super Ljava/lang/Enum;
.source "XDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssyncmldm/db/file/XDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "XDMNVMParameter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

.field public static final enum NVM_DM_ACC_X_NODE:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

.field public static final enum NVM_DM_AGENT_INFO:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

.field public static final enum NVM_DM_INFO:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

.field public static final enum NVM_DM_PROFILE:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

.field public static final enum NVM_FUMO_INFO:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

.field public static final enum NVM_FUMO_POSTPONE:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

.field public static final enum NVM_IMSI_INFO:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

.field public static final enum NVM_MAX:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

.field public static final enum NVM_NOTI_INFO:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

.field public static final enum NVM_NOTI_RESYNC_MODE:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

.field public static final enum NVM_POLLING_INFO:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;


# instance fields
.field private final nIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 46
    new-instance v0, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    const-string v1, "NVM_DM_PROFILE"

    invoke-direct {v0, v1, v4, v4}, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_DM_PROFILE:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    .line 47
    new-instance v0, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    const-string v1, "NVM_DM_INFO"

    invoke-direct {v0, v1, v5, v5}, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_DM_INFO:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    .line 48
    new-instance v0, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    const-string v1, "NVM_FUMO_INFO"

    invoke-direct {v0, v1, v6, v6}, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_FUMO_INFO:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    .line 49
    new-instance v0, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    const-string v1, "NVM_FUMO_POSTPONE"

    invoke-direct {v0, v1, v7, v7}, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_FUMO_POSTPONE:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    .line 50
    new-instance v0, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    const-string v1, "NVM_IMSI_INFO"

    invoke-direct {v0, v1, v8, v8}, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_IMSI_INFO:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    .line 51
    new-instance v0, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    const-string v1, "NVM_POLLING_INFO"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_POLLING_INFO:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    .line 52
    new-instance v0, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    const-string v1, "NVM_DM_ACC_X_NODE"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_DM_ACC_X_NODE:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    .line 53
    new-instance v0, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    const-string v1, "NVM_NOTI_RESYNC_MODE"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_NOTI_RESYNC_MODE:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    .line 54
    new-instance v0, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    const-string v1, "NVM_DM_AGENT_INFO"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_DM_AGENT_INFO:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    .line 55
    new-instance v0, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    const-string v1, "NVM_NOTI_INFO"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_NOTI_INFO:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    .line 56
    new-instance v0, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    const-string v1, "NVM_MAX"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_MAX:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    .line 44
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    sget-object v1, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_DM_PROFILE:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_DM_INFO:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_FUMO_INFO:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_FUMO_POSTPONE:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    aput-object v1, v0, v7

    sget-object v1, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_IMSI_INFO:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_POLLING_INFO:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_DM_ACC_X_NODE:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_NOTI_RESYNC_MODE:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_DM_AGENT_INFO:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_NOTI_INFO:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_MAX:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->$VALUES:[Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter "nIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput p3, p0, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->nIndex:I

    .line 63
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;
    .registers 2
    .parameter "name"

    .prologue
    .line 44
    const-class v0, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    return-object v0
.end method

.method public static values()[Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->$VALUES:[Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    invoke-virtual {v0}, [Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    return-object v0
.end method


# virtual methods
.method Value()I
    .registers 2

    .prologue
    .line 67
    iget v0, p0, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->nIndex:I

    return v0
.end method
