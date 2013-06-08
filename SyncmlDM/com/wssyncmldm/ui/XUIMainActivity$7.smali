.class Lcom/wssyncmldm/ui/XUIMainActivity$7;
.super Ljava/lang/Object;
.source "XUIMainActivity.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wssyncmldm/ui/XUIMainActivity;->xuiLocalTestDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wssyncmldm/ui/XUIMainActivity;


# direct methods
.method constructor <init>(Lcom/wssyncmldm/ui/XUIMainActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIMainActivity$7;->this$0:Lcom/wssyncmldm/ui/XUIMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 3
    .parameter "pathName"

    .prologue
    .line 480
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 481
    const/4 v0, 0x1

    .line 483
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
