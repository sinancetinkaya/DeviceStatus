.class Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
.super Landroid/graphics/Region;
.source "UISpenHoveringDrawTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyRect"
.end annotation


# instance fields
.field click:Z

.field final synthetic this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

.field x1:I

.field x2:I

.field y1:I

.field y2:I


# direct methods
.method private constructor <init>(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)V
    .registers 2
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    invoke-direct {p0}, Landroid/graphics/Region;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;-><init>(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)V

    return-void
.end method
