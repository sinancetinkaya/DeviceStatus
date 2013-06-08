.class public Lcom/wssyncmldm/adapter/XDMCSCXMLHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XDMCSCXMLHandler.java"


# instance fields
.field private m_bInFotaSetting:Z

.field private m_szFotaSetting:Ljava/lang/String;

.field private m_szFotaSettingData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 7
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wssyncmldm/adapter/XDMCSCXMLHandler;->m_bInFotaSetting:Z

    .line 10
    const-string v0, "FOTA_Bearer_Setting"

    iput-object v0, p0, Lcom/wssyncmldm/adapter/XDMCSCXMLHandler;->m_szFotaSetting:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/adapter/XDMCSCXMLHandler;->m_szFotaSettingData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 6
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/wssyncmldm/adapter/XDMCSCXMLHandler;->m_bInFotaSetting:Z

    if-eqz v0, :cond_1e

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/wssyncmldm/adapter/XDMCSCXMLHandler;->m_szFotaSettingData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wssyncmldm/adapter/XDMCSCXMLHandler;->m_szFotaSettingData:Ljava/lang/String;

    .line 38
    :cond_1e
    return-void
.end method

.method public endDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    .line 52
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "szNamespaceURL"
    .parameter "szLocalName"
    .parameter "szQName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wssyncmldm/adapter/XDMCSCXMLHandler;->m_szFotaSetting:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wssyncmldm/adapter/XDMCSCXMLHandler;->m_bInFotaSetting:Z

    .line 29
    :cond_b
    return-void
.end method

.method public startDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 45
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 6
    .parameter "szNamespacesURI"
    .parameter "szLocalName"
    .parameter "szQName"
    .parameter "atts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lcom/wssyncmldm/adapter/XDMCSCXMLHandler;->m_szFotaSetting:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wssyncmldm/adapter/XDMCSCXMLHandler;->m_bInFotaSetting:Z

    .line 20
    :cond_b
    return-void
.end method

.method public xdmGetFotaSettingData()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/wssyncmldm/adapter/XDMCSCXMLHandler;->m_szFotaSettingData:Ljava/lang/String;

    return-object v0
.end method
