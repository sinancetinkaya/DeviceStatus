.class Lcom/wssyncmldm/ui/XUIMainActivity$5;
.super Ljava/lang/Object;
.source "XUIMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wssyncmldm/ui/XUIMainActivity;->xuiInputCommandDialog()V
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
    .line 282
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIMainActivity$5;->this$0:Lcom/wssyncmldm/ui/XUIMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIMainActivity$5;->this$0:Lcom/wssyncmldm/ui/XUIMainActivity;

    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIMainActivity$5;->this$0:Lcom/wssyncmldm/ui/XUIMainActivity;

    #getter for: Lcom/wssyncmldm/ui/XUIMainActivity;->m_szResponseText:Ljava/lang/String;
    invoke-static {v1}, Lcom/wssyncmldm/ui/XUIMainActivity;->access$100(Lcom/wssyncmldm/ui/XUIMainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/ui/XUIMainActivity;->xuiSelectTestMenu(Ljava/lang/String;)V

    .line 286
    return-void
.end method
