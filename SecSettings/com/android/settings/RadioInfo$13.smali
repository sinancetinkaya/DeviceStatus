.class Lcom/android/settings/RadioInfo$13;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .registers 2
    .parameter

    .prologue
    .line 886
    iput-object p1, p0, Lcom/android/settings/RadioInfo$13;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 889
    iget-object v0, p0, Lcom/android/settings/RadioInfo$13;->this$0:Lcom/android/settings/RadioInfo;

    #getter for: Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$1600(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/RadioInfo$13;->this$0:Lcom/android/settings/RadioInfo;

    #calls: Lcom/android/settings/RadioInfo;->isRadioOn()Z
    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$3100(Lcom/android/settings/RadioInfo;)Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_f
    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 890
    return-void

    .line 889
    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method
