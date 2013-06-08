.class Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps$1;
.super Landroid/os/Handler;
.source "UIMagneticAlps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;)V
    .registers 2
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps$1;->this$0:Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 145
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps$1;->this$0:Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;

    #getter for: Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->WHAT_UPDATE:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->access$000(Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;)I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 146
    iget-object v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps$1;->this$0:Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;

    #calls: Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->update()V
    invoke-static {v0}, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->access$100(Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;)V

    .line 147
    :cond_f
    return-void
.end method
