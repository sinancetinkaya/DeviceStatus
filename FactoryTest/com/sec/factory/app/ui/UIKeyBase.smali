.class public Lcom/sec/factory/app/ui/UIKeyBase;
.super Lcom/sec/factory/app/ui/UIBase;
.source "UIKeyBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;,
        Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;,
        Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;,
        Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;
    }
.end annotation


# instance fields
.field protected CLASS_NAME:Ljava/lang/String;

.field protected mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mExitButtonAction:Landroid/view/View$OnClickListener;

.field private mIsLongPress:Z

.field protected mTestList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "className"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/sec/factory/app/ui/UIBase;-><init>(Ljava/lang/String;)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIKeyBase;->mTestList:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Lcom/sec/factory/app/ui/UIKeyBase$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UIKeyBase$1;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIKeyBase;->mComparator:Ljava/util/Comparator;

    .line 33
    new-instance v0, Lcom/sec/factory/app/ui/UIKeyBase$2;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UIKeyBase$2;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIKeyBase;->mExitButtonAction:Landroid/view/View$OnClickListener;

    .line 44
    const-string v0, "UIKeyBase"

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIKeyBase;->CLASS_NAME:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method protected isLongPress()Z
    .registers 2

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIKeyBase;->mIsLongPress:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIBase;->onCreate(Landroid/os/Bundle;)V

    .line 50
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIKeyBase;->isLongPress()Z

    move-result v0

    if-nez v0, :cond_a

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/sec/factory/app/ui/UIKeyBase;->setLongPress(ZLandroid/view/KeyEvent;)Z

    .line 70
    :cond_a
    packed-switch p1, :pswitch_data_1e

    .line 77
    const/4 v0, 0x1

    :goto_e
    return v0

    .line 72
    :pswitch_f
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIKeyBase;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onKeyDown"

    const-string v2, "KEYCODE_HEADSETHOOK"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-super {p0, p1, p2}, Lcom/sec/factory/app/ui/UIBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_e

    .line 70
    nop

    :pswitch_data_1e
    .packed-switch 0x4f
        :pswitch_f
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 54
    invoke-virtual {p0, v0, p2}, Lcom/sec/factory/app/ui/UIKeyBase;->setLongPress(ZLandroid/view/KeyEvent;)Z

    .line 55
    packed-switch p1, :pswitch_data_16

    .line 62
    :goto_7
    return v0

    .line 57
    :pswitch_8
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIKeyBase;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onKeyUp"

    const-string v2, "KEYCODE_HEADSETHOOK"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-super {p0, p1, p2}, Lcom/sec/factory/app/ui/UIBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_7

    .line 55
    :pswitch_data_16
    .packed-switch 0x4f
        :pswitch_8
    .end packed-switch
.end method

.method protected setLongPress(ZLandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "isUp"
    .parameter "event"

    .prologue
    .line 85
    if-nez p1, :cond_e

    .line 86
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIKeyBase;->mIsLongPress:Z

    if-nez v0, :cond_c

    .line 87
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIKeyBase;->mIsLongPress:Z

    .line 92
    :cond_c
    :goto_c
    const/4 v0, 0x1

    return v0

    .line 90
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIKeyBase;->mIsLongPress:Z

    goto :goto_c
.end method
