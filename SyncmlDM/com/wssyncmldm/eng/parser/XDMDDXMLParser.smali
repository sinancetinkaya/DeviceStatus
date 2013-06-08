.class public Lcom/wssyncmldm/eng/parser/XDMDDXMLParser;
.super Ljava/lang/Object;
.source "XDMDDXMLParser.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XDMDefInterface;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public xdmDDXMLParserDownloadDescriptor([B)Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;
    .registers 11
    .parameter "pDump"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    const-string v8, ""

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 24
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v6

    .line 25
    .local v6, spf:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v5

    .line 26
    .local v5, sp:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v7

    .line 28
    .local v7, xr:Lorg/xml/sax/XMLReader;
    new-instance v1, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;

    invoke-direct {v1}, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;-><init>()V

    .line 29
    .local v1, mDDXMLHandler:Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;
    invoke-interface {v7, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 31
    if-eqz p1, :cond_1e

    array-length v8, p1

    if-nez v8, :cond_20

    .line 32
    :cond_1e
    const/4 v4, 0x0

    .line 52
    :goto_1f
    return-object v4

    .line 34
    :cond_20
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 35
    .local v3, pXMLStream:Ljava/io/ByteArrayInputStream;
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 36
    .local v2, pInputXMLSource:Lorg/xml/sax/InputSource;
    invoke-interface {v7, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 38
    invoke-virtual {v1}, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->xdmDDXMLGetParsedData()Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;

    move-result-object v4

    .line 41
    .local v4, parsedDataSet:Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;
    :try_start_31
    iget-object v8, v4, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szObjectURI:Ljava/lang/String;

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 42
    iget-object v8, v4, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szDescription:Ljava/lang/String;

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 43
    iget-object v8, v4, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szVendor:Ljava/lang/String;

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 44
    iget-object v8, v4, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szInstallNotifyURI:Ljava/lang/String;

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/NullPointerException; {:try_start_31 .. :try_end_45} :catch_4b

    .line 51
    :goto_45
    const-string v8, "Parsing DownloadDescriptor is Complete"

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_1f

    .line 46
    :catch_4b
    move-exception v0

    .line 48
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_45
.end method
