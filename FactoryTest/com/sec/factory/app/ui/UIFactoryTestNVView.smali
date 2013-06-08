.class public Lcom/sec/factory/app/ui/UIFactoryTestNVView;
.super Landroid/app/Activity;
.source "UIFactoryTestNVView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final CLASS_NAME:Ljava/lang/String;

.field private final ITEM_MAX_SIZE:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

.field private mItemValue:[B

.field mPassItemValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResultValue:[C

.field private mView1:Landroid/widget/TextView;

.field private mView2:Landroid/widget/TextView;

.field private mView3:Landroid/widget/TextView;

.field private mView4:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x5a

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    const-string v0, "FactoryTestNVView"

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->CLASS_NAME:Ljava/lang/String;

    .line 27
    iput v1, p0, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->ITEM_MAX_SIZE:I

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->mPassItemValue:Ljava/util/List;

    .line 32
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->mItemValue:[B

    .line 33
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->mResultValue:[C

    .line 35
    new-instance v0, Lcom/sec/factory/app/ui/UIFactoryTestNVView$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UIFactoryTestNVView$1;-><init>(Lcom/sec/factory/app/ui/UIFactoryTestNVView;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private Change_NV_Value(B)Ljava/lang/String;
    .registers 3
    .parameter "value"

    .prologue
    .line 118
    const/16 v0, 0x4e

    if-ne v0, p1, :cond_7

    .line 119
    const-string v0, "N"

    .line 127
    :goto_6
    return-object v0

    .line 120
    :cond_7
    const/16 v0, 0x45

    if-ne v0, p1, :cond_e

    .line 121
    const-string v0, "E"

    goto :goto_6

    .line 122
    :cond_e
    const/16 v0, 0x50

    if-ne v0, p1, :cond_15

    .line 123
    const-string v0, "P"

    goto :goto_6

    .line 124
    :cond_15
    const/16 v0, 0x46

    if-ne v0, p1, :cond_1c

    .line 125
    const-string v0, "F"

    goto :goto_6

    .line 127
    :cond_1c
    const-string v0, "NONE"

    goto :goto_6
.end method

.method static synthetic access$000(Lcom/sec/factory/app/ui/UIFactoryTestNVView;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->getFactoryTestNVValueCPO(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/factory/app/ui/UIFactoryTestNVView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->getFactoryTestNVValueCPO()V

    return-void
.end method

.method private getFactoryTestNVValue()V
    .registers 4

    .prologue
    .line 86
    const-string v0, "FactoryTestNVView"

    const-string v1, "getFactoryTestNVValue"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->mView1:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/16 v2, 0x17

    invoke-direct {p0, v1, v2}, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->get_NV_Value(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->mView2:Landroid/widget/TextView;

    const/16 v1, 0x18

    const/16 v2, 0x2e

    invoke-direct {p0, v1, v2}, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->get_NV_Value(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->mView3:Landroid/widget/TextView;

    const/16 v1, 0x2f

    const/16 v2, 0x45

    invoke-direct {p0, v1, v2}, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->get_NV_Value(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->mView4:Landroid/widget/TextView;

    const/16 v1, 0x46

    const/16 v2, 0x5a

    invoke-direct {p0, v1, v2}, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->get_NV_Value(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-void
.end method

.method private getFactoryTestNVValueCPO()V
    .registers 4

    .prologue
    .line 155
    const-string v0, "FactoryTestNVView"

    const-string v1, "getFactoryTestNVValueCPO"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->mView1:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x16

    invoke-direct {p0, v1, v2}, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->get_NV_ValueCPO(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->mView2:Landroid/widget/TextView;

    const/16 v1, 0x17

    const/16 v2, 0x2d

    invoke-direct {p0, v1, v2}, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->get_NV_ValueCPO(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->mView3:Landroid/widget/TextView;

    const/16 v1, 0x2e

    const/16 v2, 0x44

    invoke-direct {p0, v1, v2}, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->get_NV_ValueCPO(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->mView4:Landroid/widget/TextView;

    const/16 v1, 0x45

    const/16 v2, 0x59

    invoke-direct {p0, v1, v2}, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->get_NV_ValueCPO(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    return-void
.end method

.method private getFactoryTestNVValueCPO(Landroid/content/Intent;)V
    .registers 11
    .parameter "intent"

    .prologue
    .line 183
    const-string v5, "FactoryTestNVView"

    const-string v6, "getFactoryTestNVValueCPO"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v5, "COMMAND"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 185
    .local v4, valuesString:Ljava/lang/String;
    if-nez v4, :cond_12

    .line 186
    const-string v4, ""

    .line 193
    :cond_12
    const/4 v0, 0x6

    .local v0, i:I
    :goto_13
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_55

    .line 194
    const-string v1, "PASS"

    .line 195
    .local v1, mTempItemValue:Ljava/lang/String;
    const-string v2, "FAIL"

    .line 196
    .local v2, mTempItemValue2:Ljava/lang/String;
    add-int/lit8 v5, v0, 0x2

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, mTempResultValue:Ljava/lang/String;
    const-string v5, "FactoryTestNVView"

    const-string v6, "getFactoryTestNVValueCPO"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mTempResultValue : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v5, "50"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 199
    iget-object v5, p0, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->mPassItemValue:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    :goto_4c
    add-int/lit8 v0, v0, 0x4

    goto :goto_13

    .line 201
    :cond_4f
    iget-object v5, p0, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->mPassItemValue:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 205
    .end local v1           #mTempItemValue:Ljava/lang/String;
    .end local v2           #mTempItemValue2:Ljava/lang/String;
    .end local v3           #mTempResultValue:Ljava/lang/String;
    :cond_55
    const/4 v0, 0x0

    :goto_56
    const/16 v5, 0x5a

    if-ge v0, v5, :cond_c2

    .line 206
    const-string v5, "FactoryTestNVView"

    const-string v6, "getFactoryTestNVValueCPO"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "i : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v6, "FactoryTestNVView"

    const-string v7, "getFactoryTestNVValueCPO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mPassItemValue.get(i) : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v5, p0, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->mPassItemValue:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v7, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v5, "PASS"

    iget-object v6, p0, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->mPassItemValue:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b4

    .line 209
    iget-object v5, p0, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->mItemValue:[B

    add-int/lit8 v6, v0, 0x1

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    .line 210
    iget-object v5, p0, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->mResultValue:[C

    const/16 v6, 0x50

    aput-char v6, v5, v0

    .line 205
    :goto_b1
    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    .line 212
    :cond_b4
    iget-object v5, p0, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->mItemValue:[B

    add-int/lit8 v6, v0, 0x1

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    .line 213
    iget-object v5, p0, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->mResultValue:[C

    const/16 v6, 0x4e

    aput-char v6, v5, v0

    goto :goto_b1

    .line 216
    :cond_c2
    return-void
.end method

.method private get_NV_Value(II)Ljava/lang/String;
    .registers 9
    .parameter "nv_key_start"
    .parameter "nv_key_end"

    .prologue
    .line 94
    const-string v2, "FactoryTestNVView"

    const-string v3, "get_NV_Value"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, ""

    .line 98
    .local v1, mTemp:Ljava/lang/String;
    :goto_a
    if-gt p1, p2, :cond_72

    .line 100
    int-to-byte v2, p1

    invoke-static {v2}, Lcom/sec/factory/support/NVAccessor;->getNV(B)B

    move-result v0

    .line 101
    .local v0, mNV_Value:B
    const-string v2, "FactoryTestNVView"

    const-string v3, "get_NV_Value"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "NV: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->Change_NV_Value(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    if-ge p1, p2, :cond_6f

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    :cond_6f
    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    .line 109
    .end local v0           #mNV_Value:B
    :cond_72
    return-object v1
.end method

.method private get_NV_ValueCPO(II)Ljava/lang/String;
    .registers 10
    .parameter "nv_key_start"
    .parameter "nv_key_end"

    .prologue
    .line 163
    const-string v3, "FactoryTestNVView"

    const-string v4, "get_NV_ValueCPO"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v2, ""

    .line 167
    .local v2, mTemp:Ljava/lang/String;
    move v0, p1

    .local v0, i:I
    :goto_b
    if-gt v0, p2, :cond_70

    .line 169
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->mResultValue:[C

    aget-char v1, v3, v0

    .line 170
    .local v1, mNV_Value:C
    const-string v3, "FactoryTestNVView"

    const-string v4, "get_NV_ValueCPO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "NV: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 174
    if-ge p1, p2, :cond_6d

    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 167
    :cond_6d
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 178
    .end local v1           #mNV_Value:C
    :cond_70
    return-object v2
.end method

.method private set_NV_Value(B)V
    .registers 6
    .parameter "key"

    .prologue
    .line 113
    const/16 v0, 0x50

    invoke-static {p1, v0}, Lcom/sec/factory/support/NVAccessor;->setNV(BB)V

    .line 114
    const-string v0, "FactoryTestNVView"

    const-string v1, "set_NV_Value"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method private set_NV_ValueCPO(BB)V
    .registers 4
    .parameter "itemid"
    .parameter "result"

    .prologue
    .line 219
    new-instance v0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;-><init>(Landroid/content/Context;)V

    .line 220
    .local v0, factoryphone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;
    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->bindSecPhoneService()V

    .line 221
    invoke-virtual {v0, p1, p2}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->updateNVItem(BB)V

    .line 222
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const/16 v5, 0x50

    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 131
    const-string v0, "FactoryTestNVView"

    const-string v1, "onClick"

    const-string v2, "start_update_in_nvitem"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_38

    .line 152
    :goto_14
    return-void

    .line 135
    :pswitch_15
    invoke-static {}, Lcom/sec/factory/support/FtUtil;->isFactoryAppAPO()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 136
    invoke-direct {p0, v3}, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->set_NV_Value(B)V

    .line 137
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->getFactoryTestNVValue()V

    goto :goto_14

    .line 139
    :cond_22
    invoke-direct {p0, v3, v5}, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->set_NV_ValueCPO(BB)V

    goto :goto_14

    .line 143
    :pswitch_26
    invoke-static {}, Lcom/sec/factory/support/FtUtil;->isFactoryAppAPO()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 144
    invoke-direct {p0, v4}, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->set_NV_Value(B)V

    .line 145
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->getFactoryTestNVValue()V

    goto :goto_14

    .line 147
    :cond_33
    invoke-direct {p0, v4, v5}, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->set_NV_ValueCPO(BB)V

    goto :goto_14

    .line 133
    nop

    :pswitch_data_38
    .packed-switch 0x7f0901ed
        :pswitch_15
        :pswitch_26
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const-string v2, "FactoryTestNVView"

    const-string v3, "onCreate"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const v2, 0x7f03002e

    invoke-virtual {p0, v2}, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->setContentView(I)V

    .line 54
    const v2, 0x7f0901ed

    invoke-virtual {p0, v2}, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 55
    .local v1, smdbutton:Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v2, 0x7f0901ee

    invoke-virtual {p0, v2}, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, pbabutton:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v2, 0x7f0901e9

    invoke-virtual {p0, v2}, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->mView1:Landroid/widget/TextView;

    .line 60
    const v2, 0x7f0901ea

    invoke-virtual {p0, v2}, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->mView2:Landroid/widget/TextView;

    .line 61
    const v2, 0x7f0901eb

    invoke-virtual {p0, v2}, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->mView3:Landroid/widget/TextView;

    .line 62
    const v2, 0x7f0901ec

    invoke-virtual {p0, v2}, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->mView4:Landroid/widget/TextView;

    .line 63
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 83
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 68
    invoke-static {}, Lcom/sec/factory/support/FtUtil;->isFactoryAppAPO()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 69
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->getFactoryTestNVValue()V

    .line 79
    :goto_c
    return-void

    .line 71
    :cond_d
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 72
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.samsungtest.RilOmissionCommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    new-instance v1, Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-direct {v1, p0}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    .line 75
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-virtual {v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->bindSecPhoneService()V

    .line 76
    const-string v1, "FactoryTestNVView"

    const-string v2, "onResume"

    const-string v3, "Request for TestNV!"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-virtual {v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->requestTestNvViewToRil()V

    goto :goto_c
.end method
