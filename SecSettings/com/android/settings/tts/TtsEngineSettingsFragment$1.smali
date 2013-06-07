.class Lcom/android/settings/tts/TtsEngineSettingsFragment$1;
.super Ljava/lang/Object;
.source "TtsEngineSettingsFragment.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/tts/TtsEngineSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/TtsEngineSettingsFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment$1;->this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .registers 4
    .parameter "status"

    .prologue
    .line 59
    if-eqz p1, :cond_8

    .line 60
    iget-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment$1;->this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->finishFragment()V

    .line 70
    :goto_7
    return-void

    .line 62
    :cond_8
    iget-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment$1;->this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/tts/TtsEngineSettingsFragment$1$1;

    invoke-direct {v1, p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment$1$1;-><init>(Lcom/android/settings/tts/TtsEngineSettingsFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_7
.end method
