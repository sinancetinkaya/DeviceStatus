.class public Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ShowMenuAction;
.super Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowMenuAction"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;


# direct methods
.method public constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V
    .registers 2
    .parameter

    .prologue
    .line 3186
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ShowMenuAction;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    return-void
.end method


# virtual methods
.method protected doNotSelected()Z
    .registers 2

    .prologue
    .line 3189
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ShowMenuAction;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #getter for: Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;
    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$1800(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText;

    move-result-object v0

    #calls: Lcom/android/ex/editstyledtext/EditStyledText;->showMenuAlertDialog()V
    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->access$4400(Lcom/android/ex/editstyledtext/EditStyledText;)V

    .line 3190
    const/4 v0, 0x1

    return v0
.end method
