.class final enum Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;
.super Ljava/lang/Enum;
.source "BtSettingsGuider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/guide/BtSettingsGuider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BluetoothBroadcastActions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

.field public static final enum BOND_STATE_CHANGED:Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

.field public static final enum DISCOVERY_FINISHED:Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

.field public static final enum DISCOVERY_STARTED:Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

.field public static final enum STATE_CHANGED:Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

.field static final sFilter:Landroid/content/IntentFilter;

.field private static final sMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 74
    new-instance v4, Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    const-string v5, "STATE_CHANGED"

    const-string v6, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v4, v5, v7, v6}, Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->STATE_CHANGED:Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    .line 75
    new-instance v4, Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    const-string v5, "DISCOVERY_STARTED"

    const-string v6, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-direct {v4, v5, v8, v6}, Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->DISCOVERY_STARTED:Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    .line 76
    new-instance v4, Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    const-string v5, "DISCOVERY_FINISHED"

    const-string v6, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-direct {v4, v5, v9, v6}, Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->DISCOVERY_FINISHED:Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    .line 77
    new-instance v4, Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    const-string v5, "BOND_STATE_CHANGED"

    const-string v6, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v4, v5, v10, v6}, Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->BOND_STATE_CHANGED:Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    .line 73
    const/4 v4, 0x4

    new-array v4, v4, [Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    sget-object v5, Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->STATE_CHANGED:Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    aput-object v5, v4, v7

    sget-object v5, Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->DISCOVERY_STARTED:Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    aput-object v5, v4, v8

    sget-object v5, Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->DISCOVERY_FINISHED:Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    aput-object v5, v4, v9

    sget-object v5, Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->BOND_STATE_CHANGED:Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    aput-object v5, v4, v10

    sput-object v4, Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->$VALUES:[Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    .line 82
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->sMap:Ljava/util/HashMap;

    .line 87
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    sput-object v4, Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->sFilter:Landroid/content/IntentFilter;

    .line 91
    invoke-static {}, Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->values()[Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    move-result-object v0

    .local v0, arr$:[Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_59
    if-ge v1, v3, :cond_6e

    aget-object v2, v0, v1

    .line 92
    .local v2, item:Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;
    sget-object v4, Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->sMap:Ljava/util/HashMap;

    iget-object v5, v2, Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v4, Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->sFilter:Landroid/content/IntentFilter;

    iget-object v5, v2, Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    .line 95
    .end local v2           #item:Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;
    :cond_6e
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter "action"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 103
    iput-object p3, p0, Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->mAction:Ljava/lang/String;

    .line 104
    return-void
.end method

.method static fromAction(Ljava/lang/String;)Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;
    .registers 2
    .parameter "action"

    .prologue
    .line 114
    sget-object v0, Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->sMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;
    .registers 2
    .parameter

    .prologue
    .line 73
    const-class v0, Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;
    .registers 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->$VALUES:[Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    invoke-virtual {v0}, [Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    return-object v0
.end method
