.class public Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XDMDDXMLHandler.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XFOTADDInterface;


# instance fields
.field private DownloadDescriptorDataSet:Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;

.field private in_ddversion:Z

.field private in_description:Z

.field private in_iconURI:Z

.field private in_infoURL:Z

.field private in_installparam:Z

.field private in_name:Z

.field private in_nextURL:Z

.field private in_notifyuri:Z

.field private in_objecturi:Z

.field private in_size:Z

.field private in_type:Z

.field private in_vendor:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 11
    iput-boolean v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_ddversion:Z

    .line 12
    iput-boolean v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_name:Z

    .line 13
    iput-boolean v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_type:Z

    .line 14
    iput-boolean v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_description:Z

    .line 15
    iput-boolean v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_objecturi:Z

    .line 16
    iput-boolean v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_size:Z

    .line 17
    iput-boolean v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_notifyuri:Z

    .line 18
    iput-boolean v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_installparam:Z

    .line 19
    iput-boolean v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_vendor:Z

    .line 20
    iput-boolean v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_nextURL:Z

    .line 21
    iput-boolean v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_infoURL:Z

    .line 22
    iput-boolean v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_iconURI:Z

    .line 24
    new-instance v0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->DownloadDescriptorDataSet:Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;

    .line 9
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 7
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_ddversion:Z

    if-eqz v0, :cond_21

    .line 137
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->DownloadDescriptorDataSet:Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;

    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szDDVersion:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szDDVersion:Ljava/lang/String;

    .line 183
    :cond_20
    :goto_20
    return-void

    .line 139
    :cond_21
    iget-boolean v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_name:Z

    if-eqz v0, :cond_42

    .line 141
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->DownloadDescriptorDataSet:Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;

    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szName:Ljava/lang/String;

    goto :goto_20

    .line 143
    :cond_42
    iget-boolean v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_type:Z

    if-eqz v0, :cond_63

    .line 145
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->DownloadDescriptorDataSet:Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;

    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szType:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szType:Ljava/lang/String;

    goto :goto_20

    .line 147
    :cond_63
    iget-boolean v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_description:Z

    if-eqz v0, :cond_84

    .line 149
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->DownloadDescriptorDataSet:Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;

    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szDescription:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szDescription:Ljava/lang/String;

    goto :goto_20

    .line 151
    :cond_84
    iget-boolean v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_objecturi:Z

    if-eqz v0, :cond_a6

    .line 153
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->DownloadDescriptorDataSet:Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;

    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szObjectURI:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szObjectURI:Ljava/lang/String;

    goto/16 :goto_20

    .line 155
    :cond_a6
    iget-boolean v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_size:Z

    if-eqz v0, :cond_c8

    .line 157
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->DownloadDescriptorDataSet:Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;

    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szSize:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szSize:Ljava/lang/String;

    goto/16 :goto_20

    .line 159
    :cond_c8
    iget-boolean v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_notifyuri:Z

    if-eqz v0, :cond_ea

    .line 161
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->DownloadDescriptorDataSet:Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;

    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szInstallNotifyURI:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szInstallNotifyURI:Ljava/lang/String;

    goto/16 :goto_20

    .line 163
    :cond_ea
    iget-boolean v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_installparam:Z

    if-eqz v0, :cond_10c

    .line 165
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->DownloadDescriptorDataSet:Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;

    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szInstallParam:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szInstallParam:Ljava/lang/String;

    goto/16 :goto_20

    .line 167
    :cond_10c
    iget-boolean v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_vendor:Z

    if-eqz v0, :cond_12e

    .line 169
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->DownloadDescriptorDataSet:Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;

    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szVendor:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szVendor:Ljava/lang/String;

    goto/16 :goto_20

    .line 171
    :cond_12e
    iget-boolean v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_nextURL:Z

    if-eqz v0, :cond_150

    .line 173
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->DownloadDescriptorDataSet:Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;

    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szNextURL:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szNextURL:Ljava/lang/String;

    goto/16 :goto_20

    .line 175
    :cond_150
    iget-boolean v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_infoURL:Z

    if-eqz v0, :cond_172

    .line 177
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->DownloadDescriptorDataSet:Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;

    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szInfoURL:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szInfoURL:Ljava/lang/String;

    goto/16 :goto_20

    .line 179
    :cond_172
    iget-boolean v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_iconURI:Z

    if-eqz v0, :cond_20

    .line 181
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->DownloadDescriptorDataSet:Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;

    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szIconURI:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szIconURI:Ljava/lang/String;

    goto/16 :goto_20
.end method

.method public endDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 195
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "szNameSpaceURL"
    .parameter "szLocalName"
    .parameter "szQualifiedName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 82
    const-string v0, "DDVersion"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 84
    iput-boolean v1, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_ddversion:Z

    .line 130
    :cond_b
    :goto_b
    return-void

    .line 86
    :cond_c
    const-string v0, "name"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 88
    iput-boolean v1, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_name:Z

    goto :goto_b

    .line 90
    :cond_17
    const-string v0, "type"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 92
    iput-boolean v1, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_type:Z

    goto :goto_b

    .line 94
    :cond_22
    const-string v0, "description"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 96
    iput-boolean v1, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_description:Z

    goto :goto_b

    .line 98
    :cond_2d
    const-string v0, "objectURI"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 100
    iput-boolean v1, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_objecturi:Z

    goto :goto_b

    .line 102
    :cond_38
    const-string v0, "size"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 104
    iput-boolean v1, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_size:Z

    goto :goto_b

    .line 106
    :cond_43
    const-string v0, "installNotifyURI"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 108
    iput-boolean v1, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_notifyuri:Z

    goto :goto_b

    .line 110
    :cond_4e
    const-string v0, "installParam"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 112
    iput-boolean v1, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_installparam:Z

    goto :goto_b

    .line 114
    :cond_59
    const-string v0, "vendor"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 116
    iput-boolean v1, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_vendor:Z

    goto :goto_b

    .line 118
    :cond_64
    const-string v0, "nextURL"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 120
    iput-boolean v1, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_nextURL:Z

    goto :goto_b

    .line 122
    :cond_6f
    const-string v0, "infoURL"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 124
    iput-boolean v1, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_infoURL:Z

    goto :goto_b

    .line 126
    :cond_7a
    const-string v0, "iconURI"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 128
    iput-boolean v1, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_iconURI:Z

    goto :goto_b
.end method

.method public startDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 189
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 7
    .parameter "szNameSpacesURI"
    .parameter "szLocalName"
    .parameter "szQualifiedName"
    .parameter "atts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 29
    const-string v0, "DDVersion"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 31
    iput-boolean v1, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_ddversion:Z

    .line 77
    :cond_b
    :goto_b
    return-void

    .line 33
    :cond_c
    const-string v0, "name"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 35
    iput-boolean v1, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_name:Z

    goto :goto_b

    .line 37
    :cond_17
    const-string v0, "type"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 39
    iput-boolean v1, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_type:Z

    goto :goto_b

    .line 41
    :cond_22
    const-string v0, "description"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 43
    iput-boolean v1, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_description:Z

    goto :goto_b

    .line 45
    :cond_2d
    const-string v0, "objectURI"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 47
    iput-boolean v1, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_objecturi:Z

    goto :goto_b

    .line 49
    :cond_38
    const-string v0, "size"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 51
    iput-boolean v1, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_size:Z

    goto :goto_b

    .line 53
    :cond_43
    const-string v0, "installNotifyURI"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 55
    iput-boolean v1, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_notifyuri:Z

    goto :goto_b

    .line 57
    :cond_4e
    const-string v0, "installParam"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 59
    iput-boolean v1, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_installparam:Z

    goto :goto_b

    .line 61
    :cond_59
    const-string v0, "vendor"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 63
    iput-boolean v1, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_vendor:Z

    goto :goto_b

    .line 65
    :cond_64
    const-string v0, "nextURL"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 67
    iput-boolean v1, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_nextURL:Z

    goto :goto_b

    .line 69
    :cond_6f
    const-string v0, "infoURL"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 71
    iput-boolean v1, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_infoURL:Z

    goto :goto_b

    .line 73
    :cond_7a
    const-string v0, "iconURI"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 75
    iput-boolean v1, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->in_iconURI:Z

    goto :goto_b
.end method

.method public xdmDDXMLGetParsedData()Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLHandler;->DownloadDescriptorDataSet:Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;

    return-object v0
.end method
