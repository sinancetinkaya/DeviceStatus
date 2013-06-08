.class public Lcom/wssyncmldm/eng/core/XDMEncoder;
.super Lcom/wssyncmldm/eng/core/XDMWbxmlEncoder;
.source "XDMEncoder.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XDMInterface;


# instance fields
.field out:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMWbxmlEncoder;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/io/ByteArrayOutputStream;)V
    .registers 3
    .parameter "out"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMWbxmlEncoder;-><init>()V

    .line 47
    const-string v0, "XDMEncoder init"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/wssyncmldm/eng/core/XDMEncoder;->out:Ljava/io/ByteArrayOutputStream;

    .line 49
    return-void
.end method

.method private _ADD_C(Ljava/lang/String;)I
    .registers 3
    .parameter "szData"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmWbxEncAddContent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 71
    const/4 v0, 0x5

    .line 72
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private _ADD_E(ILjava/lang/String;)V
    .registers 3
    .parameter "a"
    .parameter "szData"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_START_E(I)I

    .line 95
    invoke-direct {p0, p2}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_C(Ljava/lang/String;)I

    .line 96
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_END_E()I

    .line 97
    return-void
.end method

.method private _END_E()I
    .registers 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmWbxEncEndElement()Z

    move-result v0

    if-nez v0, :cond_8

    .line 82
    const/4 v0, 0x5

    .line 84
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private _START_E(I)I
    .registers 3
    .parameter "a"

    .prologue
    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmWbxEncStartElement(IZ)Z

    move-result v0

    if-nez v0, :cond_9

    .line 59
    const/4 v0, 0x5

    .line 60
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static xdmEncGetBufferSize(Lcom/wssyncmldm/eng/core/XDMEncoder;)I
    .registers 2
    .parameter "e"

    .prologue
    .line 1615
    invoke-static {}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmWbxEncGetBufferSize()I

    move-result v0

    return v0
.end method


# virtual methods
.method public _ADD_BE(I)I
    .registers 4
    .parameter "a"

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-virtual {p0, p1, v0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmWbxEncStartElement(IZ)Z

    move-result v1

    if-nez v1, :cond_8

    .line 107
    const/4 v0, 0x5

    .line 108
    :cond_8
    return v0
.end method

.method public xdmEncAddAdd(Lcom/wssyncmldm/eng/parser/XDMParserAdd;)I
    .registers 5
    .parameter "cmd"

    .prologue
    .line 902
    if-nez p1, :cond_4

    .line 904
    const/4 v0, 0x6

    .line 940
    :cond_3
    :goto_3
    return v0

    .line 907
    :cond_4
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_START_E(I)I

    .line 909
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    if-lez v1, :cond_17

    .line 911
    const/16 v1, 0xb

    iget v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 913
    :cond_17
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->is_noresp:I

    if-lez v1, :cond_20

    .line 915
    const/16 v1, 0x1d

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_BE(I)I

    .line 917
    :cond_20
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    if-eqz v1, :cond_2c

    .line 919
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddCred(Lcom/wssyncmldm/eng/parser/XDMParserCred;)I

    move-result v0

    .local v0, res:I
    if-nez v0, :cond_3

    .line 924
    .end local v0           #res:I
    :cond_2c
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v1, :cond_38

    .line 926
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddMeta(Lcom/wssyncmldm/eng/parser/XDMParserMeta;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_3

    .line 931
    .end local v0           #res:I
    :cond_38
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    if-eqz v1, :cond_44

    .line 933
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddItemlist(Lcom/wssyncmldm/eng/core/XDMList;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_3

    .line 938
    .end local v0           #res:I
    :cond_44
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_END_E()I

    .line 940
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public xdmEncAddAlert(Lcom/wssyncmldm/eng/parser/XDMParserAlert;)I
    .registers 5
    .parameter "cmd"

    .prologue
    const/4 v0, 0x6

    .line 727
    if-nez p1, :cond_4

    .line 776
    :cond_3
    :goto_3
    return v0

    .line 732
    :cond_4
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->cmdid:I

    if-ltz v1, :cond_3

    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->m_szData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 737
    invoke-direct {p0, v0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_START_E(I)I

    .line 739
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->cmdid:I

    if-lez v1, :cond_22

    .line 741
    const/16 v1, 0xb

    iget v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->cmdid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 744
    :cond_22
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->m_szCorrelator:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 746
    const/16 v1, 0x3c

    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->m_szCorrelator:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 749
    :cond_31
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->m_szData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 751
    const/16 v1, 0xf

    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->m_szData:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 754
    :cond_40
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    if-eqz v1, :cond_4c

    .line 756
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddCred(Lcom/wssyncmldm/eng/parser/XDMParserCred;)I

    move-result v0

    .local v0, res:I
    if-nez v0, :cond_3

    .line 762
    .end local v0           #res:I
    :cond_4c
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->is_noresp:I

    if-lez v1, :cond_55

    .line 764
    const/16 v1, 0x1d

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_BE(I)I

    .line 767
    :cond_55
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    if-eqz v1, :cond_61

    .line 769
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddItemlist(Lcom/wssyncmldm/eng/core/XDMList;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_3

    .line 774
    .end local v0           #res:I
    :cond_61
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_END_E()I

    .line 776
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public xdmEncAddCopy(Lcom/wssyncmldm/eng/parser/XDMParserCopy;)I
    .registers 5
    .parameter "copy"

    .prologue
    .line 1684
    if-nez p1, :cond_4

    .line 1686
    const/4 v0, 0x6

    .line 1727
    :cond_3
    :goto_3
    return v0

    .line 1689
    :cond_4
    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_START_E(I)I

    .line 1691
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->cmdid:I

    if-lez v1, :cond_18

    .line 1693
    const/16 v1, 0xb

    iget v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->cmdid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1696
    :cond_18
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->is_noresp:I

    if-lez v1, :cond_21

    .line 1698
    const/16 v1, 0x1d

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_BE(I)I

    .line 1701
    :cond_21
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    if-eqz v1, :cond_2d

    .line 1703
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddCred(Lcom/wssyncmldm/eng/parser/XDMParserCred;)I

    move-result v0

    .local v0, res:I
    if-nez v0, :cond_3

    .line 1709
    .end local v0           #res:I
    :cond_2d
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v1, :cond_39

    .line 1711
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddMeta(Lcom/wssyncmldm/eng/parser/XDMParserMeta;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_3

    .line 1717
    .end local v0           #res:I
    :cond_39
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    if-eqz v1, :cond_45

    .line 1719
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddItemlist(Lcom/wssyncmldm/eng/core/XDMList;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_3

    .line 1725
    .end local v0           #res:I
    :cond_45
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_END_E()I

    .line 1727
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public xdmEncAddCred(Lcom/wssyncmldm/eng/parser/XDMParserCred;)I
    .registers 5
    .parameter "cred"

    .prologue
    .line 429
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_START_E(I)I

    .line 431
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserCred;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v1, :cond_12

    .line 433
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserCred;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddMeta(Lcom/wssyncmldm/eng/parser/XDMParserMeta;)I

    move-result v0

    .local v0, res:I
    if-eqz v0, :cond_12

    .line 446
    .end local v0           #res:I
    :goto_11
    return v0

    .line 439
    :cond_12
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserCred;->m_szData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 441
    const/16 v1, 0xf

    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserCred;->m_szData:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 444
    :cond_21
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_END_E()I

    .line 446
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public xdmEncAddDelete(Lcom/wssyncmldm/eng/parser/XDMParserDelete;)I
    .registers 5
    .parameter "cmd"

    .prologue
    .line 1109
    if-nez p1, :cond_4

    .line 1111
    const/4 v0, 0x6

    .line 1155
    :cond_3
    :goto_3
    return v0

    .line 1113
    :cond_4
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_START_E(I)I

    .line 1115
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->cmdid:I

    if-lez v1, :cond_18

    .line 1117
    const/16 v1, 0xb

    iget v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->cmdid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1120
    :cond_18
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->is_noresp:I

    if-lez v1, :cond_21

    .line 1122
    const/16 v1, 0x1d

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_BE(I)I

    .line 1124
    :cond_21
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->is_archive:I

    if-lez v1, :cond_29

    .line 1126
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_BE(I)I

    .line 1128
    :cond_29
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->is_sftdel:I

    if-lez v1, :cond_32

    .line 1130
    const/16 v1, 0x26

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_BE(I)I

    .line 1132
    :cond_32
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    if-eqz v1, :cond_3e

    .line 1134
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddCred(Lcom/wssyncmldm/eng/parser/XDMParserCred;)I

    move-result v0

    .local v0, res:I
    if-nez v0, :cond_3

    .line 1139
    .end local v0           #res:I
    :cond_3e
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v1, :cond_4a

    .line 1141
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddMeta(Lcom/wssyncmldm/eng/parser/XDMParserMeta;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_3

    .line 1146
    .end local v0           #res:I
    :cond_4a
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    if-eqz v1, :cond_56

    .line 1148
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddItemlist(Lcom/wssyncmldm/eng/core/XDMList;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_3

    .line 1153
    .end local v0           #res:I
    :cond_56
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_END_E()I

    .line 1155
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public xdmEncAddElelist(Lcom/wssyncmldm/eng/core/XDMList;I)I
    .registers 6
    .parameter "list"
    .parameter "id"

    .prologue
    .line 787
    move-object v0, p1

    .line 789
    .local v0, h:Lcom/wssyncmldm/eng/core/XDMList;
    if-nez p1, :cond_5

    .line 791
    const/4 v2, 0x6

    .line 807
    :goto_4
    return v2

    .line 794
    :cond_5
    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListGetItem(Lcom/wssyncmldm/eng/core/XDMList;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 795
    .local v1, szItem:Ljava/lang/String;
    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListGetItemPtr(Lcom/wssyncmldm/eng/core/XDMList;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v0

    .line 796
    :goto_f
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 807
    const/4 v2, 0x0

    goto :goto_4

    .line 798
    :cond_17
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 800
    invoke-direct {p0, p2, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 803
    :cond_20
    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListGetItem(Lcom/wssyncmldm/eng/core/XDMList;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #szItem:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 804
    .restart local v1       #szItem:Ljava/lang/String;
    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListGetItemPtr(Lcom/wssyncmldm/eng/core/XDMList;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v0

    goto :goto_f
.end method

.method public xdmEncAddExec(Lcom/wssyncmldm/eng/parser/XDMParserExec;)I
    .registers 5
    .parameter "exec"

    .prologue
    .line 1740
    if-nez p1, :cond_4

    .line 1742
    const/4 v0, 0x6

    .line 1780
    :cond_3
    :goto_3
    return v0

    .line 1745
    :cond_4
    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_START_E(I)I

    .line 1747
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserExec;->cmdid:I

    if-lez v1, :cond_18

    .line 1749
    const/16 v1, 0xb

    iget v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserExec;->cmdid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1752
    :cond_18
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserExec;->m_szCorrelator:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 1754
    const/16 v1, 0x3c

    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserExec;->m_szCorrelator:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1757
    :cond_27
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserExec;->is_noresp:I

    if-lez v1, :cond_30

    .line 1759
    const/16 v1, 0x1d

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_BE(I)I

    .line 1762
    :cond_30
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserExec;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v1, :cond_3c

    .line 1764
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserExec;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddMeta(Lcom/wssyncmldm/eng/parser/XDMParserMeta;)I

    move-result v0

    .local v0, res:I
    if-nez v0, :cond_3

    .line 1770
    .end local v0           #res:I
    :cond_3c
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserExec;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    if-eqz v1, :cond_48

    .line 1772
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserExec;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddItemlist(Lcom/wssyncmldm/eng/core/XDMList;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_3

    .line 1778
    .end local v0           #res:I
    :cond_48
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_END_E()I

    .line 1780
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public xdmEncAddGet(Lcom/wssyncmldm/eng/parser/XDMParserGet;)I
    .registers 7
    .parameter "get"

    .prologue
    .line 1362
    const/4 v0, 0x0

    .line 1364
    .local v0, h:Lcom/wssyncmldm/eng/core/XDMList;
    if-nez p1, :cond_5

    .line 1366
    const/4 v2, 0x6

    .line 1416
    :cond_4
    :goto_4
    return v2

    .line 1369
    :cond_5
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserGet;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    .line 1371
    const/16 v3, 0x13

    invoke-direct {p0, v3}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_START_E(I)I

    .line 1373
    iget v3, p1, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    if-lez v3, :cond_1b

    .line 1375
    const/16 v3, 0xb

    iget v4, p1, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1378
    :cond_1b
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    if-eqz v3, :cond_27

    .line 1380
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-virtual {p0, v3}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddCred(Lcom/wssyncmldm/eng/parser/XDMParserCred;)I

    move-result v2

    .local v2, res:I
    if-nez v2, :cond_4

    .line 1385
    .end local v2           #res:I
    :cond_27
    iget v3, p1, Lcom/wssyncmldm/eng/parser/XDMParserGet;->is_noresp:I

    if-lez v3, :cond_30

    .line 1387
    const/16 v3, 0x1d

    invoke-virtual {p0, v3}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_BE(I)I

    .line 1389
    :cond_30
    iget v3, p1, Lcom/wssyncmldm/eng/parser/XDMParserGet;->lang:I

    if-lez v3, :cond_3f

    .line 1391
    const/16 v3, 0x15

    iget v4, p1, Lcom/wssyncmldm/eng/parser/XDMParserGet;->lang:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1393
    :cond_3f
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParserGet;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v3, :cond_4b

    .line 1395
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParserGet;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-virtual {p0, v3}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddMeta(Lcom/wssyncmldm/eng/parser/XDMParserMeta;)I

    move-result v2

    .restart local v2       #res:I
    if-nez v2, :cond_4

    .line 1401
    .end local v2           #res:I
    :cond_4b
    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListGetItem(Lcom/wssyncmldm/eng/core/XDMList;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    .line 1402
    .local v1, item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListGetItemPtr(Lcom/wssyncmldm/eng/core/XDMList;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v0

    .line 1403
    :goto_55
    if-nez v1, :cond_5c

    .line 1414
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_END_E()I

    .line 1416
    const/4 v2, 0x0

    goto :goto_4

    .line 1405
    :cond_5c
    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddItem(Lcom/wssyncmldm/eng/parser/XDMParserItem;)I

    move-result v2

    .restart local v2       #res:I
    if-eqz v2, :cond_66

    .line 1407
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_END_E()I

    goto :goto_4

    .line 1410
    :cond_66
    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListGetItem(Lcom/wssyncmldm/eng/core/XDMList;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    check-cast v1, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    .line 1411
    .restart local v1       #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListGetItemPtr(Lcom/wssyncmldm/eng/core/XDMList;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v0

    goto :goto_55
.end method

.method public xdmEncAddItem(Lcom/wssyncmldm/eng/parser/XDMParserItem;)I
    .registers 10
    .parameter "item"

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const/16 v6, 0xf

    const/4 v2, 0x5

    .line 304
    if-nez p1, :cond_9

    .line 306
    const/4 v1, 0x6

    .line 380
    :cond_8
    :goto_8
    return v1

    .line 309
    :cond_9
    const/16 v4, 0x14

    invoke-direct {p0, v4}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_START_E(I)I

    .line 311
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 313
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddTarget(Ljava/lang/String;)I

    move-result v1

    .local v1, res:I
    if-nez v1, :cond_8

    .line 319
    .end local v1           #res:I
    :cond_1e
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szSource:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 321
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szSource:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddSource(Ljava/lang/String;)I

    move-result v1

    .restart local v1       #res:I
    if-nez v1, :cond_8

    .line 327
    .end local v1           #res:I
    :cond_2e
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v4, :cond_3a

    .line 329
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-virtual {p0, v4}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddMeta(Lcom/wssyncmldm/eng/parser/XDMParserMeta;)I

    move-result v1

    .restart local v1       #res:I
    if-nez v1, :cond_8

    .line 335
    .end local v1           #res:I
    :cond_3a
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    if-eqz v4, :cond_4d

    .line 337
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    iget v4, v4, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->type:I

    if-nez v4, :cond_52

    .line 339
    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    invoke-virtual {p0, v2}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncPcdataGetString(Lcom/wssyncmldm/eng/parser/XDMParserPcdata;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v6, v2}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 378
    :cond_4d
    :goto_4d
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_END_E()I

    move v1, v3

    .line 380
    goto :goto_8

    .line 341
    :cond_52
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    iget v4, v4, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->type:I

    if-ne v4, v7, :cond_77

    .line 343
    invoke-direct {p0, v6}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_START_E(I)I

    .line 347
    :try_start_5b
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    iget-object v4, v4, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    iget-object v5, p1, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    iget v5, v5, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->size:I

    invoke-virtual {p0, v4, v5}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmWbxEncAddOpaque([CI)Z
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_66} :catch_6b

    move-result v4

    if-nez v4, :cond_73

    move v1, v2

    .line 349
    goto :goto_8

    .line 352
    :catch_6b
    move-exception v0

    .line 354
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 356
    .end local v0           #e:Ljava/io/IOException;
    :cond_73
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_END_E()I

    goto :goto_4d

    .line 358
    :cond_77
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    iget v4, v4, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4d

    .line 360
    invoke-direct {p0, v6}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_START_E(I)I

    .line 361
    invoke-virtual {p0, v7}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmWbxEncAddSwitchpage(I)Z

    move-result v4

    if-nez v4, :cond_89

    move v1, v2

    .line 363
    goto :goto_8

    .line 366
    :cond_89
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    iget-object v4, v4, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->anchor:Lcom/wssyncmldm/eng/parser/XDMParserAnchor;

    invoke-virtual {p0, v4}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddMetinfAnchor(Lcom/wssyncmldm/eng/parser/XDMParserAnchor;)I

    move-result v1

    .restart local v1       #res:I
    if-nez v1, :cond_8

    .line 370
    invoke-virtual {p0, v3}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmWbxEncAddSwitchpage(I)Z

    move-result v4

    if-nez v4, :cond_9c

    move v1, v2

    .line 372
    goto/16 :goto_8

    .line 374
    :cond_9c
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_END_E()I

    goto :goto_4d
.end method

.method public xdmEncAddItemlist(Lcom/wssyncmldm/eng/core/XDMList;)I
    .registers 5
    .parameter "list"

    .prologue
    .line 1498
    move-object v0, p1

    .line 1501
    .local v0, h:Lcom/wssyncmldm/eng/core/XDMList;
    if-nez p1, :cond_5

    .line 1503
    const/4 v2, 0x6

    .line 1521
    :cond_4
    :goto_4
    return v2

    .line 1506
    :cond_5
    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListGetItem(Lcom/wssyncmldm/eng/core/XDMList;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    .line 1507
    .local v1, item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListGetItemPtr(Lcom/wssyncmldm/eng/core/XDMList;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v0

    .line 1509
    :goto_f
    if-nez v1, :cond_13

    .line 1521
    const/4 v2, 0x0

    goto :goto_4

    .line 1511
    :cond_13
    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddItem(Lcom/wssyncmldm/eng/parser/XDMParserItem;)I

    move-result v2

    .local v2, res:I
    if-nez v2, :cond_4

    .line 1516
    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListGetItem(Lcom/wssyncmldm/eng/core/XDMList;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    check-cast v1, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    .line 1517
    .restart local v1       #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListGetItemPtr(Lcom/wssyncmldm/eng/core/XDMList;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v0

    goto :goto_f
.end method

.method public xdmEncAddMap(Lcom/wssyncmldm/eng/parser/XDMParserMap;)I
    .registers 7
    .parameter "cmd"

    .prologue
    .line 1228
    const/4 v0, 0x0

    .line 1230
    .local v0, h:Lcom/wssyncmldm/eng/core/XDMList;
    if-nez p1, :cond_5

    .line 1232
    const/4 v2, 0x6

    .line 1288
    :cond_4
    :goto_4
    return v2

    .line 1234
    :cond_5
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserMap;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    .line 1236
    const/16 v3, 0x18

    invoke-direct {p0, v3}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_START_E(I)I

    .line 1238
    iget v3, p1, Lcom/wssyncmldm/eng/parser/XDMParserMap;->cmdid:I

    if-lez v3, :cond_1b

    .line 1240
    const/16 v3, 0xb

    iget v4, p1, Lcom/wssyncmldm/eng/parser/XDMParserMap;->cmdid:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1242
    :cond_1b
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParserMap;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    if-eqz v3, :cond_27

    .line 1244
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParserMap;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-virtual {p0, v3}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddCred(Lcom/wssyncmldm/eng/parser/XDMParserCred;)I

    move-result v2

    .local v2, res:I
    if-nez v2, :cond_4

    .line 1249
    .end local v2           #res:I
    :cond_27
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParserMap;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v3, :cond_33

    .line 1251
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParserMap;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-virtual {p0, v3}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddMeta(Lcom/wssyncmldm/eng/parser/XDMParserMeta;)I

    move-result v2

    .restart local v2       #res:I
    if-nez v2, :cond_4

    .line 1257
    .end local v2           #res:I
    :cond_33
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParserMap;->m_szTarget:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_43

    .line 1259
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParserMap;->m_szTarget:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddTarget(Ljava/lang/String;)I

    move-result v2

    .restart local v2       #res:I
    if-nez v2, :cond_4

    .line 1264
    .end local v2           #res:I
    :cond_43
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParserMap;->m_szSource:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_53

    .line 1266
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParserMap;->m_szSource:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddSource(Ljava/lang/String;)I

    move-result v2

    .restart local v2       #res:I
    if-nez v2, :cond_4

    .line 1272
    .end local v2           #res:I
    :cond_53
    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListGetItem(Lcom/wssyncmldm/eng/core/XDMList;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wssyncmldm/eng/parser/XDMParserMapItem;

    .line 1273
    .local v1, item:Lcom/wssyncmldm/eng/parser/XDMParserMapItem;
    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListGetItemPtr(Lcom/wssyncmldm/eng/core/XDMList;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v0

    .line 1274
    :goto_5d
    if-nez v1, :cond_64

    .line 1286
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_END_E()I

    .line 1288
    const/4 v2, 0x0

    goto :goto_4

    .line 1276
    :cond_64
    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddMapItem(Lcom/wssyncmldm/eng/parser/XDMParserMapItem;)I

    move-result v2

    .restart local v2       #res:I
    if-eqz v2, :cond_6e

    .line 1278
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_END_E()I

    goto :goto_4

    .line 1282
    :cond_6e
    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListGetItem(Lcom/wssyncmldm/eng/core/XDMList;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #item:Lcom/wssyncmldm/eng/parser/XDMParserMapItem;
    check-cast v1, Lcom/wssyncmldm/eng/parser/XDMParserMapItem;

    .line 1283
    .restart local v1       #item:Lcom/wssyncmldm/eng/parser/XDMParserMapItem;
    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListGetItemPtr(Lcom/wssyncmldm/eng/core/XDMList;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v0

    goto :goto_5d
.end method

.method public xdmEncAddMapItem(Lcom/wssyncmldm/eng/parser/XDMParserMapItem;)I
    .registers 4
    .parameter "item"

    .prologue
    .line 392
    if-nez p1, :cond_4

    .line 394
    const/4 v0, 0x6

    .line 417
    :cond_3
    :goto_3
    return v0

    .line 397
    :cond_4
    const/16 v1, 0x19

    invoke-direct {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_START_E(I)I

    .line 399
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserMapItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 401
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserMapItem;->m_szTarget:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddTarget(Ljava/lang/String;)I

    move-result v0

    .local v0, res:I
    if-nez v0, :cond_3

    .line 407
    .end local v0           #res:I
    :cond_19
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserMapItem;->m_szSource:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 409
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserMapItem;->m_szSource:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddSource(Ljava/lang/String;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_3

    .line 415
    .end local v0           #res:I
    :cond_29
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_END_E()I

    .line 417
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public xdmEncAddMeta(Lcom/wssyncmldm/eng/parser/XDMParserMeta;)I
    .registers 8
    .parameter "meta"

    .prologue
    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 208
    if-nez p1, :cond_6

    .line 210
    const/4 v0, 0x6

    .line 292
    :cond_5
    :goto_5
    return v0

    .line 213
    :cond_6
    const/16 v3, 0x1a

    invoke-direct {p0, v3}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_START_E(I)I

    .line 214
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmWbxEncAddSwitchpage(I)Z

    move-result v3

    if-nez v3, :cond_14

    move v0, v1

    .line 216
    goto :goto_5

    .line 219
    :cond_14
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 221
    const/4 v3, 0x7

    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 224
    :cond_22
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 226
    const/16 v3, 0x13

    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 229
    :cond_31
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szMark:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 231
    const/16 v3, 0xb

    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szMark:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 234
    :cond_40
    iget v3, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->size:I

    if-lez v3, :cond_4f

    .line 236
    const/16 v3, 0x12

    iget v4, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->size:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 239
    :cond_4f
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szVersion:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5e

    .line 241
    const/16 v3, 0x14

    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szVersion:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 244
    :cond_5e
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szNextNonce:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_72

    .line 246
    const/16 v3, 0x10

    new-instance v4, Ljava/lang/String;

    iget-object v5, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szNextNonce:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3, v4}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 249
    :cond_72
    iget v3, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->maxmsgsize:I

    if-lez v3, :cond_81

    .line 251
    const/16 v3, 0xc

    iget v4, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->maxmsgsize:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 254
    :cond_81
    iget v3, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->maxobjsize:I

    if-lez v3, :cond_90

    .line 256
    const/16 v3, 0x15

    iget v4, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->maxobjsize:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 259
    :cond_90
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->anchor:Lcom/wssyncmldm/eng/parser/XDMParserAnchor;

    if-eqz v3, :cond_b0

    .line 261
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->anchor:Lcom/wssyncmldm/eng/parser/XDMParserAnchor;

    iget-object v3, v3, Lcom/wssyncmldm/eng/parser/XDMParserAnchor;->m_szLast:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b0

    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->anchor:Lcom/wssyncmldm/eng/parser/XDMParserAnchor;

    iget-object v3, v3, Lcom/wssyncmldm/eng/parser/XDMParserAnchor;->m_szNext:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b0

    .line 263
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->anchor:Lcom/wssyncmldm/eng/parser/XDMParserAnchor;

    invoke-virtual {p0, v3}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddMetinfAnchor(Lcom/wssyncmldm/eng/parser/XDMParserAnchor;)I

    move-result v0

    .local v0, res:I
    if-nez v0, :cond_5

    .line 270
    .end local v0           #res:I
    :cond_b0
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szEmi:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c0

    .line 272
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szEmi:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddMetinfEmi(Ljava/lang/String;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_5

    .line 278
    .end local v0           #res:I
    :cond_c0
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->mem:Lcom/wssyncmldm/eng/parser/XDMParserMem;

    if-eqz v3, :cond_cc

    .line 280
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->mem:Lcom/wssyncmldm/eng/parser/XDMParserMem;

    invoke-virtual {p0, v3}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddMetinfMem(Lcom/wssyncmldm/eng/parser/XDMParserMem;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_5

    .line 286
    .end local v0           #res:I
    :cond_cc
    invoke-virtual {p0, v2}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmWbxEncAddSwitchpage(I)Z

    move-result v3

    if-nez v3, :cond_d5

    move v0, v1

    .line 288
    goto/16 :goto_5

    .line 290
    :cond_d5
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_END_E()I

    move v0, v2

    .line 292
    goto/16 :goto_5
.end method

.method public xdmEncAddMetinfAnchor(Lcom/wssyncmldm/eng/parser/XDMParserAnchor;)I
    .registers 4
    .parameter "cmd"

    .prologue
    const/4 v0, 0x6

    .line 1531
    if-nez p1, :cond_4

    .line 1551
    :cond_3
    :goto_3
    return v0

    .line 1536
    :cond_4
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAnchor;->m_szLast:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAnchor;->m_szNext:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1539
    :cond_14
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_START_E(I)I

    .line 1541
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserAnchor;->m_szLast:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 1543
    const/16 v0, 0xa

    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAnchor;->m_szLast:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1545
    :cond_27
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserAnchor;->m_szNext:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 1547
    const/16 v0, 0xf

    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAnchor;->m_szNext:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1549
    :cond_36
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_END_E()I

    .line 1551
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public xdmEncAddMetinfEmi(Ljava/lang/String;)I
    .registers 4
    .parameter "szEmi"

    .prologue
    const/4 v0, 0x6

    .line 1598
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1605
    :goto_7
    return v0

    .line 1603
    :cond_8
    invoke-direct {p0, v0, p1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1605
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public xdmEncAddMetinfMem(Lcom/wssyncmldm/eng/parser/XDMParserMem;)I
    .registers 4
    .parameter "mem"

    .prologue
    const/4 v0, 0x6

    .line 1561
    if-nez p1, :cond_4

    .line 1588
    :cond_3
    :goto_3
    return v0

    .line 1566
    :cond_4
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserMem;->free:I

    if-gtz v1, :cond_14

    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserMem;->freeid:I

    if-gtz v1, :cond_14

    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserMem;->m_szShared:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1571
    :cond_14
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_START_E(I)I

    .line 1573
    iget v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserMem;->free:I

    if-ltz v0, :cond_28

    .line 1575
    const/16 v0, 0x9

    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserMem;->free:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1577
    :cond_28
    iget v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserMem;->freeid:I

    if-ltz v0, :cond_37

    .line 1579
    const/16 v0, 0x8

    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserMem;->freeid:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1581
    :cond_37
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserMem;->m_szShared:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 1583
    const/16 v0, 0x11

    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserMem;->m_szShared:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1586
    :cond_46
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_END_E()I

    .line 1588
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public xdmEncAddPut(Lcom/wssyncmldm/eng/parser/XDMParserPut;)I
    .registers 7
    .parameter "put"

    .prologue
    .line 1426
    const/4 v2, 0x0

    .line 1430
    .local v2, res:I
    const-string v3, "xdmEncAddPut"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1432
    if-nez p1, :cond_a

    .line 1434
    const/4 v3, 0x6

    .line 1487
    :goto_9
    return v3

    .line 1437
    :cond_a
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserPut;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    .line 1439
    .local v0, h:Lcom/wssyncmldm/eng/core/XDMList;
    const/16 v3, 0x1f

    invoke-direct {p0, v3}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_START_E(I)I

    .line 1441
    iget v3, p1, Lcom/wssyncmldm/eng/parser/XDMParserPut;->cmdid:I

    if-lez v3, :cond_20

    .line 1443
    const/16 v3, 0xb

    iget v4, p1, Lcom/wssyncmldm/eng/parser/XDMParserPut;->cmdid:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1446
    :cond_20
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParserPut;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    if-eqz v3, :cond_2e

    .line 1448
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParserPut;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-virtual {p0, v3}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddCred(Lcom/wssyncmldm/eng/parser/XDMParserCred;)I

    move-result v2

    if-eqz v2, :cond_2e

    move v3, v2

    .line 1450
    goto :goto_9

    .line 1454
    :cond_2e
    iget v3, p1, Lcom/wssyncmldm/eng/parser/XDMParserPut;->is_noresp:I

    if-lez v3, :cond_37

    .line 1456
    const/16 v3, 0x1d

    invoke-virtual {p0, v3}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_BE(I)I

    .line 1459
    :cond_37
    iget v3, p1, Lcom/wssyncmldm/eng/parser/XDMParserPut;->lang:I

    if-lez v3, :cond_46

    .line 1461
    const/16 v3, 0x15

    iget v4, p1, Lcom/wssyncmldm/eng/parser/XDMParserPut;->lang:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1464
    :cond_46
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParserPut;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v3, :cond_54

    .line 1466
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParserPut;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-virtual {p0, v3}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddMeta(Lcom/wssyncmldm/eng/parser/XDMParserMeta;)I

    move-result v2

    if-eqz v2, :cond_54

    move v3, v2

    .line 1468
    goto :goto_9

    .line 1472
    :cond_54
    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListGetItem(Lcom/wssyncmldm/eng/core/XDMList;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    .line 1473
    .local v1, item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListGetItemPtr(Lcom/wssyncmldm/eng/core/XDMList;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v0

    .line 1474
    :goto_5e
    if-nez v1, :cond_65

    .line 1485
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_END_E()I

    .line 1487
    const/4 v3, 0x0

    goto :goto_9

    .line 1476
    :cond_65
    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddItem(Lcom/wssyncmldm/eng/parser/XDMParserItem;)I

    move-result v2

    if-eqz v2, :cond_70

    .line 1478
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_END_E()I

    move v3, v2

    .line 1479
    goto :goto_9

    .line 1481
    :cond_70
    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListGetItem(Lcom/wssyncmldm/eng/core/XDMList;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    check-cast v1, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    .line 1482
    .restart local v1       #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListGetItemPtr(Lcom/wssyncmldm/eng/core/XDMList;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v0

    goto :goto_5e
.end method

.method public xdmEncAddReplace(Lcom/wssyncmldm/eng/parser/XDMParserReplace;)I
    .registers 5
    .parameter "cmd"

    .prologue
    .line 1004
    if-nez p1, :cond_4

    .line 1006
    const/4 v0, 0x6

    .line 1041
    :cond_3
    :goto_3
    return v0

    .line 1008
    :cond_4
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_START_E(I)I

    .line 1010
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    if-lez v1, :cond_18

    .line 1012
    const/16 v1, 0xb

    iget v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1014
    :cond_18
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->is_noresp:I

    if-lez v1, :cond_21

    .line 1016
    const/16 v1, 0x1d

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_BE(I)I

    .line 1018
    :cond_21
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    if-eqz v1, :cond_2d

    .line 1020
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddCred(Lcom/wssyncmldm/eng/parser/XDMParserCred;)I

    move-result v0

    .local v0, res:I
    if-nez v0, :cond_3

    .line 1025
    .end local v0           #res:I
    :cond_2d
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v1, :cond_39

    .line 1027
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddMeta(Lcom/wssyncmldm/eng/parser/XDMParserMeta;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_3

    .line 1032
    .end local v0           #res:I
    :cond_39
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    if-eqz v1, :cond_45

    .line 1034
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddItemlist(Lcom/wssyncmldm/eng/core/XDMList;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_3

    .line 1039
    .end local v0           #res:I
    :cond_45
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_END_E()I

    .line 1041
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public xdmEncAddResults(Lcom/wssyncmldm/eng/parser/XDMParserResults;)I
    .registers 5
    .parameter "results"

    .prologue
    .line 1627
    if-nez p1, :cond_4

    .line 1629
    const/4 v0, 0x6

    .line 1671
    :cond_3
    :goto_3
    return v0

    .line 1632
    :cond_4
    const/16 v1, 0x22

    invoke-direct {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_START_E(I)I

    .line 1634
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserResults;->cmdid:I

    if-lez v1, :cond_18

    .line 1636
    const/16 v1, 0xb

    iget v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserResults;->cmdid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1638
    :cond_18
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserResults;->m_szMsgRef:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 1640
    const/16 v1, 0x1c

    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserResults;->m_szMsgRef:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1642
    :cond_27
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserResults;->m_szCmdRef:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 1644
    const/16 v1, 0xc

    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserResults;->m_szCmdRef:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1646
    :cond_36
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserResults;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v1, :cond_46

    .line 1648
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserResults;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddMeta(Lcom/wssyncmldm/eng/parser/XDMParserMeta;)I

    move-result v0

    .local v0, res:I
    if-eqz v0, :cond_46

    .line 1650
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_END_E()I

    goto :goto_3

    .line 1654
    .end local v0           #res:I
    :cond_46
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserResults;->m_szTargetRef:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 1656
    const/16 v1, 0x2f

    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserResults;->m_szTargetRef:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1658
    :cond_55
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserResults;->m_szSourceRef:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_64

    .line 1660
    const/16 v1, 0x28

    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserResults;->m_szSourceRef:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1662
    :cond_64
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserResults;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    if-eqz v1, :cond_70

    .line 1664
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserResults;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddItemlist(Lcom/wssyncmldm/eng/core/XDMList;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_3

    .line 1669
    .end local v0           #res:I
    :cond_70
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_END_E()I

    .line 1671
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public xdmEncAddSource(Ljava/lang/String;)I
    .registers 3
    .parameter "szSource"

    .prologue
    .line 585
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 587
    const/4 v0, 0x6

    .line 593
    :goto_7
    return v0

    .line 589
    :cond_8
    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_START_E(I)I

    .line 590
    const/16 v0, 0x17

    invoke-direct {p0, v0, p1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 591
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_END_E()I

    .line 593
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public xdmEncAddSourceWithLocname(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "szSource"
    .parameter "szLocname"

    .prologue
    .line 604
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 606
    :cond_c
    const/4 v0, 0x6

    .line 613
    :goto_d
    return v0

    .line 608
    :cond_e
    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_START_E(I)I

    .line 609
    const/16 v0, 0x17

    invoke-direct {p0, v0, p1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 610
    const/16 v0, 0x16

    invoke-direct {p0, v0, p2}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 611
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_END_E()I

    .line 613
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public xdmEncAddStatus(Lcom/wssyncmldm/eng/parser/XDMParserStatus;)I
    .registers 5
    .parameter "cmd"

    .prologue
    const/4 v0, 0x6

    .line 819
    if-nez p1, :cond_4

    .line 890
    :cond_3
    :goto_3
    return v0

    .line 824
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "xdmEncAddStatus cmd.cmdid = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->cmdid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 825
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "xdmEncAddStatus cmd.msgref = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szMsgRef:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 826
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "xdmEncAddStatus cmd.cmd = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 827
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "xdmEncAddStatus cmd.data = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 829
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->cmdid:I

    if-ltz v1, :cond_3

    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szMsgRef:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 834
    const/16 v1, 0x29

    invoke-direct {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_START_E(I)I

    .line 836
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->cmdid:I

    if-lez v1, :cond_7c

    .line 838
    const/16 v1, 0xb

    iget v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->cmdid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 840
    :cond_7c
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szMsgRef:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8b

    .line 842
    const/16 v1, 0x1c

    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szMsgRef:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 844
    :cond_8b
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szCmdRef:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9a

    .line 846
    const/16 v1, 0xc

    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szCmdRef:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 848
    :cond_9a
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szCmd:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a9

    .line 850
    const/16 v1, 0xa

    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szCmd:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 852
    :cond_a9
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->targetref:Lcom/wssyncmldm/eng/core/XDMList;

    if-eqz v1, :cond_b4

    .line 854
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->targetref:Lcom/wssyncmldm/eng/core/XDMList;

    const/16 v2, 0x2f

    invoke-virtual {p0, v1, v2}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddElelist(Lcom/wssyncmldm/eng/core/XDMList;I)I

    .line 856
    :cond_b4
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->sourceref:Lcom/wssyncmldm/eng/core/XDMList;

    if-eqz v1, :cond_bf

    .line 858
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->sourceref:Lcom/wssyncmldm/eng/core/XDMList;

    const/16 v2, 0x28

    invoke-virtual {p0, v1, v2}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddElelist(Lcom/wssyncmldm/eng/core/XDMList;I)I

    .line 860
    :cond_bf
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    if-eqz v1, :cond_cb

    .line 862
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddCred(Lcom/wssyncmldm/eng/parser/XDMParserCred;)I

    move-result v0

    .local v0, res:I
    if-nez v0, :cond_3

    .line 867
    .end local v0           #res:I
    :cond_cb
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v1, :cond_df

    .line 869
    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_START_E(I)I

    .line 870
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddMeta(Lcom/wssyncmldm/eng/parser/XDMParserMeta;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_3

    .line 874
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_END_E()I

    .line 876
    .end local v0           #res:I
    :cond_df
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ee

    .line 878
    const/16 v1, 0xf

    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 881
    :cond_ee
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    if-eqz v1, :cond_fa

    .line 883
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddItemlist(Lcom/wssyncmldm/eng/core/XDMList;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_3

    .line 888
    .end local v0           #res:I
    :cond_fa
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_END_E()I

    .line 890
    const/4 v0, 0x0

    goto/16 :goto_3
.end method

.method public xdmEncAddSyncHeader(Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;)I
    .registers 5
    .parameter "sh"

    .prologue
    .line 458
    const/16 v1, 0x2c

    invoke-direct {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_START_E(I)I

    .line 460
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szVerdtd:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 462
    const/16 v1, 0x31

    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szVerdtd:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 465
    :cond_14
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szVerproto:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 467
    const/16 v1, 0x32

    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szVerproto:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 470
    :cond_23
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szSessionId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 472
    const/16 v1, 0x25

    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szSessionId:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 475
    :cond_32
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->msgid:I

    if-lez v1, :cond_41

    .line 477
    const/16 v1, 0x1b

    iget v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->msgid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 480
    :cond_41
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szRespUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_50

    .line 482
    const/16 v1, 0x21

    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szRespUri:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 485
    :cond_50
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->is_noresp:I

    if-lez v1, :cond_59

    .line 487
    const/16 v1, 0x1d

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_BE(I)I

    .line 491
    :cond_59
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szTarget:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 493
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szTarget:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddTarget(Ljava/lang/String;)I

    move-result v0

    .local v0, res:I
    if-eqz v0, :cond_6a

    .line 537
    .end local v0           #res:I
    :cond_69
    :goto_69
    return v0

    .line 499
    :cond_6a
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szSource:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_82

    .line 501
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szLocname:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_af

    .line 503
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szSource:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddSource(Ljava/lang/String;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_69

    .line 517
    .end local v0           #res:I
    :cond_82
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    if-eqz v1, :cond_9e

    .line 519
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    iget-object v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserCred;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-nez v1, :cond_96

    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    iget-object v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserCred;->m_szData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9e

    .line 521
    :cond_96
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddCred(Lcom/wssyncmldm/eng/parser/XDMParserCred;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_69

    .line 528
    .end local v0           #res:I
    :cond_9e
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v1, :cond_aa

    .line 530
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddMeta(Lcom/wssyncmldm/eng/parser/XDMParserMeta;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_69

    .line 535
    .end local v0           #res:I
    :cond_aa
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_END_E()I

    .line 537
    const/4 v0, 0x0

    goto :goto_69

    .line 510
    :cond_af
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szSource:Ljava/lang/String;

    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szLocname:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddSourceWithLocname(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .restart local v0       #res:I
    if-eqz v0, :cond_82

    goto :goto_69
.end method

.method public xdmEncAddTarget(Ljava/lang/String;)I
    .registers 3
    .parameter "szTarget"

    .prologue
    .line 547
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 549
    const/4 v0, 0x6

    .line 556
    :goto_7
    return v0

    .line 552
    :cond_8
    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_START_E(I)I

    .line 553
    const/16 v0, 0x17

    invoke-direct {p0, v0, p1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 554
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_END_E()I

    .line 556
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public xdmEncAddTargetparent(Ljava/lang/String;)I
    .registers 3
    .parameter "szTargetParent"

    .prologue
    .line 566
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 568
    const/4 v0, 0x6

    .line 575
    :goto_7
    return v0

    .line 571
    :cond_8
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_START_E(I)I

    .line 572
    const/16 v0, 0x17

    invoke-direct {p0, v0, p1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 573
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_END_E()I

    .line 575
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public xdmEncDevinf2Opaque(Ljava/io/ByteArrayOutputStream;Lcom/wssyncmldm/adapter/XDMDevinfAdapter;[I)[B
    .registers 7
    .parameter "out"
    .parameter "devinf"
    .parameter "size"

    .prologue
    const/4 v0, 0x0

    .line 1792
    if-nez p2, :cond_4

    .line 1807
    :cond_3
    :goto_3
    return-object v0

    .line 1796
    :cond_4
    invoke-virtual {p0, p1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmWbxEncInit(Ljava/io/ByteArrayOutputStream;)V

    .line 1798
    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmWbxEncStartElement(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1803
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    new-array v0, v1, [B

    .line 1804
    .local v0, buffer:[B
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 1805
    const/4 v1, 0x0

    array-length v2, v0

    aput v2, p3, v1

    goto :goto_3
.end method

.method public xdmEncEndAdd()I
    .registers 2

    .prologue
    .line 990
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_END_E()I

    .line 992
    const/4 v0, 0x0

    return v0
.end method

.method public xdmEncEndAtomic()I
    .registers 2

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_END_E()I

    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public xdmEncEndDelete()I
    .registers 2

    .prologue
    .line 1215
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_END_E()I

    .line 1216
    const/4 v0, 0x0

    return v0
.end method

.method public xdmEncEndMap()I
    .registers 2

    .prologue
    .line 1349
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_END_E()I

    .line 1350
    const/4 v0, 0x0

    return v0
.end method

.method public xdmEncEndReplace()I
    .registers 2

    .prologue
    .line 1095
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_END_E()I

    .line 1097
    const/4 v0, 0x0

    return v0
.end method

.method public xdmEncEndSync()I
    .registers 2

    .prologue
    .line 714
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_END_E()I

    .line 716
    const/4 v0, 0x0

    return v0
.end method

.method public xdmEncEndSyncbody(Z)I
    .registers 3
    .parameter "is_final"

    .prologue
    .line 634
    if-eqz p1, :cond_7

    .line 636
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_BE(I)I

    .line 639
    :cond_7
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_END_E()I

    .line 641
    const/4 v0, 0x0

    return v0
.end method

.method public xdmEncEndSyncml()I
    .registers 3

    .prologue
    const/4 v0, 0x5

    .line 146
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmWbxEncEndElement()Z

    move-result v1

    if-nez v1, :cond_8

    .line 154
    :cond_7
    :goto_7
    return v0

    .line 149
    :cond_8
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmWbxEncEndDocument()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 154
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public xdmEncInit(Ljava/io/ByteArrayOutputStream;)V
    .registers 2
    .parameter "out"

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmWbxEncInit(Ljava/io/ByteArrayOutputStream;)V

    .line 118
    return-void
.end method

.method public xdmEncPcdataGetString(Lcom/wssyncmldm/eng/parser/XDMParserPcdata;)Ljava/lang/String;
    .registers 5
    .parameter "szPcdata"

    .prologue
    const/4 v1, 0x0

    .line 1817
    const-string v0, ""

    .line 1818
    .local v0, szRet:Ljava/lang/String;
    if-nez p1, :cond_6

    .line 1829
    :cond_5
    :goto_5
    return-object v1

    .line 1823
    :cond_6
    iget v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->type:I

    if-nez v2, :cond_5

    .line 1828
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1829
    goto :goto_5
.end method

.method public xdmEncStartAdd(Lcom/wssyncmldm/eng/parser/XDMParserAdd;)I
    .registers 5
    .parameter "cmd"

    .prologue
    .line 952
    if-nez p1, :cond_4

    .line 954
    const/4 v0, 0x6

    .line 981
    :cond_3
    :goto_3
    return v0

    .line 956
    :cond_4
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_START_E(I)I

    .line 958
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    if-lez v1, :cond_17

    .line 960
    const/16 v1, 0xb

    iget v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 962
    :cond_17
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->is_noresp:I

    if-lez v1, :cond_20

    .line 964
    const/16 v1, 0x1d

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_BE(I)I

    .line 966
    :cond_20
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    if-eqz v1, :cond_2c

    .line 968
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddCred(Lcom/wssyncmldm/eng/parser/XDMParserCred;)I

    move-result v0

    .local v0, res:I
    if-nez v0, :cond_3

    .line 973
    .end local v0           #res:I
    :cond_2c
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v1, :cond_38

    .line 975
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddMeta(Lcom/wssyncmldm/eng/parser/XDMParserMeta;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_3

    .line 981
    .end local v0           #res:I
    :cond_38
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public xdmEncStartAtomic(Lcom/wssyncmldm/eng/parser/XDMParserAtomic;)I
    .registers 5
    .parameter "atomic"

    .prologue
    .line 165
    if-nez p1, :cond_4

    .line 166
    const/4 v0, 0x6

    .line 185
    :cond_3
    :goto_3
    return v0

    .line 168
    :cond_4
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_START_E(I)I

    .line 170
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->cmdid:I

    if-ltz v1, :cond_18

    .line 172
    const/16 v1, 0xb

    iget v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->cmdid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 174
    :cond_18
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->is_noresp:I

    if-ltz v1, :cond_21

    .line 176
    const/16 v1, 0x1d

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_BE(I)I

    .line 179
    :cond_21
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v1, :cond_2d

    .line 181
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddMeta(Lcom/wssyncmldm/eng/parser/XDMParserMeta;)I

    move-result v0

    .local v0, res:I
    if-nez v0, :cond_3

    .line 185
    .end local v0           #res:I
    :cond_2d
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public xdmEncStartDelete(Lcom/wssyncmldm/eng/parser/XDMParserDelete;)I
    .registers 5
    .parameter "cmd"

    .prologue
    .line 1167
    if-nez p1, :cond_4

    .line 1169
    const/4 v0, 0x6

    .line 1206
    :cond_3
    :goto_3
    return v0

    .line 1171
    :cond_4
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_START_E(I)I

    .line 1173
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->cmdid:I

    if-lez v1, :cond_18

    .line 1175
    const/16 v1, 0xb

    iget v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->cmdid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1178
    :cond_18
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->is_noresp:I

    if-lez v1, :cond_21

    .line 1180
    const/16 v1, 0x1d

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_BE(I)I

    .line 1182
    :cond_21
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->is_archive:I

    if-lez v1, :cond_29

    .line 1184
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_BE(I)I

    .line 1186
    :cond_29
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->is_sftdel:I

    if-lez v1, :cond_32

    .line 1188
    const/16 v1, 0x26

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_BE(I)I

    .line 1190
    :cond_32
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    if-eqz v1, :cond_3e

    .line 1192
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddCred(Lcom/wssyncmldm/eng/parser/XDMParserCred;)I

    move-result v0

    .local v0, res:I
    if-nez v0, :cond_3

    .line 1198
    .end local v0           #res:I
    :cond_3e
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v1, :cond_4a

    .line 1200
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddMeta(Lcom/wssyncmldm/eng/parser/XDMParserMeta;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_3

    .line 1206
    .end local v0           #res:I
    :cond_4a
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public xdmEncStartMap(Lcom/wssyncmldm/eng/parser/XDMParserMap;)I
    .registers 5
    .parameter "cmd"

    .prologue
    .line 1300
    if-nez p1, :cond_4

    .line 1302
    const/4 v0, 0x6

    .line 1340
    :cond_3
    :goto_3
    return v0

    .line 1305
    :cond_4
    const/16 v1, 0x18

    invoke-direct {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_START_E(I)I

    .line 1307
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserMap;->cmdid:I

    if-ltz v1, :cond_18

    .line 1309
    const/16 v1, 0xb

    iget v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserMap;->cmdid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1311
    :cond_18
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserMap;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    if-eqz v1, :cond_24

    .line 1313
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserMap;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddCred(Lcom/wssyncmldm/eng/parser/XDMParserCred;)I

    move-result v0

    .local v0, res:I
    if-nez v0, :cond_3

    .line 1318
    .end local v0           #res:I
    :cond_24
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserMap;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v1, :cond_30

    .line 1320
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserMap;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddMeta(Lcom/wssyncmldm/eng/parser/XDMParserMeta;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_3

    .line 1325
    .end local v0           #res:I
    :cond_30
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserMap;->m_szTarget:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 1327
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserMap;->m_szTarget:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddTarget(Ljava/lang/String;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_3

    .line 1332
    .end local v0           #res:I
    :cond_40
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserMap;->m_szSource:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_50

    .line 1334
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserMap;->m_szSource:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddSource(Ljava/lang/String;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_3

    .line 1340
    .end local v0           #res:I
    :cond_50
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public xdmEncStartReplace(Lcom/wssyncmldm/eng/parser/XDMParserReplace;)I
    .registers 5
    .parameter "cmd"

    .prologue
    .line 1053
    if-nez p1, :cond_4

    .line 1055
    const/4 v0, 0x6

    .line 1086
    :cond_3
    :goto_3
    return v0

    .line 1058
    :cond_4
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_START_E(I)I

    .line 1060
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    if-lez v1, :cond_18

    .line 1062
    const/16 v1, 0xb

    iget v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 1065
    :cond_18
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->is_noresp:I

    if-lez v1, :cond_21

    .line 1067
    const/16 v1, 0x1d

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_BE(I)I

    .line 1070
    :cond_21
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    if-eqz v1, :cond_2d

    .line 1072
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddCred(Lcom/wssyncmldm/eng/parser/XDMParserCred;)I

    move-result v0

    .local v0, res:I
    if-nez v0, :cond_3

    .line 1078
    .end local v0           #res:I
    :cond_2d
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v1, :cond_39

    .line 1080
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddMeta(Lcom/wssyncmldm/eng/parser/XDMParserMeta;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_3

    .line 1086
    .end local v0           #res:I
    :cond_39
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public xdmEncStartSync(Lcom/wssyncmldm/eng/parser/XDMParserSync;)I
    .registers 5
    .parameter "sync"

    .prologue
    .line 653
    if-nez p1, :cond_4

    .line 655
    const/4 v0, 0x6

    .line 705
    :cond_3
    :goto_3
    return v0

    .line 657
    :cond_4
    const/16 v1, 0x2a

    invoke-direct {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_START_E(I)I

    .line 659
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserSync;->cmdid:I

    if-lez v1, :cond_18

    .line 661
    const/16 v1, 0xb

    iget v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserSync;->cmdid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 663
    :cond_18
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserSync;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    if-eqz v1, :cond_24

    .line 665
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserSync;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddCred(Lcom/wssyncmldm/eng/parser/XDMParserCred;)I

    move-result v0

    .local v0, res:I
    if-nez v0, :cond_3

    .line 670
    .end local v0           #res:I
    :cond_24
    iget-boolean v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserSync;->is_noresp:Z

    if-eqz v1, :cond_2d

    .line 672
    const/16 v1, 0x1d

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_BE(I)I

    .line 674
    :cond_2d
    iget-boolean v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserSync;->is_noresults:Z

    if-eqz v1, :cond_36

    .line 676
    const/16 v1, 0x1e

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_BE(I)I

    .line 678
    :cond_36
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserSync;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v1, :cond_42

    .line 680
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserSync;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddMeta(Lcom/wssyncmldm/eng/parser/XDMParserMeta;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_3

    .line 685
    .end local v0           #res:I
    :cond_42
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserSync;->m_szTarget:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 687
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserSync;->m_szTarget:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddTarget(Ljava/lang/String;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_3

    .line 692
    .end local v0           #res:I
    :cond_52
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserSync;->m_szSource:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 694
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserSync;->m_szSource:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddSource(Ljava/lang/String;)I

    move-result v0

    .restart local v0       #res:I
    if-nez v0, :cond_3

    .line 700
    .end local v0           #res:I
    :cond_62
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserSync;->numofchanges:I

    if-ltz v1, :cond_71

    .line 702
    const/16 v1, 0x33

    iget v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserSync;->numofchanges:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    .line 705
    :cond_71
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public xdmEncStartSyncbody()I
    .registers 2

    .prologue
    .line 622
    const/16 v0, 0x2b

    invoke-direct {p0, v0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_START_E(I)I

    .line 624
    const/4 v0, 0x0

    return v0
.end method

.method public xdmEncStartSyncml(IILjava/lang/String;I)I
    .registers 6
    .parameter "pid"
    .parameter "charset"
    .parameter "szTable"
    .parameter "stsize"

    .prologue
    .line 131
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmWbxEncStartDocument(IILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 133
    const/4 v0, 0x5

    .line 137
    :goto_7
    return v0

    .line 135
    :cond_8
    const/16 v0, 0x2d

    invoke-direct {p0, v0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->_START_E(I)I

    .line 137
    const/4 v0, 0x0

    goto :goto_7
.end method
