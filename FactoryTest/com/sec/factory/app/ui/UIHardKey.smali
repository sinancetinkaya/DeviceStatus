.class public Lcom/sec/factory/app/ui/UIHardKey;
.super Lcom/sec/factory/app/ui/UIKeyBase;
.source "UIHardKey.java"


# static fields
.field private static KEYCODE_USER:I


# instance fields
.field private final INDI_TEST_KEY2:Ljava/lang/String;

.field private final KEYCODE_3G:I

.field private final KEYCODE_NETWORK_SEL:I

.field private final TSK_MANUFACTURE_CYPRESS:Ljava/lang/String;

.field private final TSK_MANUFACTURE_MELFAS:Ljava/lang/String;

.field private mAfKeyHandler:Landroid/os/Handler;

.field private mBlockedAfKey:Z

.field private mIsPassed:Z

.field private mLongPressKeyCode:I

.field private mModeLCiA:Z

.field private mOldVolumeIndex:I

.field private mResetButtonAction:Landroid/view/View$OnClickListener;

.field private mSpecMax:I

.field private mSpecMin:I

.field private mThreshold:I

.field private mTskManufacture:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 72
    const/16 v0, 0xe4

    sput v0, Lcom/sec/factory/app/ui/UIHardKey;->KEYCODE_USER:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 82
    const-string v0, "UIHardKey"

    invoke-direct {p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase;-><init>(Ljava/lang/String;)V

    .line 40
    const/16 v0, 0xe8

    iput v0, p0, Lcom/sec/factory/app/ui/UIHardKey;->KEYCODE_NETWORK_SEL:I

    .line 42
    const/16 v0, 0xe9

    iput v0, p0, Lcom/sec/factory/app/ui/UIHardKey;->KEYCODE_3G:I

    .line 45
    new-instance v0, Lcom/sec/factory/app/ui/UIHardKey$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UIHardKey$1;-><init>(Lcom/sec/factory/app/ui/UIHardKey;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIHardKey;->mResetButtonAction:Landroid/view/View$OnClickListener;

    .line 61
    const-string v0, "2"

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIHardKey;->INDI_TEST_KEY2:Ljava/lang/String;

    .line 62
    const-string v0, "CYPRESS"

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIHardKey;->TSK_MANUFACTURE_CYPRESS:Ljava/lang/String;

    .line 63
    const-string v0, "MELFAS"

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIHardKey;->TSK_MANUFACTURE_MELFAS:Ljava/lang/String;

    .line 64
    const-string v0, "TSK_MANUFACTURE"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIHardKey;->mTskManufacture:Ljava/lang/String;

    .line 68
    iput-boolean v1, p0, Lcom/sec/factory/app/ui/UIHardKey;->mIsPassed:Z

    .line 71
    iput-boolean v1, p0, Lcom/sec/factory/app/ui/UIHardKey;->mModeLCiA:Z

    .line 74
    iput-boolean v1, p0, Lcom/sec/factory/app/ui/UIHardKey;->mBlockedAfKey:Z

    .line 75
    new-instance v0, Lcom/sec/factory/app/ui/UIHardKey$2;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UIHardKey$2;-><init>(Lcom/sec/factory/app/ui/UIHardKey;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIHardKey;->mAfKeyHandler:Landroid/os/Handler;

    .line 83
    return-void
.end method

.method static synthetic access$002(Lcom/sec/factory/app/ui/UIHardKey;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/sec/factory/app/ui/UIHardKey;->mBlockedAfKey:Z

    return p1
.end method

.method private initialize()V
    .registers 16

    .prologue
    const/4 v9, 0x1

    const/16 v14, 0x52

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v10, 0x0

    .line 274
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIHardKey;->makeTouchKeyItemSet()Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;

    move-result-object v11

    .line 276
    const/16 v0, 0x21

    new-array v8, v0, [Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    new-instance v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    const/16 v2, 0x18

    new-instance v3, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v1, 0x7f0900a3

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v3, p0, v1}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    const/16 v1, 0x18

    invoke-virtual {v11, v1}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->get(I)Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    move-result-object v4

    const-string v1, "KEY_TEST_VOLUME_UP"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v5

    const-string v1, "KEY_TEST_VOLUME_UP"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->isTouchkey(Ljava/lang/String;)Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;ILcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;ZZ)V

    aput-object v0, v8, v10

    new-instance v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    const/16 v2, 0x19

    new-instance v3, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v1, 0x7f0900a4

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v3, p0, v1}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    const/16 v1, 0x19

    invoke-virtual {v11, v1}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->get(I)Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    move-result-object v4

    const-string v1, "KEY_TEST_VOLUME_DOWN"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v5

    const-string v1, "KEY_TEST_VOLUME_DOWN"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->isTouchkey(Ljava/lang/String;)Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;ILcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;ZZ)V

    aput-object v0, v8, v9

    const/4 v7, 0x2

    new-instance v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    const/16 v2, 0xe7

    new-instance v3, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v1, 0x7f0900a5

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v3, p0, v1}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    const/16 v1, 0xe7

    invoke-virtual {v11, v1}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->get(I)Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    move-result-object v4

    const-string v1, "KEY_TEST_END"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v5

    const-string v1, "KEY_TEST_END"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->isTouchkey(Ljava/lang/String;)Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;ILcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;ZZ)V

    aput-object v0, v8, v7

    new-instance v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    const/16 v2, 0x1a

    new-instance v3, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v1, 0x7f0900a2

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v3, p0, v1}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    const/16 v1, 0x1a

    invoke-virtual {v11, v1}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->get(I)Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    move-result-object v4

    const-string v1, "KEY_TEST_POWER"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v5

    const-string v1, "KEY_TEST_POWER"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->isTouchkey(Ljava/lang/String;)Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;ILcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;ZZ)V

    aput-object v0, v8, v12

    new-instance v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    new-instance v3, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v1, 0x7f0900a8

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v3, p0, v1}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    invoke-virtual {v11, v14}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->get(I)Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    move-result-object v4

    const-string v1, "KEY_TEST_MENU"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v5

    const-string v1, "KEY_TEST_MENU"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->isTouchkey(Ljava/lang/String;)Z

    move-result v6

    move-object v1, p0

    move v2, v14

    invoke-direct/range {v0 .. v6}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;ILcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;ZZ)V

    aput-object v0, v8, v13

    const/4 v7, 0x5

    new-instance v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    new-instance v3, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v1, 0x7f0900a9

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v3, p0, v1}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    invoke-virtual {v11, v12}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->get(I)Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    move-result-object v4

    const-string v1, "KEY_TEST_HOME"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v5

    const-string v1, "KEY_TEST_HOME"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->isTouchkey(Ljava/lang/String;)Z

    move-result v6

    move-object v1, p0

    move v2, v12

    invoke-direct/range {v0 .. v6}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;ILcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;ZZ)V

    aput-object v0, v8, v7

    const/4 v7, 0x6

    new-instance v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    new-instance v3, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v1, 0x7f0900aa

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v3, p0, v1}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    invoke-virtual {v11, v13}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->get(I)Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    move-result-object v4

    const-string v1, "KEY_TEST_BACK"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v5

    const-string v1, "KEY_TEST_BACK"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->isTouchkey(Ljava/lang/String;)Z

    move-result v6

    move-object v1, p0

    move v2, v13

    invoke-direct/range {v0 .. v6}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;ILcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;ZZ)V

    aput-object v0, v8, v7

    const/4 v7, 0x7

    new-instance v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    const/16 v2, 0xe8

    new-instance v3, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v1, 0x7f0900ab

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v3, p0, v1}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    const/16 v1, 0xe8

    invoke-virtual {v11, v1}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->get(I)Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    move-result-object v4

    const-string v1, "KEY_TEST_NETWOR_SEL"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v5

    const-string v1, "KEY_TEST_NETWOR_SEL"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->isTouchkey(Ljava/lang/String;)Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;ILcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;ZZ)V

    aput-object v0, v8, v7

    const/16 v7, 0x8

    new-instance v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    const/4 v2, 0x5

    new-instance v3, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v1, 0x7f0900ac

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v3, p0, v1}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    const/4 v1, 0x5

    invoke-virtual {v11, v1}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->get(I)Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    move-result-object v4

    const-string v1, "KEY_TEST_CALL"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v5

    const-string v1, "KEY_TEST_CALL"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->isTouchkey(Ljava/lang/String;)Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;ILcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;ZZ)V

    aput-object v0, v8, v7

    const/16 v7, 0x9

    new-instance v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    const/16 v2, 0x43

    new-instance v3, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v1, 0x7f0900ad

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v3, p0, v1}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    const/16 v1, 0x43

    invoke-virtual {v11, v1}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->get(I)Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    move-result-object v4

    const-string v1, "KEY_TEST_DEL"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v5

    const-string v1, "KEY_TEST_DEL"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->isTouchkey(Ljava/lang/String;)Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;ILcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;ZZ)V

    aput-object v0, v8, v7

    const/16 v7, 0xa

    new-instance v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    const/4 v2, 0x7

    new-instance v3, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v1, 0x7f0900ae

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v3, p0, v1}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    const/4 v1, 0x7

    invoke-virtual {v11, v1}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->get(I)Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    move-result-object v4

    const-string v1, "KEY_TEST_0"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v5

    const-string v1, "KEY_TEST_0"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->isTouchkey(Ljava/lang/String;)Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;ILcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;ZZ)V

    aput-object v0, v8, v7

    const/16 v7, 0xb

    new-instance v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    const/16 v2, 0x8

    new-instance v3, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v1, 0x7f0900af

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v3, p0, v1}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    const/16 v1, 0x8

    invoke-virtual {v11, v1}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->get(I)Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    move-result-object v4

    const-string v1, "KEY_TEST_1"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v5

    const-string v1, "KEY_TEST_1"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->isTouchkey(Ljava/lang/String;)Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;ILcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;ZZ)V

    aput-object v0, v8, v7

    const/16 v7, 0xc

    new-instance v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    const/16 v2, 0x9

    new-instance v3, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v1, 0x7f0900b0

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v3, p0, v1}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    const/16 v1, 0x9

    invoke-virtual {v11, v1}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->get(I)Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    move-result-object v4

    const-string v1, "KEY_TEST_2"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v5

    const-string v1, "KEY_TEST_2"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->isTouchkey(Ljava/lang/String;)Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;ILcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;ZZ)V

    aput-object v0, v8, v7

    const/16 v7, 0xd

    new-instance v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    const/16 v2, 0xa

    new-instance v3, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v1, 0x7f0900b1

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v3, p0, v1}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    const/16 v1, 0xa

    invoke-virtual {v11, v1}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->get(I)Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    move-result-object v4

    const-string v1, "KEY_TEST_3"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v5

    const-string v1, "KEY_TEST_3"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->isTouchkey(Ljava/lang/String;)Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;ILcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;ZZ)V

    aput-object v0, v8, v7

    const/16 v7, 0xe

    new-instance v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    const/16 v2, 0xb

    new-instance v3, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v1, 0x7f0900b2

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v3, p0, v1}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    const/16 v1, 0xb

    invoke-virtual {v11, v1}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->get(I)Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    move-result-object v4

    const-string v1, "KEY_TEST_4"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v5

    const-string v1, "KEY_TEST_4"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->isTouchkey(Ljava/lang/String;)Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;ILcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;ZZ)V

    aput-object v0, v8, v7

    const/16 v7, 0xf

    new-instance v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    const/16 v2, 0xc

    new-instance v3, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v1, 0x7f0900b3

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v3, p0, v1}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    const/16 v1, 0xc

    invoke-virtual {v11, v1}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->get(I)Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    move-result-object v4

    const-string v1, "KEY_TEST_5"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v5

    const-string v1, "KEY_TEST_5"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->isTouchkey(Ljava/lang/String;)Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;ILcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;ZZ)V

    aput-object v0, v8, v7

    const/16 v7, 0x10

    new-instance v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    const/16 v2, 0xd

    new-instance v3, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v1, 0x7f0900b4

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v3, p0, v1}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    const/16 v1, 0xd

    invoke-virtual {v11, v1}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->get(I)Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    move-result-object v4

    const-string v1, "KEY_TEST_6"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v5

    const-string v1, "KEY_TEST_6"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->isTouchkey(Ljava/lang/String;)Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;ILcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;ZZ)V

    aput-object v0, v8, v7

    const/16 v7, 0x11

    new-instance v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    const/16 v2, 0xe

    new-instance v3, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v1, 0x7f0900b5

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v3, p0, v1}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    const/16 v1, 0xe

    invoke-virtual {v11, v1}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->get(I)Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    move-result-object v4

    const-string v1, "KEY_TEST_7"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v5

    const-string v1, "KEY_TEST_7"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->isTouchkey(Ljava/lang/String;)Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;ILcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;ZZ)V

    aput-object v0, v8, v7

    const/16 v7, 0x12

    new-instance v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    const/16 v2, 0xf

    new-instance v3, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v1, 0x7f0900b6

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v3, p0, v1}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    const/16 v1, 0xf

    invoke-virtual {v11, v1}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->get(I)Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    move-result-object v4

    const-string v1, "KEY_TEST_8"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v5

    const-string v1, "KEY_TEST_8"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->isTouchkey(Ljava/lang/String;)Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;ILcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;ZZ)V

    aput-object v0, v8, v7

    const/16 v7, 0x13

    new-instance v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    const/16 v2, 0x10

    new-instance v3, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v1, 0x7f0900b7

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v3, p0, v1}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    const/16 v1, 0x10

    invoke-virtual {v11, v1}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->get(I)Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    move-result-object v4

    const-string v1, "KEY_TEST_9"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v5

    const-string v1, "KEY_TEST_9"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->isTouchkey(Ljava/lang/String;)Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;ILcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;ZZ)V

    aput-object v0, v8, v7

    const/16 v7, 0x14

    new-instance v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    const/16 v2, 0x11

    new-instance v3, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v1, 0x7f0900b8

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v3, p0, v1}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    const/16 v1, 0x11

    invoke-virtual {v11, v1}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->get(I)Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    move-result-object v4

    const-string v1, "KEY_TEST_STAR"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v5

    const-string v1, "KEY_TEST_STAR"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->isTouchkey(Ljava/lang/String;)Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;ILcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;ZZ)V

    aput-object v0, v8, v7

    const/16 v7, 0x15

    new-instance v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    const/16 v2, 0x12

    new-instance v3, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v1, 0x7f0900b9

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v3, p0, v1}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    const/16 v1, 0x12

    invoke-virtual {v11, v1}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->get(I)Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    move-result-object v4

    const-string v1, "KEY_TEST_POUND"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v5

    const-string v1, "KEY_TEST_POUND"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->isTouchkey(Ljava/lang/String;)Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;ILcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;ZZ)V

    aput-object v0, v8, v7

    const/16 v7, 0x16

    new-instance v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    const/16 v2, 0x13

    new-instance v3, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v1, 0x7f0900ba

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v3, p0, v1}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    const/16 v1, 0x13

    invoke-virtual {v11, v1}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->get(I)Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    move-result-object v4

    const-string v1, "KEY_TEST_DPAD_UP"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v5

    const-string v1, "KEY_TEST_DPAD_UP"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->isTouchkey(Ljava/lang/String;)Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;ILcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;ZZ)V

    aput-object v0, v8, v7

    const/16 v7, 0x17

    new-instance v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    const/16 v2, 0x14

    new-instance v3, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v1, 0x7f0900bb

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v3, p0, v1}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    const/16 v1, 0x14

    invoke-virtual {v11, v1}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->get(I)Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    move-result-object v4

    const-string v1, "KEY_TEST_DPAD_DOWN"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v5

    const-string v1, "KEY_TEST_DPAD_DOWN"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->isTouchkey(Ljava/lang/String;)Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;ILcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;ZZ)V

    aput-object v0, v8, v7

    const/16 v7, 0x18

    new-instance v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    const/16 v2, 0x15

    new-instance v3, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v1, 0x7f0900bc

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v3, p0, v1}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    const/16 v1, 0x15

    invoke-virtual {v11, v1}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->get(I)Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    move-result-object v4

    const-string v1, "KEY_TEST_DPAD_LEFT"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v5

    const-string v1, "KEY_TEST_DPAD_LEFT"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->isTouchkey(Ljava/lang/String;)Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;ILcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;ZZ)V

    aput-object v0, v8, v7

    const/16 v7, 0x19

    new-instance v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    const/16 v2, 0x16

    new-instance v3, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v1, 0x7f0900bd

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v3, p0, v1}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    const/16 v1, 0x16

    invoke-virtual {v11, v1}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->get(I)Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    move-result-object v4

    const-string v1, "KEY_TEST_DPAD_RIGHT"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v5

    const-string v1, "KEY_TEST_DPAD_RIGHT"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->isTouchkey(Ljava/lang/String;)Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;ILcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;ZZ)V

    aput-object v0, v8, v7

    const/16 v7, 0x1a

    new-instance v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    const/16 v2, 0x17

    new-instance v3, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v1, 0x7f0900be

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v3, p0, v1}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    const/16 v1, 0x17

    invoke-virtual {v11, v1}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->get(I)Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    move-result-object v4

    const-string v1, "KEY_TEST_DPAD_CENTER"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v5

    const-string v1, "KEY_TEST_DPAD_CENTER"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->isTouchkey(Ljava/lang/String;)Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;ILcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;ZZ)V

    aput-object v0, v8, v7

    const/16 v7, 0x1b

    new-instance v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    const/16 v2, 0x54

    new-instance v3, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v1, 0x7f0900bf

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v3, p0, v1}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    const/16 v1, 0x54

    invoke-virtual {v11, v1}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->get(I)Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    move-result-object v4

    const-string v1, "KEY_TEST_SEARCH"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v5

    const-string v1, "KEY_TEST_SEARCH"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->isTouchkey(Ljava/lang/String;)Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;ILcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;ZZ)V

    aput-object v0, v8, v7

    const/16 v7, 0x1c

    new-instance v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    const/16 v2, 0x50

    new-instance v3, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v1, 0x7f0900a6

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v3, p0, v1}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    const/16 v1, 0x50

    invoke-virtual {v11, v1}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->get(I)Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    move-result-object v4

    const-string v1, "KEY_TEST_FOCUS"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v5

    const-string v1, "KEY_TEST_FOCUS"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->isTouchkey(Ljava/lang/String;)Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;ILcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;ZZ)V

    aput-object v0, v8, v7

    const/16 v7, 0x1d

    new-instance v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    const/16 v2, 0x1b

    new-instance v3, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v1, 0x7f0900a7

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v3, p0, v1}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    const/16 v1, 0x1b

    invoke-virtual {v11, v1}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->get(I)Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    move-result-object v4

    const-string v1, "KEY_TEST_CAMERA"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v5

    const-string v1, "KEY_TEST_CAMERA"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->isTouchkey(Ljava/lang/String;)Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;ILcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;ZZ)V

    aput-object v0, v8, v7

    const/16 v7, 0x1e

    new-instance v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    sget v2, Lcom/sec/factory/app/ui/UIHardKey;->KEYCODE_USER:I

    new-instance v3, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v1, 0x7f0900c0

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v3, p0, v1}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    sget v1, Lcom/sec/factory/app/ui/UIHardKey;->KEYCODE_USER:I

    invoke-virtual {v11, v1}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->get(I)Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    move-result-object v4

    const-string v1, "KEY_TEST_F1"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v5

    const-string v1, "KEY_TEST_F1"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->isTouchkey(Ljava/lang/String;)Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;ILcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;ZZ)V

    aput-object v0, v8, v7

    const/16 v7, 0x1f

    new-instance v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    const/16 v2, 0xe9

    new-instance v3, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v1, 0x7f0900c2

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v3, p0, v1}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    const/16 v1, 0xe9

    invoke-virtual {v11, v1}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->get(I)Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    move-result-object v4

    const-string v1, "KEY_TEST_3G"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v5

    const-string v1, "KEY_TEST_3G"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->isTouchkey(Ljava/lang/String;)Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;ILcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;ZZ)V

    aput-object v0, v8, v7

    const/16 v7, 0x20

    new-instance v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    const/16 v2, 0xbb

    new-instance v3, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v1, 0x7f0900c1

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v3, p0, v1}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    const/16 v1, 0xbb

    invoke-virtual {v11, v1}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->get(I)Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    move-result-object v4

    const-string v1, "KEY_TEST_APP_SWITCH"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v5

    const-string v1, "KEY_TEST_APP_SWITCH"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->isTouchkey(Ljava/lang/String;)Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;ILcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;ZZ)V

    aput-object v0, v8, v7

    .line 432
    new-array v7, v12, [Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    new-instance v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    new-instance v3, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v1, 0x7f0900a8

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v3, p0, v1}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    invoke-virtual {v11, v14}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->get(I)Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    move-result-object v4

    const-string v1, "KEY_TEST_MENU"

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->selectTestCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v5

    const-string v1, "KEY_TEST_MENU"

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->selectTestCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->isTouchkey(Ljava/lang/String;)Z

    move-result v6

    move-object v1, p0

    move v2, v14

    invoke-direct/range {v0 .. v6}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;ILcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;ZZ)V

    aput-object v0, v7, v10

    new-instance v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    new-instance v3, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v1, 0x7f0900a9

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v3, p0, v1}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    invoke-virtual {v11, v12}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->get(I)Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    move-result-object v4

    const-string v1, "KEY_TEST_HOME"

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->selectTestCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v5

    const-string v1, "KEY_TEST_HOME"

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->selectTestCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->isTouchkey(Ljava/lang/String;)Z

    move-result v6

    move-object v1, p0

    move v2, v12

    invoke-direct/range {v0 .. v6}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;ILcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;ZZ)V

    aput-object v0, v7, v9

    const/4 v12, 0x2

    new-instance v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    new-instance v3, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v1, 0x7f0900aa

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v3, p0, v1}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    invoke-virtual {v11, v13}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->get(I)Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    move-result-object v4

    const-string v1, "KEY_TEST_BACK"

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->selectTestCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v5

    const-string v1, "KEY_TEST_BACK"

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->selectTestCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->isTouchkey(Ljava/lang/String;)Z

    move-result v6

    move-object v1, p0

    move v2, v13

    invoke-direct/range {v0 .. v6}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;ILcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;ZZ)V

    aput-object v0, v7, v12

    .line 453
    const/16 v0, 0x2d

    iget v1, p0, Lcom/sec/factory/app/ui/UIHardKey;->TEST_ID:I

    if-ne v0, v1, :cond_73f

    move-object v1, v7

    .line 456
    :goto_638
    array-length v3, v1

    move v2, v10

    move v0, v10

    :goto_63b
    if-ge v2, v3, :cond_654

    aget-object v4, v1, v2

    .line 457
    iget-boolean v5, v4, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mEnabled:Z

    if-eqz v5, :cond_648

    .line 458
    iget-object v5, p0, Lcom/sec/factory/app/ui/UIHardKey;->mTestList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    :cond_648
    iget-boolean v5, v4, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mIsTouchKey:Z

    if-eqz v5, :cond_651

    iget-boolean v4, v4, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mEnabled:Z

    if-eqz v4, :cond_651

    move v0, v9

    .line 456
    :cond_651
    add-int/lit8 v2, v2, 0x1

    goto :goto_63b

    .line 464
    :cond_654
    if-eqz v0, :cond_6a7

    .line 465
    const-string v0, ""

    .line 467
    const-string v0, "MELFAS"

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIHardKey;->mTskManufacture:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_712

    .line 468
    const-string v0, "THD:4.8 "

    .line 469
    iput v10, p0, Lcom/sec/factory/app/ui/UIHardKey;->mThreshold:I

    .line 476
    :goto_666
    const-string v2, "TOUCH_KEY_SPEC_MAX"

    invoke-static {v2}, Lcom/sec/factory/support/Support$Spec;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/factory/app/ui/UIHardKey;->mSpecMax:I

    .line 477
    const-string v2, "TOUCH_KEY_SPEC_MIN"

    invoke-static {v2}, Lcom/sec/factory/support/Support$Spec;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/factory/app/ui/UIHardKey;->mSpecMin:I

    .line 479
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "MAX:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/factory/app/ui/UIHardKey;->mSpecMax:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    MIN:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/factory/app/ui/UIHardKey;->mSpecMin:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 481
    const v0, 0x7f0900c6

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    :cond_6a7
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIHardKey;->mTestList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIHardKey;->mComparator:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 488
    const v0, 0x7f0900c3

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 490
    const-string v2, "KEY_TEST_VIEW_TABLE"

    invoke-virtual {p0, v2}, Lcom/sec/factory/app/ui/UIHardKey;->selectTestCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/factory/support/Support$TestCase;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 492
    const-string v3, "auto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_739

    .line 493
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIHardKey;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 497
    :goto_6d7
    new-instance v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5, v10, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 499
    const v0, 0x7f0900c4

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIHardKey;->mExitButtonAction:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    const v0, 0x7f0900c5

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIHardKey;->mResetButtonAction:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    invoke-direct {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->setLayoutPosition([Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;)V

    .line 504
    const/16 v0, 0x2d

    iget v1, p0, Lcom/sec/factory/app/ui/UIHardKey;->TEST_ID:I

    if-ne v0, v1, :cond_73e

    .line 505
    array-length v1, v8

    move v0, v10

    :goto_708
    if-ge v0, v1, :cond_73e

    aget-object v2, v8, v0

    .line 506
    invoke-virtual {v2}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->remobeHardKeyItem()V

    .line 505
    add-int/lit8 v0, v0, 0x1

    goto :goto_708

    .line 471
    :cond_712
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleDevice;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleDevice;->readTSKThreshold()I

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UIHardKey;->mThreshold:I

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "THD:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/factory/app/ui/UIHardKey;->mThreshold:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_666

    .line 495
    :cond_739
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_6d7

    .line 509
    :cond_73e
    return-void

    :cond_73f
    move-object v1, v8

    goto/16 :goto_638
.end method

.method private makeTouchKeyItemSet()Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;
    .registers 13

    .prologue
    .line 209
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 210
    .local v2, keyCodeMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v8, "MENU"

    const/16 v9, 0x52

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v8, "HOME"

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v8, "BACK"

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v8, "SEARCH"

    const/16 v9, 0x54

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v8, "VOLUME_UP"

    const/16 v9, 0x18

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v8, "VOLUME_DOWN"

    const/16 v9, 0x19

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v8, "END"

    const/16 v9, 0xe7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v8, "FOCUS"

    const/16 v9, 0x50

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v8, "CAMERA"

    const/16 v9, 0x1b

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v8, "POWER"

    const/16 v9, 0x1a

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v8, "USER"

    sget v9, Lcom/sec/factory/app/ui/UIHardKey;->KEYCODE_USER:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string v8, "SWITCH"

    const/16 v9, 0xbb

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 249
    .local v7, tkQueue:Ljava/util/Queue;,"Ljava/util/Queue<Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;>;"
    new-instance v11, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    const v8, 0x7f0900c7

    invoke-virtual {p0, v8}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0900cb

    invoke-virtual {p0, v9}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f0900d0

    invoke-virtual {p0, v10}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-direct {v11, p0, v8, v9, v10}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-interface {v7, v11}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 252
    new-instance v11, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    const v8, 0x7f0900c8

    invoke-virtual {p0, v8}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0900cc

    invoke-virtual {p0, v9}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f0900d1

    invoke-virtual {p0, v10}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-direct {v11, p0, v8, v9, v10}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-interface {v7, v11}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 255
    new-instance v11, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    const v8, 0x7f0900c9

    invoke-virtual {p0, v8}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0900cd

    invoke-virtual {p0, v9}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f0900d2

    invoke-virtual {p0, v10}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-direct {v11, p0, v8, v9, v10}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-interface {v7, v11}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 258
    new-instance v11, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    const v8, 0x7f0900ca

    invoke-virtual {p0, v8}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0900ce

    invoke-virtual {p0, v9}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f0900d3

    invoke-virtual {p0, v10}, Lcom/sec/factory/app/ui/UIHardKey;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-direct {v11, p0, v8, v9, v10}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-interface {v7, v11}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 262
    const-string v8, "KEY_TEST_TOUCH_KEY_ODER"

    invoke-virtual {p0, v8}, Lcom/sec/factory/app/ui/UIHardKey;->selectTestCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/factory/support/Support$TestCase;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 263
    .local v3, keyOder:[Ljava/lang/String;
    new-instance v6, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;

    invoke-direct {v6, p0}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;)V

    .line 264
    .local v6, set:Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_130
    if-ge v1, v4, :cond_16d

    aget-object v5, v0, v1

    .line 265
    .local v5, oder:Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v7}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    invoke-virtual {v6, v9, v8}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->put(ILcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;)V

    .line 266
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->get(I)Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    move-result-object v8

    if-eqz v8, :cond_16a

    .line 267
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->get(I)Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    move-result-object v8

    iget-object v8, v8, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;->mTouchKeyText:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :cond_16a
    add-int/lit8 v1, v1, 0x1

    goto :goto_130

    .line 270
    .end local v5           #oder:Ljava/lang/String;
    :cond_16d
    return-object v6
.end method

.method private setLayoutPosition([Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;)V
    .registers 12
    .parameter

    .prologue
    const/4 v9, -0x2

    .line 512
    array-length v2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_4
    if-ge v1, v2, :cond_107

    aget-object v3, p1, v1

    .line 513
    invoke-virtual {v3}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->getHardKeyTextView()Landroid/widget/TextView;

    move-result-object v4

    .line 514
    if-eqz v4, :cond_7f

    .line 515
    const/4 v0, 0x0

    .line 516
    invoke-virtual {v3}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->getKeyCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_108

    .line 617
    iget-object v5, p0, Lcom/sec/factory/app/ui/UIHardKey;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "setLayoutPosition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Undefined case "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->getKeyCode()I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    :goto_34
    if-eqz v0, :cond_7f

    .line 620
    invoke-static {v0}, Lcom/sec/factory/support/Support$TestCase;->getViewPoint(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v3

    .line 621
    invoke-static {v0}, Lcom/sec/factory/support/Support$TestCase;->getKeyTextSize(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 622
    new-instance v5, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v6, v3, Landroid/graphics/Point;->x:I

    iget v7, v3, Landroid/graphics/Point;->y:I

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 624
    iget-object v4, p0, Lcom/sec/factory/app/ui/UIHardKey;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "init"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", point="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    :cond_7f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 518
    :sswitch_83
    const-string v0, "KEY_TEST_POWER"

    goto :goto_34

    .line 521
    :sswitch_86
    const-string v0, "KEY_TEST_VOLUME_UP"

    goto :goto_34

    .line 524
    :sswitch_89
    const-string v0, "KEY_TEST_VOLUME_DOWN"

    goto :goto_34

    .line 527
    :sswitch_8c
    const-string v0, "KEY_TEST_END"

    goto :goto_34

    .line 530
    :sswitch_8f
    const-string v0, "KEY_TEST_FOCUS"

    goto :goto_34

    .line 533
    :sswitch_92
    const-string v0, "KEY_TEST_CAMERA"

    goto :goto_34

    .line 536
    :sswitch_95
    const-string v0, "KEY_TEST_MENU"

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIHardKey;->selectTestCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    .line 539
    :sswitch_9c
    const-string v0, "KEY_TEST_HOME"

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIHardKey;->selectTestCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    .line 542
    :sswitch_a3
    const-string v0, "KEY_TEST_BACK"

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIHardKey;->selectTestCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    .line 545
    :sswitch_aa
    const-string v0, "KEY_TEST_NETWOR_SEL"

    goto :goto_34

    .line 548
    :sswitch_ad
    const-string v0, "KEY_TEST_CALL"

    goto :goto_34

    .line 551
    :sswitch_b0
    const-string v0, "KEY_TEST_DEL"

    goto :goto_34

    .line 554
    :sswitch_b3
    const-string v0, "KEY_TEST_0"

    goto/16 :goto_34

    .line 557
    :sswitch_b7
    const-string v0, "KEY_TEST_1"

    goto/16 :goto_34

    .line 560
    :sswitch_bb
    const-string v0, "KEY_TEST_2"

    goto/16 :goto_34

    .line 563
    :sswitch_bf
    const-string v0, "KEY_TEST_3"

    goto/16 :goto_34

    .line 566
    :sswitch_c3
    const-string v0, "KEY_TEST_4"

    goto/16 :goto_34

    .line 569
    :sswitch_c7
    const-string v0, "KEY_TEST_5"

    goto/16 :goto_34

    .line 572
    :sswitch_cb
    const-string v0, "KEY_TEST_6"

    goto/16 :goto_34

    .line 575
    :sswitch_cf
    const-string v0, "KEY_TEST_7"

    goto/16 :goto_34

    .line 578
    :sswitch_d3
    const-string v0, "KEY_TEST_8"

    goto/16 :goto_34

    .line 581
    :sswitch_d7
    const-string v0, "KEY_TEST_9"

    goto/16 :goto_34

    .line 584
    :sswitch_db
    const-string v0, "KEY_TEST_STAR"

    goto/16 :goto_34

    .line 587
    :sswitch_df
    const-string v0, "KEY_TEST_POUND"

    goto/16 :goto_34

    .line 590
    :sswitch_e3
    const-string v0, "KEY_TEST_DPAD_UP"

    goto/16 :goto_34

    .line 593
    :sswitch_e7
    const-string v0, "KEY_TEST_DPAD_DOWN"

    goto/16 :goto_34

    .line 596
    :sswitch_eb
    const-string v0, "KEY_TEST_DPAD_LEFT"

    goto/16 :goto_34

    .line 599
    :sswitch_ef
    const-string v0, "KEY_TEST_DPAD_RIGHT"

    goto/16 :goto_34

    .line 602
    :sswitch_f3
    const-string v0, "KEY_TEST_DPAD_CENTER"

    goto/16 :goto_34

    .line 605
    :sswitch_f7
    const-string v0, "KEY_TEST_SEARCH"

    goto/16 :goto_34

    .line 608
    :sswitch_fb
    const-string v0, "KEY_TEST_F1"

    goto/16 :goto_34

    .line 611
    :sswitch_ff
    const-string v0, "KEY_TEST_3G"

    goto/16 :goto_34

    .line 614
    :sswitch_103
    const-string v0, "KEY_TEST_APP_SWITCH"

    goto/16 :goto_34

    .line 629
    :cond_107
    return-void

    .line 516
    :sswitch_data_108
    .sparse-switch
        0x3 -> :sswitch_9c
        0x4 -> :sswitch_a3
        0x5 -> :sswitch_ad
        0x7 -> :sswitch_b3
        0x8 -> :sswitch_b7
        0x9 -> :sswitch_bb
        0xa -> :sswitch_bf
        0xb -> :sswitch_c3
        0xc -> :sswitch_c7
        0xd -> :sswitch_cb
        0xe -> :sswitch_cf
        0xf -> :sswitch_d3
        0x10 -> :sswitch_d7
        0x11 -> :sswitch_db
        0x12 -> :sswitch_df
        0x13 -> :sswitch_e3
        0x14 -> :sswitch_e7
        0x15 -> :sswitch_eb
        0x16 -> :sswitch_ef
        0x17 -> :sswitch_f3
        0x18 -> :sswitch_86
        0x19 -> :sswitch_89
        0x1a -> :sswitch_83
        0x1b -> :sswitch_92
        0x43 -> :sswitch_b0
        0x50 -> :sswitch_8f
        0x52 -> :sswitch_95
        0x54 -> :sswitch_f7
        0xbb -> :sswitch_103
        0xe4 -> :sswitch_fb
        0xe7 -> :sswitch_8c
        0xe8 -> :sswitch_aa
        0xe9 -> :sswitch_ff
    .end sparse-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIKeyBase;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIHardKey;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 97
    .local v0, i:Landroid/content/Intent;
    const-string v1, "requestCode"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->setTestId(I)V

    .line 98
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIHardKey;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "onCreate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TEST_ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/factory/app/ui/UIHardKey;->TEST_ID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const v1, 0x7f030018

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->setContentView(I)V

    .line 101
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIHardKey;->initialize()V

    .line 102
    invoke-static {p0}, Lcom/sec/factory/modules/ModulePower;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModulePower;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModulePower;->doWakeLock(Z)V

    .line 103
    const-string v1, "LCiA"

    const-string v2, "PGM_STAGE"

    invoke-static {v2}, Lcom/sec/factory/support/Support$Properties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/factory/app/ui/UIHardKey;->mModeLCiA:Z

    .line 104
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 117
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIKeyBase;->onDestroy()V

    .line 118
    invoke-static {p0}, Lcom/sec/factory/modules/ModulePower;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModulePower;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModulePower;->doWakeLock(Z)V

    .line 119
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 16
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/high16 v9, -0x1

    const v8, -0xffff01

    const/4 v6, 0x1

    .line 145
    invoke-super {p0, v7, p2}, Lcom/sec/factory/app/ui/UIKeyBase;->setLongPress(ZLandroid/view/KeyEvent;)Z

    .line 146
    iget-object v5, p0, Lcom/sec/factory/app/ui/UIHardKey;->CLASS_NAME:Ljava/lang/String;

    const-string v10, "onKeyDown"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "keyCode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v10, v11}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIHardKey;->isLongPress()Z

    move-result v5

    if-nez v5, :cond_2e

    iget-boolean v5, p0, Lcom/sec/factory/app/ui/UIHardKey;->mIsPassed:Z

    if-eqz v5, :cond_36

    :cond_2e
    iget-boolean v5, p0, Lcom/sec/factory/app/ui/UIHardKey;->mIsPassed:Z

    if-nez v5, :cond_194

    iget v5, p0, Lcom/sec/factory/app/ui/UIHardKey;->mLongPressKeyCode:I

    if-eq v5, p1, :cond_194

    .line 148
    :cond_36
    iput p1, p0, Lcom/sec/factory/app/ui/UIHardKey;->mLongPressKeyCode:I

    .line 149
    const/16 v5, 0x50

    if-ne p1, v5, :cond_6c

    .line 150
    iget-object v5, p0, Lcom/sec/factory/app/ui/UIHardKey;->CLASS_NAME:Ljava/lang/String;

    const-string v10, "onKeyDown"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Af block="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/sec/factory/app/ui/UIHardKey;->mBlockedAfKey:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v10, v11}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-boolean v5, p0, Lcom/sec/factory/app/ui/UIHardKey;->mBlockedAfKey:Z

    if-ne v5, v6, :cond_5d

    .line 204
    :goto_5c
    return v6

    .line 155
    :cond_5d
    iput-boolean v6, p0, Lcom/sec/factory/app/ui/UIHardKey;->mBlockedAfKey:Z

    .line 156
    iget-object v5, p0, Lcom/sec/factory/app/ui/UIHardKey;->mAfKeyHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/sec/factory/app/ui/UIHardKey;->mAfKeyHandler:Landroid/os/Handler;

    invoke-virtual {v10}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v10

    const-wide/16 v11, 0x7d0

    invoke-virtual {v5, v10, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 159
    :cond_6c
    iget-object v5, p0, Lcom/sec/factory/app/ui/UIHardKey;->mTestList:Ljava/util/ArrayList;

    new-instance v10, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    invoke-direct {v10, p0, p1}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;I)V

    iget-object v11, p0, Lcom/sec/factory/app/ui/UIHardKey;->mComparator:Ljava/util/Comparator;

    invoke-static {v5, v10, v11}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    .line 161
    .local v1, index:I
    if-ltz v1, :cond_194

    .line 162
    iget-object v5, p0, Lcom/sec/factory/app/ui/UIHardKey;->mTestList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    .line 163
    .local v3, keyTestItem:Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;
    iget-boolean v5, v3, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mIsTouchKey:Z

    if-nez v5, :cond_ec

    .line 164
    iget-boolean v5, v3, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mIsPassed:Z

    if-nez v5, :cond_e8

    move v5, v6

    :goto_8c
    iput-boolean v5, v3, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mIsPassed:Z

    .line 165
    iget-object v5, p0, Lcom/sec/factory/app/ui/UIHardKey;->CLASS_NAME:Ljava/lang/String;

    const-string v10, "onKeyDown"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Hard key press keyCode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v3, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mKeyCode:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", Passed="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v3, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mIsPassed:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v10, v11}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v5, v3, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mHardKeyItem:Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    iget-object v10, v5, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;->mHardKeyText:Landroid/widget/TextView;

    iget-boolean v5, v3, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mIsPassed:Z

    if-eqz v5, :cond_ea

    move v5, v8

    :goto_bf
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 188
    :cond_c2
    :goto_c2
    iget-boolean v5, p0, Lcom/sec/factory/app/ui/UIHardKey;->mModeLCiA:Z

    if-nez v5, :cond_d0

    .line 189
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v5

    const v8, 0x7f050003

    invoke-virtual {v5, v8, v7}, Lcom/sec/factory/modules/ModuleAudio;->playMedia(IZ)V

    .line 191
    :cond_d0
    iget-object v5, p0, Lcom/sec/factory/app/ui/UIHardKey;->mTestList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_d6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_183

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    .line 192
    .local v2, item:Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;
    iget-boolean v5, v2, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mIsPassed:Z

    if-nez v5, :cond_d6

    goto/16 :goto_5c

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;
    :cond_e8
    move v5, v7

    .line 164
    goto :goto_8c

    :cond_ea
    move v5, v9

    .line 167
    goto :goto_bf

    .line 169
    :cond_ec
    iget-boolean v5, v3, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mIsTouchKey:Z

    if-eqz v5, :cond_c2

    iget-boolean v5, v3, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mIsPassed:Z

    if-nez v5, :cond_c2

    .line 170
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleDevice;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v5

    iget v10, v3, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mKeyCode:I

    invoke-virtual {v5, v10}, Lcom/sec/factory/modules/ModuleDevice;->readTSKSensitivity(I)I

    move-result v4

    .line 172
    .local v4, sensitivity:I
    iget v5, p0, Lcom/sec/factory/app/ui/UIHardKey;->mSpecMin:I

    if-lt v4, v5, :cond_178

    iget v5, p0, Lcom/sec/factory/app/ui/UIHardKey;->mSpecMax:I

    if-gt v4, v5, :cond_178

    move v5, v6

    :goto_107
    iput-boolean v5, v3, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mIsPassed:Z

    .line 174
    iget-object v5, v3, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mTouchKeyItem:Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    iget-object v5, v5, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;->mTouchKeySensitivityText:Landroid/widget/TextView;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v5, v3, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mTouchKeyItem:Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    iget-object v10, v5, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;->mTouchKeySensitivityText:Landroid/widget/TextView;

    iget-boolean v5, v3, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mIsPassed:Z

    if-eqz v5, :cond_17a

    move v5, v8

    :goto_11d
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    iget-object v5, v3, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mTouchKeyItem:Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    iget-object v10, v5, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;->mTouchKeyTestResult:Landroid/widget/TextView;

    iget-boolean v5, v3, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mIsPassed:Z

    if-eqz v5, :cond_17c

    const-string v5, "PASS"

    :goto_12a
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v5, v3, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mTouchKeyItem:Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    iget-object v10, v5, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;->mTouchKeyTestResult:Landroid/widget/TextView;

    iget-boolean v5, v3, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mIsPassed:Z

    if-eqz v5, :cond_17f

    move v5, v8

    :goto_136
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 182
    iget-object v5, v3, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mHardKeyItem:Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    iget-object v5, v5, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;->mHardKeyText:Landroid/widget/TextView;

    iget-boolean v10, v3, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mIsPassed:Z

    if-eqz v10, :cond_181

    :goto_141
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    iget-object v5, p0, Lcom/sec/factory/app/ui/UIHardKey;->CLASS_NAME:Ljava/lang/String;

    const-string v8, "onKeyDown"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Touch key press keyCode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mKeyCode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Passed="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, v3, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mIsPassed:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Sensitivity="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c2

    :cond_178
    move v5, v7

    .line 172
    goto :goto_107

    :cond_17a
    move v5, v9

    .line 176
    goto :goto_11d

    .line 178
    :cond_17c
    const-string v5, "FAIL"

    goto :goto_12a

    :cond_17f
    move v5, v9

    .line 180
    goto :goto_136

    :cond_181
    move v8, v9

    .line 182
    goto :goto_141

    .line 197
    .end local v4           #sensitivity:I
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_183
    iput-boolean v6, p0, Lcom/sec/factory/app/ui/UIHardKey;->mIsPassed:Z

    .line 198
    iget-object v5, p0, Lcom/sec/factory/app/ui/UIHardKey;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "onKeyDown"

    const-string v8, "Pass the KeyTest"

    invoke-static {v5, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lcom/sec/factory/app/ui/UIHardKey;->setResult(I)V

    goto/16 :goto_5c

    .line 204
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #index:I
    .end local v3           #keyTestItem:Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;
    :cond_194
    invoke-super {p0, p1, p2}, Lcom/sec/factory/app/ui/UIKeyBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v6

    goto/16 :goto_5c
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 129
    invoke-super {p0, v0, p2}, Lcom/sec/factory/app/ui/UIKeyBase;->setLongPress(ZLandroid/view/KeyEvent;)Z

    .line 130
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIHardKey;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "onKeyUp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "passed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/factory/app/ui/UIHardKey;->mIsPassed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", keyCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/factory/app/ui/UIHardKey;->mLongPressKeyCode:I

    .line 132
    iget-boolean v1, p0, Lcom/sec/factory/app/ui/UIHardKey;->mIsPassed:Z

    if-ne v1, v0, :cond_41

    .line 133
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sec/factory/app/ui/UIHardKey$3;

    invoke-direct {v2, p0}, Lcom/sec/factory/app/ui/UIHardKey$3;-><init>(Lcom/sec/factory/app/ui/UIHardKey;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    :goto_40
    return v0

    :cond_41
    invoke-super {p0, p1, p2}, Lcom/sec/factory/app/ui/UIKeyBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_40
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 123
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIKeyBase;->onPause()V

    .line 124
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    iget v1, p0, Lcom/sec/factory/app/ui/UIHardKey;->mOldVolumeIndex:I

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleAudio;->setStreamMusicVolumeIndex(I)V

    .line 125
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 108
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIKeyBase;->onResume()V

    .line 109
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->getStreamMusicVolumeIndex()I

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UIHardKey;->mOldVolumeIndex:I

    .line 110
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIHardKey;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "initialize"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOldVolume = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/factory/app/ui/UIHardKey;->mOldVolumeIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->setStreamMusicVolumeMaxIndex()V

    .line 112
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleDevice;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleDevice;->turnOnTSKSensitivity()V

    .line 113
    return-void
.end method

.method public selectTestCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "strCase"

    .prologue
    .line 86
    const/16 v0, 0x2d

    iget v1, p0, Lcom/sec/factory/app/ui/UIHardKey;->TEST_ID:I

    if-ne v0, v1, :cond_19

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 89
    :cond_19
    return-object p1
.end method
