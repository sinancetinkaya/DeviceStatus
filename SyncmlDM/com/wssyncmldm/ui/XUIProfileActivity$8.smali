.class Lcom/wssyncmldm/ui/XUIProfileActivity$8;
.super Ljava/lang/Object;
.source "XUIProfileActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wssyncmldm/ui/XUIProfileActivity;->xuiCurrentTabSet(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wssyncmldm/ui/XUIProfileActivity;


# direct methods
.method constructor <init>(Lcom/wssyncmldm/ui/XUIProfileActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIProfileActivity$8;->this$0:Lcom/wssyncmldm/ui/XUIProfileActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIProfileActivity$8;->this$0:Lcom/wssyncmldm/ui/XUIProfileActivity;

    #getter for: Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;
    invoke-static {v0}, Lcom/wssyncmldm/ui/XUIProfileActivity;->access$000(Lcom/wssyncmldm/ui/XUIProfileActivity;)[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    move-result-object v0

    invoke-static {}, Lcom/wssyncmldm/ui/XUIProfileActivity;->access$100()I

    move-result v1

    aget-object v0, v0, v1

    add-int/lit8 v1, p3, -0x1

    iput v1, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->nServerAuthType:I

    .line 206
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
