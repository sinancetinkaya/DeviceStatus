.class Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderFlashNotification$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AccessibilityWidgetProviderFlashNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderFlashNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .registers 3
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 220
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 221
    iput-object p2, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderFlashNotification$SettingsObserver;->mContext:Landroid/content/Context;

    .line 222
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderFlashNotification$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderFlashNotification;->updateWidget(Landroid/content/Context;)V

    .line 237
    return-void
.end method

.method startObserving()V
    .registers 4

    .prologue
    .line 225
    iget-object v1, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderFlashNotification$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 226
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "flash_notification"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 228
    return-void
.end method

.method stopObserving()V
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderFlashNotification$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 232
    return-void
.end method
