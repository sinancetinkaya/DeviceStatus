.class public Lcom/sec/factory/app/ui/UIFactoryHistory;
.super Lcom/sec/factory/app/ui/UIBase;
.source "UIFactoryHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryAdaptor;,
        Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;
    }
.end annotation


# instance fields
.field private final GET_HISTORY_VIEW_ITEM_ACTION:Ljava/lang/String;

.field private mAdaptor:Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryAdaptor;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mHistoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 62
    const-string v0, "FactoryTestMainHistoryView"

    invoke-direct {p0, v0}, Lcom/sec/factory/app/ui/UIBase;-><init>(Ljava/lang/String;)V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIFactoryHistory;->mHistoryList:Ljava/util/List;

    .line 59
    const-string v0, "com.android.samsungtest.RilOmissionCommand"

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIFactoryHistory;->GET_HISTORY_VIEW_ITEM_ACTION:Ljava/lang/String;

    .line 101
    new-instance v0, Lcom/sec/factory/app/ui/UIFactoryHistory$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UIFactoryHistory$1;-><init>(Lcom/sec/factory/app/ui/UIFactoryHistory;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIFactoryHistory;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/app/ui/UIFactoryHistory;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/sec/factory/app/ui/UIFactoryHistory;->getItemIDforPGM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/factory/app/ui/UIFactoryHistory;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/sec/factory/app/ui/UIFactoryHistory;->parseNVHistoryCPO(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/factory/app/ui/UIFactoryHistory;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIFactoryHistory;->stopReceiver()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/factory/app/ui/UIFactoryHistory;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIFactoryHistory;->mHistoryList:Ljava/util/List;

    return-object v0
.end method

.method private convertResult(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "result"

    .prologue
    .line 163
    const-string v0, "N"

    .line 164
    .local v0, ret:Ljava/lang/String;
    const-string v1, "50"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 165
    const-string v0, "P"

    .line 172
    :cond_c
    :goto_c
    return-object v0

    .line 166
    :cond_d
    const-string v1, "45"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 167
    const-string v0, "E"

    goto :goto_c

    .line 168
    :cond_18
    const-string v1, "46"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 169
    const-string v0, "F"

    goto :goto_c

    .line 170
    :cond_23
    const-string v1, "4E"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 171
    const-string v0, "N"

    goto :goto_c
.end method

.method private getItemIDforPGM(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "result"

    .prologue
    .line 176
    const-string v0, "NA"

    .line 177
    .local v0, ret:Ljava/lang/String;
    const-string v1, "01"

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 178
    const-string v0, "SMD FUNCTION"

    .line 213
    :cond_c
    :goto_c
    return-object v0

    .line 179
    :cond_d
    const-string v1, "04"

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 180
    const-string v0, "PBA TEST"

    goto :goto_c

    .line 181
    :cond_18
    const-string v1, "07"

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 182
    const-string v0, "RF CAL"

    goto :goto_c

    .line 183
    :cond_23
    const-string v1, "08"

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 184
    const-string v0, "RF CAL2"

    goto :goto_c

    .line 185
    :cond_2e
    const-string v1, "0A"

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 186
    const-string v0, "LTE CAL"

    goto :goto_c

    .line 187
    :cond_3d
    const-string v1, "0B"

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 188
    const-string v0, "FINAL TEST"

    goto :goto_c

    .line 189
    :cond_4c
    const-string v1, "0C"

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 190
    const-string v0, "LTE FINAL"

    goto :goto_c

    .line 191
    :cond_5b
    const-string v1, "0E"

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 192
    const-string v0, "WLAN"

    goto :goto_c

    .line 193
    :cond_6a
    const-string v1, "0F"

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 194
    const-string v0, "GPS"

    goto :goto_c

    .line 195
    :cond_79
    const-string v1, "10"

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 196
    const-string v0, "IMEI WRITE"

    goto :goto_c

    .line 197
    :cond_88
    const-string v1, "12"

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 198
    const-string v0, "FUNC 3"

    goto/16 :goto_c

    .line 199
    :cond_98
    const-string v1, "13"

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 200
    const-string v0, "FUNC 1"

    goto/16 :goto_c

    .line 201
    :cond_a8
    const-string v1, "14"

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 202
    const-string v1, "SUPPORT_2ND_RIL"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 203
    const-string v0, "2nd RSSI"

    goto/16 :goto_c

    .line 205
    :cond_c0
    const-string v0, "FUNC 2"

    goto/16 :goto_c

    .line 208
    :cond_c4
    const-string v1, "62"

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d4

    .line 209
    const-string v0, "PBA Repair"

    goto/16 :goto_c

    .line 210
    :cond_d4
    const-string v1, "63"

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 211
    const-string v0, "MAIN Repair"

    goto/16 :goto_c
.end method

.method private parseNVHistory()V
    .registers 10

    .prologue
    .line 115
    iget-object v4, p0, Lcom/sec/factory/app/ui/UIFactoryHistory;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "parseNVHistory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Response (NV History) : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " millisecond"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/sec/factory/support/NVAccessor;->getNVHistory()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, history:Ljava/lang/String;
    if-nez v2, :cond_34

    .line 121
    iget-object v4, p0, Lcom/sec/factory/app/ui/UIFactoryHistory;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "parseNVHistory"

    const-string v6, "No Item"

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_33
    return-void

    .line 123
    :cond_34
    iget-object v4, p0, Lcom/sec/factory/app/ui/UIFactoryHistory;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "parseNVHistory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Data] size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v3, 0x0

    .local v3, i:I
    :goto_5d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_ac

    .line 127
    add-int/lit8 v4, v3, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, NVKey:Ljava/lang/String;
    add-int/lit8 v4, v3, 0x2

    add-int/lit8 v5, v3, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, NVValue:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/factory/app/ui/UIFactoryHistory;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "parseNVHistory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NVKey : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", NVValue : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const/16 v4, 0xa

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    iget-object v4, p0, Lcom/sec/factory/app/ui/UIFactoryHistory;->mHistoryList:Ljava/util/List;

    new-instance v5, Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;

    invoke-direct {v5, p0, v0, v1}, Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;-><init>(Lcom/sec/factory/app/ui/UIFactoryHistory;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v3, v3, 0x3

    goto :goto_5d

    .line 135
    .end local v0           #NVKey:Ljava/lang/String;
    .end local v1           #NVValue:Ljava/lang/String;
    :cond_ac
    iget-object v4, p0, Lcom/sec/factory/app/ui/UIFactoryHistory;->mAdaptor:Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryAdaptor;

    invoke-virtual {v4}, Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryAdaptor;->notifyDataSetChanged()V

    goto :goto_33
.end method

.method private parseNVHistoryCPO(Ljava/lang/String;)V
    .registers 11
    .parameter "histNVData"

    .prologue
    .line 140
    iget-object v4, p0, Lcom/sec/factory/app/ui/UIFactoryHistory;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "parseNVHistory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Response (NV History) : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " millisecond"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    move-object v2, p1

    .line 143
    .local v2, history:Ljava/lang/String;
    if-nez v2, :cond_31

    .line 144
    iget-object v4, p0, Lcom/sec/factory/app/ui/UIFactoryHistory;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "parseNVHistory"

    const-string v6, "No Item"

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :goto_30
    return-void

    .line 146
    :cond_31
    iget-object v4, p0, Lcom/sec/factory/app/ui/UIFactoryHistory;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "parseNVHistory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Data] size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const/4 v3, 0x0

    .local v3, i:I
    :goto_5a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_ab

    .line 149
    add-int/lit8 v4, v3, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, NVKey:Ljava/lang/String;
    add-int/lit8 v4, v3, 0x2

    add-int/lit8 v5, v3, 0x4

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, NVValue:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/factory/app/ui/UIFactoryHistory;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "parseNVHistory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NVKey : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", NVValue : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v4, "00"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a8

    .line 154
    iget-object v4, p0, Lcom/sec/factory/app/ui/UIFactoryHistory;->mHistoryList:Ljava/util/List;

    new-instance v5, Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;

    invoke-direct {p0, v1}, Lcom/sec/factory/app/ui/UIFactoryHistory;->convertResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v0, v6}, Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryItem;-><init>(Lcom/sec/factory/app/ui/UIFactoryHistory;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_a8
    add-int/lit8 v3, v3, 0x4

    goto :goto_5a

    .line 158
    .end local v0           #NVKey:Ljava/lang/String;
    .end local v1           #NVValue:Ljava/lang/String;
    :cond_ab
    iget-object v4, p0, Lcom/sec/factory/app/ui/UIFactoryHistory;->mAdaptor:Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryAdaptor;

    invoke-virtual {v4}, Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryAdaptor;->notifyDataSetChanged()V

    goto :goto_30
.end method

.method private setupReceiver()V
    .registers 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIFactoryHistory;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.samsungtest.RilOmissionCommand"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/factory/app/ui/UIFactoryHistory;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    return-void
.end method

.method private stopReceiver()V
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIFactoryHistory;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIFactoryHistory;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIBase;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIFactoryHistory;->setContentView(I)V

    .line 69
    new-instance v0, Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryAdaptor;

    const v1, 0x7f030022

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIFactoryHistory;->mHistoryList:Ljava/util/List;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryAdaptor;-><init>(Lcom/sec/factory/app/ui/UIFactoryHistory;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIFactoryHistory;->mAdaptor:Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryAdaptor;

    .line 70
    const v0, 0x7f0900e6

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIFactoryHistory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIFactoryHistory;->mListView:Landroid/widget/ListView;

    .line 71
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIFactoryHistory;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIFactoryHistory;->mAdaptor:Lcom/sec/factory/app/ui/UIFactoryHistory$HistoryAdaptor;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    return-void
.end method

.method protected onResume()V
    .registers 6

    .prologue
    .line 75
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onResume()V

    .line 76
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIFactoryHistory;->mHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 79
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIFactoryHistory;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onResume"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request (NV History) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " millisecond"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/sec/factory/support/FtUtil;->isFactoryAppAPO()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 82
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIFactoryHistory;->parseNVHistory()V

    .line 91
    :goto_35
    return-void

    .line 84
    :cond_36
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIFactoryHistory;->setupReceiver()V

    .line 85
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIFactoryHistory;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    if-nez v0, :cond_4d

    .line 86
    new-instance v0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIFactoryHistory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIFactoryHistory;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    .line 87
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIFactoryHistory;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->bindSecPhoneService()V

    .line 89
    :cond_4d
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIFactoryHistory;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->requestHistoryNvViewToRil()V

    goto :goto_35
.end method
