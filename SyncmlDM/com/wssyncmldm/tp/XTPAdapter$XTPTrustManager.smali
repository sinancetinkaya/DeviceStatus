.class Lcom/wssyncmldm/tp/XTPAdapter$XTPTrustManager;
.super Ljava/lang/Object;
.source "XTPAdapter.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssyncmldm/tp/XTPAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "XTPTrustManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wssyncmldm/tp/XTPAdapter;

.field private trustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method constructor <init>(Lcom/wssyncmldm/tp/XTPAdapter;Ljava/security/KeyStore;)V
    .registers 7
    .parameter
    .parameter "localTrustStore"

    .prologue
    .line 2337
    iput-object p1, p0, Lcom/wssyncmldm/tp/XTPAdapter$XTPTrustManager;->this$0:Lcom/wssyncmldm/tp/XTPAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2340
    :try_start_5
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 2341
    .local v1, tmf:Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v1, p2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 2342
    invoke-direct {p0, v1}, Lcom/wssyncmldm/tp/XTPAdapter$XTPTrustManager;->getX509TrustManager(Ljavax/net/ssl/TrustManagerFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    iput-object v2, p0, Lcom/wssyncmldm/tp/XTPAdapter$XTPTrustManager;->trustManager:Ljavax/net/ssl/X509TrustManager;

    .line 2344
    iget-object v2, p0, Lcom/wssyncmldm/tp/XTPAdapter$XTPTrustManager;->trustManager:Ljavax/net/ssl/X509TrustManager;

    if-nez v2, :cond_2e

    .line 2346
    const-string v2, "X509TrustManager is null"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 2347
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "X509TrustManager is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_27
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_27} :catch_27

    .line 2350
    .end local v1           #tmf:Ljavax/net/ssl/TrustManagerFactory;
    :catch_27
    move-exception v0

    .line 2352
    .local v0, e:Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2354
    .end local v0           #e:Ljava/security/GeneralSecurityException;
    .restart local v1       #tmf:Ljavax/net/ssl/TrustManagerFactory;
    :cond_2e
    return-void
.end method

.method private getX509TrustManager(Ljavax/net/ssl/TrustManagerFactory;)Ljavax/net/ssl/X509TrustManager;
    .registers 5
    .parameter "tmf"

    .prologue
    .line 2373
    invoke-virtual {p1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    .line 2374
    .local v1, tms:[Ljavax/net/ssl/TrustManager;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    array-length v2, v1

    if-ge v0, v2, :cond_16

    .line 2376
    aget-object v2, v1, v0

    instance-of v2, v2, Ljavax/net/ssl/X509TrustManager;

    if-eqz v2, :cond_13

    .line 2378
    aget-object v2, v1, v0

    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    .line 2381
    :goto_12
    return-object v2

    .line 2374
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2381
    :cond_16
    const/4 v2, 0x0

    goto :goto_12
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 4
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 2358
    iget-object v0, p0, Lcom/wssyncmldm/tp/XTPAdapter$XTPTrustManager;->trustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 2359
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 4
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 2363
    iget-object v0, p0, Lcom/wssyncmldm/tp/XTPAdapter$XTPTrustManager;->trustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 2364
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 2

    .prologue
    .line 2368
    iget-object v0, p0, Lcom/wssyncmldm/tp/XTPAdapter$XTPTrustManager;->trustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
