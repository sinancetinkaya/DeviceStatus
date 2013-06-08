.class public Lcom/wssyncmldm/ui/XUISettingActivity;
.super Landroid/preference/PreferenceActivity;
.source "XUISettingActivity.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XDMDefInterface;
.implements Lcom/wssyncmldm/interfaces/XDBInterface;


# static fields
.field private static final DIALOG_SELECT_PROFILE:I = 0x1


# instance fields
.field private m_DlgBuilderProfile:Landroid/app/AlertDialog$Builder;

.field private m_DlgNet:Landroid/app/Dialog;

.field private m_DlgProfile:Landroid/app/Dialog;

.field private m_PrefRoot:Landroid/preference/PreferenceScreen;

.field private m_PrefScreenNet:Landroid/preference/PreferenceScreen;

.field private m_PrefScreenProfile:Landroid/preference/PreferenceScreen;

.field private m_ProNetworkProfileList:Lcom/wssyncmldm/db/file/XDBNetworkProfileList;

.field private m_nSelectedProfileIndex:I

.field private m_szItemProfile:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/wssyncmldm/ui/XUISettingActivity;->m_DlgNet:Landroid/app/Dialog;

    .line 29
    iput-object v0, p0, Lcom/wssyncmldm/ui/XUISettingActivity;->m_DlgProfile:Landroid/app/Dialog;

    .line 30
    iput-object v0, p0, Lcom/wssyncmldm/ui/XUISettingActivity;->m_DlgBuilderProfile:Landroid/app/AlertDialog$Builder;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/wssyncmldm/ui/XUISettingActivity;->m_nSelectedProfileIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/wssyncmldm/ui/XUISettingActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/wssyncmldm/ui/XUISettingActivity;->xuiCallUiDmProfile()V

    return-void
.end method

.method static synthetic access$100(Lcom/wssyncmldm/ui/XUISettingActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/wssyncmldm/ui/XUISettingActivity;->xuiUpdateProfile()V

    return-void
.end method

.method static synthetic access$200(Lcom/wssyncmldm/ui/XUISettingActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/wssyncmldm/ui/XUISettingActivity;->xuiUpdateNetworkProfile()V

    return-void
.end method

.method static synthetic access$300(Lcom/wssyncmldm/ui/XUISettingActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/wssyncmldm/ui/XUISettingActivity;->m_nSelectedProfileIndex:I

    return v0
.end method

.method static synthetic access$302(Lcom/wssyncmldm/ui/XUISettingActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/wssyncmldm/ui/XUISettingActivity;->m_nSelectedProfileIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/wssyncmldm/ui/XUISettingActivity;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUISettingActivity;->m_DlgNet:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/wssyncmldm/ui/XUISettingActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/wssyncmldm/ui/XUISettingActivity;->xuiCallUiDmNetProfile()V

    return-void
.end method

.method private xuiCallUiDmNetProfile()V
    .registers 4

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wssyncmldm/ui/XUINetProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v0, i:Landroid/content/Intent;
    const-string v1, "profileIndex"

    iget v2, p0, Lcom/wssyncmldm/ui/XUISettingActivity;->m_nSelectedProfileIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v0}, Lcom/wssyncmldm/ui/XUISettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 69
    return-void
.end method

.method private xuiCallUiDmProfile()V
    .registers 4

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wssyncmldm/ui/XUIProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    .local v0, i:Landroid/content/Intent;
    const-string v1, "profileIndex"

    iget v2, p0, Lcom/wssyncmldm/ui/XUISettingActivity;->m_nSelectedProfileIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    invoke-virtual {p0, v0}, Lcom/wssyncmldm/ui/XUISettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 62
    return-void
.end method

.method private xuiUpdateNetworkProfile()V
    .registers 3

    .prologue
    .line 49
    sget-object v1, Lcom/wssyncmldm/ui/XUIMainActivity;->g_UiNetInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;

    iget-object v0, v1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->szAccountName:Ljava/lang/String;

    .line 51
    .local v0, NetworkName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 52
    const-string v0, "Unknown"

    .line 54
    :cond_c
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUISettingActivity;->m_PrefScreenNet:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method

.method private xuiUpdateProfile()V
    .registers 4

    .prologue
    .line 43
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUISettingActivity;->m_PrefScreenProfile:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/wssyncmldm/ui/XUISettingActivity;->m_szItemProfile:[Ljava/lang/String;

    iget v2, p0, Lcom/wssyncmldm/ui/XUISettingActivity;->m_nSelectedProfileIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 44
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 184
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 190
    sget-object v0, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    if-eqz v0, :cond_32

    sget-object v0, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    if-eqz v0, :cond_32

    .line 192
    sget-object v0, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetProfileInfo()Lcom/wssyncmldm/db/file/XDBProfileInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    .line 193
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/wssyncmldm/db/file/XDB;->xdbReadListInfo(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssyncmldm/db/file/XDBNetworkProfileList;

    iput-object v0, p0, Lcom/wssyncmldm/ui/XUISettingActivity;->m_ProNetworkProfileList:Lcom/wssyncmldm/db/file/XDBNetworkProfileList;

    .line 194
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUISettingActivity;->m_ProNetworkProfileList:Lcom/wssyncmldm/db/file/XDBNetworkProfileList;

    if-eqz v0, :cond_32

    sget-object v0, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    if-eqz v0, :cond_32

    .line 196
    sget-object v0, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    iget-object v1, p0, Lcom/wssyncmldm/ui/XUISettingActivity;->m_ProNetworkProfileList:Lcom/wssyncmldm/db/file/XDBNetworkProfileList;

    iget-object v1, v1, Lcom/wssyncmldm/db/file/XDBNetworkProfileList;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iput-object v1, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    .line 199
    :cond_32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wssyncmldm/ui/XUISettingActivity;->m_DlgBuilderProfile:Landroid/app/AlertDialog$Builder;

    .line 200
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 74
    packed-switch p1, :pswitch_data_4e

    .line 119
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 77
    :pswitch_8
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUISettingActivity;->m_DlgBuilderProfile:Landroid/app/AlertDialog$Builder;

    if-nez v0, :cond_13

    .line 78
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wssyncmldm/ui/XUISettingActivity;->m_DlgBuilderProfile:Landroid/app/AlertDialog$Builder;

    .line 80
    :cond_13
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUISettingActivity;->m_DlgBuilderProfile:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f070017

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/ui/XUISettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/wssyncmldm/ui/XUISettingActivity;->m_szItemProfile:[Ljava/lang/String;

    iget v2, p0, Lcom/wssyncmldm/ui/XUISettingActivity;->m_nSelectedProfileIndex:I

    new-instance v3, Lcom/wssyncmldm/ui/XUISettingActivity$3;

    invoke-direct {v3, p0}, Lcom/wssyncmldm/ui/XUISettingActivity$3;-><init>(Lcom/wssyncmldm/ui/XUISettingActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070034

    new-instance v2, Lcom/wssyncmldm/ui/XUISettingActivity$2;

    invoke-direct {v2, p0}, Lcom/wssyncmldm/ui/XUISettingActivity$2;-><init>(Lcom/wssyncmldm/ui/XUISettingActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070029

    new-instance v2, Lcom/wssyncmldm/ui/XUISettingActivity$1;

    invoke-direct {v2, p0}, Lcom/wssyncmldm/ui/XUISettingActivity$1;-><init>(Lcom/wssyncmldm/ui/XUISettingActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/wssyncmldm/ui/XUISettingActivity;->m_DlgProfile:Landroid/app/Dialog;

    .line 113
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUISettingActivity;->m_DlgProfile:Landroid/app/Dialog;

    goto :goto_7

    .line 74
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method protected onStart()V
    .registers 6

    .prologue
    .line 126
    sget-object v3, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v3, v3, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    iget-object v3, v3, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->ProfileName:[Ljava/lang/String;

    iput-object v3, p0, Lcom/wssyncmldm/ui/XUISettingActivity;->m_szItemProfile:[Ljava/lang/String;

    .line 127
    sget-object v3, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v3, v3, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    iget v3, v3, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->Profileindex:I

    iput v3, p0, Lcom/wssyncmldm/ui/XUISettingActivity;->m_nSelectedProfileIndex:I

    .line 129
    invoke-virtual {p0}, Lcom/wssyncmldm/ui/XUISettingActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    iput-object v3, p0, Lcom/wssyncmldm/ui/XUISettingActivity;->m_PrefRoot:Landroid/preference/PreferenceScreen;

    .line 131
    new-instance v2, Landroid/preference/PreferenceCategory;

    invoke-direct {v2, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 132
    .local v2, launchPrefCatTitle:Landroid/preference/PreferenceCategory;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f070080

    invoke-virtual {p0, v4}, Lcom/wssyncmldm/ui/XUISettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f07001f

    invoke-virtual {p0, v4}, Lcom/wssyncmldm/ui/XUISettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v3, p0, Lcom/wssyncmldm/ui/XUISettingActivity;->m_PrefRoot:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 136
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 137
    .local v0, launchPrefCat:Landroid/preference/PreferenceCategory;
    const v3, 0x7f070017

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 138
    iget-object v3, p0, Lcom/wssyncmldm/ui/XUISettingActivity;->m_PrefRoot:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 140
    invoke-virtual {p0}, Lcom/wssyncmldm/ui/XUISettingActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    iput-object v3, p0, Lcom/wssyncmldm/ui/XUISettingActivity;->m_PrefScreenProfile:Landroid/preference/PreferenceScreen;

    .line 141
    iget-object v3, p0, Lcom/wssyncmldm/ui/XUISettingActivity;->m_PrefScreenProfile:Landroid/preference/PreferenceScreen;

    const-string v4, "screen_preference"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 142
    invoke-direct {p0}, Lcom/wssyncmldm/ui/XUISettingActivity;->xuiUpdateProfile()V

    .line 143
    iget-object v3, p0, Lcom/wssyncmldm/ui/XUISettingActivity;->m_PrefRoot:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/wssyncmldm/ui/XUISettingActivity;->m_PrefScreenProfile:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 145
    iget-object v3, p0, Lcom/wssyncmldm/ui/XUISettingActivity;->m_PrefScreenProfile:Landroid/preference/PreferenceScreen;

    new-instance v4, Lcom/wssyncmldm/ui/XUISettingActivity$4;

    invoke-direct {v4, p0}, Lcom/wssyncmldm/ui/XUISettingActivity$4;-><init>(Lcom/wssyncmldm/ui/XUISettingActivity;)V

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 159
    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-direct {v1, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 160
    .local v1, launchPrefCatNet:Landroid/preference/PreferenceCategory;
    const v3, 0x7f070014

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 161
    iget-object v3, p0, Lcom/wssyncmldm/ui/XUISettingActivity;->m_PrefRoot:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 163
    invoke-virtual {p0}, Lcom/wssyncmldm/ui/XUISettingActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    iput-object v3, p0, Lcom/wssyncmldm/ui/XUISettingActivity;->m_PrefScreenNet:Landroid/preference/PreferenceScreen;

    .line 164
    iget-object v3, p0, Lcom/wssyncmldm/ui/XUISettingActivity;->m_PrefScreenNet:Landroid/preference/PreferenceScreen;

    const-string v4, "screen_preferencenet"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 165
    invoke-direct {p0}, Lcom/wssyncmldm/ui/XUISettingActivity;->xuiUpdateNetworkProfile()V

    .line 166
    iget-object v3, p0, Lcom/wssyncmldm/ui/XUISettingActivity;->m_PrefRoot:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/wssyncmldm/ui/XUISettingActivity;->m_PrefScreenNet:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 168
    iget-object v3, p0, Lcom/wssyncmldm/ui/XUISettingActivity;->m_PrefScreenNet:Landroid/preference/PreferenceScreen;

    new-instance v4, Lcom/wssyncmldm/ui/XUISettingActivity$5;

    invoke-direct {v4, p0}, Lcom/wssyncmldm/ui/XUISettingActivity$5;-><init>(Lcom/wssyncmldm/ui/XUISettingActivity;)V

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 177
    iget-object v3, p0, Lcom/wssyncmldm/ui/XUISettingActivity;->m_PrefRoot:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v3}, Lcom/wssyncmldm/ui/XUISettingActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 178
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 179
    return-void
.end method
