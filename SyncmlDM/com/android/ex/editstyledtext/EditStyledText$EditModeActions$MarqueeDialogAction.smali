.class public Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$MarqueeDialogAction;
.super Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MarqueeDialogAction"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;


# direct methods
.method public constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V
    .registers 2
    .parameter

    .prologue
    .line 3287
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$MarqueeDialogAction;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    return-void
.end method


# virtual methods
.method protected doSelectionIsFixed()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 3290
    invoke-super {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->doSelectionIsFixed()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3294
    :goto_7
    return v1

    .line 3293
    :cond_8
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$MarqueeDialogAction;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #getter for: Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mDialog:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;
    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$3900(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    move-result-object v0

    #calls: Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->onShowMarqueeAlertDialog()V
    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->access$4700(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    goto :goto_7
.end method
