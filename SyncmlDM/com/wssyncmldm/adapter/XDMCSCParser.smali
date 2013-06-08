.class public Lcom/wssyncmldm/adapter/XDMCSCParser;
.super Ljava/lang/Object;
.source "XDMCSCParser.java"


# instance fields
.field private m_InputXMLSource:Lorg/xml/sax/InputSource;

.field private m_XMLStream:Ljava/io/ByteArrayInputStream;

.field private m_szFotaSetting:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public xdmGetFotaSettingFromCSC()Ljava/lang/String;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/wssyncmldm/adapter/XDMCSCParser;->m_szFotaSetting:Ljava/lang/String;

    return-object v0
.end method

.method public xdmProcessCscParse([B)V
    .registers 8
    .parameter "pDump"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 28
    const-string v4, ""

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    .line 30
    .local v2, spf:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 31
    .local v1, sp:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    .line 33
    .local v3, xr:Lorg/xml/sax/XMLReader;
    new-instance v0, Lcom/wssyncmldm/adapter/XDMCSCXMLHandler;

    invoke-direct {v0}, Lcom/wssyncmldm/adapter/XDMCSCXMLHandler;-><init>()V

    .line 34
    .local v0, mCSCHandler:Lcom/wssyncmldm/adapter/XDMCSCXMLHandler;
    invoke-interface {v3, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 36
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v4, p0, Lcom/wssyncmldm/adapter/XDMCSCParser;->m_XMLStream:Ljava/io/ByteArrayInputStream;

    .line 37
    new-instance v4, Lorg/xml/sax/InputSource;

    iget-object v5, p0, Lcom/wssyncmldm/adapter/XDMCSCParser;->m_XMLStream:Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    iput-object v4, p0, Lcom/wssyncmldm/adapter/XDMCSCParser;->m_InputXMLSource:Lorg/xml/sax/InputSource;

    .line 38
    iget-object v4, p0, Lcom/wssyncmldm/adapter/XDMCSCParser;->m_InputXMLSource:Lorg/xml/sax/InputSource;

    invoke-interface {v3, v4}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 40
    invoke-virtual {v0}, Lcom/wssyncmldm/adapter/XDMCSCXMLHandler;->xdmGetFotaSettingData()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/wssyncmldm/adapter/XDMCSCParser;->m_szFotaSetting:Ljava/lang/String;

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FOTA_Bearer_Setting : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/wssyncmldm/adapter/XDMCSCParser;->m_szFotaSetting:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 42
    const-string v4, "CSC Parsing is Complete"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public xdmStartCSCParse()Z
    .registers 12

    .prologue
    const/4 v9, 0x0

    .line 47
    const/4 v0, 0x1

    .line 48
    .local v0, bret:Z
    const-string v8, "/system/csc/customer.xml"

    .line 49
    .local v8, szCscfilepath:Ljava/lang/String;
    const/4 v7, 0x0

    .line 50
    .local v7, nfilesize:I
    const/4 v4, 0x0

    .line 51
    .local v4, is:Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 53
    .local v1, buffer:[B
    const-string v10, ""

    invoke-static {v10}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 57
    :try_start_c
    new-instance v5, Ljava/io/DataInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_6e
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_16} :catch_3c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_16} :catch_55

    .line 58
    .end local v4           #is:Ljava/io/InputStream;
    .local v5, is:Ljava/io/InputStream;
    :try_start_16
    invoke-virtual {v5}, Ljava/io/DataInputStream;->available()I

    move-result v7

    .line 59
    new-array v1, v7, [B

    .line 60
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_8e
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_1f} :catch_94
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1f} :catch_91

    move-result v6

    .line 61
    .local v6, nByteSize:I
    const/4 v10, -0x1

    if-ne v6, v10, :cond_23

    .line 78
    :cond_23
    if-eqz v5, :cond_97

    .line 82
    :try_start_25
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_2c

    .line 83
    const/4 v4, 0x0

    .line 85
    .end local v5           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    if-nez v0, :cond_35

    .line 108
    .end local v6           #nByteSize:I
    :cond_2b
    :goto_2b
    return v9

    .line 88
    .end local v4           #is:Ljava/io/InputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v6       #nByteSize:I
    :catch_2c
    move-exception v2

    .line 90
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move-object v4, v5

    .line 97
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #nByteSize:I
    .restart local v4       #is:Ljava/io/InputStream;
    :cond_35
    :goto_35
    :try_start_35
    invoke-virtual {p0, v1}, Lcom/wssyncmldm/adapter/XDMCSCParser;->xdmProcessCscParse([B)V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_8b
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_81

    .line 98
    const/4 v0, 0x1

    .line 106
    const/4 v1, 0x0

    :goto_3a
    move v9, v0

    .line 108
    goto :goto_2b

    .line 66
    :catch_3c
    move-exception v2

    .line 68
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_3d
    :try_start_3d
    const-string v10, "csc file not found. default value is WIFI preffered FOTA"

    invoke-static {v10}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_6e

    .line 69
    const/4 v0, 0x0

    .line 78
    if-eqz v4, :cond_35

    .line 82
    :try_start_45
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_4c

    .line 83
    const/4 v4, 0x0

    .line 85
    if-nez v0, :cond_35

    goto :goto_2b

    .line 88
    :catch_4c
    move-exception v2

    .line 90
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_35

    .line 71
    .end local v2           #e:Ljava/io/IOException;
    :catch_55
    move-exception v2

    .line 73
    .restart local v2       #e:Ljava/io/IOException;
    :goto_56
    :try_start_56
    const-string v10, "csc file not found. default value is WIFI preffered FOTA"

    invoke-static {v10}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_56 .. :try_end_5b} :catchall_6e

    .line 74
    const/4 v0, 0x0

    .line 78
    if-eqz v4, :cond_35

    .line 82
    :try_start_5e
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_65

    .line 83
    const/4 v4, 0x0

    .line 85
    if-nez v0, :cond_35

    goto :goto_2b

    .line 88
    :catch_65
    move-exception v2

    .line 90
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_35

    .line 78
    .end local v2           #e:Ljava/io/IOException;
    :catchall_6e
    move-exception v10

    :goto_6f
    if-eqz v4, :cond_77

    .line 82
    :try_start_71
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_78

    .line 83
    const/4 v4, 0x0

    .line 85
    if-eqz v0, :cond_2b

    .line 91
    :cond_77
    :goto_77
    throw v10

    .line 88
    :catch_78
    move-exception v2

    .line 90
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_77

    .line 100
    .end local v2           #e:Ljava/io/IOException;
    :catch_81
    move-exception v3

    .line 102
    .local v3, ex:Ljava/lang/Exception;
    :try_start_82
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_89
    .catchall {:try_start_82 .. :try_end_89} :catchall_8b

    .line 106
    const/4 v1, 0x0

    .line 107
    goto :goto_3a

    .line 106
    .end local v3           #ex:Ljava/lang/Exception;
    :catchall_8b
    move-exception v9

    const/4 v1, 0x0

    throw v9

    .line 78
    .end local v4           #is:Ljava/io/InputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    :catchall_8e
    move-exception v10

    move-object v4, v5

    .end local v5           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    goto :goto_6f

    .line 71
    .end local v4           #is:Ljava/io/InputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    :catch_91
    move-exception v2

    move-object v4, v5

    .end local v5           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    goto :goto_56

    .line 66
    .end local v4           #is:Ljava/io/InputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    :catch_94
    move-exception v2

    move-object v4, v5

    .end local v5           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    goto :goto_3d

    .end local v4           #is:Ljava/io/InputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v6       #nByteSize:I
    :cond_97
    move-object v4, v5

    .end local v5           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    goto :goto_35
.end method
