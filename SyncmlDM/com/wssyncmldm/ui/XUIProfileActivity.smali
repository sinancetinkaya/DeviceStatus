.class public Lcom/wssyncmldm/ui/XUIProfileActivity;
.super Landroid/app/TabActivity;
.source "XUIProfileActivity.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XDBInterface;
.implements Lcom/wssyncmldm/interfaces/XDMInterface;


# static fields
.field private static final DIALOG_NETWORK_PROFILE_EDIT_YES_NO:I = 0x1

.field private static m_bRowState:Z

.field private static m_nRow:I

.field private static m_nSelectedIndex:I


# instance fields
.field private m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;

.field private m_TabHost:Landroid/widget/TabHost;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 41
    sput v0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_nSelectedIndex:I

    .line 43
    sput-boolean v0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_bRowState:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method

.method private DrawTab()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const v7, 0x7f090018

    const v6, 0x108000c

    .line 357
    invoke-virtual {p0}, Lcom/wssyncmldm/ui/XUIProfileActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v3

    iput-object v3, p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_TabHost:Landroid/widget/TabHost;

    .line 358
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030003

    iget-object v5, p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_TabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 361
    iget-object v3, p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_TabHost:Landroid/widget/TabHost;

    const-string v4, "tab1"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 362
    .local v0, ts1:Landroid/widget/TabHost$TabSpec;
    iget-object v3, p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ProfileName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/wssyncmldm/ui/XUIProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 363
    invoke-virtual {v0, v7}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 364
    iget-object v3, p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_TabHost:Landroid/widget/TabHost;

    invoke-virtual {v3, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 366
    iget-object v3, p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_TabHost:Landroid/widget/TabHost;

    const-string v4, "tab2"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 367
    .local v1, ts2:Landroid/widget/TabHost$TabSpec;
    iget-object v3, p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    aget-object v3, v3, v8

    iget-object v3, v3, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ProfileName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/wssyncmldm/ui/XUIProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 368
    invoke-virtual {v1, v7}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 369
    iget-object v3, p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_TabHost:Landroid/widget/TabHost;

    invoke-virtual {v3, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 371
    iget-object v3, p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_TabHost:Landroid/widget/TabHost;

    const-string v4, "tab3"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 372
    .local v2, ts3:Landroid/widget/TabHost$TabSpec;
    iget-object v3, p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ProfileName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/wssyncmldm/ui/XUIProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 373
    invoke-virtual {v2, v7}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 374
    iget-object v3, p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_TabHost:Landroid/widget/TabHost;

    invoke-virtual {v3, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 376
    iget-object v3, p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_TabHost:Landroid/widget/TabHost;

    new-instance v4, Lcom/wssyncmldm/ui/XUIProfileActivity$12;

    invoke-direct {v4, p0}, Lcom/wssyncmldm/ui/XUIProfileActivity$12;-><init>(Lcom/wssyncmldm/ui/XUIProfileActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 397
    sget v3, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_nSelectedIndex:I

    invoke-direct {p0, v3}, Lcom/wssyncmldm/ui/XUIProfileActivity;->xuiCurrentTabSet(I)V

    .line 398
    iget-object v3, p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_TabHost:Landroid/widget/TabHost;

    sget v4, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_nSelectedIndex:I

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 399
    return-void
.end method

.method static synthetic access$000(Lcom/wssyncmldm/ui/XUIProfileActivity;)[Lcom/wssyncmldm/db/file/XDBProfileInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    return-object v0
.end method

.method static synthetic access$100()I
    .registers 1

    .prologue
    .line 37
    sget v0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_nSelectedIndex:I

    return v0
.end method

.method static synthetic access$102(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 37
    sput p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_nSelectedIndex:I

    return p0
.end method

.method static synthetic access$200(Lcom/wssyncmldm/ui/XUIProfileActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/wssyncmldm/ui/XUIProfileActivity;->xuiCallUiDmNetProfile()V

    return-void
.end method

.method static synthetic access$302(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 37
    sput-boolean p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_bRowState:Z

    return p0
.end method

.method static synthetic access$402(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 37
    sput p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_nRow:I

    return p0
.end method

.method static synthetic access$500(Lcom/wssyncmldm/ui/XUIProfileActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/wssyncmldm/ui/XUIProfileActivity;->xuiCurrentTabSet(I)V

    return-void
.end method

.method private xuiCallUiDmNetProfile()V
    .registers 4

    .prologue
    .line 216
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wssyncmldm/ui/XUINetProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    .local v0, i:Landroid/content/Intent;
    const-string v1, "profileIndex"

    sget v2, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_nSelectedIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    invoke-virtual {p0, v0}, Lcom/wssyncmldm/ui/XUIProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 219
    invoke-virtual {p0}, Lcom/wssyncmldm/ui/XUIProfileActivity;->finish()V

    .line 220
    return-void
.end method

.method private xuiCurrentTabSet(I)V
    .registers 13
    .parameter "iSelected"

    .prologue
    const v10, 0x7f050004

    const v9, 0x1090009

    const v8, 0x1090008

    .line 65
    const v7, 0x7f09001a

    invoke-virtual {p0, v7}, Lcom/wssyncmldm/ui/XUIProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 66
    .local v6, text:Landroid/widget/EditText;
    iget-object v7, p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    aget-object v7, v7, p1

    iget-object v7, v7, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ProfileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 67
    new-instance v7, Lcom/wssyncmldm/ui/XUIProfileActivity$1;

    invoke-direct {v7, p0}, Lcom/wssyncmldm/ui/XUIProfileActivity$1;-><init>(Lcom/wssyncmldm/ui/XUIProfileActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 83
    const v7, 0x7f09001c

    invoke-virtual {p0, v7}, Lcom/wssyncmldm/ui/XUIProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #text:Landroid/widget/EditText;
    check-cast v6, Landroid/widget/EditText;

    .line 84
    .restart local v6       #text:Landroid/widget/EditText;
    iget-object v7, p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    aget-object v7, v7, p1

    iget-object v7, v7, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 85
    new-instance v7, Lcom/wssyncmldm/ui/XUIProfileActivity$2;

    invoke-direct {v7, p0}, Lcom/wssyncmldm/ui/XUIProfileActivity$2;-><init>(Lcom/wssyncmldm/ui/XUIProfileActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 101
    const v7, 0x7f09001e

    invoke-virtual {p0, v7}, Lcom/wssyncmldm/ui/XUIProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #text:Landroid/widget/EditText;
    check-cast v6, Landroid/widget/EditText;

    .line 102
    .restart local v6       #text:Landroid/widget/EditText;
    iget-object v7, p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    aget-object v7, v7, p1

    iget-object v7, v7, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 103
    new-instance v7, Lcom/wssyncmldm/ui/XUIProfileActivity$3;

    invoke-direct {v7, p0}, Lcom/wssyncmldm/ui/XUIProfileActivity$3;-><init>(Lcom/wssyncmldm/ui/XUIProfileActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 119
    const v7, 0x7f090020

    invoke-virtual {p0, v7}, Lcom/wssyncmldm/ui/XUIProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #text:Landroid/widget/EditText;
    check-cast v6, Landroid/widget/EditText;

    .line 120
    .restart local v6       #text:Landroid/widget/EditText;
    iget-object v7, p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    aget-object v7, v7, p1

    iget-object v7, v7, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPwd:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 121
    new-instance v7, Lcom/wssyncmldm/ui/XUIProfileActivity$4;

    invoke-direct {v7, p0}, Lcom/wssyncmldm/ui/XUIProfileActivity$4;-><init>(Lcom/wssyncmldm/ui/XUIProfileActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 137
    const v7, 0x7f090022

    invoke-virtual {p0, v7}, Lcom/wssyncmldm/ui/XUIProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #text:Landroid/widget/EditText;
    check-cast v6, Landroid/widget/EditText;

    .line 138
    .restart local v6       #text:Landroid/widget/EditText;
    iget-object v7, p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    aget-object v7, v7, p1

    iget-object v7, v7, Lcom/wssyncmldm/db/file/XDBProfileInfo;->UserName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 139
    new-instance v7, Lcom/wssyncmldm/ui/XUIProfileActivity$5;

    invoke-direct {v7, p0}, Lcom/wssyncmldm/ui/XUIProfileActivity$5;-><init>(Lcom/wssyncmldm/ui/XUIProfileActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 155
    const v7, 0x7f090024

    invoke-virtual {p0, v7}, Lcom/wssyncmldm/ui/XUIProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #text:Landroid/widget/EditText;
    check-cast v6, Landroid/widget/EditText;

    .line 156
    .restart local v6       #text:Landroid/widget/EditText;
    iget-object v7, p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    aget-object v7, v7, p1

    iget-object v7, v7, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Password:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 157
    new-instance v7, Lcom/wssyncmldm/ui/XUIProfileActivity$6;

    invoke-direct {v7, p0}, Lcom/wssyncmldm/ui/XUIProfileActivity$6;-><init>(Lcom/wssyncmldm/ui/XUIProfileActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 173
    const v7, 0x7f090026

    invoke-virtual {p0, v7}, Lcom/wssyncmldm/ui/XUIProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 174
    .local v4, spinClientAuth:Landroid/widget/Spinner;
    const/4 v1, 0x0

    .line 175
    .local v1, nClientAuthType:I
    iget-object v7, p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    aget-object v7, v7, p1

    iget v7, v7, Lcom/wssyncmldm/db/file/XDBProfileInfo;->AuthType:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 177
    invoke-static {p0, v10, v8}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 178
    .local v0, clientadapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 179
    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 180
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v4, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 181
    new-instance v7, Lcom/wssyncmldm/ui/XUIProfileActivity$7;

    invoke-direct {v7, p0}, Lcom/wssyncmldm/ui/XUIProfileActivity$7;-><init>(Lcom/wssyncmldm/ui/XUIProfileActivity;)V

    invoke-virtual {v4, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 193
    const v7, 0x7f090028

    invoke-virtual {p0, v7}, Lcom/wssyncmldm/ui/XUIProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 194
    .local v5, spinServerAuth:Landroid/widget/Spinner;
    const/4 v2, 0x0

    .line 195
    .local v2, nServerAuthType:I
    iget-object v7, p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    aget-object v7, v7, p1

    iget v7, v7, Lcom/wssyncmldm/db/file/XDBProfileInfo;->nServerAuthType:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 197
    invoke-static {p0, v10, v8}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v3

    .line 198
    .local v3, serveradapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v3, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 199
    invoke-virtual {v5, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 200
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v5, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 201
    new-instance v7, Lcom/wssyncmldm/ui/XUIProfileActivity$8;

    invoke-direct {v7, p0}, Lcom/wssyncmldm/ui/XUIProfileActivity$8;-><init>(Lcom/wssyncmldm/ui/XUIProfileActivity;)V

    invoke-virtual {v5, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 212
    return-void
.end method

.method public static xuiGetRow()I
    .registers 1

    .prologue
    .line 60
    sget v0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_nRow:I

    return v0
.end method

.method public static xuiGetRowState()Z
    .registers 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_bRowState:Z

    return v0
.end method

.method public static xuiSetRow(I)I
    .registers 2
    .parameter "Row"

    .prologue
    .line 54
    sput p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_nRow:I

    .line 55
    sget v0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_nRow:I

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 341
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 342
    const-string v0, ""

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Lcom/wssyncmldm/ui/XUIProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "profileIndex"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_nSelectedIndex:I

    .line 345
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    if-nez v0, :cond_30

    .line 347
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wssyncmldm/db/file/XDBProfileInfo;

    iput-object v0, p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    .line 348
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/wssyncmldm/db/file/XDB;->xdbReadListInfo(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wssyncmldm/db/file/XDBProfileInfo;

    check-cast v0, [Lcom/wssyncmldm/db/file/XDBProfileInfo;

    iput-object v0, p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    .line 350
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    if-eqz v0, :cond_30

    .line 351
    invoke-direct {p0}, Lcom/wssyncmldm/ui/XUIProfileActivity;->DrawTab()V

    .line 353
    :cond_30
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 225
    packed-switch p1, :pswitch_data_4e

    .line 294
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 228
    :pswitch_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "NETWORK PROFILE EDIT"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Do you want Save and Close Profile info ?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/wssyncmldm/ui/XUIProfileActivity$11;

    invoke-direct {v1, p0}, Lcom/wssyncmldm/ui/XUIProfileActivity$11;-><init>(Lcom/wssyncmldm/ui/XUIProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070035

    new-instance v2, Lcom/wssyncmldm/ui/XUIProfileActivity$10;

    invoke-direct {v2, p0}, Lcom/wssyncmldm/ui/XUIProfileActivity$10;-><init>(Lcom/wssyncmldm/ui/XUIProfileActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070024

    new-instance v2, Lcom/wssyncmldm/ui/XUIProfileActivity$9;

    invoke-direct {v2, p0}, Lcom/wssyncmldm/ui/XUIProfileActivity$9;-><init>(Lcom/wssyncmldm/ui/XUIProfileActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    .line 225
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

    .line 326
    const-string v0, "SAVE"

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 327
    const/4 v0, 0x1

    const-string v1, "revert"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 328
    const/4 v0, 0x2

    const-string v1, "Edit Network Info"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 329
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 462
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 471
    :goto_7
    invoke-super {p0, p1, p2}, Landroid/app/TabActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 465
    :pswitch_c
    invoke-virtual {p0}, Lcom/wssyncmldm/ui/XUIProfileActivity;->xuiProfileSave()V

    .line 466
    invoke-virtual {p0}, Lcom/wssyncmldm/ui/XUIProfileActivity;->finish()V

    goto :goto_7

    .line 462
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
    .line 300
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    .line 320
    :goto_7
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 303
    :pswitch_c
    invoke-virtual {p0}, Lcom/wssyncmldm/ui/XUIProfileActivity;->xuiProfileSave()V

    .line 304
    invoke-virtual {p0}, Lcom/wssyncmldm/ui/XUIProfileActivity;->finish()V

    goto :goto_7

    .line 308
    :pswitch_13
    invoke-virtual {p0}, Lcom/wssyncmldm/ui/XUIProfileActivity;->finish()V

    goto :goto_7

    .line 313
    :pswitch_17
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wssyncmldm/ui/XUIProfileActivity;->showDialog(I)V

    goto :goto_7

    .line 300
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_c
        :pswitch_13
        :pswitch_17
    .end packed-switch
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 335
    invoke-super {p0}, Landroid/app/TabActivity;->onStart()V

    .line 336
    return-void
.end method

.method protected xuiProfileSave()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 403
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    const/4 v5, 0x3

    if-ge v0, v5, :cond_c4

    .line 405
    const-string v2, ""

    .line 406
    .local v2, pAddress:Ljava/lang/String;
    const/4 v1, 0x0

    .line 407
    .local v1, nPort:I
    const-string v3, ""

    .line 408
    .local v3, pProtocol:Ljava/lang/String;
    const/4 v4, 0x0

    .line 410
    .local v4, parser:Lcom/wssyncmldm/db/file/XDBUrlInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tab : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 411
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tab : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 413
    iget-object v5, p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl:Ljava/lang/String;

    invoke-static {v5}, Lcom/wssyncmldm/tp/XTPHttpUtil;->xtpURLParser(Ljava/lang/String;)Lcom/wssyncmldm/db/file/XDBUrlInfo;

    move-result-object v4

    .line 414
    iget-object v2, v4, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pAddress:Ljava/lang/String;

    .line 415
    iget v1, v4, Lcom/wssyncmldm/db/file/XDBUrlInfo;->nPort:I

    .line 416
    iget-object v3, v4, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pProtocol:Ljava/lang/String;

    .line 417
    iget-object v5, p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    aget-object v5, v5, v0

    iget-object v6, v4, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pURL:Ljava/lang/String;

    iput-object v6, v5, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl:Ljava/lang/String;

    .line 418
    iget-object v5, p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    aget-object v5, v5, v0

    iput-object v2, v5, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerIP:Ljava/lang/String;

    .line 419
    iget-object v5, p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    aget-object v5, v5, v0

    iput v1, v5, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPort:I

    .line 420
    iget-object v5, p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    aget-object v5, v5, v0

    iput-object v3, v5, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Protocol:Ljava/lang/String;

    .line 422
    iget-object v5, p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    aget-object v5, v5, v0

    iget-object v6, p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl:Ljava/lang/String;

    iput-object v6, v5, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl_Org:Ljava/lang/String;

    .line 423
    iget-object v5, p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    aget-object v5, v5, v0

    iget-object v6, p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerIP:Ljava/lang/String;

    iput-object v6, v5, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerIP_Org:Ljava/lang/String;

    .line 424
    iget-object v5, p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    aget-object v5, v5, v0

    iget-object v6, p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    aget-object v6, v6, v0

    iget v6, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPort:I

    iput v6, v5, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPort_Org:I

    .line 425
    iget-object v5, p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    aget-object v5, v5, v0

    iget-object v6, p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Protocol:Ljava/lang/String;

    iput-object v6, v5, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Protocol_Org:Ljava/lang/String;

    .line 427
    const/4 v5, 0x1

    sput-boolean v5, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_bRowState:Z

    .line 428
    sput v0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_nRow:I

    .line 430
    iget-object v5, p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    aget-object v5, v5, v0

    invoke-static {v5}, Lcom/wssyncmldm/db/file/XDB;->xdbSetProfileInfo(Lcom/wssyncmldm/db/file/XDBProfileInfo;)Z

    .line 432
    sget-object v5, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    if-eqz v5, :cond_bf

    sget-object v5, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    if-eqz v5, :cond_bf

    .line 433
    sget-object v5, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->ProfileName:[Ljava/lang/String;

    iget-object v6, p0, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ProfileName:Ljava/lang/String;

    aput-object v6, v5, v0

    .line 435
    :cond_bf
    const/4 v2, 0x0

    .line 403
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 439
    .end local v1           #nPort:I
    .end local v2           #pAddress:Ljava/lang/String;
    .end local v3           #pProtocol:Ljava/lang/String;
    .end local v4           #parser:Lcom/wssyncmldm/db/file/XDBUrlInfo;
    :cond_c4
    sput-boolean v7, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_bRowState:Z

    .line 440
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iTapIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_nSelectedIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 442
    sget-object v5, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    if-eqz v5, :cond_ee

    sget-object v5, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    if-eqz v5, :cond_ee

    sget-object v5, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    if-nez v5, :cond_ef

    .line 457
    :cond_ee
    :goto_ee
    return-void

    .line 446
    :cond_ef
    const-string v5, "Save to database..."

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 447
    sget-object v5, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    sget v6, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_nSelectedIndex:I

    iput v6, v5, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->Profileindex:I

    .line 449
    sget-object v5, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetProfileInfo()Lcom/wssyncmldm/db/file/XDBProfileInfo;

    move-result-object v6

    iput-object v6, v5, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    .line 450
    sget-object v5, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    if-eqz v5, :cond_114

    .line 451
    sget-object v5, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetConRef()Lcom/wssyncmldm/db/file/XDBInfoConRef;

    move-result-object v6

    iput-object v6, v5, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    .line 453
    :cond_114
    sget-object v5, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    invoke-static {v5}, Lcom/wssyncmldm/db/file/XDB;->xdbSetProflieList(Ljava/lang/Object;)V

    .line 454
    sget v5, Lcom/wssyncmldm/ui/XUIProfileActivity;->m_nSelectedIndex:I

    invoke-static {v5}, Lcom/wssyncmldm/db/file/XDB;->xdbSetProfileIndex(I)V

    .line 455
    const-string v5, "Saved"

    invoke-static {p0, v5, v7}, Lcom/wssyncmldm/XDMService;->xdmShowToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_ee
.end method
