.class public Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;
.super Ljava/lang/Object;
.source "UIKeyBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UIKeyBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "KeyTestItem"
.end annotation


# instance fields
.field protected mEnabled:Z

.field protected mHardKeyItem:Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

.field protected mIsPassed:Z

.field protected mIsTouchKey:Z

.field protected mKeyCode:I

.field protected mKeyCode_String:Ljava/lang/String;

.field protected mTouchKeyItem:Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

.field final synthetic this$0:Lcom/sec/factory/app/ui/UIKeyBase;


# direct methods
.method protected constructor <init>(Lcom/sec/factory/app/ui/UIKeyBase;I)V
    .registers 5
    .parameter
    .parameter "keyCode"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 104
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->this$0:Lcom/sec/factory/app/ui/UIKeyBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object v1, p0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mHardKeyItem:Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    .line 97
    iput-object v1, p0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mTouchKeyItem:Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    .line 100
    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mEnabled:Z

    .line 101
    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mIsTouchKey:Z

    .line 102
    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mIsPassed:Z

    .line 105
    iput p2, p0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mKeyCode:I

    .line 106
    return-void
.end method

.method protected constructor <init>(Lcom/sec/factory/app/ui/UIKeyBase;ILcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;ZZ)V
    .registers 9
    .parameter
    .parameter "keyCode"
    .parameter "hardKeyItem"
    .parameter "touchKeyItem"
    .parameter "enabled"
    .parameter "isTouchKey"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 122
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->this$0:Lcom/sec/factory/app/ui/UIKeyBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object v1, p0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mHardKeyItem:Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    .line 97
    iput-object v1, p0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mTouchKeyItem:Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    .line 100
    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mEnabled:Z

    .line 101
    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mIsTouchKey:Z

    .line 102
    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mIsPassed:Z

    .line 123
    iput p2, p0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mKeyCode:I

    .line 124
    iput-object p3, p0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mHardKeyItem:Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    .line 125
    iput-object p4, p0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mTouchKeyItem:Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    .line 126
    iput-boolean p5, p0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mEnabled:Z

    .line 127
    iput-boolean p6, p0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mIsTouchKey:Z

    .line 129
    if-nez p5, :cond_23

    .line 130
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mHardKeyItem:Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    invoke-direct {p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->removeHardKeyItem(Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;)V

    .line 134
    :cond_22
    :goto_22
    return-void

    .line 131
    :cond_23
    if-eqz p6, :cond_22

    .line 132
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mTouchKeyItem:Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    invoke-direct {p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->enableTouchKeyItem(Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;)V

    goto :goto_22
.end method

.method protected constructor <init>(Lcom/sec/factory/app/ui/UIKeyBase;ILcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter "keyCode"
    .parameter "hardKeyItem"
    .parameter "keyCode_String"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 113
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->this$0:Lcom/sec/factory/app/ui/UIKeyBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object v1, p0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mHardKeyItem:Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    .line 97
    iput-object v1, p0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mTouchKeyItem:Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    .line 100
    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mEnabled:Z

    .line 101
    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mIsTouchKey:Z

    .line 102
    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mIsPassed:Z

    .line 114
    iput p2, p0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mKeyCode:I

    .line 115
    iput-object p3, p0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mHardKeyItem:Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    .line 116
    iput-object p4, p0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mKeyCode_String:Ljava/lang/String;

    .line 117
    const-string v0, "DUMMY"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mIsPassed:Z

    .line 119
    :cond_22
    return-void
.end method

.method private enableTouchKeyItem(Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;)V
    .registers 4
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 141
    if-eqz p1, :cond_12

    .line 142
    iget-object v0, p1, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;->mTouchKeyText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    iget-object v0, p1, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;->mTouchKeySensitivityText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    iget-object v0, p1, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;->mTouchKeyTestResult:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    :cond_12
    return-void
.end method

.method private removeHardKeyItem(Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;)V
    .registers 4
    .parameter "item"

    .prologue
    .line 137
    iget-object v0, p1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;->mHardKeyText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    return-void
.end method


# virtual methods
.method public getHardKeyTextView()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mHardKeyItem:Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;->mHardKeyText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getKeyCode()I
    .registers 2

    .prologue
    .line 149
    iget v0, p0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mKeyCode:I

    return v0
.end method

.method public getKeyCode_String()Ljava/lang/String;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mKeyCode_String:Ljava/lang/String;

    return-object v0
.end method

.method public remobeHardKeyItem()V
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mHardKeyItem:Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    invoke-direct {p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->removeHardKeyItem(Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;)V

    .line 162
    return-void
.end method
