.class final Lcom/google/common/collect/SingletonImmutableSet;
.super Lcom/google/common/collect/ImmutableSet;
.source "SingletonImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private transient cachedHashCode:I

.field final transient element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, this:Lcom/google/common/collect/SingletonImmutableSet;,"Lcom/google/common/collect/SingletonImmutableSet<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 47
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    .line 48
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;I)V
    .registers 3
    .parameter
    .parameter "hashCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, this:Lcom/google/common/collect/SingletonImmutableSet;,"Lcom/google/common/collect/SingletonImmutableSet<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    .line 53
    iput p2, p0, Lcom/google/common/collect/SingletonImmutableSet;->cachedHashCode:I

    .line 54
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter "target"

    .prologue
    .line 66
    .local p0, this:Lcom/google/common/collect/SingletonImmutableSet;,"Lcom/google/common/collect/SingletonImmutableSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "object"

    .prologue
    .local p0, this:Lcom/google/common/collect/SingletonImmutableSet;,"Lcom/google/common/collect/SingletonImmutableSet<TE;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 94
    if-ne p1, p0, :cond_5

    .line 101
    :cond_4
    :goto_4
    return v1

    .line 97
    :cond_5
    instance-of v3, p1, Ljava/util/Set;

    if-eqz v3, :cond_24

    move-object v0, p1

    .line 98
    check-cast v0, Ljava/util/Set;

    .line 99
    .local v0, that:Ljava/util/Set;,"Ljava/util/Set<*>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v3, v1, :cond_22

    iget-object v3, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_22
    move v1, v2

    goto :goto_4

    .end local v0           #that:Ljava/util/Set;,"Ljava/util/Set<*>;"
    :cond_24
    move v1, v2

    .line 101
    goto :goto_4
.end method

.method public final hashCode()I
    .registers 3

    .prologue
    .line 106
    .local p0, this:Lcom/google/common/collect/SingletonImmutableSet;,"Lcom/google/common/collect/SingletonImmutableSet<TE;>;"
    iget v0, p0, Lcom/google/common/collect/SingletonImmutableSet;->cachedHashCode:I

    .line 107
    .local v0, code:I
    if-nez v0, :cond_c

    .line 108
    iget-object v1, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/SingletonImmutableSet;->cachedHashCode:I

    .line 110
    :cond_c
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 62
    .local p0, this:Lcom/google/common/collect/SingletonImmutableSet;,"Lcom/google/common/collect/SingletonImmutableSet<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method isHashCodeFast()Z
    .registers 2

    .prologue
    .line 114
    .local p0, this:Lcom/google/common/collect/SingletonImmutableSet;,"Lcom/google/common/collect/SingletonImmutableSet<TE;>;"
    iget v0, p0, Lcom/google/common/collect/SingletonImmutableSet;->cachedHashCode:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, this:Lcom/google/common/collect/SingletonImmutableSet;,"Lcom/google/common/collect/SingletonImmutableSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->singletonIterator(Ljava/lang/Object;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 32
    .local p0, this:Lcom/google/common/collect/SingletonImmutableSet;,"Lcom/google/common/collect/SingletonImmutableSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/SingletonImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 58
    .local p0, this:Lcom/google/common/collect/SingletonImmutableSet;,"Lcom/google/common/collect/SingletonImmutableSet<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 4

    .prologue
    .line 78
    .local p0, this:Lcom/google/common/collect/SingletonImmutableSet;,"Lcom/google/common/collect/SingletonImmutableSet<TE;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/SingletonImmutableSet;,"Lcom/google/common/collect/SingletonImmutableSet<TE;>;"
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    const/4 v2, 0x1

    .line 82
    array-length v1, p1

    if-nez v1, :cond_f

    .line 83
    invoke-static {p1, v2}, Lcom/google/common/collect/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 88
    :cond_8
    :goto_8
    move-object v0, p1

    .line 89
    .local v0, objectArray:[Ljava/lang/Object;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    aput-object v2, v0, v1

    .line 90
    return-object p1

    .line 84
    .end local v0           #objectArray:[Ljava/lang/Object;
    :cond_f
    array-length v1, p1

    if-le v1, v2, :cond_8

    .line 85
    const/4 v1, 0x0

    aput-object v1, p1, v2

    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 118
    .local p0, this:Lcom/google/common/collect/SingletonImmutableSet;,"Lcom/google/common/collect/SingletonImmutableSet<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, elementToString:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
