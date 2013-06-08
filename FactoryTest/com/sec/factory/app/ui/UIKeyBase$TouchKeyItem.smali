.class public Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;
.super Ljava/lang/Object;
.source "UIKeyBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UIKeyBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TouchKeyItem"
.end annotation


# instance fields
.field protected mTouchKeySensitivityText:Landroid/widget/TextView;

.field protected mTouchKeyTestResult:Landroid/widget/TextView;

.field protected mTouchKeyText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/sec/factory/app/ui/UIKeyBase;


# direct methods
.method protected constructor <init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 5
    .parameter
    .parameter "text"
    .parameter "sensitivity"
    .parameter "result"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;->this$0:Lcom/sec/factory/app/ui/UIKeyBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p2, p0, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;->mTouchKeyText:Landroid/widget/TextView;

    .line 190
    iput-object p3, p0, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;->mTouchKeySensitivityText:Landroid/widget/TextView;

    .line 191
    iput-object p4, p0, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;->mTouchKeyTestResult:Landroid/widget/TextView;

    .line 192
    return-void
.end method
