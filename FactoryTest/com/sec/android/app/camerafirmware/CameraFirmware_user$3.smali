.class Lcom/sec/android/app/camerafirmware/CameraFirmware_user$3;
.super Ljava/lang/Object;
.source "CameraFirmware_user.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->DialogPopup(I)Landroid/app/AlertDialog;
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
    .line 261
    iput-object p1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$3;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog2"
    .parameter "which"

    .prologue
    .line 263
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 264
    return-void
.end method
