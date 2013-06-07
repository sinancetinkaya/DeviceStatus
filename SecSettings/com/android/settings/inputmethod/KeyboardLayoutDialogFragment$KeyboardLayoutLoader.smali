.class final Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;
.super Landroid/content/AsyncTaskLoader;
.source "KeyboardLayoutDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyboardLayoutLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInputDeviceDescriptor:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter "context"
    .parameter "inputDeviceDescriptor"

    .prologue
    .line 295
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 296
    iput-object p2, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;->mInputDeviceDescriptor:Ljava/lang/String;

    .line 297
    return-void
.end method


# virtual methods
.method public loadInBackground()Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;
    .registers 14

    .prologue
    .line 301
    new-instance v8, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;

    invoke-direct {v8}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;-><init>()V

    .line 302
    .local v8, keyboards:Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "input"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/InputManager;

    .line 303
    .local v4, im:Landroid/hardware/input/InputManager;
    iget-object v11, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;->mInputDeviceDescriptor:Ljava/lang/String;

    invoke-virtual {v4, v11}, Landroid/hardware/input/InputManager;->getKeyboardLayoutsForInputDevice(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 305
    .local v7, keyboardLayoutDescriptors:[Ljava/lang/String;
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v9, v0

    .local v9, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1a
    if-ge v3, v9, :cond_2c

    aget-object v6, v0, v3

    .line 306
    .local v6, keyboardLayoutDescriptor:Ljava/lang/String;
    invoke-virtual {v4, v6}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v5

    .line 307
    .local v5, keyboardLayout:Landroid/hardware/input/KeyboardLayout;
    if-eqz v5, :cond_29

    .line 308
    iget-object v11, v8, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->keyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 311
    .end local v5           #keyboardLayout:Landroid/hardware/input/KeyboardLayout;
    .end local v6           #keyboardLayoutDescriptor:Ljava/lang/String;
    :cond_2c
    iget-object v11, v8, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->keyboardLayouts:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 313
    iget-object v11, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;->mInputDeviceDescriptor:Ljava/lang/String;

    invoke-virtual {v4, v11}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, currentKeyboardLayoutDescriptor:Ljava/lang/String;
    if-eqz v1, :cond_56

    .line 316
    iget-object v11, v8, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->keyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 317
    .local v10, numKeyboardLayouts:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_40
    if-ge v2, v10, :cond_56

    .line 318
    iget-object v11, v8, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->keyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v11}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_68

    .line 320
    iput v2, v8, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->current:I

    .line 326
    .end local v2           #i:I
    .end local v10           #numKeyboardLayouts:I
    :cond_56
    iget-object v11, v8, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->keyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_67

    .line 327
    iget-object v11, v8, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->keyboardLayouts:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    const/4 v11, 0x0

    iput v11, v8, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->current:I

    .line 330
    :cond_67
    return-object v8

    .line 317
    .restart local v2       #i:I
    .restart local v10       #numKeyboardLayouts:I
    :cond_68
    add-int/lit8 v2, v2, 0x1

    goto :goto_40
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;->loadInBackground()Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;

    move-result-object v0

    return-object v0
.end method

.method protected onStartLoading()V
    .registers 1

    .prologue
    .line 335
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStartLoading()V

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;->forceLoad()V

    .line 337
    return-void
.end method

.method protected onStopLoading()V
    .registers 1

    .prologue
    .line 341
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStopLoading()V

    .line 342
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;->cancelLoad()Z

    .line 343
    return-void
.end method
