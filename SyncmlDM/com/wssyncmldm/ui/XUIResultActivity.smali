.class public Lcom/wssyncmldm/ui/XUIResultActivity;
.super Landroid/preference/PreferenceActivity;
.source "XUIResultActivity.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XDMInterface;
.implements Lcom/wssyncmldm/interfaces/XFOTAInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wssyncmldm/ui/XUIResultActivity$eResult;
    }
.end annotation


# static fields
.field private static final DIALOG_NO_DATA_RECEIVED:I = 0x1

.field private static final KEY_AUTH_TYPE:Ljava/lang/String; = "authtype"

.field private static final KEY_CORRELATOR:Ljava/lang/String; = "correlator"

.field private static final KEY_OBJECTSIZE:Ljava/lang/String; = "objectsize"

.field private static final KEY_RESULT:Ljava/lang/String; = "result"

.field private static final KEY_SERVER_IP:Ljava/lang/String; = "serverip"

.field private static final KEY_SERVER_URL:Ljava/lang/String; = "serverurl"

.field private static m_Presultdata:Lcom/wssyncmldm/db/file/XDBFumoInfo;


# instance fields
.field private m_szAuthType:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 19
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NONE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "BASIC"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "MD5"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "HMAC"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "MD5 Not BASE64"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/wssyncmldm/ui/XUIResultActivity;->m_szAuthType:[Ljava/lang/String;

    .line 17
    return-void
.end method

.method public static xuiGetFotaResultData()Lcom/wssyncmldm/db/file/XDBFumoInfo;
    .registers 1

    .prologue
    .line 188
    sget-object v0, Lcom/wssyncmldm/ui/XUIResultActivity;->m_Presultdata:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    return-object v0
.end method

.method public static xuiSetFotaResultData(Lcom/wssyncmldm/db/file/XDBFumoInfo;)V
    .registers 2
    .parameter "fumoinfo"

    .prologue
    .line 193
    sget-object v0, Lcom/wssyncmldm/ui/XUIResultActivity;->m_Presultdata:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    if-nez v0, :cond_b

    .line 194
    new-instance v0, Lcom/wssyncmldm/db/file/XDBFumoInfo;

    invoke-direct {v0}, Lcom/wssyncmldm/db/file/XDBFumoInfo;-><init>()V

    sput-object v0, Lcom/wssyncmldm/ui/XUIResultActivity;->m_Presultdata:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    .line 196
    :cond_b
    sput-object p0, Lcom/wssyncmldm/ui/XUIResultActivity;->m_Presultdata:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    .line 197
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 21
    .parameter "savedInstanceState"

    .prologue
    .line 83
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const/4 v6, 0x0

    .line 86
    .local v6, bYetFota:Z
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    .line 87
    const-string v17, "UI MODE SESSION RESET"

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 89
    sget-object v16, Lcom/wssyncmldm/ui/XUIResultActivity;->m_Presultdata:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    .line 91
    .local v16, resultdata:Lcom/wssyncmldm/db/file/XDBFumoInfo;
    const v17, 0x7f040001

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/ui/XUIResultActivity;->addPreferencesFromResource(I)V

    .line 92
    const-string v17, "serverurl"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/ui/XUIResultActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 93
    .local v15, prefServerUrl:Landroid/preference/Preference;
    const v17, 0x7f07001b

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 94
    const-string v17, "serverip"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/ui/XUIResultActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 95
    .local v14, prefServerIP:Landroid/preference/Preference;
    const v17, 0x7f07001d

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 96
    const-string v17, "authtype"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/ui/XUIResultActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 97
    .local v10, prefAuthType:Landroid/preference/Preference;
    const v17, 0x7f070011

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 98
    const-string v17, "objectsize"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/ui/XUIResultActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 99
    .local v12, prefObjectSize:Landroid/preference/Preference;
    const v17, 0x7f070013

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 100
    const-string v17, "correlator"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/ui/XUIResultActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 101
    .local v11, prefCorrelator:Landroid/preference/Preference;
    const v17, 0x7f070012

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 102
    const-string v17, "result"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/ui/XUIResultActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    .line 103
    .local v13, prefResult:Landroid/preference/Preference;
    const v17, 0x7f070030

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 107
    :try_start_86
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBFumoInfo;->ServerUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "http://"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_a6

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBFumoInfo;->ServerUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_103

    .line 109
    :cond_a6
    const/4 v6, 0x1

    .line 110
    const v17, 0x7f07002c

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 111
    const v17, 0x7f07002c

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/ui/XUIResultActivity;->m_szAuthType:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 113
    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 122
    :goto_cd
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBFumoInfo;->Correlator:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_146

    .line 123
    const v17, 0x7f07002c

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 127
    :goto_e1
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBFumoInfo;->ResultCode:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_ef

    if-eqz v6, :cond_152

    .line 128
    :cond_ef
    const v17, 0x7f07002c

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/preference/Preference;->setSummary(I)V
    :try_end_f7
    .catch Ljava/lang/NullPointerException; {:try_start_86 .. :try_end_f7} :catch_13c

    .line 156
    :goto_f7
    if-eqz v6, :cond_102

    .line 157
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/ui/XUIResultActivity;->showDialog(I)V

    .line 158
    :cond_102
    return-void

    .line 117
    :cond_103
    :try_start_103
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBFumoInfo;->ServerUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 118
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBFumoInfo;->ServerIP:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/ui/XUIResultActivity;->m_szAuthType:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/wssyncmldm/db/file/XDBFumoInfo;->AuthType:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 120
    move-object/from16 v0, v16

    iget v0, v0, Lcom/wssyncmldm/db/file/XDBFumoInfo;->nObjectSize:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_13b
    .catch Ljava/lang/NullPointerException; {:try_start_103 .. :try_end_13b} :catch_13c

    goto :goto_cd

    .line 150
    :catch_13c
    move-exception v7

    .line 152
    .local v7, e:Ljava/lang/NullPointerException;
    const/4 v6, 0x1

    .line 153
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_f7

    .line 125
    .end local v7           #e:Ljava/lang/NullPointerException;
    :cond_146
    :try_start_146
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBFumoInfo;->Correlator:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_e1

    .line 132
    :cond_152
    invoke-static {}, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->values()[Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    move-result-object v3

    .line 133
    .local v3, Files:[Lcom/wssyncmldm/ui/XUIResultActivity$eResult;
    sget-object v17, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->GENERIC_MAX:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    invoke-virtual/range {v17 .. v17}, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->index()I

    move-result v17

    move/from16 v0, v17

    new-array v4, v0, [Ljava/lang/String;

    .line 135
    .local v4, XDMFileParam:[Ljava/lang/String;
    move-object v5, v3

    .local v5, arr$:[Lcom/wssyncmldm/ui/XUIResultActivity$eResult;
    array-length v9, v5

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_163
    if-ge v8, v9, :cond_177

    aget-object v2, v5, v8

    .line 137
    .local v2, File:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;
    invoke-virtual {v2}, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->index()I

    move-result v17

    sget-object v18, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->GENERIC_MAX:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;

    invoke-virtual/range {v18 .. v18}, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->index()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_184

    .line 147
    .end local v2           #File:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;
    :cond_177
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBFumoInfo;->ResultCode:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_f7

    .line 140
    .restart local v2       #File:Lcom/wssyncmldm/ui/XUIResultActivity$eResult;
    :cond_184
    invoke-virtual {v2}, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->index()I

    move-result v17

    invoke-virtual {v2}, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->szIndex()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v4, v17

    .line 141
    invoke-virtual {v2}, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->szIndex()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBFumoInfo;->ResultCode:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a7

    .line 143
    invoke-virtual {v2}, Lcom/wssyncmldm/ui/XUIResultActivity$eResult;->szBuf()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1a7
    .catch Ljava/lang/NullPointerException; {:try_start_146 .. :try_end_1a7} :catch_13c

    .line 135
    :cond_1a7
    add-int/lit8 v8, v8, 0x1

    goto :goto_163
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 163
    packed-switch p1, :pswitch_data_3a

    .line 182
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 166
    :pswitch_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070030

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070055

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07002d

    new-instance v2, Lcom/wssyncmldm/ui/XUIResultActivity$1;

    invoke-direct {v2, p0}, Lcom/wssyncmldm/ui/XUIResultActivity$1;-><init>(Lcom/wssyncmldm/ui/XUIResultActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    .line 163
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method
