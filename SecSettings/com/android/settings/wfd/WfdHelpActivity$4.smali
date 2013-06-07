.class final Lcom/android/settings/wfd/WfdHelpActivity$4;
.super Ljava/lang/Thread;
.source "WfdHelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WfdHelpActivity;->changeNfcEnabled(Landroid/content/Context;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$desiredState:Z

.field final synthetic val$nfcAdapter:Landroid/nfc/NfcAdapter;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLandroid/nfc/NfcAdapter;)V
    .registers 4
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 222
    iput-boolean p2, p0, Lcom/android/settings/wfd/WfdHelpActivity$4;->val$desiredState:Z

    iput-object p3, p0, Lcom/android/settings/wfd/WfdHelpActivity$4;->val$nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 224
    const-string v5, "WfdHelpActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting NFC enabled state to: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/settings/wfd/WfdHelpActivity$4;->val$desiredState:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v4, 0x0

    .line 229
    .local v4, success:Z
    iget-boolean v5, p0, Lcom/android/settings/wfd/WfdHelpActivity$4;->val$desiredState:Z

    if-eqz v5, :cond_67

    .line 231
    :try_start_1f
    iget-object v5, p0, Lcom/android/settings/wfd/WfdHelpActivity$4;->val$nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 232
    .local v1, NfcManagerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "enable"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 233
    .local v3, setNfcEnabled:Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 234
    iget-object v5, p0, Lcom/android/settings/wfd/WfdHelpActivity$4;->val$nfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_48
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1f .. :try_end_48} :catch_c0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1f .. :try_end_48} :catch_be
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_48} :catch_bc
    .catch Ljava/lang/IllegalAccessException; {:try_start_1f .. :try_end_48} :catch_ba
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1f .. :try_end_48} :catch_b8

    move-result v0

    .line 235
    .local v0, Nfc:Z
    move v4, v0

    .line 256
    .end local v0           #Nfc:Z
    .end local v1           #NfcManagerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #setNfcEnabled:Ljava/lang/reflect/Method;
    :goto_4a
    if-eqz v4, :cond_93

    .line 257
    const-string v5, "WfdHelpActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Successfully changed NFC enabled state to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/settings/wfd/WfdHelpActivity$4;->val$desiredState:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :goto_66
    return-void

    .line 244
    :cond_67
    :try_start_67
    iget-object v5, p0, Lcom/android/settings/wfd/WfdHelpActivity$4;->val$nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 245
    .restart local v1       #NfcManagerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "disable"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 246
    .local v2, setNfcDisabled:Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 247
    iget-object v5, p0, Lcom/android/settings/wfd/WfdHelpActivity$4;->val$nfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_90
    .catch Ljava/lang/ClassNotFoundException; {:try_start_67 .. :try_end_90} :catch_b6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_67 .. :try_end_90} :catch_b4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_67 .. :try_end_90} :catch_b2
    .catch Ljava/lang/IllegalAccessException; {:try_start_67 .. :try_end_90} :catch_b0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_67 .. :try_end_90} :catch_ae

    move-result v0

    .line 248
    .restart local v0       #Nfc:Z
    move v4, v0

    goto :goto_4a

    .line 259
    .end local v0           #Nfc:Z
    .end local v1           #NfcManagerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #setNfcDisabled:Ljava/lang/reflect/Method;
    :cond_93
    const-string v5, "WfdHelpActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error setting NFC enabled state to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/settings/wfd/WfdHelpActivity$4;->val$desiredState:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 253
    :catch_ae
    move-exception v5

    goto :goto_4a

    .line 252
    :catch_b0
    move-exception v5

    goto :goto_4a

    .line 251
    :catch_b2
    move-exception v5

    goto :goto_4a

    .line 250
    :catch_b4
    move-exception v5

    goto :goto_4a

    .line 249
    :catch_b6
    move-exception v5

    goto :goto_4a

    .line 240
    :catch_b8
    move-exception v5

    goto :goto_4a

    .line 239
    :catch_ba
    move-exception v5

    goto :goto_4a

    .line 238
    :catch_bc
    move-exception v5

    goto :goto_4a

    .line 237
    :catch_be
    move-exception v5

    goto :goto_4a

    .line 236
    :catch_c0
    move-exception v5

    goto :goto_4a
.end method
