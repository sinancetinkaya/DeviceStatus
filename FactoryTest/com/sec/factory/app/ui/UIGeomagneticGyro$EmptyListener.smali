.class public Lcom/sec/factory/app/ui/UIGeomagneticGyro$EmptyListener;
.super Ljava/lang/Object;
.source "UIGeomagneticGyro.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UIGeomagneticGyro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmptyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UIGeomagneticGyro;


# direct methods
.method public constructor <init>(Lcom/sec/factory/app/ui/UIGeomagneticGyro;)V
    .registers 2
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro$EmptyListener;->this$0:Lcom/sec/factory/app/ui/UIGeomagneticGyro;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "dialog"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro$EmptyListener;->this$0:Lcom/sec/factory/app/ui/UIGeomagneticGyro;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onDismiss"

    const-string v2, "bye bye~~ !"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro$EmptyListener;->this$0:Lcom/sec/factory/app/ui/UIGeomagneticGyro;

    invoke-virtual {v0}, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->finish()V

    .line 439
    return-void
.end method
