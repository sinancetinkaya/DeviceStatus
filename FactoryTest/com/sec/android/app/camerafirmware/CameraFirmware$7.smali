.class Lcom/sec/android/app/camerafirmware/CameraFirmware$7;
.super Ljava/lang/Object;
.source "CameraFirmware.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camerafirmware/CameraFirmware;->dialogErrorPopup(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camerafirmware/CameraFirmware;)V
    .registers 2
    .parameter

    .prologue
    .line 733
    iput-object p1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$7;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 735
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$7;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    invoke-virtual {v0}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->finish()V

    .line 736
    return-void
.end method
