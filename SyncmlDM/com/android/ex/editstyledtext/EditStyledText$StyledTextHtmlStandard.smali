.class Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlStandard;
.super Ljava/lang/Object;
.source "EditStyledText.java"

# interfaces
.implements Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StyledTextHtmlStandard"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/editstyledtext/EditStyledText;


# direct methods
.method private constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText;)V
    .registers 2
    .parameter

    .prologue
    .line 1844
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlStandard;->this$0:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1844
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlStandard;-><init>(Lcom/android/ex/editstyledtext/EditStyledText;)V

    return-void
.end method


# virtual methods
.method public fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .registers 3
    .parameter "source"

    .prologue
    .line 1858
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;
    .registers 5
    .parameter "source"
    .parameter "imageGetter"
    .parameter "tagHandler"

    .prologue
    .line 1862
    invoke-static {p1, p2, p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public toHtml(Landroid/text/Spanned;)Ljava/lang/String;
    .registers 3
    .parameter "text"

    .prologue
    .line 1846
    invoke-static {p1}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toHtml(Landroid/text/Spanned;Z)Ljava/lang/String;
    .registers 4
    .parameter "text"
    .parameter "escapeNonAsciiChar"

    .prologue
    .line 1850
    invoke-static {p1}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toHtml(Landroid/text/Spanned;ZIF)Ljava/lang/String;
    .registers 6
    .parameter "text"
    .parameter "escapeNonAsciiChar"
    .parameter "width"
    .parameter "scale"

    .prologue
    .line 1854
    invoke-static {p1}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
