.class public Lcom/sec/android/app/camera/Feature;
.super Lcom/sec/android/app/camera/CommonFeature;
.source "Feature.java"


# static fields
.field public static final TEST_RESOLUTION:[[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 63
    const/4 v0, 0x1

    new-array v0, v0, [[I

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/Feature;->TEST_RESOLUTION:[[I

    return-void

    nop

    :array_10
    .array-data 0x4
        0x0t 0x5t 0x0t 0x0t
        0xd0t 0x2t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonFeature;-><init>()V

    return-void
.end method
