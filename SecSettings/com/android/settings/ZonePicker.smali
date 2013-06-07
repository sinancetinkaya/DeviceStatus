.class public Lcom/android/settings/ZonePicker;
.super Landroid/app/ListFragment;
.source "ZonePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ZonePicker$MyComparator;,
        Lcom/android/settings/ZonePicker$ZoneSelectionListener;
    }
.end annotation


# instance fields
.field private mAlphabeticalAdapter:Landroid/widget/SimpleAdapter;

.field private mListener:Lcom/android/settings/ZonePicker$ZoneSelectionListener;

.field private mSortedByTimezone:Z

.field private mTimezoneSortedAdapter:Landroid/widget/SimpleAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 350
    return-void
.end method

.method private static addItem(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 13
    .parameter
    .parameter "id"
    .parameter "displayName"
    .parameter "date"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p0, myData:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 271
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "id"

    invoke-virtual {v0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string v6, "name"

    invoke-virtual {v0, v6, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 274
    .local v5, tz:Ljava/util/TimeZone;
    invoke-virtual {v5, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    .line 275
    .local v3, offset:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 276
    .local v4, p:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .local v2, name:Ljava/lang/StringBuilder;
    const-string v6, "GMT"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    if-gez v3, :cond_62

    .line 280
    const/16 v6, 0x2d

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 285
    :goto_2c
    const v6, 0x36ee80

    div-int v6, v4, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    const/16 v6, 0x3a

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 288
    const v6, 0xea60

    div-int v1, v4, v6

    .line 289
    .local v1, min:I
    rem-int/lit8 v1, v1, 0x3c

    .line 291
    const/16 v6, 0xa

    if-ge v1, v6, :cond_49

    .line 292
    const/16 v6, 0x30

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    :cond_49
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 296
    const-string v6, "gmt"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v6, "offset"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    return-void

    .line 282
    .end local v1           #min:I
    :cond_62
    const/16 v6, 0x2b

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2c
.end method

.method public static constructTimezoneAdapter(Landroid/content/Context;Z)Landroid/widget/SimpleAdapter;
    .registers 3
    .parameter "context"
    .parameter "sortedByName"

    .prologue
    .line 94
    const v0, 0x1090004

    invoke-static {p0, p1, v0}, Lcom/android/settings/ZonePicker;->constructTimezoneAdapter(Landroid/content/Context;ZI)Landroid/widget/SimpleAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static constructTimezoneAdapter(Landroid/content/Context;ZI)Landroid/widget/SimpleAdapter;
    .registers 12
    .parameter "context"
    .parameter "sortedByName"
    .parameter "layoutId"

    .prologue
    const/4 v8, 0x2

    .line 105
    new-array v4, v8, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "name"

    aput-object v3, v4, v1

    const/4 v1, 0x1

    const-string v3, "gmt"

    aput-object v3, v4, v1

    .line 106
    .local v4, from:[Ljava/lang/String;
    new-array v5, v8, [I

    fill-array-data v5, :array_2e

    .line 108
    .local v5, to:[I
    if-eqz p1, :cond_2a

    const-string v7, "name"

    .line 109
    .local v7, sortKey:Ljava/lang/String;
    :goto_16
    new-instance v6, Lcom/android/settings/ZonePicker$MyComparator;

    invoke-direct {v6, v7}, Lcom/android/settings/ZonePicker$MyComparator;-><init>(Ljava/lang/String;)V

    .line 110
    .local v6, comparator:Lcom/android/settings/ZonePicker$MyComparator;
    invoke-static {p0}, Lcom/android/settings/ZonePicker;->getZones(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 111
    .local v2, sortedList:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static {v2, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 112
    new-instance v0, Landroid/widget/SimpleAdapter;

    move-object v1, p0

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 118
    .local v0, adapter:Landroid/widget/SimpleAdapter;
    return-object v0

    .line 108
    .end local v0           #adapter:Landroid/widget/SimpleAdapter;
    .end local v2           #sortedList:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v6           #comparator:Lcom/android/settings/ZonePicker$MyComparator;
    .end local v7           #sortKey:Ljava/lang/String;
    :cond_2a
    const-string v7, "offset"

    goto :goto_16

    .line 106
    nop

    :array_2e
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0x15t 0x0t 0x2t 0x1t
    .end array-data
.end method

.method private getAutoState()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 305
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time_zone"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_e} :catch_14

    move-result v2

    if-lez v2, :cond_12

    .line 308
    :goto_11
    return v1

    .line 305
    :cond_12
    const/4 v1, 0x0

    goto :goto_11

    .line 307
    :catch_14
    move-exception v0

    .line 308
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_11
.end method

.method public static getTimeZoneIndex(Landroid/widget/SimpleAdapter;Ljava/util/TimeZone;)I
    .registers 8
    .parameter "adapter"
    .parameter "tz"

    .prologue
    .line 132
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, defaultId:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/widget/SimpleAdapter;->getCount()I

    move-result v3

    .line 134
    .local v3, listSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    if-ge v1, v3, :cond_23

    .line 136
    invoke-virtual {p0, v1}, Landroid/widget/SimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 137
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    const-string v5, "id"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 138
    .local v2, id:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 143
    .end local v1           #i:I
    .end local v2           #id:Ljava/lang/String;
    .end local v4           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    :goto_1f
    return v1

    .line 134
    .restart local v1       #i:I
    .restart local v2       #id:Ljava/lang/String;
    .restart local v4       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 143
    .end local v2           #id:Ljava/lang/String;
    .end local v4           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    :cond_23
    const/4 v1, -0x1

    goto :goto_1f
.end method

.method private static getZones(Landroid/content/Context;)Ljava/util/List;
    .registers 14
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 228
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v5, myData:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 233
    .local v0, date:J
    :try_start_10
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Setting_DisableIsraelCountry"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-ne v8, v10, :cond_43

    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070064

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 238
    .local v7, xrp:Landroid/content/res/XmlResourceParser;
    :cond_27
    :goto_27
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    if-ne v8, v11, :cond_27

    .line 240
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    .line 241
    :goto_30
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v8

    if-eq v8, v12, :cond_8b

    .line 242
    :goto_36
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v8

    if-eq v8, v11, :cond_5c

    .line 243
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v8

    if-ne v8, v10, :cond_4f

    .line 265
    .end local v7           #xrp:Landroid/content/res/XmlResourceParser;
    :goto_42
    return-object v5

    .line 236
    :cond_43
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070063

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .restart local v7       #xrp:Landroid/content/res/XmlResourceParser;
    goto :goto_27

    .line 246
    :cond_4f
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_52
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_52} :catch_53
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_52} :catch_7e

    goto :goto_36

    .line 259
    .end local v7           #xrp:Landroid/content/res/XmlResourceParser;
    :catch_53
    move-exception v6

    .line 260
    .local v6, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v8, "ZonePicker"

    const-string v9, "Ill-formatted timezones.xml file"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 248
    .end local v6           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v7       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_5c
    :try_start_5c
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "timezone"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_74

    .line 249
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, id:Ljava/lang/String;
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, displayName:Ljava/lang/String;
    invoke-static {v5, v3, v2, v0, v1}, Lcom/android/settings/ZonePicker;->addItem(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;J)V

    .line 253
    .end local v2           #displayName:Ljava/lang/String;
    .end local v3           #id:Ljava/lang/String;
    :cond_74
    :goto_74
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v8

    if-eq v8, v12, :cond_87

    .line 254
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_7d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5c .. :try_end_7d} :catch_53
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_7d} :catch_7e

    goto :goto_74

    .line 261
    .end local v7           #xrp:Landroid/content/res/XmlResourceParser;
    :catch_7e
    move-exception v4

    .line 262
    .local v4, ioe:Ljava/io/IOException;
    const-string v8, "ZonePicker"

    const-string v9, "Unable to read timezones.xml file"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 256
    .end local v4           #ioe:Ljava/io/IOException;
    .restart local v7       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_87
    :try_start_87
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    goto :goto_30

    .line 258
    :cond_8b
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_8e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_87 .. :try_end_8e} :catch_53
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8e} :catch_7e

    goto :goto_42
.end method

.method public static obtainTimeZoneFromItem(Ljava/lang/Object;)Ljava/util/TimeZone;
    .registers 2
    .parameter "item"

    .prologue
    .line 152
    check-cast p0, Ljava/util/Map;

    .end local p0
    const-string v0, "id"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method private setSorting(Z)V
    .registers 7
    .parameter "sortByTimezone"

    .prologue
    .line 210
    if-eqz p1, :cond_3b

    iget-object v0, p0, Lcom/android/settings/ZonePicker;->mTimezoneSortedAdapter:Landroid/widget/SimpleAdapter;

    .line 212
    .local v0, adapter:Landroid/widget/SimpleAdapter;
    :goto_4
    invoke-virtual {p0, v0}, Lcom/android/settings/ZonePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 213
    iput-boolean p1, p0, Lcom/android/settings/ZonePicker;->mSortedByTimezone:Z

    .line 214
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/settings/ZonePicker;->getTimeZoneIndex(Landroid/widget/SimpleAdapter;Ljava/util/TimeZone;)I

    move-result v1

    .line 216
    .local v1, defaultIndex:I
    invoke-virtual {p0}, Lcom/android/settings/ZonePicker;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "ishomecity"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "homecity_timezone"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, mHomeCity:Ljava/lang/String;
    if-eqz v2, :cond_35

    .line 219
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/settings/ZonePicker;->getTimeZoneIndex(Landroid/widget/SimpleAdapter;Ljava/util/TimeZone;)I

    move-result v1

    .line 222
    .end local v2           #mHomeCity:Ljava/lang/String;
    :cond_35
    if-ltz v1, :cond_3a

    .line 223
    invoke-virtual {p0, v1}, Lcom/android/settings/ZonePicker;->setSelection(I)V

    .line 225
    :cond_3a
    return-void

    .line 210
    .end local v0           #adapter:Landroid/widget/SimpleAdapter;
    .end local v1           #defaultIndex:I
    :cond_3b
    iget-object v0, p0, Lcom/android/settings/ZonePicker;->mAlphabeticalAdapter:Landroid/widget/SimpleAdapter;

    goto :goto_4
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanseState"

    .prologue
    const/4 v2, 0x1

    .line 157
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 160
    .local v0, activity:Landroid/app/Activity;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/ZonePicker;->constructTimezoneAdapter(Landroid/content/Context;Z)Landroid/widget/SimpleAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ZonePicker;->mTimezoneSortedAdapter:Landroid/widget/SimpleAdapter;

    .line 161
    invoke-static {v0, v2}, Lcom/android/settings/ZonePicker;->constructTimezoneAdapter(Landroid/content/Context;Z)Landroid/widget/SimpleAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ZonePicker;->mAlphabeticalAdapter:Landroid/widget/SimpleAdapter;

    .line 164
    invoke-direct {p0, v2}, Lcom/android/settings/ZonePicker;->setSorting(Z)V

    .line 165
    invoke-virtual {p0, v2}, Lcom/android/settings/ZonePicker;->setHasOptionsMenu(Z)V

    .line 166
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 6
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 170
    const/4 v0, 0x1

    const v1, 0x7f090148

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02012e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 172
    const/4 v0, 0x2

    const v1, 0x7f090149

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02011a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 174
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 175
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 15
    .parameter "listView"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 314
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 315
    .local v4, map:Ljava/util/Map;,"Ljava/util/Map<**>;"
    const-string v7, "id"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 318
    .local v6, tzId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 319
    .local v0, activity:Landroid/app/Activity;
    const-string v7, "alarm"

    invoke-virtual {v0, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 322
    .local v1, alarm:Landroid/app/AlarmManager;
    invoke-virtual {p0}, Lcom/android/settings/ZonePicker;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 324
    .local v2, arguments:Landroid/os/Bundle;
    const-string v7, "ishomecity"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 326
    .local v3, ishomecity:Z
    if-eqz v3, :cond_3b

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "homecity_timezone"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->onBackPressed()V

    .line 348
    :goto_3a
    return-void

    .line 336
    :cond_3b
    invoke-direct {p0}, Lcom/android/settings/ZonePicker;->getAutoState()Z

    move-result v7

    if-eqz v7, :cond_49

    .line 337
    invoke-virtual {p0}, Lcom/android/settings/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_3a

    .line 341
    :cond_49
    invoke-virtual {v1, v6}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 342
    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 343
    .local v5, tz:Ljava/util/TimeZone;
    iget-object v7, p0, Lcom/android/settings/ZonePicker;->mListener:Lcom/android/settings/ZonePicker$ZoneSelectionListener;

    if-eqz v7, :cond_5a

    .line 344
    iget-object v7, p0, Lcom/android/settings/ZonePicker;->mListener:Lcom/android/settings/ZonePicker$ZoneSelectionListener;

    invoke-interface {v7, v5}, Lcom/android/settings/ZonePicker$ZoneSelectionListener;->onZoneSelected(Ljava/util/TimeZone;)V

    goto :goto_3a

    .line 346
    :cond_5a
    invoke-virtual {p0}, Lcom/android/settings/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_3a
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 190
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_14

    move v0, v1

    .line 201
    :goto_a
    return v0

    .line 193
    :pswitch_b
    invoke-direct {p0, v0}, Lcom/android/settings/ZonePicker;->setSorting(Z)V

    goto :goto_a

    .line 197
    :pswitch_f
    invoke-direct {p0, v1}, Lcom/android/settings/ZonePicker;->setSorting(Z)V

    goto :goto_a

    .line 190
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_f
        :pswitch_b
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 179
    iget-boolean v0, p0, Lcom/android/settings/ZonePicker;->mSortedByTimezone:Z

    if-eqz v0, :cond_16

    .line 180
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 181
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 186
    :goto_15
    return-void

    .line 183
    :cond_16
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 184
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_15
.end method
