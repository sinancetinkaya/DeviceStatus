.class Lcom/android/settings/applications/ManageApplications$2;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ManageApplications;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageApplications;)V
    .registers 2
    .parameter

    .prologue
    .line 1244
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$2;->this$0:Lcom/android/settings/applications/ManageApplications;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .parameter "name"
    .parameter "service"

    .prologue
    .line 1247
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$2;->this$0:Lcom/android/settings/applications/ManageApplications;

    invoke-static {p2}, Lcom/android/internal/app/IMediaContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v2

    #setter for: Lcom/android/settings/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v1, v2}, Lcom/android/settings/applications/ManageApplications;->access$1302(Lcom/android/settings/applications/ManageApplications;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 1248
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$2;->this$0:Lcom/android/settings/applications/ManageApplications;

    #getter for: Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications;->access$000(Lcom/android/settings/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 1249
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$2;->this$0:Lcom/android/settings/applications/ManageApplications;

    #getter for: Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications;->access$000(Lcom/android/settings/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$2;->this$0:Lcom/android/settings/applications/ManageApplications;

    #getter for: Lcom/android/settings/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v2}, Lcom/android/settings/applications/ManageApplications;->access$1300(Lcom/android/settings/applications/ManageApplications;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/ManageApplications$TabInfo;->setContainerService(Lcom/android/internal/app/IMediaContainerService;)V

    .line 1248
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1251
    :cond_2e
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$2;->this$0:Lcom/android/settings/applications/ManageApplications;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v0, v1}, Lcom/android/settings/applications/ManageApplications;->access$1302(Lcom/android/settings/applications/ManageApplications;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 1256
    return-void
.end method
