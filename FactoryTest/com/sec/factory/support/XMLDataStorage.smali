.class public Lcom/sec/factory/support/XMLDataStorage;
.super Ljava/lang/Object;
.source "XMLDataStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/factory/support/XMLDataStorage$ElementIdMismatchException;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/sec/factory/support/XMLDataStorage;


# instance fields
.field private mDOMParser:Ljavax/xml/parsers/DocumentBuilder;

.field private mDocument:Lorg/w3c/dom/Document;

.field private mWasCompletedParsing:Z

.field private mXPath:Ljavax/xml/xpath/XPath;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/factory/support/XMLDataStorage;->mInstance:Lcom/sec/factory/support/XMLDataStorage;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/factory/support/XMLDataStorage;->mWasCompletedParsing:Z

    .line 51
    :try_start_6
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 52
    .local v1, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringComments(Z)V

    .line 53
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringElementContentWhitespace(Z)V

    .line 55
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/factory/support/XMLDataStorage;->mDOMParser:Ljavax/xml/parsers/DocumentBuilder;

    .line 56
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/factory/support/XMLDataStorage;->mXPath:Ljavax/xml/xpath/XPath;
    :try_end_22
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_22} :catch_23

    .line 60
    .end local v1           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :goto_22
    return-void

    .line 57
    :catch_23
    move-exception v0

    .line 58
    .local v0, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-static {v0}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    goto :goto_22
.end method

.method private cloneNode(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)Lorg/w3c/dom/Node;
    .registers 13
    .parameter "document"
    .parameter "cloneTarget"

    .prologue
    .line 325
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 326
    .local v7, newNode:Lorg/w3c/dom/Element;
    invoke-interface {p2}, Lorg/w3c/dom/Element;->hasAttributes()Z

    move-result v8

    if-eqz v8, :cond_23

    .line 327
    invoke-virtual {p0, p2}, Lcom/sec/factory/support/XMLDataStorage;->getAttributeNameSet(Lorg/w3c/dom/Element;)[Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, attributes:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_15
    if-ge v4, v5, :cond_23

    aget-object v1, v0, v4

    .line 329
    .local v1, attr:Ljava/lang/String;
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v1, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 332
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #attr:Ljava/lang/String;
    .end local v2           #attributes:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_23
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 333
    .local v6, list:Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_28
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v3, v8, :cond_49

    .line 334
    invoke-interface {v6, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_46

    .line 335
    invoke-interface {v6, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    invoke-direct {p0, p1, v8}, Lcom/sec/factory/support/XMLDataStorage;->cloneNode(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 333
    :cond_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 338
    :cond_49
    return-object v7
.end method

.method private convertBytesToIS([B)Ljava/io/InputStream;
    .registers 3
    .parameter "bytes"

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, byteis:Ljava/io/ByteArrayInputStream;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .end local v0           #byteis:Ljava/io/ByteArrayInputStream;
    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 185
    .restart local v0       #byteis:Ljava/io/ByteArrayInputStream;
    return-object v0
.end method

.method private convertIStoString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "context"
    .parameter "xmlFile"

    .prologue
    .line 151
    const/4 v2, 0x0

    .line 152
    .local v2, inputstream:Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 153
    .local v0, buffreader:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 154
    .local v4, stringbuilder:Ljava/lang/StringBuilder;
    const-string v3, ""

    .line 157
    .local v3, line:Ljava/lang/String;
    :try_start_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, p2, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_11} :catch_34

    move-result-object v2

    .line 165
    :goto_12
    new-instance v0, Ljava/io/BufferedReader;

    .end local v0           #buffreader:Ljava/io/BufferedReader;
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 167
    .restart local v0       #buffreader:Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #stringbuilder:Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .restart local v4       #stringbuilder:Ljava/lang/StringBuilder;
    :goto_21
    :try_start_21
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 171
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2a} :catch_2b

    goto :goto_21

    .line 173
    :catch_2b
    move-exception v1

    .line 175
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 178
    .end local v1           #e:Ljava/io/IOException;
    :cond_2f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 159
    :catch_34
    move-exception v1

    .line 161
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12
.end method

.method private getBaseDocument(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .registers 8
    .parameter "document"

    .prologue
    .line 251
    const-string v3, "/Factory/BaseDocument"

    sget-object v4, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-direct {p0, p1, v3, v4}, Lcom/sec/factory/support/XMLDataStorage;->xpath(Lorg/w3c/dom/Document;Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 252
    .local v1, element:Lorg/w3c/dom/Element;
    const-string v0, ""

    .line 253
    .local v0, datDocument:Ljava/lang/String;
    const-string v2, ""

    .line 254
    .local v2, result:Ljava/lang/String;
    if-eqz v1, :cond_37

    const-string v3, "document"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    :goto_16
    if-eqz v0, :cond_39

    .line 257
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".dat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 261
    :goto_36
    return-object v2

    .line 254
    :cond_37
    const/4 v0, 0x0

    goto :goto_16

    .line 259
    :cond_39
    move-object v2, v0

    goto :goto_36
.end method

.method public static instance()Lcom/sec/factory/support/XMLDataStorage;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/sec/factory/support/XMLDataStorage;->mInstance:Lcom/sec/factory/support/XMLDataStorage;

    if-nez v0, :cond_b

    .line 44
    new-instance v0, Lcom/sec/factory/support/XMLDataStorage;

    invoke-direct {v0}, Lcom/sec/factory/support/XMLDataStorage;-><init>()V

    sput-object v0, Lcom/sec/factory/support/XMLDataStorage;->mInstance:Lcom/sec/factory/support/XMLDataStorage;

    .line 46
    :cond_b
    sget-object v0, Lcom/sec/factory/support/XMLDataStorage;->mInstance:Lcom/sec/factory/support/XMLDataStorage;

    return-object v0
.end method

.method private makeElementArray(Lorg/w3c/dom/NodeList;)[Lorg/w3c/dom/Element;
    .registers 5
    .parameter "nodeList"

    .prologue
    .line 279
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    new-array v0, v2, [Lorg/w3c/dom/Element;

    .line 280
    .local v0, elementSet:[Lorg/w3c/dom/Element;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_18

    .line 281
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    aput-object v2, v0, v1

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 283
    :cond_18
    return-object v0
.end method

.method private parseAsset(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 14
    .parameter "context"
    .parameter "xml"

    .prologue
    const/4 v10, 0x0

    .line 109
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/sec/factory/support/XMLDataStorage;->convertIStoString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 113
    .local v2, dataBytes:[B
    const-string v6, "XMLDataStorage"

    const-string v7, "parseAsset"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Convert dat file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v6, p0, Lcom/sec/factory/support/XMLDataStorage;->mDOMParser:Ljavax/xml/parsers/DocumentBuilder;

    invoke-direct {p0, v2}, Lcom/sec/factory/support/XMLDataStorage;->convertBytesToIS([B)Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 116
    .local v3, document:Lorg/w3c/dom/Document;
    const/4 v1, 0x0

    .line 117
    .local v1, baseXml:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/sec/factory/support/XMLDataStorage;->getBaseDocument(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_da

    .line 118
    const/4 v2, 0x0

    .line 119
    const-string v6, "XMLDataStorage"

    const-string v7, "parseAsset"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Decode base file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-direct {p0, p1, v1}, Lcom/sec/factory/support/XMLDataStorage;->convertIStoString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 122
    iget-object v6, p0, Lcom/sec/factory/support/XMLDataStorage;->mDOMParser:Ljavax/xml/parsers/DocumentBuilder;

    invoke-direct {p0, v2}, Lcom/sec/factory/support/XMLDataStorage;->convertBytesToIS([B)Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 123
    .local v0, baseDocument:Lorg/w3c/dom/Document;
    move-object v5, v3

    .line 124
    .local v5, subDocument:Lorg/w3c/dom/Document;
    invoke-direct {p0, v0, v5}, Lcom/sec/factory/support/XMLDataStorage;->redefinitionById(Lorg/w3c/dom/Document;Lorg/w3c/dom/Document;)V

    .line 125
    const-string v6, "FactoryTestMenu"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    const-string v7, "FactoryTestMenu"

    invoke-interface {v5, v7}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-direct {p0, v0, v6, v7}, Lcom/sec/factory/support/XMLDataStorage;->swapNode(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    .line 130
    const-string v6, "CTC"

    const-string v7, "ro.csc.sales_code"

    const-string v8, "NONE"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b0

    const-string v6, "GT-N7108"

    const-string v7, "ro.product.model"

    const-string v8, "NONE"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d2

    .line 132
    :cond_b0
    const-string v6, "XMLDataStorage"

    const-string v7, "parseAsset"

    const-string v8, "FactoryTestMenuSub"

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v6, "FactoryTestMenuSub"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    const-string v7, "FactoryTestMenuSub"

    invoke-interface {v5, v7}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-direct {p0, v0, v6, v7}, Lcom/sec/factory/support/XMLDataStorage;->swapNode(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    .line 137
    :cond_d2
    iput-object v0, p0, Lcom/sec/factory/support/XMLDataStorage;->mDocument:Lorg/w3c/dom/Document;

    .line 141
    .end local v0           #baseDocument:Lorg/w3c/dom/Document;
    .end local v5           #subDocument:Lorg/w3c/dom/Document;
    :goto_d4
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/factory/support/XMLDataStorage;->mWasCompletedParsing:Z
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d7} :catch_dd

    .line 146
    .end local v1           #baseXml:Ljava/lang/String;
    .end local v2           #dataBytes:[B
    .end local v3           #document:Lorg/w3c/dom/Document;
    :goto_d7
    iget-boolean v6, p0, Lcom/sec/factory/support/XMLDataStorage;->mWasCompletedParsing:Z

    return v6

    .line 139
    .restart local v1       #baseXml:Ljava/lang/String;
    .restart local v2       #dataBytes:[B
    .restart local v3       #document:Lorg/w3c/dom/Document;
    :cond_da
    :try_start_da
    iput-object v3, p0, Lcom/sec/factory/support/XMLDataStorage;->mDocument:Lorg/w3c/dom/Document;
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_dc} :catch_dd

    goto :goto_d4

    .line 142
    .end local v1           #baseXml:Ljava/lang/String;
    .end local v2           #dataBytes:[B
    .end local v3           #document:Lorg/w3c/dom/Document;
    :catch_dd
    move-exception v4

    .line 143
    .local v4, e:Ljava/lang/Exception;
    iput-boolean v10, p0, Lcom/sec/factory/support/XMLDataStorage;->mWasCompletedParsing:Z

    .line 144
    invoke-static {v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    goto :goto_d7
.end method

.method private redefinitionById(Lorg/w3c/dom/Document;Lorg/w3c/dom/Document;)V
    .registers 4
    .parameter "baseDocument"
    .parameter "subDocument"

    .prologue
    .line 287
    invoke-interface {p2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/factory/support/XMLDataStorage;->redefinitionById(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    .line 288
    return-void
.end method

.method private redefinitionById(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .registers 16
    .parameter "baseDocument"
    .parameter "redefNode"

    .prologue
    .line 291
    invoke-interface {p2}, Lorg/w3c/dom/Element;->hasAttributes()Z

    move-result v9

    if-eqz v9, :cond_70

    .line 292
    const-string v9, "id"

    invoke-interface {p2, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 293
    .local v7, id:Ljava/lang/String;
    if-eqz v7, :cond_70

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_70

    .line 294
    const-string v9, "XMLDataStorage"

    const-string v10, "redefinitionById"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0, p2}, Lcom/sec/factory/support/XMLDataStorage;->getAttributeNameSet(Lorg/w3c/dom/Element;)[Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, attributes:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v8, v0

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_35
    if-ge v6, v8, :cond_70

    aget-object v1, v0, v6

    .line 297
    .local v1, attr:Ljava/lang/String;
    const-string v9, "id"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4e

    .line 298
    invoke-interface {p1, v7}, Lorg/w3c/dom/Document;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 299
    .local v4, element:Lorg/w3c/dom/Element;
    if-eqz v4, :cond_51

    .line 300
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v1, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .end local v4           #element:Lorg/w3c/dom/Element;
    :cond_4e
    add-int/lit8 v6, v6, 0x1

    goto :goto_35

    .line 302
    .restart local v4       #element:Lorg/w3c/dom/Element;
    :cond_51
    new-instance v9, Lcom/sec/factory/support/XMLDataStorage$ElementIdMismatchException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Element \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\" does not exist in base document."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, p0, v10}, Lcom/sec/factory/support/XMLDataStorage$ElementIdMismatchException;-><init>(Lcom/sec/factory/support/XMLDataStorage;Ljava/lang/String;)V

    throw v9

    .line 309
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #attr:Ljava/lang/String;
    .end local v2           #attributes:[Ljava/lang/String;
    .end local v4           #element:Lorg/w3c/dom/Element;
    .end local v6           #i$:I
    .end local v7           #id:Ljava/lang/String;
    .end local v8           #len$:I
    :cond_70
    invoke-interface {p2}, Lorg/w3c/dom/Element;->hasChildNodes()Z

    move-result v9

    if-eqz v9, :cond_98

    .line 310
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 311
    .local v3, childNodes:Lorg/w3c/dom/NodeList;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_7b
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v5, v9, :cond_98

    .line 312
    invoke-interface {v3, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_95

    .line 313
    invoke-interface {v3, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    invoke-direct {p0, p1, v9}, Lcom/sec/factory/support/XMLDataStorage;->redefinitionById(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    .line 311
    :cond_95
    add-int/lit8 v5, v5, 0x1

    goto :goto_7b

    .line 317
    .end local v3           #childNodes:Lorg/w3c/dom/NodeList;
    .end local v5           #i:I
    :cond_98
    return-void
.end method

.method private swapNode(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    .registers 6
    .parameter "targetDocument"
    .parameter "baseNode"
    .parameter "subNode"

    .prologue
    .line 320
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast p3, Lorg/w3c/dom/Element;

    .end local p3
    invoke-direct {p0, p1, p3}, Lcom/sec/factory/support/XMLDataStorage;->cloneNode(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/w3c/dom/Node;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 322
    return-void
.end method

.method private xpath(Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .registers 4
    .parameter "expression"
    .parameter "returnType"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/sec/factory/support/XMLDataStorage;->mDocument:Lorg/w3c/dom/Document;

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/factory/support/XMLDataStorage;->xpath(Lorg/w3c/dom/Document;Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private xpath(Lorg/w3c/dom/Document;Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .registers 7
    .parameter "document"
    .parameter "expression"
    .parameter "returnType"

    .prologue
    .line 269
    const/4 v1, 0x0

    .line 271
    .local v1, result:Ljava/lang/Object;
    :try_start_1
    iget-object v2, p0, Lcom/sec/factory/support/XMLDataStorage;->mXPath:Ljavax/xml/xpath/XPath;

    invoke-interface {v2, p2}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v2

    invoke-interface {v2, p1, p3}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v1

    .line 275
    .end local v1           #result:Ljava/lang/Object;
    :goto_b
    return-object v1

    .line 272
    .restart local v1       #result:Ljava/lang/Object;
    :catch_c
    move-exception v0

    .line 273
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method


# virtual methods
.method public getAttributeNameSet(Lorg/w3c/dom/Element;)[Ljava/lang/String;
    .registers 6
    .parameter "element"

    .prologue
    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, attributeSet:[Ljava/lang/String;
    invoke-interface {p1}, Lorg/w3c/dom/Element;->hasAttributes()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 237
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 238
    .local v2, map:Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    .line 239
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_25

    .line 240
    invoke-interface {v2, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 243
    .end local v1           #i:I
    .end local v2           #map:Lorg/w3c/dom/NamedNodeMap;
    :cond_25
    return-object v0
.end method

.method public getAttributeValueByAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "finaAttr"
    .parameter "findAttrValue"
    .parameter "resultAttr"

    .prologue
    .line 226
    invoke-virtual {p0, p1, p2}, Lcom/sec/factory/support/XMLDataStorage;->getElementByAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 227
    .local v0, element:Lorg/w3c/dom/Element;
    if-eqz v0, :cond_f

    .line 228
    invoke-virtual {p0, p1, p2}, Lcom/sec/factory/support/XMLDataStorage;->getElementByAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v1, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 231
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getAttributeValueById(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "id"
    .parameter "resultAttr"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/sec/factory/support/XMLDataStorage;->mDocument:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeValueByTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "tag"
    .parameter "resultAttr"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/sec/factory/support/XMLDataStorage;->mDocument:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChildElementSet(Ljava/lang/String;)[Lorg/w3c/dom/Element;
    .registers 4
    .parameter "parentNodeName"

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/support/XMLDataStorage;->xpath(Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/NodeList;

    invoke-direct {p0, v0}, Lcom/sec/factory/support/XMLDataStorage;->makeElementArray(Lorg/w3c/dom/NodeList;)[Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public getElementByAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 5
    .parameter "attribute"
    .parameter "attributeValue"

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "//*[@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\']"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/support/XMLDataStorage;->xpath(Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    return-object v0
.end method

.method public declared-synchronized parseXML(Landroid/content/Context;)Z
    .registers 11
    .parameter "context"

    .prologue
    .line 63
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/sec/factory/support/XMLDataStorage;->instance()Lcom/sec/factory/support/XMLDataStorage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/factory/support/XMLDataStorage;->wasCompletedParsing()Z

    move-result v5

    if-nez v5, :cond_1fe

    .line 64
    const-string v0, "factory"

    .line 65
    .local v0, DEFAULT_XML:Ljava/lang/String;
    const-string v5, "PAP"

    const-string v6, "ro.csc.sales_code"

    const-string v7, "OXX"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 66
    .local v2, isLiveDemo:Z
    const-string v5, "ro.product.model"

    const-string v6, "factory"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, modelXML:Ljava/lang/String;
    const-string v5, "ro.product.device"

    const-string v6, "factory"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, deviceXML:Ljava/lang/String;
    const-string v5, "ro.product.name"

    const-string v6, "factory"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 70
    .local v4, nameXML:Ljava/lang/String;
    const-string v5, "XMLDataStorage"

    const-string v6, "parseXML"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "is Live Demo : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    if-eqz v2, :cond_18d

    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x.dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 74
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x.dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x.dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 82
    :goto_be
    const-string v5, "XMLDataStorage"

    const-string v6, "parseXML"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "modelXML="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v5, "XMLDataStorage"

    const-string v6, "parseXML"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deviceXML="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v5, "XMLDataStorage"

    const-string v6, "parseXML"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "nameXML="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/sec/factory/support/XMLDataStorage;->instance()Lcom/sec/factory/support/XMLDataStorage;

    move-result-object v5

    invoke-direct {v5, p1, v3}, Lcom/sec/factory/support/XMLDataStorage;->parseAsset(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_18a

    .line 87
    const-string v5, "XMLDataStorage"

    const-string v6, "parseXML"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ro.product.model file not found : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/sec/factory/support/XMLDataStorage;->instance()Lcom/sec/factory/support/XMLDataStorage;

    move-result-object v5

    invoke-direct {v5, p1, v1}, Lcom/sec/factory/support/XMLDataStorage;->parseAsset(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_18a

    .line 89
    const-string v5, "XMLDataStorage"

    const-string v6, "parseXML"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ro.product.device file not found : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/sec/factory/support/XMLDataStorage;->instance()Lcom/sec/factory/support/XMLDataStorage;

    move-result-object v5

    invoke-direct {v5, p1, v4}, Lcom/sec/factory/support/XMLDataStorage;->parseAsset(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_18a

    .line 92
    const-string v5, "XMLDataStorage"

    const-string v6, "parseXML"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ro.product.name file not found : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/sec/factory/support/XMLDataStorage;->instance()Lcom/sec/factory/support/XMLDataStorage;

    move-result-object v5

    const-string v6, "factory.dat"

    invoke-direct {v5, p1, v6}, Lcom/sec/factory/support/XMLDataStorage;->parseAsset(Landroid/content/Context;Ljava/lang/String;)Z

    .line 95
    const-string v5, "XMLDataStorage"

    const-string v6, "parseXML"

    const-string v7, "Default file loaded => factory.dat"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18a
    .catchall {:try_start_1 .. :try_end_18a} :catchall_209

    .line 99
    :cond_18a
    const/4 v5, 0x1

    .line 103
    .end local v0           #DEFAULT_XML:Ljava/lang/String;
    .end local v1           #deviceXML:Ljava/lang/String;
    .end local v2           #isLiveDemo:Z
    .end local v3           #modelXML:Ljava/lang/String;
    .end local v4           #nameXML:Ljava/lang/String;
    :goto_18b
    monitor-exit p0

    return v5

    .line 77
    .restart local v0       #DEFAULT_XML:Ljava/lang/String;
    .restart local v1       #deviceXML:Ljava/lang/String;
    .restart local v2       #isLiveDemo:Z
    .restart local v3       #modelXML:Ljava/lang/String;
    .restart local v4       #nameXML:Ljava/lang/String;
    :cond_18d
    :try_start_18d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 78
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_be

    .line 101
    .end local v0           #DEFAULT_XML:Ljava/lang/String;
    .end local v1           #deviceXML:Ljava/lang/String;
    .end local v2           #isLiveDemo:Z
    .end local v3           #modelXML:Ljava/lang/String;
    .end local v4           #nameXML:Ljava/lang/String;
    :cond_1fe
    const-string v5, "XMLDataStorage"

    const-string v6, "parsingXML"

    const-string v7, "FtClient => data parsing was completed."

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_207
    .catchall {:try_start_18d .. :try_end_207} :catchall_209

    .line 103
    const/4 v5, 0x0

    goto :goto_18b

    .line 63
    :catchall_209
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public wasCompletedParsing()Z
    .registers 2

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/sec/factory/support/XMLDataStorage;->mWasCompletedParsing:Z

    return v0
.end method
