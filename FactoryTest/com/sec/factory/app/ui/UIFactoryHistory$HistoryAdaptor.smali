.class Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryAdaptor;
.super Landroid/widget/ArrayAdapter;
.source "UIFactoryHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UIFactoryHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HistoryAdaptor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UIFactoryHistory;


# direct methods
.method public constructor <init>(Lcom/sec/factory/app/ui/UIFactoryHistory;Landroid/content/Context;ILjava/util/List;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "resource"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p4, items:Ljava/util/List;,"Ljava/util/List<Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;>;"
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryAdaptor;->this$0:Lcom/sec/factory/app/ui/UIFactoryHistory;

    .line 218
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 219
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 223
    if-nez p2, :cond_97

    .line 224
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryAdaptor;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 225
    .local v4, li:Landroid/view/LayoutInflater;
    const v6, 0x7f030022

    const/4 v7, 0x0

    invoke-virtual {v4, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 229
    .end local v4           #li:Landroid/view/LayoutInflater;
    .local v3, layout:Landroid/widget/LinearLayout;
    :goto_14
    const v6, 0x7f0900e7

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 230
    .local v0, idView:Landroid/widget/TextView;
    const v6, 0x7f0900e8

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 231
    .local v2, itemView:Landroid/widget/TextView;
    const v6, 0x7f09002c

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 233
    .local v5, resultView:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryAdaptor;->this$0:Lcom/sec/factory/app/ui/UIFactoryHistory;

    #getter for: Lcom/sec/factory/app/ui/UIFactoryHistory;->mHistoryList:Ljava/util/List;
    invoke-static {v6}, Lcom/sec/factory/app/ui/UIFactoryHistory;->access$300(Lcom/sec/factory/app/ui/UIFactoryHistory;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;

    .line 234
    .local v1, item:Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;
    #getter for: Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;->mNVKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;->access$400(Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    #getter for: Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;->mItemName:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;->access$500(Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    #getter for: Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;->mNVValue:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;->access$600(Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v6, p0, Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryAdaptor;->this$0:Lcom/sec/factory/app/ui/UIFactoryHistory;

    iget-object v6, v6, Lcom/sec/factory/app/ui/UIFactoryHistory;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "HistoryAdaptor-getView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] \'NV Key\' / \'Name\' / \'NV Value\' : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    #getter for: Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;->mNVKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;->access$400(Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    #getter for: Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;->mItemName:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;->access$500(Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    #getter for: Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;->mNVValue:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;->access$600(Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-object v3

    .end local v0           #idView:Landroid/widget/TextView;
    .end local v1           #item:Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;
    .end local v2           #itemView:Landroid/widget/TextView;
    .end local v3           #layout:Landroid/widget/LinearLayout;
    .end local v5           #resultView:Landroid/widget/TextView;
    :cond_97
    move-object v3, p2

    .line 227
    check-cast v3, Landroid/widget/LinearLayout;

    .restart local v3       #layout:Landroid/widget/LinearLayout;
    goto/16 :goto_14
.end method
