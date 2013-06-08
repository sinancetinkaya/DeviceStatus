.class Lcom/sec/factory/app/ui/UIKey$AlertDialogEx;
.super Ljava/lang/Object;
.source "UIKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UIKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlertDialogEx"
.end annotation


# instance fields
.field mAlertDialog:Landroid/app/AlertDialog;

.field mMessageView:Landroid/widget/TextView;

.field mView:Landroid/view/View;

.field final synthetic this$0:Lcom/sec/factory/app/ui/UIKey;


# direct methods
.method public constructor <init>(Lcom/sec/factory/app/ui/UIKey;Landroid/content/Context;II)V
    .registers 7
    .parameter
    .parameter "context"
    .parameter "vResourceID"
    .parameter "tvResourceID"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIKey$AlertDialogEx;->this$0:Lcom/sec/factory/app/ui/UIKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIKey$AlertDialogEx;->mView:Landroid/view/View;

    .line 138
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIKey$AlertDialogEx;->mView:Landroid/view/View;

    invoke-virtual {v0, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIKey$AlertDialogEx;->mMessageView:Landroid/widget/TextView;

    .line 139
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIKey$AlertDialogEx;->mAlertDialog:Landroid/app/AlertDialog;

    .line 140
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIKey$AlertDialogEx;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIKey$AlertDialogEx;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 141
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIKey$AlertDialogEx;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 142
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIKey$AlertDialogEx;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 158
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIKey$AlertDialogEx;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3
    .parameter "title"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIKey$AlertDialogEx;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 146
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIKey$AlertDialogEx;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 154
    return-void
.end method
