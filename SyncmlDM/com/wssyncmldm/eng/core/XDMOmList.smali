.class public Lcom/wssyncmldm/eng/core/XDMOmList;
.super Ljava/lang/Object;
.source "XDMOmList.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XDMInterface;


# instance fields
.field public data:Ljava/lang/Object;

.field public next:Lcom/wssyncmldm/eng/core/XDMOmList;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static xdmOmDeleteAclList(Lcom/wssyncmldm/eng/core/XDMOmList;)V
    .registers 4
    .parameter "h"

    .prologue
    .line 17
    move-object v1, p0

    .line 19
    .local v1, cur:Lcom/wssyncmldm/eng/core/XDMOmList;
    const/4 v0, 0x0

    .line 21
    .local v0, acl:Lcom/wssyncmldm/eng/core/XDMOmAcl;
    :goto_2
    if-nez v1, :cond_5

    .line 30
    return-void

    .line 23
    :cond_5
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMOmList;->next:Lcom/wssyncmldm/eng/core/XDMOmList;

    .line 24
    .local v2, next:Lcom/wssyncmldm/eng/core/XDMOmList;
    iget-object v0, v1, Lcom/wssyncmldm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    .end local v0           #acl:Lcom/wssyncmldm/eng/core/XDMOmAcl;
    check-cast v0, Lcom/wssyncmldm/eng/core/XDMOmAcl;

    .line 26
    .restart local v0       #acl:Lcom/wssyncmldm/eng/core/XDMOmAcl;
    const/4 v0, 0x0

    .line 27
    const/4 v1, 0x0

    .line 28
    move-object v1, v2

    goto :goto_2
.end method

.method public static xdmOmGetFormatFromString(Ljava/lang/String;)I
    .registers 2
    .parameter "szData"

    .prologue
    .line 112
    const-string v0, "b64"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    .line 113
    const/4 v0, 0x1

    .line 136
    :goto_9
    return v0

    .line 114
    :cond_a
    const-string v0, "bin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_14

    .line 115
    const/4 v0, 0x2

    goto :goto_9

    .line 116
    :cond_14
    const-string v0, "bool"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1e

    .line 117
    const/4 v0, 0x3

    goto :goto_9

    .line 118
    :cond_1e
    const-string v0, "chr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_28

    .line 119
    const/4 v0, 0x4

    goto :goto_9

    .line 120
    :cond_28
    const-string v0, "int"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_32

    .line 121
    const/4 v0, 0x5

    goto :goto_9

    .line 122
    :cond_32
    const-string v0, "node"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3c

    .line 123
    const/4 v0, 0x6

    goto :goto_9

    .line 124
    :cond_3c
    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_46

    .line 125
    const/4 v0, 0x7

    goto :goto_9

    .line 126
    :cond_46
    const-string v0, "xml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_51

    .line 127
    const/16 v0, 0x8

    goto :goto_9

    .line 128
    :cond_51
    const-string v0, "float"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5c

    .line 129
    const/16 v0, 0x9

    goto :goto_9

    .line 130
    :cond_5c
    const-string v0, "time"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_67

    .line 131
    const/16 v0, 0xb

    goto :goto_9

    .line 132
    :cond_67
    const-string v0, "date"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_72

    .line 133
    const/16 v0, 0xa

    goto :goto_9

    .line 136
    :cond_72
    const/16 v0, 0xc

    goto :goto_9
.end method

.method public static xdmOmGetFormatString(I)Ljava/lang/String;
    .registers 2
    .parameter "szFormat"

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 62
    .local v0, szOutbuf:Ljava/lang/String;
    packed-switch p0, :pswitch_data_26

    .line 102
    :goto_4
    return-object v0

    .line 65
    :pswitch_5
    const-string v0, "b64"

    .line 66
    goto :goto_4

    .line 68
    :pswitch_8
    const-string v0, "bin"

    .line 69
    goto :goto_4

    .line 71
    :pswitch_b
    const-string v0, "bool"

    .line 72
    goto :goto_4

    .line 74
    :pswitch_e
    const-string v0, "chr"

    .line 75
    goto :goto_4

    .line 77
    :pswitch_11
    const-string v0, "int"

    .line 78
    goto :goto_4

    .line 80
    :pswitch_14
    const-string v0, "node"

    .line 81
    goto :goto_4

    .line 83
    :pswitch_17
    const-string v0, "null"

    .line 84
    goto :goto_4

    .line 86
    :pswitch_1a
    const-string v0, "xml"

    .line 87
    goto :goto_4

    .line 89
    :pswitch_1d
    const-string v0, "float"

    .line 90
    goto :goto_4

    .line 92
    :pswitch_20
    const-string v0, "time"

    .line 93
    goto :goto_4

    .line 95
    :pswitch_23
    const-string v0, "date"

    .line 96
    goto :goto_4

    .line 62
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_23
        :pswitch_20
    .end packed-switch
.end method


# virtual methods
.method public xdmOmDeleteMimeList(Lcom/wssyncmldm/eng/core/XDMOmList;)V
    .registers 5
    .parameter "h"

    .prologue
    .line 41
    move-object v0, p1

    .line 43
    .local v0, cur:Lcom/wssyncmldm/eng/core/XDMOmList;
    :goto_1
    if-nez v0, :cond_4

    .line 51
    return-void

    .line 45
    :cond_4
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMOmList;->next:Lcom/wssyncmldm/eng/core/XDMOmList;

    .line 47
    .local v1, next:Lcom/wssyncmldm/eng/core/XDMOmList;
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/wssyncmldm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    .line 48
    const/4 v0, 0x0

    .line 49
    move-object v0, v1

    goto :goto_1
.end method
