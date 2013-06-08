.class public Lcom/wssyncmldm/eng/parser/XDMParser;
.super Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;
.source "XDMParser.java"


# instance fields
.field public Chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

.field public Cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

.field public Meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

.field public _pItem:Lcom/wssyncmldm/eng/parser/XDMParserItem;

.field public _pMapitem:Lcom/wssyncmldm/eng/parser/XDMParserMapItem;

.field public charset:I

.field public codePage:I

.field public in:Ljava/io/ByteArrayInputStream;

.field public m_szParserElement:Ljava/lang/String;

.field public m_szSource:Ljava/lang/String;

.field public m_szStringtable:Ljava/lang/String;

.field public m_szTarget:Ljava/lang/String;

.field public puid:I

.field public stsize:I

.field public userdata:Ljava/lang/Object;

.field public version:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParser;->_pItem:Lcom/wssyncmldm/eng/parser/XDMParserItem;

    .line 24
    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParser;->_pMapitem:Lcom/wssyncmldm/eng/parser/XDMParserMapItem;

    .line 25
    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szTarget:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szSource:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParser;->Meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 29
    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParser;->Chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 30
    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParser;->Cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    .line 42
    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->wbxbuff:[B

    .line 43
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .parameter "buf"

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParser;->_pItem:Lcom/wssyncmldm/eng/parser/XDMParserItem;

    .line 24
    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParser;->_pMapitem:Lcom/wssyncmldm/eng/parser/XDMParserMapItem;

    .line 25
    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szTarget:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szSource:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParser;->Meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 29
    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParser;->Chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 30
    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParser;->Cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    .line 35
    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->wbxbuff:[B

    .line 36
    iput-object p1, p0, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->wbxbuff:[B

    .line 37
    return-void
.end method


# virtual methods
.method public xdmHdlCmdSyncEnd(Ljava/lang/Object;I)V
    .registers 5
    .parameter "userdata"
    .parameter "isfinal"

    .prologue
    .line 334
    move-object v0, p1

    check-cast v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 335
    .local v0, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    if-lez p2, :cond_9

    .line 337
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->isFinal:Z

    .line 344
    :goto_8
    return-void

    .line 341
    :cond_9
    const-string v1, "didn\'t catch FINAL"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 342
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->isFinal:Z

    goto :goto_8
.end method

.method public xdmParDevinfo()I
    .registers 2

    .prologue
    .line 947
    const/4 v0, 0x0

    return v0
.end method

.method public xdmParParse()I
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 60
    const-string v4, "xdmParParse"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 61
    const/4 v2, 0x0

    .line 63
    .local v2, result:I
    iget-object v4, p0, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->wbxbuff:[B

    if-nez v4, :cond_c

    .line 88
    :goto_b
    return v3

    .line 66
    :cond_c
    iput v3, p0, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->wbxindex:I

    .line 67
    iget-object v3, p0, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->wbxbuff:[B

    iget v4, p0, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->wbxindex:I

    invoke-virtual {p0, v3, v4}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmWbxDecInit([BI)V

    .line 68
    invoke-virtual {p0, p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmWbxDecParseStartdoc(Lcom/wssyncmldm/eng/parser/XDMParser;)V

    .line 70
    const/4 v1, -0x1

    .line 73
    .local v1, id:I
    :try_start_19
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCurrentElement()I
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_28

    move-result v1

    .line 80
    :goto_1d
    const/16 v3, 0x2d

    if-eq v1, v3, :cond_31

    .line 82
    const-string v3, "not WBXML_TAG_SYNCML"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 83
    const/4 v3, 0x2

    goto :goto_b

    .line 75
    :catch_28
    move-exception v0

    .line 77
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_1d

    .line 86
    .end local v0           #e:Ljava/io/IOException;
    :cond_31
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseSyncml()I

    move-result v2

    move v3, v2

    .line 88
    goto :goto_b
.end method

.method public xdmParParseBlankElement(I)I
    .registers 8
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    .line 780
    const/4 v1, 0x0

    .line 785
    .local v1, haveend:Z
    :try_start_2
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCurrentElement()I

    move-result v3

    .line 786
    .local v3, tmp:I
    and-int/lit8 v5, v3, 0x40

    if-eqz v5, :cond_b

    .line 788
    const/4 v1, 0x1

    .line 791
    :cond_b
    invoke-virtual {p0, p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v2

    .line 792
    .local v2, res:I
    if-eqz v2, :cond_12

    .line 811
    .end local v2           #res:I
    .end local v3           #tmp:I
    :cond_11
    :goto_11
    return v2

    .line 797
    .restart local v2       #res:I
    .restart local v3       #tmp:I
    :cond_12
    if-eqz v1, :cond_1b

    .line 799
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_18} :catch_1d

    move-result v2

    .line 800
    if-nez v2, :cond_11

    .end local v2           #res:I
    .end local v3           #tmp:I
    :cond_1b
    :goto_1b
    move v2, v4

    .line 811
    goto :goto_11

    .line 806
    :catch_1d
    move-exception v0

    .line 808
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_1b
.end method

.method public xdmParParseChal()I
    .registers 4

    .prologue
    .line 655
    new-instance v0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;-><init>()V

    .line 656
    .local v0, meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;
    const/4 v1, 0x0

    .line 658
    .local v1, res:I
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v1

    .line 659
    if-eqz v1, :cond_10

    move v2, v1

    .line 689
    :goto_f
    return v2

    .line 664
    :cond_10
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseZeroBitTagCheck()I

    move-result v1

    .line 665
    const/16 v2, 0x8

    if-ne v1, v2, :cond_1a

    .line 667
    const/4 v2, 0x0

    goto :goto_f

    .line 669
    :cond_1a
    if-eqz v1, :cond_23

    .line 671
    const-string v2, "not WBXML_ERR_OK"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move v2, v1

    .line 672
    goto :goto_f

    .line 675
    :cond_23
    invoke-virtual {v0, p0}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->xdmParParseMeta(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v1

    .line 676
    if-eqz v1, :cond_2b

    move v2, v1

    .line 678
    goto :goto_f

    .line 680
    :cond_2b
    iget-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParser;->Meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 681
    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParser;->Chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 683
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v1

    .line 684
    if-eqz v1, :cond_38

    move v2, v1

    .line 686
    goto :goto_f

    :cond_38
    move v2, v1

    .line 689
    goto :goto_f
.end method

.method public xdmParParseCheckElement(I)I
    .registers 4
    .parameter "id"

    .prologue
    .line 830
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v0

    .line 832
    .local v0, e:I
    if-eq p1, v0, :cond_d

    .line 834
    const-string v1, "xdmParParseReadElement is WBXML_ERR_UNKNOWN_ELEMENT"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 835
    const/4 v1, 0x2

    .line 838
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public xdmParParseContent()Ljava/lang/String;
    .registers 6

    .prologue
    .line 570
    const/4 v3, 0x0

    .line 576
    .local v3, szContent:Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmWbxDecReadBufferByte()I

    move-result v1

    .line 577
    .local v1, id:I
    const/4 v4, 0x3

    if-ne v1, v4, :cond_e

    .line 579
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmWbxDecParseStr_i()Ljava/lang/String;

    move-result-object v3

    .end local v1           #id:I
    :cond_c
    :goto_c
    move-object v4, v3

    .line 605
    :goto_d
    return-object v4

    .line 581
    .restart local v1       #id:I
    :cond_e
    const/16 v4, 0x83

    if-ne v1, v4, :cond_17

    .line 583
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmWbxDecParseStr_t()Ljava/lang/String;

    move-result-object v3

    goto :goto_c

    .line 585
    :cond_17
    const/16 v4, 0xc3

    if-ne v1, v4, :cond_20

    .line 587
    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmWbxDecParseExtension(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_c

    .line 591
    :cond_20
    iget v4, p0, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->wbxindex:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->wbxindex:I

    .line 592
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseSkipElement()I
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_29} :catch_2e

    move-result v2

    .line 594
    .local v2, res:I
    if-eqz v2, :cond_c

    .line 596
    const/4 v4, 0x0

    goto :goto_d

    .line 600
    .end local v1           #id:I
    .end local v2           #res:I
    :catch_2e
    move-exception v0

    .line 602
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public xdmParParseCurrentElement()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 816
    const/4 v0, 0x0

    .line 819
    .local v0, cur:I
    iget-object v2, p0, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->wbxbuff:[B

    iget v3, p0, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->wbxindex:I

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    .line 820
    .local v1, tmp:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_14

    .line 821
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unexpected EOF"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 823
    :cond_14
    and-int/lit8 v2, v1, 0x3f

    and-int/lit8 v0, v2, 0x7f

    .line 824
    return v0
.end method

.method public xdmParParseElelist(ILcom/wssyncmldm/eng/core/XDMList;)Lcom/wssyncmldm/eng/core/XDMList;
    .registers 10
    .parameter "eleid"
    .parameter "data"

    .prologue
    .line 616
    const/4 v2, -0x1

    .line 618
    .local v2, id:I
    const/4 v1, 0x0

    .line 619
    .local v1, h:Lcom/wssyncmldm/eng/core/XDMList;
    const/4 v5, 0x0

    .line 625
    .local v5, t:Lcom/wssyncmldm/eng/core/XDMList;
    :goto_3
    :try_start_3
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCurrentElement()I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_a

    move-result v2

    .line 632
    :goto_7
    if-eq v2, p1, :cond_13

    .line 646
    .end local p2
    :goto_9
    return-object p2

    .line 627
    .restart local p2
    :catch_a
    move-exception v0

    .line 629
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_7

    .line 637
    .end local v0           #e:Ljava/io/IOException;
    :cond_13
    invoke-virtual {p0, p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v3

    .line 638
    .local v3, res:I
    if-eqz v3, :cond_1b

    .line 640
    const/4 p2, 0x0

    goto :goto_9

    .line 643
    :cond_1b
    iget-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    .line 644
    .local v4, szItem:Ljava/lang/String;
    invoke-static {v1, v5, v4}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListAppend(Lcom/wssyncmldm/eng/core/XDMList;Lcom/wssyncmldm/eng/core/XDMList;Ljava/lang/Object;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object p2

    .line 621
    goto :goto_3
.end method

.method public xdmParParseElement(I)I
    .registers 10
    .parameter "id"

    .prologue
    const/4 v7, 0x1

    .line 699
    const/4 v5, 0x0

    .local v5, szData:Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    const-string v6, ""

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 700
    .local v3, result:Ljava/lang/String;
    const/4 v2, 0x0

    .line 701
    .local v2, res:I
    const/4 v0, 0x1

    .line 702
    .local v0, do_content:Z
    const/4 v4, 0x0

    .line 704
    .local v4, szContent:Ljava/lang/String;
    const-string v6, ""

    iput-object v6, p0, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    .line 706
    invoke-virtual {p0, p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v2

    .line 707
    if-eqz v2, :cond_18

    move v6, v2

    .line 768
    :goto_17
    return v6

    .line 712
    :cond_18
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseZeroBitTagCheck()I

    move-result v2

    .line 713
    const/16 v6, 0x8

    if-ne v2, v6, :cond_22

    .line 715
    const/4 v6, 0x0

    goto :goto_17

    .line 717
    :cond_22
    if-eqz v2, :cond_2b

    .line 719
    const-string v6, "not WBXML_ERR_OK"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move v6, v2

    .line 720
    goto :goto_17

    .line 723
    :cond_2b
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseSkipLiteralElement()I

    move-result v2

    .line 724
    if-eqz v2, :cond_69

    move v6, v2

    .line 726
    goto :goto_17

    .line 732
    :cond_33
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseContent()Ljava/lang/String;

    move-result-object v5

    .line 733
    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    .line 736
    :try_start_3d
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmWbxDecReadBufferByte()I

    move-result p1

    .line 737
    const/16 v6, 0x83

    if-ne p1, v6, :cond_6c

    .line 739
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmWbxDecParseStr_t()Ljava/lang/String;

    move-result-object v4

    .line 740
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    .line 741
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmWbxDecReadBufferByte()I

    move-result p1

    .line 742
    if-ne p1, v7, :cond_63

    .line 744
    iget v6, p0, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->wbxindex:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->wbxindex:I
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_5b} :catch_73

    .line 762
    :goto_5b
    invoke-virtual {p0, v7}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v2

    .line 763
    if-eqz v2, :cond_7c

    move v6, v2

    .line 765
    goto :goto_17

    .line 748
    :cond_63
    :try_start_63
    iget v6, p0, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->wbxindex:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->wbxindex:I

    .line 730
    :cond_69
    :goto_69
    if-nez v0, :cond_33

    goto :goto_5b

    .line 752
    :cond_6c
    iget v6, p0, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->wbxindex:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->wbxindex:I
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_72} :catch_73

    goto :goto_5b

    .line 756
    :catch_73
    move-exception v1

    .line 758
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_69

    .end local v1           #e:Ljava/io/IOException;
    :cond_7c
    move v6, v2

    .line 768
    goto :goto_17
.end method

.method public xdmParParseInit(Lcom/wssyncmldm/eng/parser/XDMParser;Ljava/lang/Object;)V
    .registers 4
    .parameter "p"
    .parameter "userdata"

    .prologue
    .line 50
    const/4 v0, 0x0

    iput v0, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->codePage:I

    .line 51
    iput-object p2, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public xdmParParseItemlist(Lcom/wssyncmldm/eng/core/XDMList;)Lcom/wssyncmldm/eng/core/XDMList;
    .registers 9
    .parameter "itemlist"

    .prologue
    .line 353
    const/4 v3, 0x0

    .line 354
    .local v3, res:I
    move-object v1, p1

    .local v1, h:Lcom/wssyncmldm/eng/core/XDMList;
    const/4 v4, 0x0

    .line 355
    .local v4, t:Lcom/wssyncmldm/eng/core/XDMList;
    const/4 v2, 0x0

    .line 361
    .local v2, id:I
    :goto_4
    :try_start_4
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCurrentElement()I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_d

    move-result v2

    .line 368
    :goto_8
    const/16 v5, 0x14

    if-eq v2, v5, :cond_16

    .line 383
    .end local v1           #h:Lcom/wssyncmldm/eng/core/XDMList;
    :goto_c
    return-object v1

    .line 363
    .restart local v1       #h:Lcom/wssyncmldm/eng/core/XDMList;
    :catch_d
    move-exception v0

    .line 365
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_8

    .line 372
    .end local v0           #e:Ljava/io/IOException;
    :cond_16
    new-instance v5, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    invoke-direct {v5}, Lcom/wssyncmldm/eng/parser/XDMParserItem;-><init>()V

    iput-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParser;->_pItem:Lcom/wssyncmldm/eng/parser/XDMParserItem;

    .line 373
    iget-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParser;->_pItem:Lcom/wssyncmldm/eng/parser/XDMParserItem;

    iget-object v6, p0, Lcom/wssyncmldm/eng/parser/XDMParser;->_pItem:Lcom/wssyncmldm/eng/parser/XDMParserItem;

    invoke-virtual {v5, p0, v6}, Lcom/wssyncmldm/eng/parser/XDMParserItem;->xdmParParseItem(Lcom/wssyncmldm/eng/parser/XDMParser;Lcom/wssyncmldm/eng/parser/XDMParserItem;)I

    move-result v3

    .line 375
    if-eqz v3, :cond_29

    .line 377
    const/4 v1, 0x0

    goto :goto_c

    .line 380
    :cond_29
    iget-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParser;->_pItem:Lcom/wssyncmldm/eng/parser/XDMParserItem;

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListAppend(Lcom/wssyncmldm/eng/core/XDMList;Lcom/wssyncmldm/eng/core/XDMList;Ljava/lang/Object;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v1

    .line 357
    goto :goto_4
.end method

.method public xdmParParseMapitemlist(Lcom/wssyncmldm/eng/core/XDMList;)Lcom/wssyncmldm/eng/core/XDMList;
    .registers 9
    .parameter "itemlist"

    .prologue
    .line 393
    move-object v1, p1

    .local v1, h:Lcom/wssyncmldm/eng/core/XDMList;
    const/4 v4, 0x0

    .line 394
    .local v4, t:Lcom/wssyncmldm/eng/core/XDMList;
    const/4 v2, -0x1

    .line 395
    .local v2, id:I
    const/4 v3, 0x0

    .line 401
    .local v3, res:I
    :goto_4
    :try_start_4
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCurrentElement()I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_d

    move-result v2

    .line 408
    :goto_8
    const/16 v5, 0x19

    if-eq v2, v5, :cond_16

    .line 424
    .end local v1           #h:Lcom/wssyncmldm/eng/core/XDMList;
    :goto_c
    return-object v1

    .line 403
    .restart local v1       #h:Lcom/wssyncmldm/eng/core/XDMList;
    :catch_d
    move-exception v0

    .line 405
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_8

    .line 413
    .end local v0           #e:Ljava/io/IOException;
    :cond_16
    new-instance v5, Lcom/wssyncmldm/eng/parser/XDMParserMapItem;

    invoke-direct {v5}, Lcom/wssyncmldm/eng/parser/XDMParserMapItem;-><init>()V

    iput-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParser;->_pMapitem:Lcom/wssyncmldm/eng/parser/XDMParserMapItem;

    .line 414
    iget-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParser;->_pMapitem:Lcom/wssyncmldm/eng/parser/XDMParserMapItem;

    iget-object v6, p0, Lcom/wssyncmldm/eng/parser/XDMParser;->_pMapitem:Lcom/wssyncmldm/eng/parser/XDMParserMapItem;

    invoke-virtual {v5, p0, v6}, Lcom/wssyncmldm/eng/parser/XDMParserMapItem;->xdmParParseMapitem(Lcom/wssyncmldm/eng/parser/XDMParser;Lcom/wssyncmldm/eng/parser/XDMParserMapItem;)I

    move-result v3

    .line 415
    if-eqz v3, :cond_29

    .line 417
    const/4 v1, 0x0

    goto :goto_c

    .line 421
    :cond_29
    iget-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParser;->_pMapitem:Lcom/wssyncmldm/eng/parser/XDMParserMapItem;

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListAppend(Lcom/wssyncmldm/eng/core/XDMList;Lcom/wssyncmldm/eng/core/XDMList;Ljava/lang/Object;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v1

    .line 397
    goto :goto_4
.end method

.method public xdmParParseReadElement()I
    .registers 5

    .prologue
    .line 171
    const/4 v1, -0x1

    .line 175
    .local v1, id:I
    :try_start_1
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmWbxDecReadBufferByte()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_a

    move-result v2

    .line 176
    .local v2, tmp:I
    and-int/lit8 v3, v2, 0x3f

    and-int/lit8 v1, v3, 0x7f

    .line 183
    .end local v2           #tmp:I
    :goto_9
    return v1

    .line 178
    :catch_a
    move-exception v0

    .line 180
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public xdmParParseSkipElement()I
    .registers 5

    .prologue
    .line 868
    const/4 v1, 0x0

    .line 874
    .local v1, level:I
    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCurrentElement()I

    move-result v2

    .line 875
    .local v2, tmp:I
    if-nez v2, :cond_18

    .line 878
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmWbxDecReadBufferByte()I

    .line 879
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmWbxDecReadBufferByte()I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_e

    goto :goto_1

    .line 914
    .end local v2           #tmp:I
    :catch_e
    move-exception v0

    .line 916
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 918
    .end local v0           #e:Ljava/io/IOException;
    :cond_16
    const/4 v3, 0x0

    return v3

    .line 881
    .restart local v2       #tmp:I
    :cond_18
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2f

    .line 883
    :try_start_1b
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmWbxDecReadBufferByte()I

    .line 884
    add-int/lit8 v1, v1, -0x1

    .line 885
    if-nez v1, :cond_1

    .line 903
    :goto_22
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCurrentElement()I

    move-result v2

    .line 904
    if-nez v2, :cond_16

    .line 909
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmWbxDecReadBufferByte()I

    .line 910
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmWbxDecReadBufferByte()I

    goto :goto_22

    .line 890
    :cond_2f
    const/4 v3, 0x3

    if-eq v2, v3, :cond_3a

    const/16 v3, 0x83

    if-eq v2, v3, :cond_3a

    const/16 v3, 0xc3

    if-ne v2, v3, :cond_3e

    .line 892
    :cond_3a
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseContent()Ljava/lang/String;

    goto :goto_1

    .line 896
    :cond_3e
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmWbxDecReadBufferByte()I
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_41} :catch_e

    .line 897
    add-int/lit8 v1, v1, 0x1

    .line 872
    goto :goto_1
.end method

.method public xdmParParseSkipLiteralElement()I
    .registers 4

    .prologue
    .line 923
    const/4 v1, -0x1

    .line 928
    .local v1, id:I
    :try_start_1
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCurrentElement()I

    move-result v1

    .line 929
    const/4 v2, 0x4

    if-ne v1, v2, :cond_f

    .line 933
    :cond_8
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmWbxDecReadBufferByte()I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_11

    move-result v1

    .line 934
    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 942
    :cond_f
    :goto_f
    const/4 v2, 0x0

    return v2

    .line 937
    :catch_11
    move-exception v0

    .line 939
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public xdmParParseSource()I
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 501
    const/4 v4, 0x0

    .local v4, szSource:Ljava/lang/String;
    move-object v3, v5

    .line 502
    check-cast v3, [C

    .line 503
    .local v3, sourcename:[C
    const/4 v1, -0x1

    .line 506
    .local v1, id:I
    const/16 v6, 0x27

    invoke-virtual {p0, v6}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v2

    .line 507
    .local v2, res:I
    if-eqz v2, :cond_10

    move v5, v2

    .line 560
    :goto_f
    return v5

    .line 512
    :cond_10
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseZeroBitTagCheck()I

    move-result v2

    .line 513
    const/16 v6, 0x8

    if-ne v2, v6, :cond_1a

    .line 515
    const/4 v5, 0x0

    goto :goto_f

    .line 517
    :cond_1a
    if-eqz v2, :cond_23

    .line 519
    const-string v5, "not WBXML_ERR_OK"

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move v5, v2

    .line 520
    goto :goto_f

    .line 523
    :cond_23
    const/16 v6, 0x17

    invoke-virtual {p0, v6}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    .line 524
    if-eqz v2, :cond_2d

    move v5, v2

    .line 526
    goto :goto_f

    .line 529
    :cond_2d
    iget-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    .line 532
    :try_start_2f
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCurrentElement()I

    move-result v1

    .line 534
    const/16 v6, 0x16

    if-ne v1, v6, :cond_3a

    .line 536
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseSkipElement()I
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_3a} :catch_43

    .line 544
    :cond_3a
    :goto_3a
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v2

    .line 545
    if-eqz v2, :cond_4c

    move v5, v2

    .line 547
    goto :goto_f

    .line 539
    :catch_43
    move-exception v0

    .line 541
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_3a

    .line 550
    .end local v0           #e:Ljava/io/IOException;
    :cond_4c
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5e

    .line 552
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 553
    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szSource:Ljava/lang/String;

    :goto_5c
    move v5, v2

    .line 560
    goto :goto_f

    .line 557
    :cond_5e
    iput-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szSource:Ljava/lang/String;

    goto :goto_5c
.end method

.method public xdmParParseSyncbody()I
    .registers 24

    .prologue
    .line 192
    const/4 v11, -0x1

    .line 194
    .local v11, id:I
    const/16 v20, 0x0

    .line 196
    .local v20, tmp:I
    const/16 v21, 0x2b

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v15

    .line 197
    .local v15, res:I
    if-eqz v15, :cond_12

    move/from16 v21, v15

    .line 324
    :goto_11
    return v21

    .line 202
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseZeroBitTagCheck()I

    move-result v15

    .line 203
    const/16 v21, 0x8

    move/from16 v0, v21

    if-ne v15, v0, :cond_1f

    .line 205
    const/16 v21, 0x0

    goto :goto_11

    .line 207
    :cond_1f
    if-eqz v15, :cond_29

    .line 209
    const-string v21, "not WBXML_ERR_OK"

    invoke-static/range {v21 .. v21}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move/from16 v21, v15

    .line 210
    goto :goto_11

    .line 217
    :cond_29
    :try_start_29
    invoke-virtual/range {p0 .. p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCurrentElement()I
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_5f

    move-result v11

    .line 224
    :goto_2d
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v11, v0, :cond_68

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v11

    .line 321
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "xdmParParseSyncbody end tmp = "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmHdlCmdSyncEnd(Ljava/lang/Object;I)V

    .line 324
    const/16 v21, 0x0

    goto :goto_11

    .line 219
    :catch_5f
    move-exception v8

    .line 221
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_2d

    .line 230
    .end local v8           #e:Ljava/io/IOException;
    :cond_68
    sparse-switch v11, :sswitch_data_13c

    .line 312
    const/4 v15, 0x2

    .line 316
    :goto_6c
    if-eqz v15, :cond_29

    move/from16 v21, v15

    .line 318
    goto :goto_11

    .line 233
    :sswitch_71
    new-instance v4, Lcom/wssyncmldm/eng/parser/XDMParserAlert;

    invoke-direct {v4}, Lcom/wssyncmldm/eng/parser/XDMParserAlert;-><init>()V

    .line 234
    .local v4, alert:Lcom/wssyncmldm/eng/parser/XDMParserAlert;
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->xdmParParseAlert(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v15

    .line 235
    goto :goto_6c

    .line 238
    .end local v4           #alert:Lcom/wssyncmldm/eng/parser/XDMParserAlert;
    :sswitch_7d
    new-instance v3, Lcom/wssyncmldm/eng/parser/XDMParserAdd;

    invoke-direct {v3}, Lcom/wssyncmldm/eng/parser/XDMParserAdd;-><init>()V

    .line 239
    .local v3, add:Lcom/wssyncmldm/eng/parser/XDMParserAdd;
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->xdmParParseAdd(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v15

    .line 240
    goto :goto_6c

    .line 243
    .end local v3           #add:Lcom/wssyncmldm/eng/parser/XDMParserAdd;
    :sswitch_89
    new-instance v14, Lcom/wssyncmldm/eng/parser/XDMParserReplace;

    invoke-direct {v14}, Lcom/wssyncmldm/eng/parser/XDMParserReplace;-><init>()V

    .line 244
    .local v14, replace:Lcom/wssyncmldm/eng/parser/XDMParserReplace;
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->xdmParParseReplace(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v15

    .line 245
    goto :goto_6c

    .line 248
    .end local v14           #replace:Lcom/wssyncmldm/eng/parser/XDMParserReplace;
    :sswitch_95
    new-instance v10, Lcom/wssyncmldm/eng/parser/XDMParserGet;

    invoke-direct {v10}, Lcom/wssyncmldm/eng/parser/XDMParserGet;-><init>()V

    .line 249
    .local v10, get:Lcom/wssyncmldm/eng/parser/XDMParserGet;
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Lcom/wssyncmldm/eng/parser/XDMParserGet;->xdmParParseGet(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v15

    .line 250
    goto :goto_6c

    .line 253
    .end local v10           #get:Lcom/wssyncmldm/eng/parser/XDMParserGet;
    :sswitch_a1
    new-instance v12, Lcom/wssyncmldm/eng/parser/XDMParserMap;

    invoke-direct {v12}, Lcom/wssyncmldm/eng/parser/XDMParserMap;-><init>()V

    .line 254
    .local v12, map:Lcom/wssyncmldm/eng/parser/XDMParserMap;
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcom/wssyncmldm/eng/parser/XDMParserMap;->xdmParParseMap(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v15

    .line 255
    goto :goto_6c

    .line 258
    .end local v12           #map:Lcom/wssyncmldm/eng/parser/XDMParserMap;
    :sswitch_ad
    new-instance v13, Lcom/wssyncmldm/eng/parser/XDMParserPut;

    invoke-direct {v13}, Lcom/wssyncmldm/eng/parser/XDMParserPut;-><init>()V

    .line 259
    .local v13, put:Lcom/wssyncmldm/eng/parser/XDMParserPut;
    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/wssyncmldm/eng/parser/XDMParserPut;->xdmParParsePut(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v15

    .line 260
    goto :goto_6c

    .line 263
    .end local v13           #put:Lcom/wssyncmldm/eng/parser/XDMParserPut;
    :sswitch_b9
    new-instance v16, Lcom/wssyncmldm/eng/parser/XDMParserResults;

    invoke-direct/range {v16 .. v16}, Lcom/wssyncmldm/eng/parser/XDMParserResults;-><init>()V

    .line 264
    .local v16, results:Lcom/wssyncmldm/eng/parser/XDMParserResults;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/eng/parser/XDMParserResults;->xdmParParseResults(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v15

    .line 265
    goto :goto_6c

    .line 268
    .end local v16           #results:Lcom/wssyncmldm/eng/parser/XDMParserResults;
    :sswitch_c7
    new-instance v18, Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    invoke-direct/range {v18 .. v18}, Lcom/wssyncmldm/eng/parser/XDMParserStatus;-><init>()V

    .line 269
    .local v18, status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->xdmParParseStatus(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v15

    .line 270
    goto :goto_6c

    .line 273
    .end local v18           #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    :sswitch_d5
    new-instance v5, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;

    invoke-direct {v5}, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;-><init>()V

    .line 274
    .local v5, atomic:Lcom/wssyncmldm/eng/parser/XDMParserAtomic;
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->xdmParParseAtomic(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v15

    .line 275
    goto :goto_6c

    .line 277
    .end local v5           #atomic:Lcom/wssyncmldm/eng/parser/XDMParserAtomic;
    :sswitch_e1
    new-instance v17, Lcom/wssyncmldm/eng/parser/XDMParserSequence;

    invoke-direct/range {v17 .. v17}, Lcom/wssyncmldm/eng/parser/XDMParserSequence;-><init>()V

    .line 278
    .local v17, sequence:Lcom/wssyncmldm/eng/parser/XDMParserSequence;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->xdmParParseSequence(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v15

    .line 279
    goto/16 :goto_6c

    .line 281
    .end local v17           #sequence:Lcom/wssyncmldm/eng/parser/XDMParserSequence;
    :sswitch_f0
    new-instance v19, Lcom/wssyncmldm/eng/parser/XDMParserSync;

    invoke-direct/range {v19 .. v19}, Lcom/wssyncmldm/eng/parser/XDMParserSync;-><init>()V

    .line 282
    .local v19, sync:Lcom/wssyncmldm/eng/parser/XDMParserSync;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/eng/parser/XDMParserSync;->xdmParParseSync(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v15

    .line 283
    goto/16 :goto_6c

    .line 286
    .end local v19           #sync:Lcom/wssyncmldm/eng/parser/XDMParserSync;
    :sswitch_ff
    new-instance v7, Lcom/wssyncmldm/eng/parser/XDMParserDelete;

    invoke-direct {v7}, Lcom/wssyncmldm/eng/parser/XDMParserDelete;-><init>()V

    .line 287
    .local v7, delete:Lcom/wssyncmldm/eng/parser/XDMParserDelete;
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->xdmParParseDelete(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v15

    .line 288
    goto/16 :goto_6c

    .line 291
    .end local v7           #delete:Lcom/wssyncmldm/eng/parser/XDMParserDelete;
    :sswitch_10c
    new-instance v6, Lcom/wssyncmldm/eng/parser/XDMParserCopy;

    invoke-direct {v6}, Lcom/wssyncmldm/eng/parser/XDMParserCopy;-><init>()V

    .line 292
    .local v6, copy:Lcom/wssyncmldm/eng/parser/XDMParserCopy;
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->xdmParParseCopy(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v15

    .line 293
    goto/16 :goto_6c

    .line 296
    .end local v6           #copy:Lcom/wssyncmldm/eng/parser/XDMParserCopy;
    :sswitch_119
    new-instance v9, Lcom/wssyncmldm/eng/parser/XDMParserExec;

    invoke-direct {v9}, Lcom/wssyncmldm/eng/parser/XDMParserExec;-><init>()V

    .line 297
    .local v9, exec:Lcom/wssyncmldm/eng/parser/XDMParserExec;
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/wssyncmldm/eng/parser/XDMParserExec;->xdmParParseExec(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v15

    .line 298
    goto/16 :goto_6c

    .line 301
    .end local v9           #exec:Lcom/wssyncmldm/eng/parser/XDMParserExec;
    :sswitch_126
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseBlankElement(I)I

    move-result v20

    .line 302
    goto/16 :goto_6c

    .line 305
    :sswitch_12e
    invoke-virtual/range {p0 .. p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v11

    .line 306
    invoke-virtual/range {p0 .. p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v11

    .line 308
    move-object/from16 v0, p0

    iput v11, v0, Lcom/wssyncmldm/eng/parser/XDMParser;->codePage:I

    goto/16 :goto_6c

    .line 230
    :sswitch_data_13c
    .sparse-switch
        0x0 -> :sswitch_12e
        0x5 -> :sswitch_7d
        0x6 -> :sswitch_71
        0x8 -> :sswitch_d5
        0xd -> :sswitch_10c
        0x10 -> :sswitch_ff
        0x11 -> :sswitch_119
        0x12 -> :sswitch_126
        0x13 -> :sswitch_95
        0x18 -> :sswitch_a1
        0x1f -> :sswitch_ad
        0x20 -> :sswitch_89
        0x22 -> :sswitch_b9
        0x24 -> :sswitch_e1
        0x29 -> :sswitch_c7
        0x2a -> :sswitch_f0
    .end sparse-switch
.end method

.method public xdmParParseSyncml()I
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 97
    const/4 v2, -0x1

    .line 100
    .local v2, id:I
    const/16 v5, 0x2d

    invoke-virtual {p0, v5}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v3

    .line 101
    .local v3, res:I
    if-eqz v3, :cond_11

    .line 103
    const-string v4, "not WBXML_ERR_OK"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move v4, v3

    .line 161
    :cond_10
    :goto_10
    return v4

    .line 107
    :cond_11
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseZeroBitTagCheck()I

    move-result v3

    .line 108
    const/16 v5, 0x8

    if-eq v3, v5, :cond_10

    .line 112
    if-eqz v3, :cond_22

    .line 114
    const-string v4, "not WBXML_ERR_OK"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move v4, v3

    .line 115
    goto :goto_10

    .line 122
    :cond_22
    :try_start_22
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCurrentElement()I
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_31

    move-result v2

    .line 129
    :goto_26
    const/4 v5, 0x1

    if-eq v2, v5, :cond_10

    .line 134
    sparse-switch v2, :sswitch_data_52

    .line 151
    const/4 v3, 0x2

    .line 155
    :goto_2d
    if-eqz v3, :cond_22

    move v4, v3

    .line 157
    goto :goto_10

    .line 124
    :catch_31
    move-exception v0

    .line 126
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_26

    .line 137
    .end local v0           #e:Ljava/io/IOException;
    :sswitch_3a
    new-instance v1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;

    invoke-direct {v1}, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;-><init>()V

    .line 138
    .local v1, header:Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;
    invoke-virtual {v1, p0}, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->xdmParParseSyncheader(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v3

    .line 139
    goto :goto_2d

    .line 142
    .end local v1           #header:Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;
    :sswitch_44
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseSyncbody()I

    move-result v3

    .line 143
    goto :goto_2d

    .line 146
    :sswitch_49
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v2

    .line 147
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v2

    .line 148
    goto :goto_2d

    .line 134
    :sswitch_data_52
    .sparse-switch
        0x0 -> :sswitch_49
        0x2b -> :sswitch_44
        0x2c -> :sswitch_3a
    .end sparse-switch
.end method

.method public xdmParParseTarget()I
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 433
    const/4 v2, 0x0

    .line 434
    .local v2, res:I
    const/4 v3, 0x0

    .local v3, szTarget:Ljava/lang/String;
    move-object v4, v5

    .line 435
    check-cast v4, [C

    .line 436
    .local v4, targetname:[C
    const/4 v1, -0x1

    .line 438
    .local v1, id:I
    const/16 v6, 0x2e

    invoke-virtual {p0, v6}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v2

    .line 440
    if-eqz v2, :cond_11

    move v5, v2

    .line 492
    :goto_10
    return v5

    .line 445
    :cond_11
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseZeroBitTagCheck()I

    move-result v2

    .line 446
    const/16 v6, 0x8

    if-ne v2, v6, :cond_1b

    .line 448
    const/4 v5, 0x0

    goto :goto_10

    .line 450
    :cond_1b
    if-eqz v2, :cond_24

    .line 452
    const-string v5, "not WBXML_ERR_OK"

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move v5, v2

    .line 453
    goto :goto_10

    .line 456
    :cond_24
    const/16 v6, 0x17

    invoke-virtual {p0, v6}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    .line 457
    if-eqz v2, :cond_2e

    move v5, v2

    .line 459
    goto :goto_10

    .line 461
    :cond_2e
    iget-object v3, p0, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    .line 465
    :try_start_30
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCurrentElement()I

    move-result v1

    .line 467
    const/16 v6, 0x16

    if-ne v1, v6, :cond_3b

    .line 469
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseSkipElement()I
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_3b} :catch_44

    .line 478
    :cond_3b
    :goto_3b
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v2

    .line 479
    if-eqz v2, :cond_4d

    move v5, v2

    .line 481
    goto :goto_10

    .line 472
    :catch_44
    move-exception v0

    .line 474
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_3b

    .line 484
    .end local v0           #e:Ljava/io/IOException;
    :cond_4d
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5f

    .line 486
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 487
    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szTarget:Ljava/lang/String;

    :goto_5d
    move v5, v2

    .line 492
    goto :goto_10

    .line 490
    :cond_5f
    iput-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szTarget:Ljava/lang/String;

    goto :goto_5d
.end method

.method public xdmParParseZeroBitTagCheck()I
    .registers 7

    .prologue
    .line 843
    const/4 v2, 0x0

    .line 844
    .local v2, ret:I
    const/4 v1, 0x0

    .line 845
    .local v1, id:I
    iget-object v4, p0, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->wbxbuff:[B

    iget v5, p0, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->wbxindex:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->wbxindex:I

    aget-byte v4, v4, v5

    and-int/lit16 v0, v4, 0xff

    .line 846
    .local v0, data:I
    const/4 v3, 0x0

    .line 847
    .local v3, zerobit:I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_14

    .line 848
    const/4 v4, 0x1

    .line 862
    :goto_13
    return v4

    .line 850
    :cond_14
    and-int/lit8 v4, v0, 0x3f

    and-int/lit8 v1, v4, 0x7f

    .line 852
    const/4 v4, 0x5

    if-lt v1, v4, :cond_2a

    const/16 v4, 0x3c

    if-gt v1, v4, :cond_2a

    .line 854
    and-int/lit8 v3, v0, 0x40

    .line 855
    if-nez v3, :cond_2a

    .line 857
    const-string v4, "WBXML_ERR_ZEROBIT_TAG"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 858
    const/16 v2, 0x8

    .line 861
    :cond_2a
    iget v4, p0, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->wbxindex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->wbxindex:I

    move v4, v2

    .line 862
    goto :goto_13
.end method
