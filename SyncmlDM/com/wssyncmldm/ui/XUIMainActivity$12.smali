.class Lcom/wssyncmldm/ui/XUIMainActivity$12;
.super Ljava/lang/Object;
.source "XUIMainActivity.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wssyncmldm/ui/XUIMainActivity;->xuiFotaLogList()V
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
    .line 613
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIMainActivity$12;->this$0:Lcom/wssyncmldm/ui/XUIMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 5
    .parameter "pathName"

    .prologue
    const/4 v0, 0x0

    .line 616
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 618
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "recovery"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 619
    const/4 v0, 0x1

    .line 624
    :cond_14
    return v0
.end method
