.class Lcom/sec/factory/modules/SensorReadFile$Info;
.super Ljava/lang/Object;
.source "SensorReadFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/modules/SensorReadFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Info"
.end annotation


# instance fields
.field public mBuffer_SensorValue:[Ljava/lang/String;

.field public mFilePath:Ljava/lang/String;

.field public mIsExistFile:Z

.field public mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/factory/modules/SensorReadFile;


# direct methods
.method public constructor <init>(Lcom/sec/factory/modules/SensorReadFile;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter "name"
    .parameter "filePath"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/sec/factory/modules/SensorReadFile$Info;->this$0:Lcom/sec/factory/modules/SensorReadFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/sec/factory/modules/SensorReadFile$Info;->mName:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/sec/factory/modules/SensorReadFile$Info;->mFilePath:Ljava/lang/String;

    .line 25
    invoke-static {p3}, Lcom/sec/factory/support/Support$Kernel;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->isExistFile(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/modules/SensorReadFile$Info;->mIsExistFile:Z

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/factory/modules/SensorReadFile$Info;->mBuffer_SensorValue:[Ljava/lang/String;

    .line 27
    return-void
.end method
