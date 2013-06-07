.class public Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "InputMethodAndSubtypeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mHaveHardKeyboard:Z

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInputMethodId:Ljava/lang/String;

.field private mInputMethodProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubtypeAutoSelectionCBMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemLocale:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const-class v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mDialog:Landroid/app/AlertDialog;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mSubtypeAutoSelectionCBMap:Ljava/util/HashMap;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mSystemLocale:Ljava/lang/String;

    .line 370
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private clearImplicitlyEnabledSubtypes(Ljava/lang/String;)V
    .registers 3
    .parameter "targetImiId"

    .prologue
    .line 329
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->updateImplicitlyEnabledSubtypes(Ljava/lang/String;Z)V

    .line 330
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .registers 25

    .prologue
    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v17

    .line 217
    .local v17, root:Landroid/preference/PreferenceScreen;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 219
    .local v8, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    move-object/from16 v22, v0

    if-nez v22, :cond_39

    const/4 v3, 0x0

    .line 221
    .local v3, N:I
    :goto_19
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1a
    if-ge v9, v3, :cond_163

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodInfo;

    .line 223
    .local v10, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v19

    .line 224
    .local v19, subtypeCount:I
    const/16 v22, 0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-gt v0, v1, :cond_44

    .line 221
    :cond_36
    :goto_36
    add-int/lit8 v9, v9, 0x1

    goto :goto_1a

    .line 219
    .end local v3           #N:I
    .end local v9           #i:I
    .end local v10           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v19           #subtypeCount:I
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_19

    .line 225
    .restart local v3       #N:I
    .restart local v9       #i:I
    .restart local v10       #imi:Landroid/view/inputmethod/InputMethodInfo;
    .restart local v19       #subtypeCount:I
    :cond_44
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v11

    .line 228
    .local v11, imiId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodId:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_62

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_36

    .line 231
    :cond_62
    new-instance v14, Landroid/preference/PreferenceCategory;

    invoke-direct {v14, v8}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 232
    .local v14, keyboardSettingsCategory:Landroid/preference/PreferenceCategory;
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 234
    .local v16, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    .line 236
    .local v15, label:Ljava/lang/CharSequence;
    invoke-virtual {v14, v15}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 237
    invoke-virtual {v14, v11}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 239
    new-instance v5, Landroid/preference/CheckBoxPreference;

    invoke-direct {v5, v8}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 240
    .local v5, autoCB:Landroid/preference/CheckBoxPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mSubtypeAutoSelectionCBMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-virtual {v14, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 243
    new-instance v4, Landroid/preference/PreferenceCategory;

    invoke-direct {v4, v8}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 244
    .local v4, activeInputMethodsCategory:Landroid/preference/PreferenceCategory;
    const v22, 0x7f090654

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 245
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 247
    const/4 v12, 0x0

    .line 248
    .local v12, isAutoSubtype:Z
    const/4 v6, 0x0

    .line 249
    .local v6, autoSubtypeLabel:Ljava/lang/CharSequence;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .local v21, subtypePreferences:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    if-lez v19, :cond_13c

    .line 251
    const/4 v13, 0x0

    .local v13, j:I
    :goto_ab
    move/from16 v0, v19

    if-ge v13, v0, :cond_113

    .line 252
    invoke-virtual {v10, v13}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v18

    .line 253
    .local v18, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v8, v1, v2}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v20

    .line 255
    .local v20, subtypeLabel:Ljava/lang/CharSequence;
    invoke-virtual/range {v18 .. v18}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v22

    if-eqz v22, :cond_d9

    .line 256
    if-nez v12, :cond_d6

    .line 257
    const/4 v12, 0x1

    .line 258
    move-object/from16 v6, v20

    .line 251
    :cond_d6
    :goto_d6
    add-int/lit8 v13, v13, 0x1

    goto :goto_ab

    .line 261
    :cond_d9
    new-instance v7, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;

    invoke-virtual/range {v18 .. v18}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mSystemLocale:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v7, v8, v0, v1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .local v7, chkbxPref:Landroid/preference/CheckBoxPreference;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v18 .. v18}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 264
    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 265
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d6

    .line 268
    .end local v7           #chkbxPref:Landroid/preference/CheckBoxPreference;
    .end local v18           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v20           #subtypeLabel:Ljava/lang/CharSequence;
    :cond_113
    invoke-static/range {v21 .. v21}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 269
    const/4 v13, 0x0

    :goto_117
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v13, v0, :cond_12f

    .line 270
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/preference/Preference;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 269
    add-int/lit8 v13, v13, 0x1

    goto :goto_117

    .line 272
    :cond_12f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .end local v13           #j:I
    :cond_13c
    if-eqz v12, :cond_159

    .line 275
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_154

    .line 276
    sget-object v22, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->TAG:Ljava/lang/String;

    const-string v23, "Title for auto subtype is empty."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string v22, "---"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_36

    .line 279
    :cond_154
    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_36

    .line 282
    :cond_159
    const v22, 0x7f090655

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    goto/16 :goto_36

    .line 285
    .end local v4           #activeInputMethodsCategory:Landroid/preference/PreferenceCategory;
    .end local v5           #autoCB:Landroid/preference/CheckBoxPreference;
    .end local v6           #autoSubtypeLabel:Ljava/lang/CharSequence;
    .end local v10           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v11           #imiId:Ljava/lang/String;
    .end local v12           #isAutoSubtype:Z
    .end local v14           #keyboardSettingsCategory:Landroid/preference/PreferenceCategory;
    .end local v15           #label:Ljava/lang/CharSequence;
    .end local v16           #pm:Landroid/content/pm/PackageManager;
    .end local v19           #subtypeCount:I
    .end local v21           #subtypePreferences:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    :cond_163
    return-object v17
.end method

.method private isNoSubtypesExplicitlySelected(Ljava/lang/String;)Z
    .registers 7
    .parameter "imiId"

    .prologue
    .line 289
    const/4 v0, 0x1

    .line 290
    .local v0, allSubtypesOff:Z
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 291
    .local v3, subtypePrefs:Ljava/util/List;,"Ljava/util/List<Landroid/preference/Preference;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 292
    .local v2, subtypePref:Landroid/preference/Preference;
    instance-of v4, v2, Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_d

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .end local v2           #subtypePref:Landroid/preference/Preference;
    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 294
    const/4 v0, 0x0

    .line 298
    :cond_26
    return v0
.end method

.method private onCreateIMM()V
    .registers 3

    .prologue
    .line 207
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 211
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    .line 212
    return-void
.end method

.method private setCheckedImplicitlyEnabledSubtypes(Ljava/lang/String;)V
    .registers 3
    .parameter "targetImiId"

    .prologue
    .line 325
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->updateImplicitlyEnabledSubtypes(Ljava/lang/String;Z)V

    .line 326
    return-void
.end method

.method private setSubtypeAutoSelectionEnabled(Ljava/lang/String;Z)V
    .registers 10
    .parameter "imiId"
    .parameter "autoSelectionEnabled"

    .prologue
    const/4 v5, 0x0

    .line 302
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mSubtypeAutoSelectionCBMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 303
    .local v0, autoSelectionCB:Landroid/preference/CheckBoxPreference;
    if-nez v0, :cond_c

    .line 322
    :cond_b
    :goto_b
    return-void

    .line 304
    :cond_c
    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 305
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 306
    .local v3, subtypePrefs:Ljava/util/List;,"Ljava/util/List<Landroid/preference/Preference;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 307
    .local v2, subtypePref:Landroid/preference/Preference;
    instance-of v4, v2, Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_1b

    .line 311
    if-nez p2, :cond_39

    const/4 v4, 0x1

    :goto_2e
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 312
    if-eqz p2, :cond_1b

    .line 313
    check-cast v2, Landroid/preference/CheckBoxPreference;

    .end local v2           #subtypePref:Landroid/preference/Preference;
    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1b

    .restart local v2       #subtypePref:Landroid/preference/Preference;
    :cond_39
    move v4, v5

    .line 311
    goto :goto_2e

    .line 317
    .end local v2           #subtypePref:Landroid/preference/Preference;
    :cond_3b
    if-eqz p2, :cond_b

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    iget-boolean v6, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mHaveHardKeyboard:Z

    invoke-static {p0, v4, v5, v6}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 320
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->setCheckedImplicitlyEnabledSubtypes(Ljava/lang/String;)V

    goto :goto_b
.end method

.method private updateAutoSelectionCB()V
    .registers 4

    .prologue
    .line 364
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 365
    .local v1, imiId:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->isNoSubtypesExplicitlySelected(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->setSubtypeAutoSelectionEnabled(Ljava/lang/String;Z)V

    goto :goto_a

    .line 367
    .end local v1           #imiId:Ljava/lang/String;
    :cond_1e
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->setCheckedImplicitlyEnabledSubtypes(Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method private updateImplicitlyEnabledSubtypes(Ljava/lang/String;Z)V
    .registers 17
    .parameter "targetImiId"
    .parameter "check"

    .prologue
    .line 334
    iget-object v12, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_92

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 335
    .local v5, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    .line 336
    .local v6, imiId:Ljava/lang/String;
    if-eqz p1, :cond_1e

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 337
    :cond_1e
    iget-object v12, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mSubtypeAutoSelectionCBMap:Ljava/util/HashMap;

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 340
    .local v0, autoCB:Landroid/preference/CheckBoxPreference;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 341
    iget-object v12, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 342
    .local v11, subtypePrefs:Ljava/util/List;,"Ljava/util/List<Landroid/preference/Preference;>;"
    iget-object v12, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v13, 0x1

    invoke-virtual {v12, v5, v13}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 344
    .local v8, implicitlyEnabledSubtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz v11, :cond_6

    if-eqz v8, :cond_6

    .line 345
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_45
    :goto_45
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/preference/Preference;

    .line 346
    .local v10, subtypePref:Landroid/preference/Preference;
    instance-of v12, v10, Landroid/preference/CheckBoxPreference;

    if-eqz v12, :cond_45

    move-object v1, v10

    .line 347
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 348
    .local v1, cb:Landroid/preference/CheckBoxPreference;
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 349
    if-eqz p2, :cond_45

    .line 350
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_62
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_45

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    .line 351
    .local v9, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 352
    .local v7, implicitlyEnabledSubtypePrefKey:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_62

    .line 353
    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_45

    .line 361
    .end local v0           #autoCB:Landroid/preference/CheckBoxPreference;
    .end local v1           #cb:Landroid/preference/CheckBoxPreference;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v6           #imiId:Ljava/lang/String;
    .end local v7           #implicitlyEnabledSubtypePrefKey:Ljava/lang/String;
    .end local v8           #implicitlyEnabledSubtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v9           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v10           #subtypePref:Landroid/preference/Preference;
    .end local v11           #subtypePrefs:Ljava/util/List;,"Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_92
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 95
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 98
    :cond_14
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "icicle"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const-string v4, "input_method"

    invoke-virtual {p0, v4}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    iput-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 63
    .local v1, config:Landroid/content/res/Configuration;
    iget v4, v1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_74

    const/4 v4, 0x1

    :goto_1b
    iput-boolean v4, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mHaveHardKeyboard:Z

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 70
    .local v0, arguments:Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "input_method_id"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodId:Ljava/lang/String;

    .line 72
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodId:Ljava/lang/String;

    if-nez v4, :cond_41

    if-eqz v0, :cond_41

    .line 73
    const-string v4, "input_method_id"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, inputMethodId:Ljava/lang/String;
    if-eqz v2, :cond_41

    .line 76
    iput-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodId:Ljava/lang/String;

    .line 79
    .end local v2           #inputMethodId:Ljava/lang/String;
    :cond_41
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.extra.TITLE"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mTitle:Ljava/lang/String;

    .line 80
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mTitle:Ljava/lang/String;

    if-nez v4, :cond_61

    if-eqz v0, :cond_61

    .line 81
    const-string v4, "android.intent.extra.TITLE"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, title:Ljava/lang/String;
    if-eqz v3, :cond_61

    .line 83
    iput-object v3, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mTitle:Ljava/lang/String;

    .line 87
    .end local v3           #title:Ljava/lang/String;
    :cond_61
    iget-object v4, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mSystemLocale:Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->onCreateIMM()V

    .line 89
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 90
    return-void

    .line 63
    .end local v0           #arguments:Landroid/os/Bundle;
    :cond_74
    const/4 v4, 0x0

    goto :goto_1b
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 199
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 200
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_f

    .line 201
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mDialog:Landroid/app/AlertDialog;

    .line 204
    :cond_f
    return-void
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 110
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->clearImplicitlyEnabledSubtypes(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    iget-boolean v2, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mHaveHardKeyboard:Z

    invoke-static {p0, v0, v1, v2}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 115
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 19
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 121
    move-object/from16 v0, p2

    instance-of v9, v0, Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_fa

    move-object/from16 v2, p2

    .line 122
    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 124
    .local v2, chkPref:Landroid/preference/CheckBoxPreference;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mSubtypeAutoSelectionCBMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 125
    .local v7, imiId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mSubtypeAutoSelectionCBMap:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v2, :cond_16

    .line 129
    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v9}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->setSubtypeAutoSelectionEnabled(Ljava/lang/String;Z)V

    .line 130
    invoke-super/range {p0 .. p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v9

    .line 194
    .end local v2           #chkPref:Landroid/preference/CheckBoxPreference;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #imiId:Ljava/lang/String;
    :goto_39
    return v9

    .line 134
    .restart local v2       #chkPref:Landroid/preference/CheckBoxPreference;
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_3a
    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, id:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_112

    .line 136
    const/4 v8, 0x0

    .line 137
    .local v8, selImi:Landroid/view/inputmethod/InputMethodInfo;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    .line 138
    .local v1, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_4e
    if-ge v3, v1, :cond_7d

    .line 139
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    .line 140
    .local v6, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7a

    .line 141
    move-object v8, v6

    .line 142
    invoke-static {v6}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v9

    if-eqz v9, :cond_7d

    .line 143
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v9, v5, v10}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->setSubtypesPreferenceEnabled(Lcom/android/settings/SettingsPreferenceFragment;Ljava/util/List;Ljava/lang/String;Z)V

    .line 146
    invoke-super/range {p0 .. p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v9

    goto :goto_39

    .line 138
    :cond_7a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    .line 151
    .end local v6           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_7d
    if-nez v8, :cond_84

    .line 152
    invoke-super/range {p0 .. p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v9

    goto :goto_39

    .line 154
    :cond_84
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 155
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mDialog:Landroid/app/AlertDialog;

    if-nez v9, :cond_100

    .line 156
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x1040014

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x1010355

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x104000a

    new-instance v11, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$2;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v2, v5}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$2;-><init>(Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const/high16 v10, 0x104

    new-instance v11, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$1;-><init>(Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mDialog:Landroid/app/AlertDialog;

    .line 184
    :cond_cd
    :goto_cd
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090619

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v14

    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 194
    .end local v1           #N:I
    .end local v2           #chkPref:Landroid/preference/CheckBoxPreference;
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #id:Ljava/lang/String;
    .end local v8           #selImi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_fa
    :goto_fa
    invoke-super/range {p0 .. p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v9

    goto/16 :goto_39

    .line 180
    .restart local v1       #N:I
    .restart local v2       #chkPref:Landroid/preference/CheckBoxPreference;
    .restart local v3       #i:I
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #id:Ljava/lang/String;
    .restart local v8       #selImi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_100
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_cd

    .line 181
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_cd

    .line 189
    .end local v1           #N:I
    .end local v3           #i:I
    .end local v8           #selImi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_112
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v9, v5, v10}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->setSubtypesPreferenceEnabled(Lcom/android/settings/SettingsPreferenceFragment;Ljava/util/List;Ljava/lang/String;Z)V

    .line 191
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->updateAutoSelectionCB()V

    goto :goto_fa
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 102
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-static {p0, v0, v1, v2}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->loadInputMethodSubtypeList(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/Map;)V

    .line 105
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->updateAutoSelectionCB()V

    .line 106
    return-void
.end method
