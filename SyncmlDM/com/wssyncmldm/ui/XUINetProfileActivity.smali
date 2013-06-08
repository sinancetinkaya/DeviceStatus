.class public Lcom/wssyncmldm/ui/XUINetProfileActivity;
.super Landroid/app/TabActivity;
.source "XUINetProfileActivity.java"


# static fields
.field private static final DIALOG_PROFILE_EDIT_YES_NO:I = 0x1

.field private static m_LocalNetworkProfileList_t:Lcom/wssyncmldm/db/file/XDBNetworkProfileList;

.field private static m_bUpdateState:Z

.field private static m_nNProfile:I

.field private static m_nProfile:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 37
    sput v0, Lcom/wssyncmldm/ui/XUINetProfileActivity;->m_nNProfile:I

    .line 38
    sput-boolean v0, Lcom/wssyncmldm/ui/XUINetProfileActivity;->m_bUpdateState:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/wssyncmldm/db/file/XDBNetworkProfileList;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/wssyncmldm/ui/XUINetProfileActivity;->m_LocalNetworkProfileList_t:Lcom/wssyncmldm/db/file/XDBNetworkProfileList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wssyncmldm/ui/XUINetProfileActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/wssyncmldm/ui/XUINetProfileActivity;->xuiCallUiDmProfile()V

    return-void
.end method

.method static synthetic access$200()I
    .registers 1

    .prologue
    .line 34
    sget v0, Lcom/wssyncmldm/ui/XUINetProfileActivity;->m_nNProfile:I

    return v0
.end method

.method static synthetic access$202(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 34
    sput p0, Lcom/wssyncmldm/ui/XUINetProfileActivity;->m_nNProfile:I

    return p0
.end method

.method static synthetic access$300(Lcom/wssyncmldm/ui/XUINetProfileActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/wssyncmldm/ui/XUINetProfileActivity;->xuiCurrentTabSet(I)V

    return-void
.end method

.method public static getUpdateState()Z
    .registers 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/wssyncmldm/ui/XUINetProfileActivity;->m_bUpdateState:Z

    return v0
.end method

.method public static setUpdateState(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 50
    if-nez p0, :cond_6

    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/wssyncmldm/ui/XUINetProfileActivity;->m_bUpdateState:Z

    .line 54
    :goto_5
    return-void

    .line 53
    :cond_6
    const/4 v0, 0x1

    sput-boolean v0, Lcom/wssyncmldm/ui/XUINetProfileActivity;->m_bUpdateState:Z

    goto :goto_5
.end method

.method private xuiCallUiDmProfile()V
    .registers 4

    .prologue
    .line 221
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wssyncmldm/ui/XUIProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    .local v0, i:Landroid/content/Intent;
    const-string v1, "profileIndex"

    sget v2, Lcom/wssyncmldm/ui/XUINetProfileActivity;->m_nProfile:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    invoke-virtual {p0, v0}, Lcom/wssyncmldm/ui/XUINetProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 224
    invoke-virtual {p0}, Lcom/wssyncmldm/ui/XUINetProfileActivity;->finish()V

    .line 225
    return-void
.end method

.method private xuiCurrentTabSet(I)V
    .registers 14
    .parameter "selectTap"

    .prologue
    const v11, 0x1090009

    const v10, 0x1090008

    .line 59
    const v8, 0x7f090008

    invoke-virtual {p0, v8}, Lcom/wssyncmldm/ui/XUINetProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 60
    .local v7, text:Landroid/widget/EditText;
    sget-object v8, Lcom/wssyncmldm/ui/XUINetProfileActivity;->m_LocalNetworkProfileList_t:Lcom/wssyncmldm/db/file/XDBNetworkProfileList;

    iget-object v8, v8, Lcom/wssyncmldm/db/file/XDBNetworkProfileList;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v8, v8, Lcom/wssyncmldm/db/file/XDBInfoConRef;->NAP:Lcom/wssyncmldm/db/file/XDBConRefNAP;

    iget-object v8, v8, Lcom/wssyncmldm/db/file/XDBConRefNAP;->NetworkProfileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 61
    new-instance v8, Lcom/wssyncmldm/ui/XUINetProfileActivity$1;

    invoke-direct {v8, p0}, Lcom/wssyncmldm/ui/XUINetProfileActivity$1;-><init>(Lcom/wssyncmldm/ui/XUINetProfileActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 77
    const v8, 0x7f09000a

    invoke-virtual {p0, v8}, Lcom/wssyncmldm/ui/XUINetProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #text:Landroid/widget/EditText;
    check-cast v7, Landroid/widget/EditText;

    .line 78
    .restart local v7       #text:Landroid/widget/EditText;
    sget-object v8, Lcom/wssyncmldm/ui/XUINetProfileActivity;->m_LocalNetworkProfileList_t:Lcom/wssyncmldm/db/file/XDBNetworkProfileList;

    iget-object v8, v8, Lcom/wssyncmldm/db/file/XDBNetworkProfileList;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v8, v8, Lcom/wssyncmldm/db/file/XDBInfoConRef;->PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

    iget-object v8, v8, Lcom/wssyncmldm/db/file/XDBConRefPX;->Addr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 79
    new-instance v8, Lcom/wssyncmldm/ui/XUINetProfileActivity$2;

    invoke-direct {v8, p0}, Lcom/wssyncmldm/ui/XUINetProfileActivity$2;-><init>(Lcom/wssyncmldm/ui/XUINetProfileActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 95
    const v8, 0x7f09000c

    invoke-virtual {p0, v8}, Lcom/wssyncmldm/ui/XUINetProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #text:Landroid/widget/EditText;
    check-cast v7, Landroid/widget/EditText;

    .line 97
    .restart local v7       #text:Landroid/widget/EditText;
    sget-object v8, Lcom/wssyncmldm/ui/XUINetProfileActivity;->m_LocalNetworkProfileList_t:Lcom/wssyncmldm/db/file/XDBNetworkProfileList;

    iget-object v8, v8, Lcom/wssyncmldm/db/file/XDBNetworkProfileList;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v8, v8, Lcom/wssyncmldm/db/file/XDBInfoConRef;->PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

    iget v8, v8, Lcom/wssyncmldm/db/file/XDBConRefPX;->nPortNbr:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 98
    .local v6, szPortNbr:Ljava/lang/String;
    invoke-virtual {v7, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    new-instance v8, Lcom/wssyncmldm/ui/XUINetProfileActivity$3;

    invoke-direct {v8, p0}, Lcom/wssyncmldm/ui/XUINetProfileActivity$3;-><init>(Lcom/wssyncmldm/ui/XUINetProfileActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 118
    const v8, 0x7f09000e

    invoke-virtual {p0, v8}, Lcom/wssyncmldm/ui/XUINetProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #text:Landroid/widget/EditText;
    check-cast v7, Landroid/widget/EditText;

    .line 119
    .restart local v7       #text:Landroid/widget/EditText;
    sget-object v8, Lcom/wssyncmldm/ui/XUINetProfileActivity;->m_LocalNetworkProfileList_t:Lcom/wssyncmldm/db/file/XDBNetworkProfileList;

    iget-object v8, v8, Lcom/wssyncmldm/db/file/XDBNetworkProfileList;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v8, v8, Lcom/wssyncmldm/db/file/XDBInfoConRef;->NAP:Lcom/wssyncmldm/db/file/XDBConRefNAP;

    iget-object v8, v8, Lcom/wssyncmldm/db/file/XDBConRefNAP;->Auth:Lcom/wssyncmldm/db/file/XDBConRefAuth;

    iget-object v8, v8, Lcom/wssyncmldm/db/file/XDBConRefAuth;->PAP_ID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 120
    new-instance v8, Lcom/wssyncmldm/ui/XUINetProfileActivity$4;

    invoke-direct {v8, p0}, Lcom/wssyncmldm/ui/XUINetProfileActivity$4;-><init>(Lcom/wssyncmldm/ui/XUINetProfileActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 137
    const v8, 0x7f090010

    invoke-virtual {p0, v8}, Lcom/wssyncmldm/ui/XUINetProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #text:Landroid/widget/EditText;
    check-cast v7, Landroid/widget/EditText;

    .line 138
    .restart local v7       #text:Landroid/widget/EditText;
    sget-object v8, Lcom/wssyncmldm/ui/XUINetProfileActivity;->m_LocalNetworkProfileList_t:Lcom/wssyncmldm/db/file/XDBNetworkProfileList;

    iget-object v8, v8, Lcom/wssyncmldm/db/file/XDBNetworkProfileList;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v8, v8, Lcom/wssyncmldm/db/file/XDBInfoConRef;->NAP:Lcom/wssyncmldm/db/file/XDBConRefNAP;

    iget-object v8, v8, Lcom/wssyncmldm/db/file/XDBConRefNAP;->Auth:Lcom/wssyncmldm/db/file/XDBConRefAuth;

    iget-object v8, v8, Lcom/wssyncmldm/db/file/XDBConRefAuth;->PAP_Secret:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 139
    new-instance v8, Lcom/wssyncmldm/ui/XUINetProfileActivity$5;

    invoke-direct {v8, p0}, Lcom/wssyncmldm/ui/XUINetProfileActivity$5;-><init>(Lcom/wssyncmldm/ui/XUINetProfileActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 155
    const v8, 0x7f090012

    invoke-virtual {p0, v8}, Lcom/wssyncmldm/ui/XUINetProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 157
    .local v4, spin:Landroid/widget/Spinner;
    const/4 v2, 0x0

    .line 158
    .local v2, nApnType:I
    sget-object v8, Lcom/wssyncmldm/ui/XUIMainActivity;->g_UiNetInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;

    iget-object v8, v8, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->apntype:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_fe

    .line 159
    const/4 v2, -0x1

    .line 170
    :goto_af
    const v8, 0x7f050005

    invoke-static {p0, v8, v10}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 171
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 172
    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 173
    invoke-virtual {v4, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 174
    new-instance v8, Lcom/wssyncmldm/ui/XUINetProfileActivity$6;

    invoke-direct {v8, p0}, Lcom/wssyncmldm/ui/XUINetProfileActivity$6;-><init>(Lcom/wssyncmldm/ui/XUINetProfileActivity;)V

    invoke-virtual {v4, v8}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 195
    const v8, 0x7f090014

    invoke-virtual {p0, v8}, Lcom/wssyncmldm/ui/XUINetProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 196
    .local v5, spin1:Landroid/widget/Spinner;
    const/4 v3, 0x0

    .line 198
    .local v3, nAuthType:I
    sget-object v8, Lcom/wssyncmldm/ui/XUIMainActivity;->g_UiNetInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;

    iget-object v8, v8, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->auth:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_e3

    .line 199
    sget-object v8, Lcom/wssyncmldm/ui/XUIMainActivity;->g_UiNetInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;

    iget-object v8, v8, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->auth:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 201
    :cond_e3
    const v8, 0x7f050006

    invoke-static {p0, v8, v10}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    .line 202
    .local v1, adapter1:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v1, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 203
    invoke-virtual {v5, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 204
    add-int/lit8 v8, v3, -0x1

    invoke-virtual {v5, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 205
    new-instance v8, Lcom/wssyncmldm/ui/XUINetProfileActivity$7;

    invoke-direct {v8, p0}, Lcom/wssyncmldm/ui/XUINetProfileActivity$7;-><init>(Lcom/wssyncmldm/ui/XUINetProfileActivity;)V

    invoke-virtual {v5, v8}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 216
    return-void

    .line 162
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v1           #adapter1:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v3           #nAuthType:I
    .end local v5           #spin1:Landroid/widget/Spinner;
    :cond_fe
    const-string v8, "*"

    sget-object v9, Lcom/wssyncmldm/ui/XUIMainActivity;->g_UiNetInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;

    iget-object v9, v9, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->apntype:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_10c

    .line 163
    const/4 v2, 0x0

    goto :goto_af

    .line 164
    :cond_10c
    const-string v8, "default"

    sget-object v9, Lcom/wssyncmldm/ui/XUIMainActivity;->g_UiNetInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;

    iget-object v9, v9, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->apntype:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_11a

    .line 165
    const/4 v2, 0x1

    goto :goto_af

    .line 167
    :cond_11a
    const/4 v2, 0x2

    goto :goto_af
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 312
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 313
    invoke-virtual {p0}, Lcom/wssyncmldm/ui/XUINetProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "profileIndex"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/wssyncmldm/ui/XUINetProfileActivity;->m_nProfile:I

    .line 314
    sput-boolean v6, Lcom/wssyncmldm/ui/XUINetProfileActivity;->m_bUpdateState:Z

    .line 315
    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbExistsNetworkRow(J)Z

    move-result v3

    if-nez v3, :cond_24

    .line 317
    const-string v3, "Please Setting APN"

    invoke-static {p0, v3, v5}, Lcom/wssyncmldm/XDMService;->xdmShowToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 318
    invoke-virtual {p0}, Lcom/wssyncmldm/ui/XUINetProfileActivity;->finish()V

    .line 362
    :goto_23
    return-void

    .line 322
    :cond_24
    new-instance v3, Lcom/wssyncmldm/db/file/XDBNetworkProfileList;

    invoke-direct {v3}, Lcom/wssyncmldm/db/file/XDBNetworkProfileList;-><init>()V

    sput-object v3, Lcom/wssyncmldm/ui/XUINetProfileActivity;->m_LocalNetworkProfileList_t:Lcom/wssyncmldm/db/file/XDBNetworkProfileList;

    .line 323
    sget-object v3, Lcom/wssyncmldm/db/file/XDB;->NetProfileClass:Lcom/wssyncmldm/db/file/XDBNetworkProfileList;

    sput-object v3, Lcom/wssyncmldm/ui/XUINetProfileActivity;->m_LocalNetworkProfileList_t:Lcom/wssyncmldm/db/file/XDBNetworkProfileList;

    .line 325
    invoke-virtual {p0}, Lcom/wssyncmldm/ui/XUINetProfileActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    .line 326
    .local v1, tabHost:Landroid/widget/TabHost;
    sget-object v3, Lcom/wssyncmldm/ui/XUIMainActivity;->g_UiNetInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;

    iget-object v0, v3, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->szAccountName:Ljava/lang/String;

    .line 328
    .local v0, item:Ljava/lang/String;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030001

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 331
    const-string v3, "tab1"

    invoke-virtual {v1, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 332
    .local v2, ts1:Landroid/widget/TabHost$TabSpec;
    invoke-virtual {p0}, Lcom/wssyncmldm/ui/XUINetProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x108000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 333
    const v3, 0x7f090006

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 334
    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 336
    new-instance v3, Lcom/wssyncmldm/ui/XUINetProfileActivity$11;

    invoke-direct {v3, p0}, Lcom/wssyncmldm/ui/XUINetProfileActivity$11;-><init>(Lcom/wssyncmldm/ui/XUINetProfileActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 359
    sget v3, Lcom/wssyncmldm/ui/XUINetProfileActivity;->m_nNProfile:I

    invoke-direct {p0, v3}, Lcom/wssyncmldm/ui/XUINetProfileActivity;->xuiCurrentTabSet(I)V

    .line 360
    sget v3, Lcom/wssyncmldm/ui/XUINetProfileActivity;->m_nNProfile:I

    invoke-virtual {v1, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_23
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 230
    packed-switch p1, :pswitch_data_4e

    .line 276
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 233
    :pswitch_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "PROFILE EDIT"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Do you want Save and Close Network info ?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/wssyncmldm/ui/XUINetProfileActivity$10;

    invoke-direct {v1, p0}, Lcom/wssyncmldm/ui/XUINetProfileActivity$10;-><init>(Lcom/wssyncmldm/ui/XUINetProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070035

    new-instance v2, Lcom/wssyncmldm/ui/XUINetProfileActivity$9;

    invoke-direct {v2, p0}, Lcom/wssyncmldm/ui/XUINetProfileActivity$9;-><init>(Lcom/wssyncmldm/ui/XUINetProfileActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070024

    new-instance v2, Lcom/wssyncmldm/ui/XUINetProfileActivity$8;

    invoke-direct {v2, p0}, Lcom/wssyncmldm/ui/XUINetProfileActivity$8;-><init>(Lcom/wssyncmldm/ui/XUINetProfileActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    .line 230
    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 303
    const-string v0, "SAVE"

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 304
    const/4 v0, 0x1

    const-string v1, "Revert"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 305
    const/4 v0, 0x2

    const-string v1, "Edit Profile Info"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 306
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 387
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 397
    :goto_7
    invoke-super {p0, p1, p2}, Landroid/app/TabActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 390
    :pswitch_c
    invoke-virtual {p0}, Lcom/wssyncmldm/ui/XUINetProfileActivity;->xuiNetProfileSave()V

    .line 391
    invoke-virtual {p0}, Lcom/wssyncmldm/ui/XUINetProfileActivity;->finish()V

    goto :goto_7

    .line 387
    nop

    :pswitch_data_14
    .packed-switch 0x4
        :pswitch_c
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 282
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    .line 297
    :goto_7
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 285
    :pswitch_c
    invoke-virtual {p0}, Lcom/wssyncmldm/ui/XUINetProfileActivity;->xuiNetProfileSave()V

    .line 286
    invoke-virtual {p0}, Lcom/wssyncmldm/ui/XUINetProfileActivity;->finish()V

    goto :goto_7

    .line 289
    :pswitch_13
    invoke-virtual {p0}, Lcom/wssyncmldm/ui/XUINetProfileActivity;->finish()V

    goto :goto_7

    .line 292
    :pswitch_17
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wssyncmldm/ui/XUINetProfileActivity;->showDialog(I)V

    goto :goto_7

    .line 282
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_c
        :pswitch_13
        :pswitch_17
    .end packed-switch
.end method

.method protected xuiNetProfileSave()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 366
    const-string v0, ""

    .line 367
    .local v0, proxyAddr:Ljava/lang/String;
    sget-object v1, Lcom/wssyncmldm/ui/XUINetProfileActivity;->m_LocalNetworkProfileList_t:Lcom/wssyncmldm/db/file/XDBNetworkProfileList;

    iget-object v1, v1, Lcom/wssyncmldm/db/file/XDBNetworkProfileList;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v1, v1, Lcom/wssyncmldm/db/file/XDBInfoConRef;->PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

    iget-object v0, v1, Lcom/wssyncmldm/db/file/XDBConRefPX;->Addr:Ljava/lang/String;

    .line 368
    const-string v1, "0.0.0.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_32

    .line 370
    sget-object v1, Lcom/wssyncmldm/ui/XUINetProfileActivity;->m_LocalNetworkProfileList_t:Lcom/wssyncmldm/db/file/XDBNetworkProfileList;

    iget-object v1, v1, Lcom/wssyncmldm/db/file/XDBNetworkProfileList;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iput-boolean v3, v1, Lcom/wssyncmldm/db/file/XDBInfoConRef;->bProxyUse:Z

    .line 377
    :goto_19
    sget-object v1, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v1, v1, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    sget-object v2, Lcom/wssyncmldm/ui/XUINetProfileActivity;->m_LocalNetworkProfileList_t:Lcom/wssyncmldm/db/file/XDBNetworkProfileList;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNetworkProfileList;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iput-object v2, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    .line 379
    sget-object v1, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v1, v1, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    iget-object v1, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetConRef(Lcom/wssyncmldm/db/file/XDBInfoConRef;)V

    .line 381
    const-string v1, "Saved"

    invoke-static {p0, v1, v3}, Lcom/wssyncmldm/XDMService;->xdmShowToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 382
    return-void

    .line 374
    :cond_32
    sget-object v1, Lcom/wssyncmldm/ui/XUINetProfileActivity;->m_LocalNetworkProfileList_t:Lcom/wssyncmldm/db/file/XDBNetworkProfileList;

    iget-object v1, v1, Lcom/wssyncmldm/db/file/XDBNetworkProfileList;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/wssyncmldm/db/file/XDBInfoConRef;->bProxyUse:Z

    goto :goto_19
.end method
