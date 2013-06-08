.class public Lcom/wssyncmldm/eng/parser/XDMXMLParse;
.super Ljava/lang/Object;
.source "XDMXMLParse.java"


# direct methods
.method public constructor <init>(Lorg/xml/sax/helpers/DefaultHandler;Ljava/lang/String;)V
    .registers 10
    .parameter "handler"
    .parameter "szData"

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v2, 0x0

    .line 21
    .local v2, inputSt:Ljava/io/InputStream;
    :try_start_4
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 22
    .local v1, factory:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    .line 23
    .local v4, parser:Ljavax/xml/parsers/SAXParser;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 25
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_4d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1d} :catch_27

    .line 27
    .end local v2           #inputSt:Ljava/io/InputStream;
    .local v3, inputSt:Ljava/io/InputStream;
    :try_start_1d
    invoke-virtual {v4, v3, p1}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_67
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_6a

    .line 37
    if-eqz v3, :cond_65

    .line 40
    :try_start_22
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_5d

    move-object v2, v3

    .line 47
    .end local v1           #factory:Ljavax/xml/parsers/SAXParserFactory;
    .end local v3           #inputSt:Ljava/io/InputStream;
    .end local v4           #parser:Ljavax/xml/parsers/SAXParser;
    .restart local v2       #inputSt:Ljava/io/InputStream;
    :cond_26
    :goto_26
    return-void

    .line 30
    :catch_27
    move-exception v0

    .line 32
    .local v0, e:Ljava/lang/Exception;
    :goto_28
    :try_start_28
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "error : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_28 .. :try_end_3e} :catchall_4d

    .line 37
    if-eqz v2, :cond_26

    .line 40
    :try_start_40
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_26

    .line 42
    :catch_44
    move-exception v0

    .line 44
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_26

    .line 35
    .end local v0           #e:Ljava/io/IOException;
    :catchall_4d
    move-exception v5

    .line 37
    :goto_4e
    if-eqz v2, :cond_53

    .line 40
    :try_start_50
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54

    .line 46
    :cond_53
    :goto_53
    throw v5

    .line 42
    :catch_54
    move-exception v0

    .line 44
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_53

    .line 42
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #inputSt:Ljava/io/InputStream;
    .restart local v1       #factory:Ljavax/xml/parsers/SAXParserFactory;
    .restart local v3       #inputSt:Ljava/io/InputStream;
    .restart local v4       #parser:Ljavax/xml/parsers/SAXParser;
    :catch_5d
    move-exception v0

    .line 44
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .end local v0           #e:Ljava/io/IOException;
    :cond_65
    move-object v2, v3

    .end local v3           #inputSt:Ljava/io/InputStream;
    .restart local v2       #inputSt:Ljava/io/InputStream;
    goto :goto_26

    .line 35
    .end local v2           #inputSt:Ljava/io/InputStream;
    .restart local v3       #inputSt:Ljava/io/InputStream;
    :catchall_67
    move-exception v5

    move-object v2, v3

    .end local v3           #inputSt:Ljava/io/InputStream;
    .restart local v2       #inputSt:Ljava/io/InputStream;
    goto :goto_4e

    .line 30
    .end local v2           #inputSt:Ljava/io/InputStream;
    .restart local v3       #inputSt:Ljava/io/InputStream;
    :catch_6a
    move-exception v0

    move-object v2, v3

    .end local v3           #inputSt:Ljava/io/InputStream;
    .restart local v2       #inputSt:Ljava/io/InputStream;
    goto :goto_28
.end method
