.class public Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;
.super Ljava/lang/Object;
.source "UIKeyBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UIKeyBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TouchKeyItemSet"
.end annotation


# instance fields
.field private mTouchKeyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/factory/app/ui/UIKeyBase;


# direct methods
.method protected constructor <init>(Lcom/sec/factory/app/ui/UIKeyBase;)V
    .registers 3
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->this$0:Lcom/sec/factory/app/ui/UIKeyBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->mTouchKeyMap:Ljava/util/HashMap;

    .line 204
    return-void
.end method


# virtual methods
.method protected get(I)Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;
    .registers 4
    .parameter "keyCode"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->mTouchKeyMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    return-object v0
.end method

.method protected put(ILcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;)V
    .registers 5
    .parameter "keyCode"
    .parameter "tkItem"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItemSet;->mTouchKeyMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    return-void
.end method
