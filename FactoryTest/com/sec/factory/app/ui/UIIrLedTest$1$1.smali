.class Lcom/sec/factory/app/ui/UIIrLedTest$1$1;
.super Ljava/lang/Object;
.source "UIIrLedTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/app/ui/UIIrLedTest$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/factory/app/ui/UIIrLedTest$1;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UIIrLedTest$1;)V
    .registers 2
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIIrLedTest$1$1;->this$1:Lcom/sec/factory/app/ui/UIIrLedTest$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIIrLedTest$1$1;->this$1:Lcom/sec/factory/app/ui/UIIrLedTest$1;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIIrLedTest$1;->this$0:Lcom/sec/factory/app/ui/UIIrLedTest;

    const-string v2, "38400,173,171,24,62,24,61,24,62,24,17,24,17,24,18,24,17,24,18,23,62,24,61,24,62,24,17,24,17,25,17,24,17,24,17,24,19,23,61,24,18,24,17,24,61,24,19,23,17,24,17,24,62,24,17,24,62,24,61,24,19,23,61,24,62,24,61,24,1880,0"

    #calls: Lcom/sec/factory/app/ui/UIIrLedTest;->controlIrED(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sec/factory/app/ui/UIIrLedTest;->access$100(Lcom/sec/factory/app/ui/UIIrLedTest;Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIIrLedTest$1$1;->this$1:Lcom/sec/factory/app/ui/UIIrLedTest$1;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIIrLedTest$1;->this$0:Lcom/sec/factory/app/ui/UIIrLedTest;

    invoke-static {v1}, Lcom/sec/factory/app/ui/UIIrLedTest;->access$208(Lcom/sec/factory/app/ui/UIIrLedTest;)I

    .line 128
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIIrLedTest$1$1;->this$1:Lcom/sec/factory/app/ui/UIIrLedTest$1;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIIrLedTest$1;->this$0:Lcom/sec/factory/app/ui/UIIrLedTest;

    #getter for: Lcom/sec/factory/app/ui/UIIrLedTest;->mCounterView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIIrLedTest;->access$300(Lcom/sec/factory/app/ui/UIIrLedTest;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIIrLedTest$1$1;->this$1:Lcom/sec/factory/app/ui/UIIrLedTest$1;

    iget-object v2, v2, Lcom/sec/factory/app/ui/UIIrLedTest$1;->this$0:Lcom/sec/factory/app/ui/UIIrLedTest;

    #getter for: Lcom/sec/factory/app/ui/UIIrLedTest;->mCounter:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UIIrLedTest;->access$200(Lcom/sec/factory/app/ui/UIIrLedTest;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_27} :catch_28

    .line 132
    :goto_27
    return-void

    .line 129
    :catch_28
    move-exception v0

    .line 130
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_27
.end method
