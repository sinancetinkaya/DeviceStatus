.class public Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;
.super Ljava/util/TimerTask;
.source "XUIDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssyncmldm/ui/XUIDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "XUICloseTimerTask"
.end annotation


# instance fields
.field SelectDialog:I

.field final synthetic this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;


# direct methods
.method public constructor <init>(Lcom/wssyncmldm/ui/XUIDialogActivity;I)V
    .registers 4
    .parameter
    .parameter "type"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;->SelectDialog:I

    .line 93
    iput p2, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;->SelectDialog:I

    .line 94
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x10

    .line 105
    iget v1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;->SelectDialog:I

    sparse-switch v1, :sswitch_data_c8

    .line 175
    :goto_8
    return-void

    .line 108
    :sswitch_9
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 109
    invoke-static {v4}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 110
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-virtual {v1}, Lcom/wssyncmldm/ui/XUIDialogActivity;->finish()V

    goto :goto_8

    .line 114
    :sswitch_19
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    const/16 v2, 0x96

    invoke-virtual {v1, v2}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 115
    invoke-static {v4}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 116
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-virtual {v1}, Lcom/wssyncmldm/ui/XUIDialogActivity;->finish()V

    goto :goto_8

    .line 120
    :sswitch_29
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    #calls: Lcom/wssyncmldm/ui/XUIDialogActivity;->xuiDlgCPopupKillTimer()V
    invoke-static {v1}, Lcom/wssyncmldm/ui/XUIDialogActivity;->access$000(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    .line 121
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    iget v2, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;->SelectDialog:I

    invoke-virtual {v1, v2}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 122
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    #calls: Lcom/wssyncmldm/ui/XUIDialogActivity;->xuiDlgUicDisplayResult()V
    invoke-static {v1}, Lcom/wssyncmldm/ui/XUIDialogActivity;->access$100(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    .line 123
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-virtual {v1}, Lcom/wssyncmldm/ui/XUIDialogActivity;->finish()V

    goto :goto_8

    .line 127
    :sswitch_40
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    #calls: Lcom/wssyncmldm/ui/XUIDialogActivity;->xuiDlgCPopupKillTimer()V
    invoke-static {v1}, Lcom/wssyncmldm/ui/XUIDialogActivity;->access$000(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    .line 128
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    iget v2, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;->SelectDialog:I

    invoke-virtual {v1, v2}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 129
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    sget-object v2, Lcom/wssyncmldm/ui/XUIDialogActivity;->g_UicOption:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/wssyncmldm/ui/XUIDialogActivity;->xuiDlgUicConfirmResult(Ljava/lang/Object;I)V

    .line 130
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-virtual {v1}, Lcom/wssyncmldm/ui/XUIDialogActivity;->finish()V

    goto :goto_8

    .line 134
    :sswitch_59
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    #calls: Lcom/wssyncmldm/ui/XUIDialogActivity;->xuiDlgCPopupKillTimer()V
    invoke-static {v1}, Lcom/wssyncmldm/ui/XUIDialogActivity;->access$000(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    .line 135
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    iget v2, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;->SelectDialog:I

    invoke-virtual {v1, v2}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 136
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    sget-object v2, Lcom/wssyncmldm/ui/XUIDialogActivity;->g_UicOption:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/wssyncmldm/ui/XUIDialogActivity;->xuiDlgUicInputResult(Ljava/lang/Object;I)V

    .line 137
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-virtual {v1}, Lcom/wssyncmldm/ui/XUIDialogActivity;->finish()V

    goto :goto_8

    .line 142
    :sswitch_72
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    #calls: Lcom/wssyncmldm/ui/XUIDialogActivity;->xuiDlgCPopupKillTimer()V
    invoke-static {v1}, Lcom/wssyncmldm/ui/XUIDialogActivity;->access$000(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    .line 143
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    iget v2, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;->SelectDialog:I

    invoke-virtual {v1, v2}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 144
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    sget-object v2, Lcom/wssyncmldm/ui/XUIDialogActivity;->g_UicOption:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/wssyncmldm/ui/XUIDialogActivity;->xuiDlgUicChoiceResult(Ljava/lang/Object;I)V

    .line 145
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-virtual {v1}, Lcom/wssyncmldm/ui/XUIDialogActivity;->finish()V

    goto/16 :goto_8

    .line 149
    :sswitch_8c
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    #calls: Lcom/wssyncmldm/ui/XUIDialogActivity;->xuiDlgCPopupKillTimer()V
    invoke-static {v1}, Lcom/wssyncmldm/ui/XUIDialogActivity;->access$000(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    .line 150
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    iget v2, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;->SelectDialog:I

    invoke-virtual {v1, v2}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 151
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-virtual {v1}, Lcom/wssyncmldm/ui/XUIDialogActivity;->finish()V

    goto/16 :goto_8

    .line 157
    :sswitch_9f
    :try_start_9f
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmAppReBoot()V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a2} :catch_b0

    .line 163
    :goto_a2
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    iget v2, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;->SelectDialog:I

    invoke-virtual {v1, v2}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 164
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-virtual {v1}, Lcom/wssyncmldm/ui/XUIDialogActivity;->finish()V

    goto/16 :goto_8

    .line 159
    :catch_b0
    move-exception v0

    .line 161
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_a2

    .line 168
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_b9
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    const/16 v2, 0xd7

    invoke-virtual {v1, v2}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 169
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-virtual {v1}, Lcom/wssyncmldm/ui/XUIDialogActivity;->finish()V

    goto/16 :goto_8

    .line 105
    nop

    :sswitch_data_c8
    .sparse-switch
        0x69 -> :sswitch_29
        0x6a -> :sswitch_40
        0x6b -> :sswitch_59
        0x6c -> :sswitch_72
        0x6d -> :sswitch_72
        0x6e -> :sswitch_8c
        0x96 -> :sswitch_19
        0xac -> :sswitch_9
        0xd5 -> :sswitch_9f
        0xd7 -> :sswitch_b9
    .end sparse-switch
.end method

.method public scheduledExecutionTime()J
    .registers 3

    .prologue
    .line 99
    invoke-super {p0}, Ljava/util/TimerTask;->scheduledExecutionTime()J

    move-result-wide v0

    return-wide v0
.end method
