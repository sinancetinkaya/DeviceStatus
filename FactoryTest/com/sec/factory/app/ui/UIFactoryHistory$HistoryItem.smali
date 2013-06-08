.class Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;
.super Ljava/lang/Object;
.source "UIFactoryHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UIFactoryHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HistoryItem"
.end annotation


# instance fields
.field private mItemName:Ljava/lang/String;

.field private mNVKey:Ljava/lang/String;

.field private mNVValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/factory/app/ui/UIFactoryHistory;


# direct methods
.method public constructor <init>(Lcom/sec/factory/app/ui/UIFactoryHistory;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter "nvKey"
    .parameter "nvValue"

    .prologue
    const/16 v3, 0x10

    .line 34
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;->this$0:Lcom/sec/factory/app/ui/UIFactoryHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    #calls: Lcom/sec/factory/app/ui/UIFactoryHistory;->getItemIDforPGM(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/sec/factory/app/ui/UIFactoryHistory;->access$000(Lcom/sec/factory/app/ui/UIFactoryHistory;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;->mItemName:Ljava/lang/String;

    .line 36
    const-string v0, "NA"

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;->mItemName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 37
    invoke-static {p2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;->mNVKey:Ljava/lang/String;

    .line 38
    const-string v0, "nv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;->mNVKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/factory/support/Support$FactoryTestMenu;->getFactoryTestName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;->mItemName:Ljava/lang/String;

    .line 40
    :cond_42
    const-string v0, "e"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 42
    invoke-static {p2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;->mNVKey:Ljava/lang/String;

    .line 43
    const-string v0, "Wlan"

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;->mItemName:Ljava/lang/String;

    .line 45
    :cond_5c
    invoke-static {p2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;->mNVKey:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;->mItemName:Ljava/lang/String;

    if-nez v0, :cond_72

    .line 47
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;->mItemName:Ljava/lang/String;

    .line 49
    :cond_72
    iput-object p3, p0, Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;->mNVValue:Ljava/lang/String;

    .line 51
    iget-object v0, p1, Lcom/sec/factory/app/ui/UIFactoryHistory;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "HistoryItem-HistoryItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NV Key (Hexa/Decimal) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;->mNVKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;->mItemName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", NV Value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;->mNVValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method static synthetic access$400(Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;->mNVKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;->mItemName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;->mNVValue:Ljava/lang/String;

    return-object v0
.end method
