.class public final enum Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;
.super Ljava/lang/Enum;
.source "XDMInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssyncmldm/interfaces/XDMInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "XDMProcessingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

.field public static final enum XDM_PROC_ADD:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

.field public static final enum XDM_PROC_ALERT:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

.field public static final enum XDM_PROC_COPY:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

.field public static final enum XDM_PROC_DELETE:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

.field public static final enum XDM_PROC_EXEC:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

.field public static final enum XDM_PROC_GET:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

.field public static final enum XDM_PROC_NONE:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

.field public static final enum XDM_PROC_REPLACE:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

.field public static final enum XDM_PROC_RESULTS:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

.field public static final enum XDM_PROC_STATUS:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

.field public static final enum XDM_PROC_SYNCHDR:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 125
    new-instance v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    const-string v1, "XDM_PROC_NONE"

    invoke-direct {v0, v1, v3}, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;->XDM_PROC_NONE:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    .line 126
    new-instance v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    const-string v1, "XDM_PROC_SYNCHDR"

    invoke-direct {v0, v1, v4}, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;->XDM_PROC_SYNCHDR:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    .line 127
    new-instance v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    const-string v1, "XDM_PROC_ALERT"

    invoke-direct {v0, v1, v5}, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;->XDM_PROC_ALERT:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    .line 128
    new-instance v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    const-string v1, "XDM_PROC_STATUS"

    invoke-direct {v0, v1, v6}, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;->XDM_PROC_STATUS:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    .line 129
    new-instance v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    const-string v1, "XDM_PROC_RESULTS"

    invoke-direct {v0, v1, v7}, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;->XDM_PROC_RESULTS:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    .line 130
    new-instance v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    const-string v1, "XDM_PROC_GET"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;->XDM_PROC_GET:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    .line 131
    new-instance v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    const-string v1, "XDM_PROC_EXEC"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;->XDM_PROC_EXEC:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    .line 132
    new-instance v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    const-string v1, "XDM_PROC_ADD"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;->XDM_PROC_ADD:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    .line 133
    new-instance v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    const-string v1, "XDM_PROC_REPLACE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;->XDM_PROC_REPLACE:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    .line 134
    new-instance v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    const-string v1, "XDM_PROC_DELETE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;->XDM_PROC_DELETE:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    .line 135
    new-instance v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    const-string v1, "XDM_PROC_COPY"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;->XDM_PROC_COPY:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    .line 123
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    sget-object v1, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;->XDM_PROC_NONE:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;->XDM_PROC_SYNCHDR:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;->XDM_PROC_ALERT:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;->XDM_PROC_STATUS:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;->XDM_PROC_RESULTS:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;->XDM_PROC_GET:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;->XDM_PROC_EXEC:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;->XDM_PROC_ADD:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;->XDM_PROC_REPLACE:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;->XDM_PROC_DELETE:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;->XDM_PROC_COPY:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;->$VALUES:[Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

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
    .line 123
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;
    .registers 2
    .parameter "name"

    .prologue
    .line 123
    const-class v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    return-object v0
.end method

.method public static values()[Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;
    .registers 1

    .prologue
    .line 123
    sget-object v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;->$VALUES:[Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    invoke-virtual {v0}, [Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    return-object v0
.end method
