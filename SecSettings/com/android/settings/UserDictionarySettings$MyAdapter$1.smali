.class Lcom/android/settings/UserDictionarySettings$MyAdapter$1;
.super Ljava/lang/Object;
.source "UserDictionarySettings.java"

# interfaces
.implements Landroid/widget/SimpleCursorAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UserDictionarySettings$MyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/UserDictionarySettings$MyAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/UserDictionarySettings$MyAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/settings/UserDictionarySettings$MyAdapter$1;->this$0:Lcom/android/settings/UserDictionarySettings$MyAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .registers 7
    .parameter "v"
    .parameter "c"
    .parameter "columnIndex"

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 247
    if-ne p3, v1, :cond_22

    .line 248
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, shortcut:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 250
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    :goto_13
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 256
    const/4 v1, 0x1

    .line 259
    .end local v0           #shortcut:Ljava/lang/String;
    :goto_17
    return v1

    .restart local v0       #shortcut:Ljava/lang/String;
    :cond_18
    move-object v1, p1

    .line 252
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_13

    .end local v0           #shortcut:Ljava/lang/String;
    :cond_22
    move v1, v2

    .line 259
    goto :goto_17
.end method
