.class Lcom/sec/android/app/camerafirmware/CameraFirmware_user$4;
.super Ljava/lang/Object;
.source "CameraFirmware_user.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->dialogErrorPopup(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camerafirmware/CameraFirmware_user;)V
    .registers 2
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$4;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$4;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    invoke-virtual {v0}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->finish()V

    .line 284
    return-void
.end method
