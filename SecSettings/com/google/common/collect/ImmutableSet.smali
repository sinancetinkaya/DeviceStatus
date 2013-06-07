.class public abstract Lcom/google/common/collect/ImmutableSet;
.super Lcom/google/common/collect/ImmutableCollection;
.source "ImmutableSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableSet$SerializedForm;,
        Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;,
        Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableCollection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 349
    .local p0, this:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    return-void
.end method

.method static chooseTableSize(I)I
    .registers 4
    .parameter "setSize"

    .prologue
    const/high16 v1, 0x4000

    .line 223
    const/high16 v0, 0x2000

    if-ge p0, v0, :cond_d

    .line 224
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    .line 229
    :goto_c
    return v0

    .line 228
    :cond_d
    if-ge p0, v1, :cond_17

    const/4 v0, 0x1

    :goto_10
    const-string v2, "collection too large"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    move v0, v1

    .line 229
    goto :goto_c

    .line 228
    :cond_17
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private static varargs construct([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .registers 20
    .parameter "elements"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 161
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/google/common/collect/ImmutableSet;->chooseTableSize(I)I

    move-result v13

    .line 162
    .local v13, tableSize:I
    new-array v12, v13, [Ljava/lang/Object;

    .line 163
    .local v12, table:[Ljava/lang/Object;
    add-int/lit8 v10, v13, -0x1

    .line 164
    .local v10, mask:I
    const/4 v15, 0x0

    .line 165
    .local v15, uniqueElementsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .line 166
    .local v5, hashCode:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_10
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_58

    .line 167
    aget-object v2, p0, v6

    .line 168
    .local v2, element:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    .line 169
    .local v4, hash:I
    invoke-static {v4}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v8

    .line 170
    .local v8, j:I
    :goto_23
    and-int v7, v8, v10

    .line 171
    .local v7, index:I
    aget-object v16, v12, v7

    .line 172
    .local v16, value:Ljava/lang/Object;
    if-nez v16, :cond_34

    .line 173
    if-eqz v15, :cond_2e

    .line 174
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_2e
    aput-object v2, v12, v7

    .line 178
    add-int/2addr v5, v4

    .line 166
    :cond_31
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 180
    :cond_34
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_55

    .line 181
    if-nez v15, :cond_31

    .line 183
    new-instance v15, Ljava/util/ArrayList;

    .end local v15           #uniqueElementsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 184
    .restart local v15       #uniqueElementsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v9, 0x0

    .local v9, k:I
    :goto_4b
    if-ge v9, v6, :cond_31

    .line 185
    aget-object v11, p0, v9

    .line 186
    .local v11, previous:Ljava/lang/Object;
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v9, v9, 0x1

    goto :goto_4b

    .line 169
    .end local v9           #k:I
    .end local v11           #previous:Ljava/lang/Object;
    :cond_55
    add-int/lit8 v8, v8, 0x1

    goto :goto_23

    .line 193
    .end local v2           #element:Ljava/lang/Object;
    .end local v4           #hash:I
    .end local v7           #index:I
    .end local v8           #j:I
    .end local v16           #value:Ljava/lang/Object;
    :cond_58
    if-nez v15, :cond_73

    move-object/from16 v14, p0

    .line 196
    .local v14, uniqueElements:[Ljava/lang/Object;
    :goto_5c
    array-length v0, v14

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_78

    .line 199
    const/16 v17, 0x0

    aget-object v3, v14, v17

    .line 200
    .local v3, element:Ljava/lang/Object;,"TE;"
    new-instance v17, Lcom/google/common/collect/SingletonImmutableSet;

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v5}, Lcom/google/common/collect/SingletonImmutableSet;-><init>(Ljava/lang/Object;I)V

    .line 206
    .end local v3           #element:Ljava/lang/Object;,"TE;"
    :goto_72
    return-object v17

    .line 193
    .end local v14           #uniqueElements:[Ljava/lang/Object;
    :cond_73
    invoke-virtual {v15}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v14

    goto :goto_5c

    .line 201
    .restart local v14       #uniqueElements:[Ljava/lang/Object;
    :cond_78
    array-length v0, v14

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/google/common/collect/ImmutableSet;->chooseTableSize(I)I

    move-result v17

    mul-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    if-le v13, v0, :cond_8a

    .line 204
    invoke-static {v14}, Lcom/google/common/collect/ImmutableSet;->construct([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v17

    goto :goto_72

    .line 206
    :cond_8a
    new-instance v17, Lcom/google/common/collect/RegularImmutableSet;

    move-object/from16 v0, v17

    invoke-direct {v0, v14, v5, v12, v10}, Lcom/google/common/collect/RegularImmutableSet;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V

    goto :goto_72
.end method

.method public static copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, elements:[Ljava/lang/Object;,"[TE;"
    array-length v0, p0

    packed-switch v0, :pswitch_data_1c

    .line 249
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->construct([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    :goto_e
    return-object v0

    .line 245
    :pswitch_f
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_e

    .line 247
    :pswitch_14
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_e

    .line 243
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_f
        :pswitch_14
    .end packed-switch
.end method

.method public static of()Lcom/google/common/collect/ImmutableSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 78
    sget-object v0, Lcom/google/common/collect/EmptyImmutableSet;->INSTANCE:Lcom/google/common/collect/EmptyImmutableSet;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, element:Ljava/lang/Object;,"TE;"
    new-instance v0, Lcom/google/common/collect/SingletonImmutableSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/SingletonImmutableSet;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "object"

    .prologue
    .line 357
    .local p0, this:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<TE;>;"
    if-ne p1, p0, :cond_4

    .line 358
    const/4 v0, 0x1

    .line 366
    :goto_3
    return v0

    .line 360
    :cond_4
    instance-of v0, p1, Lcom/google/common/collect/ImmutableSet;

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->isHashCodeFast()Z

    move-result v0

    if-eqz v0, :cond_23

    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->isHashCodeFast()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_23

    .line 364
    const/4 v0, 0x0

    goto :goto_3

    .line 366
    :cond_23
    invoke-static {p0, p1}, Lcom/google/common/collect/Sets;->equalsImpl(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 370
    .local p0, this:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<TE;>;"
    invoke-static {p0}, Lcom/google/common/collect/Sets;->hashCodeImpl(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method isHashCodeFast()Z
    .registers 2

    .prologue
    .line 353
    .local p0, this:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public abstract iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 66
    .local p0, this:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 524
    .local p0, this:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<TE;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableSet$SerializedForm;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableSet$SerializedForm;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
