.class public Lcom/wssyncmldm/eng/core/XDMOmVfs;
.super Ljava/lang/Object;
.source "XDMOmVfs.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XDMInterface;


# static fields
.field private static final OM_MAX_LEN:I = 0x200

.field private static index:I


# instance fields
.field public root:Lcom/wssyncmldm/eng/core/XDMVnode;

.field public stdobj_space:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput v0, Lcom/wssyncmldm/eng/core/XDMOmVfs;->index:I

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMOmVfs;->root:Lcom/wssyncmldm/eng/core/XDMVnode;

    .line 27
    const v0, 0xa000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMOmVfs;->stdobj_space:[B

    .line 28
    return-void
.end method

.method public static xdmOmVfsAppendList(Lcom/wssyncmldm/eng/core/XDMOmList;Lcom/wssyncmldm/eng/core/XDMOmList;)Lcom/wssyncmldm/eng/core/XDMOmList;
    .registers 5
    .parameter "h"
    .parameter "node"

    .prologue
    const/4 v2, 0x0

    .line 527
    if-nez p0, :cond_7

    .line 529
    move-object p0, p1

    .line 530
    iput-object v2, p0, Lcom/wssyncmldm/eng/core/XDMOmList;->next:Lcom/wssyncmldm/eng/core/XDMOmList;

    .line 543
    :goto_6
    return-object p0

    .line 534
    :cond_7
    move-object v0, p0

    .line 535
    .local v0, tmp:Lcom/wssyncmldm/eng/core/XDMOmList;
    :goto_8
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMOmList;->next:Lcom/wssyncmldm/eng/core/XDMOmList;

    if-nez v1, :cond_11

    .line 540
    iput-object v2, p1, Lcom/wssyncmldm/eng/core/XDMOmList;->next:Lcom/wssyncmldm/eng/core/XDMOmList;

    .line 541
    iput-object p1, v0, Lcom/wssyncmldm/eng/core/XDMOmList;->next:Lcom/wssyncmldm/eng/core/XDMOmList;

    goto :goto_6

    .line 537
    :cond_11
    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMOmList;->next:Lcom/wssyncmldm/eng/core/XDMOmList;

    goto :goto_8
.end method

.method public static xdmOmVfsAppendNode(Lcom/wssyncmldm/eng/core/XDMVnode;Lcom/wssyncmldm/eng/core/XDMVnode;)I
    .registers 5
    .parameter "ptParent"
    .parameter "ptChild"

    .prologue
    const/4 v1, 0x0

    .line 550
    invoke-static {p0, p1}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsHaveThisChild(Lcom/wssyncmldm/eng/core/XDMVnode;Lcom/wssyncmldm/eng/core/XDMVnode;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 552
    const/4 v1, -0x2

    .line 574
    :goto_8
    return v1

    .line 555
    :cond_9
    iget-object v2, p0, Lcom/wssyncmldm/eng/core/XDMVnode;->childlist:Lcom/wssyncmldm/eng/core/XDMVnode;

    if-nez v2, :cond_12

    .line 557
    iput-object p1, p0, Lcom/wssyncmldm/eng/core/XDMVnode;->childlist:Lcom/wssyncmldm/eng/core/XDMVnode;

    .line 560
    iput-object p0, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->ptParentNode:Lcom/wssyncmldm/eng/core/XDMVnode;

    goto :goto_8

    .line 564
    :cond_12
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMVnode;->childlist:Lcom/wssyncmldm/eng/core/XDMVnode;

    .line 565
    .local v0, last:Lcom/wssyncmldm/eng/core/XDMVnode;
    :goto_14
    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->next:Lcom/wssyncmldm/eng/core/XDMVnode;

    if-nez v2, :cond_1d

    .line 569
    iput-object p1, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->next:Lcom/wssyncmldm/eng/core/XDMVnode;

    .line 573
    iput-object p0, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->ptParentNode:Lcom/wssyncmldm/eng/core/XDMVnode;

    goto :goto_8

    .line 567
    :cond_1d
    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->next:Lcom/wssyncmldm/eng/core/XDMVnode;

    goto :goto_14
.end method

.method public static xdmOmVfsCreateNewNode(Ljava/lang/String;Z)Lcom/wssyncmldm/eng/core/XDMVnode;
    .registers 7
    .parameter "szName"
    .parameter "defaultacl"

    .prologue
    const/4 v4, 0x0

    .line 66
    new-instance v2, Lcom/wssyncmldm/eng/core/XDMVnode;

    invoke-direct {v2}, Lcom/wssyncmldm/eng/core/XDMVnode;-><init>()V

    .line 68
    .local v2, ptNode:Lcom/wssyncmldm/eng/core/XDMVnode;
    if-eqz p1, :cond_21

    .line 70
    new-instance v0, Lcom/wssyncmldm/eng/core/XDMOmAcl;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/core/XDMOmAcl;-><init>()V

    .line 71
    .local v0, acl:Lcom/wssyncmldm/eng/core/XDMOmAcl;
    const-string v3, "*"

    iput-object v3, v0, Lcom/wssyncmldm/eng/core/XDMOmAcl;->m_szServerid:Ljava/lang/String;

    .line 72
    const/16 v3, 0x1b

    iput v3, v0, Lcom/wssyncmldm/eng/core/XDMOmAcl;->ac:I

    .line 74
    new-instance v1, Lcom/wssyncmldm/eng/core/XDMOmList;

    invoke-direct {v1}, Lcom/wssyncmldm/eng/core/XDMOmList;-><init>()V

    .line 75
    .local v1, item:Lcom/wssyncmldm/eng/core/XDMOmList;
    iput-object v0, v1, Lcom/wssyncmldm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    .line 76
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/wssyncmldm/eng/core/XDMOmList;->next:Lcom/wssyncmldm/eng/core/XDMOmList;

    .line 78
    iput-object v1, v2, Lcom/wssyncmldm/eng/core/XDMVnode;->acl:Lcom/wssyncmldm/eng/core/XDMOmList;

    .line 81
    .end local v0           #acl:Lcom/wssyncmldm/eng/core/XDMOmAcl;
    .end local v1           #item:Lcom/wssyncmldm/eng/core/XDMOmList;
    :cond_21
    iput-object p0, v2, Lcom/wssyncmldm/eng/core/XDMVnode;->m_szName:Ljava/lang/String;

    .line 82
    const/4 v3, 0x6

    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMVnode;->format:I

    .line 83
    iput v4, v2, Lcom/wssyncmldm/eng/core/XDMVnode;->verno:I

    .line 84
    iput v4, v2, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    .line 85
    const/4 v3, -0x1

    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMVnode;->vaddr:I

    .line 86
    const/4 v3, 0x2

    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMVnode;->scope:I

    .line 88
    return-object v2
.end method

.method public static xdmOmVfsCreatePath(Lcom/wssyncmldm/eng/core/XDMOmVfs;Ljava/lang/String;)I
    .registers 13
    .parameter "pVfs"
    .parameter "szPath"

    .prologue
    const/4 v8, 0x0

    .line 665
    const-string v6, ""

    .line 666
    .local v6, szNodeName:Ljava/lang/String;
    move-object v7, p1

    .line 668
    .local v7, szTempPath:Ljava/lang/String;
    const/4 v1, 0x0

    .line 669
    .local v1, index:I
    const/4 v0, 0x0

    .line 670
    .local v0, i:I
    iget-object v4, p0, Lcom/wssyncmldm/eng/core/XDMOmVfs;->root:Lcom/wssyncmldm/eng/core/XDMVnode;

    .line 672
    .local v4, ptBaseNode:Lcom/wssyncmldm/eng/core/XDMVnode;
    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 673
    .local v3, nodenamesplit:[Ljava/lang/String;
    array-length v2, v3

    .line 675
    .local v2, l:I
    aget-object v9, v3, v8

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_1e

    .line 676
    const/4 v1, 0x1

    .line 680
    :goto_1a
    move v0, v1

    :goto_1b
    if-lt v0, v2, :cond_20

    .line 702
    :goto_1d
    return v8

    .line 678
    :cond_1e
    const/4 v1, 0x0

    goto :goto_1a

    .line 682
    :cond_20
    aget-object v6, v3, v0

    .line 683
    add-int/lit8 v9, v0, 0x1

    if-ne v9, v2, :cond_37

    .line 685
    invoke-static {p0, v6, v4}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsGetNode(Lcom/wssyncmldm/eng/core/XDMOmVfs;Ljava/lang/String;Lcom/wssyncmldm/eng/core/XDMVnode;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v9

    if-eqz v9, :cond_2e

    .line 687
    const/4 v8, -0x2

    goto :goto_1d

    .line 690
    :cond_2e
    const/4 v9, 0x1

    invoke-static {v6, v9}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsCreateNewNode(Ljava/lang/String;Z)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v5

    .line 691
    .local v5, ptNode:Lcom/wssyncmldm/eng/core/XDMVnode;
    invoke-static {v4, v5}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsAppendNode(Lcom/wssyncmldm/eng/core/XDMVnode;Lcom/wssyncmldm/eng/core/XDMVnode;)I

    goto :goto_1d

    .line 694
    .end local v5           #ptNode:Lcom/wssyncmldm/eng/core/XDMVnode;
    :cond_37
    invoke-static {p0, v6, v4}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsGetNode(Lcom/wssyncmldm/eng/core/XDMOmVfs;Ljava/lang/String;Lcom/wssyncmldm/eng/core/XDMVnode;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v5

    .line 695
    .restart local v5       #ptNode:Lcom/wssyncmldm/eng/core/XDMVnode;
    if-nez v5, :cond_3f

    .line 697
    const/4 v8, -0x3

    goto :goto_1d

    .line 700
    :cond_3f
    move-object v4, v5

    .line 680
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b
.end method

.method public static xdmOmVfsDeleteAclList(Lcom/wssyncmldm/eng/core/XDMOmList;)V
    .registers 4
    .parameter "h"

    .prologue
    .line 965
    move-object v1, p0

    .line 967
    .local v1, cur:Lcom/wssyncmldm/eng/core/XDMOmList;
    const/4 v0, 0x0

    .line 969
    .local v0, acl:Lcom/wssyncmldm/eng/core/XDMOmAcl;
    :goto_2
    if-nez v1, :cond_5

    .line 979
    return-void

    .line 971
    :cond_5
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMOmList;->next:Lcom/wssyncmldm/eng/core/XDMOmList;

    .line 972
    .local v2, next:Lcom/wssyncmldm/eng/core/XDMOmList;
    iget-object v0, v1, Lcom/wssyncmldm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    .end local v0           #acl:Lcom/wssyncmldm/eng/core/XDMOmAcl;
    check-cast v0, Lcom/wssyncmldm/eng/core/XDMOmAcl;

    .line 974
    .restart local v0       #acl:Lcom/wssyncmldm/eng/core/XDMOmAcl;
    const/4 v0, 0x0

    .line 975
    const/4 v1, 0x0

    .line 977
    move-object v1, v2

    goto :goto_2
.end method

.method public static xdmOmVfsDeleteMimeList(Lcom/wssyncmldm/eng/core/XDMOmList;)V
    .registers 4
    .parameter "h"

    .prologue
    .line 986
    move-object v0, p0

    .line 988
    .local v0, cur:Lcom/wssyncmldm/eng/core/XDMOmList;
    :goto_1
    if-nez v0, :cond_4

    .line 997
    return-void

    .line 990
    :cond_4
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMOmList;->next:Lcom/wssyncmldm/eng/core/XDMOmList;

    .line 992
    .local v1, next:Lcom/wssyncmldm/eng/core/XDMOmList;
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/wssyncmldm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    .line 993
    const/4 v0, 0x0

    .line 995
    move-object v0, v1

    goto :goto_1
.end method

.method private static xdmOmVfsDeleteOmFile()V
    .registers 1

    .prologue
    .line 1074
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFileIdObjectTreeInfo()I

    move-result v0

    .line 1075
    .local v0, nFileId:I
    invoke-static {v0}, Lcom/wssyncmldm/db/file/XDB;->xdbDeleteFile(I)I

    .line 1077
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFileIdObjectData()I

    move-result v0

    .line 1078
    invoke-static {v0}, Lcom/wssyncmldm/db/file/XDB;->xdbDeleteFile(I)I

    .line 1079
    return-void
.end method

.method public static xdmOmVfsDeleteVfs(Lcom/wssyncmldm/eng/core/XDMVnode;)V
    .registers 5
    .parameter "ptNode"

    .prologue
    const/4 v3, 0x0

    .line 1045
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMVnode;->childlist:Lcom/wssyncmldm/eng/core/XDMVnode;

    .line 1048
    .local v0, cur:Lcom/wssyncmldm/eng/core/XDMVnode;
    :goto_3
    if-nez v0, :cond_21

    .line 1055
    iget-object v2, p0, Lcom/wssyncmldm/eng/core/XDMVnode;->acl:Lcom/wssyncmldm/eng/core/XDMOmList;

    if-eqz v2, :cond_e

    .line 1057
    iget-object v2, p0, Lcom/wssyncmldm/eng/core/XDMVnode;->acl:Lcom/wssyncmldm/eng/core/XDMOmList;

    invoke-static {v2}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsDeleteAclList(Lcom/wssyncmldm/eng/core/XDMOmList;)V

    .line 1059
    :cond_e
    iget-object v2, p0, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    if-eqz v2, :cond_17

    .line 1061
    iget-object v2, p0, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    invoke-static {v2}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsDeleteMimeList(Lcom/wssyncmldm/eng/core/XDMOmList;)V

    .line 1063
    :cond_17
    iput-object v3, p0, Lcom/wssyncmldm/eng/core/XDMVnode;->m_szName:Ljava/lang/String;

    .line 1064
    iput-object v3, p0, Lcom/wssyncmldm/eng/core/XDMVnode;->title:Ljava/lang/String;

    .line 1065
    iput-object v3, p0, Lcom/wssyncmldm/eng/core/XDMVnode;->m_szTstamp:Ljava/lang/String;

    .line 1066
    iput-object v3, p0, Lcom/wssyncmldm/eng/core/XDMVnode;->m_szDdfName:Ljava/lang/String;

    .line 1067
    const/4 p0, 0x0

    .line 1068
    return-void

    .line 1050
    :cond_21
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->next:Lcom/wssyncmldm/eng/core/XDMVnode;

    .line 1051
    .local v1, tmp:Lcom/wssyncmldm/eng/core/XDMVnode;
    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsDeleteVfs(Lcom/wssyncmldm/eng/core/XDMVnode;)V

    .line 1052
    move-object v0, v1

    goto :goto_3
.end method

.method public static xdmOmVfsEnd(Lcom/wssyncmldm/eng/core/XDMOmVfs;)V
    .registers 2
    .parameter "pVfs"

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMOmVfs;->root:Lcom/wssyncmldm/eng/core/XDMVnode;

    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsDeleteVfs(Lcom/wssyncmldm/eng/core/XDMVnode;)V

    .line 1041
    return-void
.end method

.method public static xdmOmVfsFindVaddr(Lcom/wssyncmldm/eng/core/XDMOmVfs;Lcom/wssyncmldm/eng/core/XDMVnode;Lcom/wssyncmldm/eng/core/XDMVfspace;)V
    .registers 8
    .parameter "pVfs"
    .parameter "ptNode"
    .parameter "pSpace"

    .prologue
    .line 814
    iget-object v0, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->childlist:Lcom/wssyncmldm/eng/core/XDMVnode;

    .line 816
    .local v0, cur:Lcom/wssyncmldm/eng/core/XDMVnode;
    :goto_2
    if-nez v0, :cond_26

    .line 822
    iget v1, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->vaddr:I

    if-ltz v1, :cond_25

    iget v1, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    if-lez v1, :cond_25

    .line 824
    iget-object v1, p2, Lcom/wssyncmldm/eng/core/XDMVfspace;->start:[I

    iget v2, p2, Lcom/wssyncmldm/eng/core/XDMVfspace;->i:I

    iget v3, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->vaddr:I

    aput v3, v1, v2

    .line 825
    iget-object v1, p2, Lcom/wssyncmldm/eng/core/XDMVfspace;->end:[I

    iget v2, p2, Lcom/wssyncmldm/eng/core/XDMVfspace;->i:I

    iget v3, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->vaddr:I

    iget v4, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    add-int/2addr v3, v4

    aput v3, v1, v2

    .line 826
    iget v1, p2, Lcom/wssyncmldm/eng/core/XDMVfspace;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p2, Lcom/wssyncmldm/eng/core/XDMVfspace;->i:I

    .line 828
    :cond_25
    return-void

    .line 818
    :cond_26
    invoke-static {p0, v0, p2}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsFindVaddr(Lcom/wssyncmldm/eng/core/XDMOmVfs;Lcom/wssyncmldm/eng/core/XDMVnode;Lcom/wssyncmldm/eng/core/XDMVfspace;)V

    .line 819
    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->next:Lcom/wssyncmldm/eng/core/XDMVnode;

    goto :goto_2
.end method

.method public static xdmOmVfsGetData(Lcom/wssyncmldm/eng/core/XDMOmVfs;Lcom/wssyncmldm/eng/core/XDMVnode;[C)I
    .registers 7
    .parameter "pVfs"
    .parameter "ptNode"
    .parameter "pBuff"

    .prologue
    const/4 v1, -0x4

    .line 1003
    iget v2, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    if-lez v2, :cond_13

    iget v2, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->vaddr:I

    if-ltz v2, :cond_13

    .line 1005
    iget v2, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->vaddr:I

    iget v3, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-static {p0, v2, p2, v3}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsLoadFsData(Lcom/wssyncmldm/eng/core/XDMOmVfs;I[CI)I

    move-result v0

    .line 1006
    .local v0, ret:I
    if-eqz v0, :cond_14

    .line 1012
    .end local v0           #ret:I
    :cond_13
    :goto_13
    return v1

    .line 1010
    .restart local v0       #ret:I
    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public static xdmOmVfsGetFreeVaddr(Lcom/wssyncmldm/eng/core/XDMOmVfs;I)I
    .registers 14
    .parameter "pVfs"
    .parameter "nSize"

    .prologue
    const/4 v11, 0x0

    .line 750
    const/4 v3, 0x0

    .line 755
    .local v3, pSpace:Lcom/wssyncmldm/eng/core/XDMVfspace;
    new-instance v3, Lcom/wssyncmldm/eng/core/XDMVfspace;

    .end local v3           #pSpace:Lcom/wssyncmldm/eng/core/XDMVfspace;
    invoke-direct {v3}, Lcom/wssyncmldm/eng/core/XDMVfspace;-><init>()V

    .line 756
    .restart local v3       #pSpace:Lcom/wssyncmldm/eng/core/XDMVfspace;
    iget-object v8, p0, Lcom/wssyncmldm/eng/core/XDMOmVfs;->root:Lcom/wssyncmldm/eng/core/XDMVnode;

    invoke-static {p0, v8, v3}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsFindVaddr(Lcom/wssyncmldm/eng/core/XDMOmVfs;Lcom/wssyncmldm/eng/core/XDMVnode;Lcom/wssyncmldm/eng/core/XDMVfspace;)V

    .line 758
    iget v8, v3, Lcom/wssyncmldm/eng/core/XDMVfspace;->i:I

    if-nez v8, :cond_14

    .line 760
    const/4 v4, 0x0

    .line 761
    .local v4, ret:I
    const/4 v3, 0x0

    move v5, v4

    .line 809
    .end local v4           #ret:I
    .local v5, ret:I
    :goto_13
    return v5

    .line 765
    .end local v5           #ret:I
    :cond_14
    iget v8, v3, Lcom/wssyncmldm/eng/core/XDMVfspace;->i:I

    add-int/lit8 v1, v8, -0x1

    .local v1, i:I
    :goto_18
    const/4 v8, 0x1

    if-ge v1, v8, :cond_2d

    .line 781
    iget-object v8, v3, Lcom/wssyncmldm/eng/core/XDMVfspace;->start:[I

    aget v8, v8, v11

    if-lez v8, :cond_6c

    iget-object v8, v3, Lcom/wssyncmldm/eng/core/XDMVfspace;->start:[I

    aget v8, v8, v11

    add-int/lit8 v8, v8, 0x1

    if-lt v8, p1, :cond_6c

    .line 783
    const/4 v4, 0x0

    .line 784
    .restart local v4       #ret:I
    const/4 v3, 0x0

    move v5, v4

    .line 785
    .end local v4           #ret:I
    .restart local v5       #ret:I
    goto :goto_13

    .line 767
    .end local v5           #ret:I
    :cond_2d
    const/4 v2, 0x0

    .local v2, k:I
    :goto_2e
    add-int/lit8 v8, v1, -0x1

    if-le v2, v8, :cond_35

    .line 765
    add-int/lit8 v1, v1, -0x1

    goto :goto_18

    .line 769
    :cond_35
    iget-object v8, v3, Lcom/wssyncmldm/eng/core/XDMVfspace;->start:[I

    add-int/lit8 v9, v2, 0x1

    aget v8, v8, v9

    iget-object v9, v3, Lcom/wssyncmldm/eng/core/XDMVfspace;->start:[I

    aget v9, v9, v2

    if-ge v8, v9, :cond_69

    .line 771
    iget-object v8, v3, Lcom/wssyncmldm/eng/core/XDMVfspace;->start:[I

    add-int/lit8 v9, v2, 0x1

    aget v7, v8, v9

    .line 772
    .local v7, start:I
    iget-object v8, v3, Lcom/wssyncmldm/eng/core/XDMVfspace;->end:[I

    add-int/lit8 v9, v2, 0x1

    aget v0, v8, v9

    .line 773
    .local v0, end:I
    iget-object v8, v3, Lcom/wssyncmldm/eng/core/XDMVfspace;->start:[I

    add-int/lit8 v9, v2, 0x1

    iget-object v10, v3, Lcom/wssyncmldm/eng/core/XDMVfspace;->start:[I

    aget v10, v10, v2

    aput v10, v8, v9

    .line 774
    iget-object v8, v3, Lcom/wssyncmldm/eng/core/XDMVfspace;->end:[I

    add-int/lit8 v9, v2, 0x1

    iget-object v10, v3, Lcom/wssyncmldm/eng/core/XDMVfspace;->end:[I

    aget v10, v10, v2

    aput v10, v8, v9

    .line 775
    iget-object v8, v3, Lcom/wssyncmldm/eng/core/XDMVfspace;->start:[I

    aput v7, v8, v2

    .line 776
    iget-object v8, v3, Lcom/wssyncmldm/eng/core/XDMVfspace;->end:[I

    aput v0, v8, v2

    .line 767
    .end local v0           #end:I
    .end local v7           #start:I
    :cond_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 788
    .end local v2           #k:I
    :cond_6c
    const/4 v1, 0x0

    :goto_6d
    iget v8, v3, Lcom/wssyncmldm/eng/core/XDMVfspace;->i:I

    add-int/lit8 v8, v8, -0x1

    if-lt v1, v8, :cond_93

    .line 799
    const-wide/32 v8, 0xa000

    iget-object v10, v3, Lcom/wssyncmldm/eng/core/XDMVfspace;->end:[I

    iget v11, v3, Lcom/wssyncmldm/eng/core/XDMVfspace;->i:I

    add-int/lit8 v11, v11, -0x1

    aget v10, v10, v11

    int-to-long v10, v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    int-to-long v10, p1

    cmp-long v8, v8, v10

    if-ltz v8, :cond_ad

    .line 801
    iget-object v8, v3, Lcom/wssyncmldm/eng/core/XDMVfspace;->end:[I

    iget v9, v3, Lcom/wssyncmldm/eng/core/XDMVfspace;->i:I

    add-int/lit8 v9, v9, -0x1

    aget v4, v8, v9

    .line 802
    .restart local v4       #ret:I
    const/4 v3, 0x0

    move v5, v4

    .line 803
    .end local v4           #ret:I
    .restart local v5       #ret:I
    goto :goto_13

    .line 790
    .end local v5           #ret:I
    :cond_93
    iget-object v8, v3, Lcom/wssyncmldm/eng/core/XDMVfspace;->start:[I

    add-int/lit8 v9, v1, 0x1

    aget v8, v8, v9

    iget-object v9, v3, Lcom/wssyncmldm/eng/core/XDMVfspace;->end:[I

    aget v9, v9, v1

    sub-int/2addr v8, v9

    add-int/lit8 v6, v8, -0x1

    .line 791
    .local v6, s:I
    if-lt v6, p1, :cond_aa

    .line 793
    iget-object v8, v3, Lcom/wssyncmldm/eng/core/XDMVfspace;->end:[I

    aget v4, v8, v1

    .line 794
    .restart local v4       #ret:I
    const/4 v3, 0x0

    move v5, v4

    .line 795
    .end local v4           #ret:I
    .restart local v5       #ret:I
    goto/16 :goto_13

    .line 788
    .end local v5           #ret:I
    :cond_aa
    add-int/lit8 v1, v1, 0x1

    goto :goto_6d

    .line 806
    .end local v6           #s:I
    :cond_ad
    const/4 v4, -0x5

    .line 808
    .restart local v4       #ret:I
    const/4 v3, 0x0

    move v5, v4

    .line 809
    .end local v4           #ret:I
    .restart local v5       #ret:I
    goto/16 :goto_13
.end method

.method public static xdmOmVfsGetNode(Lcom/wssyncmldm/eng/core/XDMOmVfs;Ljava/lang/String;Lcom/wssyncmldm/eng/core/XDMVnode;)Lcom/wssyncmldm/eng/core/XDMVnode;
    .registers 6
    .parameter "pVfs"
    .parameter "szNodeName"
    .parameter "ptBaseNode"

    .prologue
    const/4 v1, 0x0

    .line 636
    const/4 v0, 0x0

    .line 638
    .local v0, cur:Lcom/wssyncmldm/eng/core/XDMVnode;
    if-eqz p2, :cond_6

    .line 640
    iget-object v0, p2, Lcom/wssyncmldm/eng/core/XDMVnode;->childlist:Lcom/wssyncmldm/eng/core/XDMVnode;

    .line 643
    :cond_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 659
    :goto_c
    return-object v1

    .line 646
    :cond_d
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-nez v2, :cond_2b

    .line 648
    :cond_1c
    iget-object v1, p0, Lcom/wssyncmldm/eng/core/XDMOmVfs;->root:Lcom/wssyncmldm/eng/core/XDMVnode;

    goto :goto_c

    .line 653
    :cond_1f
    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->m_szName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    move-object v1, v0

    .line 655
    goto :goto_c

    .line 657
    :cond_29
    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->next:Lcom/wssyncmldm/eng/core/XDMVnode;

    .line 651
    :cond_2b
    if-nez v0, :cond_1f

    goto :goto_c
.end method

.method public static xdmOmVfsGetParent(Lcom/wssyncmldm/eng/core/XDMOmVfs;Lcom/wssyncmldm/eng/core/XDMVnode;Lcom/wssyncmldm/eng/core/XDMVnode;)Lcom/wssyncmldm/eng/core/XDMVnode;
    .registers 6
    .parameter "pVfs"
    .parameter "ptBaseNode"
    .parameter "ptNode"

    .prologue
    .line 938
    move-object v1, p1

    .line 939
    .local v1, ptParent:Lcom/wssyncmldm/eng/core/XDMVnode;
    iget-object v0, v1, Lcom/wssyncmldm/eng/core/XDMVnode;->childlist:Lcom/wssyncmldm/eng/core/XDMVnode;

    .line 941
    .local v0, ptChild:Lcom/wssyncmldm/eng/core/XDMVnode;
    :goto_3
    if-nez v0, :cond_b

    .line 948
    iget-object v0, v1, Lcom/wssyncmldm/eng/core/XDMVnode;->childlist:Lcom/wssyncmldm/eng/core/XDMVnode;

    .line 949
    :goto_7
    if-nez v0, :cond_10

    .line 959
    const/4 v1, 0x0

    .end local v1           #ptParent:Lcom/wssyncmldm/eng/core/XDMVnode;
    :cond_a
    :goto_a
    return-object v1

    .line 943
    .restart local v1       #ptParent:Lcom/wssyncmldm/eng/core/XDMVnode;
    :cond_b
    if-eq v0, p2, :cond_a

    .line 945
    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->next:Lcom/wssyncmldm/eng/core/XDMVnode;

    goto :goto_3

    .line 951
    :cond_10
    invoke-static {p0, v0, p2}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsGetParent(Lcom/wssyncmldm/eng/core/XDMOmVfs;Lcom/wssyncmldm/eng/core/XDMVnode;Lcom/wssyncmldm/eng/core/XDMVnode;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v2

    .line 952
    .local v2, tmp:Lcom/wssyncmldm/eng/core/XDMVnode;
    if-eqz v2, :cond_18

    move-object v1, v2

    .line 954
    goto :goto_a

    .line 956
    :cond_18
    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->next:Lcom/wssyncmldm/eng/core/XDMVnode;

    goto :goto_7
.end method

.method public static xdmOmVfsHaveThisChild(Lcom/wssyncmldm/eng/core/XDMVnode;Lcom/wssyncmldm/eng/core/XDMVnode;)Z
    .registers 5
    .parameter "ptParent"
    .parameter "ptChild"

    .prologue
    .line 579
    const/4 v0, 0x0

    .line 581
    .local v0, cur:Lcom/wssyncmldm/eng/core/XDMVnode;
    if-eqz p0, :cond_5

    .line 583
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMVnode;->childlist:Lcom/wssyncmldm/eng/core/XDMVnode;

    .line 586
    :cond_5
    :goto_5
    if-nez v0, :cond_9

    .line 595
    const/4 v1, 0x0

    :goto_8
    return v1

    .line 588
    :cond_9
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->m_szName:Ljava/lang/String;

    iget-object v2, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->m_szName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_15

    .line 590
    const/4 v1, 0x1

    goto :goto_8

    .line 592
    :cond_15
    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->next:Lcom/wssyncmldm/eng/core/XDMVnode;

    goto :goto_5
.end method

.method public static xdmOmVfsInit(Lcom/wssyncmldm/eng/core/XDMOmVfs;)I
    .registers 4
    .parameter "pVfs"

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, nRet:I
    iget-object v1, p0, Lcom/wssyncmldm/eng/core/XDMOmVfs;->root:Lcom/wssyncmldm/eng/core/XDMVnode;

    if-nez v1, :cond_e

    .line 47
    const-string v1, "/"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsCreateNewNode(Ljava/lang/String;Z)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v1

    iput-object v1, p0, Lcom/wssyncmldm/eng/core/XDMOmVfs;->root:Lcom/wssyncmldm/eng/core/XDMVnode;

    .line 50
    :cond_e
    invoke-static {p0}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsLoadFs(Lcom/wssyncmldm/eng/core/XDMOmVfs;)I

    move-result v0

    .line 51
    return v0
.end method

.method public static xdmOmVfsLoadFs(Lcom/wssyncmldm/eng/core/XDMOmVfs;)I
    .registers 13
    .parameter "pVfs"

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 98
    const/4 v8, 0x0

    .line 99
    .local v8, nFileId:I
    const/4 v1, 0x0

    .line 100
    .local v1, Input:Ljava/io/DataInputStream;
    const/4 v2, 0x0

    .line 101
    .local v2, pBuff:I
    const/4 v5, 0x0

    .line 102
    .local v5, nSize:I
    const/4 v9, 0x0

    .line 104
    .local v9, szFileName:Ljava/lang/String;
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFileIdObjectTreeInfo()I

    move-result v8

    .line 105
    invoke-static {v8}, Lcom/wssyncmldm/db/file/XDB;->xdbFileGetNameFromCallerID(I)Ljava/lang/String;

    move-result-object v9

    .line 106
    invoke-static {v8}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFileSize(I)I

    move-result v5

    .line 107
    if-gtz v5, :cond_17

    move v0, v11

    .line 172
    :goto_16
    return v0

    .line 112
    :cond_17
    new-array v4, v5, [B

    .line 113
    .local v4, tmp:[B
    invoke-static {v8, v11, v5, v4}, Lcom/wssyncmldm/db/file/XDB;->xdbReadFile(III[B)Z

    .line 116
    :try_start_1c
    new-instance v6, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_26} :catch_48

    .end local v1           #Input:Ljava/io/DataInputStream;
    .local v6, Input:Ljava/io/DataInputStream;
    move-object v1, v6

    .line 123
    .end local v6           #Input:Ljava/io/DataInputStream;
    .restart local v1       #Input:Ljava/io/DataInputStream;
    :goto_27
    sget v0, Lcom/wssyncmldm/eng/core/XDMOmVfs;->index:I

    aget-byte v2, v4, v0

    .line 124
    :cond_2b
    const/16 v0, 0x42

    if-eq v2, v0, :cond_51

    .line 158
    if-eqz v1, :cond_34

    .line 159
    :try_start_31
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_7f

    :cond_34
    :goto_34
    move-object v4, v10

    .line 166
    check-cast v4, [B

    .line 167
    sput v11, Lcom/wssyncmldm/eng/core/XDMOmVfs;->index:I

    .line 168
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFileIdObjectData()I

    move-result v8

    .line 169
    invoke-static {v8}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFileSize(I)I

    move-result v5

    .line 170
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMOmVfs;->stdobj_space:[B

    invoke-static {v8, v11, v5, v0}, Lcom/wssyncmldm/db/file/XDB;->xdbReadFile(III[B)Z

    move v0, v11

    .line 172
    goto :goto_16

    .line 118
    :catch_48
    move-exception v7

    .line 120
    .local v7, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_27

    .line 128
    .end local v7           #e:Ljava/io/FileNotFoundException;
    :cond_51
    :try_start_51
    iget-object v3, p0, Lcom/wssyncmldm/eng/core/XDMOmVfs;->root:Lcom/wssyncmldm/eng/core/XDMVnode;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsUnpackFsNode(Lcom/wssyncmldm/eng/core/XDMOmVfs;Ljava/io/DataInputStream;ILcom/wssyncmldm/eng/core/XDMVnode;[BI)I
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_57} :catch_66

    move-result v2

    .line 139
    if-nez v2, :cond_2b

    .line 143
    if-eqz v1, :cond_5f

    .line 144
    :try_start_5c
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_76

    :cond_5f
    :goto_5f
    move-object v4, v10

    .line 150
    check-cast v4, [B

    .line 151
    sput v11, Lcom/wssyncmldm/eng/core/XDMOmVfs;->index:I

    .line 152
    const/4 v0, -0x4

    goto :goto_16

    .line 130
    :catch_66
    move-exception v7

    .line 132
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsResetStdobj()V

    .line 136
    invoke-static {}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsDeleteOmFile()V

    move v0, v11

    .line 137
    goto :goto_16

    .line 146
    .end local v7           #e:Ljava/lang/Exception;
    :catch_76
    move-exception v7

    .line 148
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_5f

    .line 161
    .end local v7           #e:Ljava/io/IOException;
    :catch_7f
    move-exception v7

    .line 163
    .restart local v7       #e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_34
.end method

.method public static xdmOmVfsLoadFsData(Lcom/wssyncmldm/eng/core/XDMOmVfs;I[CI)I
    .registers 7
    .parameter "pVfs"
    .parameter "addr"
    .parameter "pBuff"
    .parameter "nSize"

    .prologue
    .line 846
    const/4 v0, 0x0

    .line 847
    .local v0, i:I
    const/4 v0, 0x0

    :goto_2
    if-lt v0, p3, :cond_6

    .line 851
    const/4 v1, 0x0

    return v1

    .line 849
    :cond_6
    iget-object v1, p0, Lcom/wssyncmldm/eng/core/XDMOmVfs;->stdobj_space:[B

    add-int v2, p1, v0

    aget-byte v1, v1, v2

    int-to-char v1, v1

    aput-char v1, p2, v0

    .line 847
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static xdmOmVfsPackByte(Ljava/io/DataOutputStream;I)Ljava/io/DataOutputStream;
    .registers 2
    .parameter "pBuff"
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 329
    return-object p0
.end method

.method public static xdmOmVfsPackEnd(Ljava/io/DataOutputStream;)Ljava/io/DataOutputStream;
    .registers 2
    .parameter "pBuff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    const/16 v0, 0x44

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 323
    return-object p0
.end method

.method public static xdmOmVfsPackFsNode(Ljava/io/DataOutputStream;Lcom/wssyncmldm/eng/core/XDMVnode;)Ljava/io/DataOutputStream;
    .registers 3
    .parameter "pBuff"
    .parameter "ptNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, cur:Lcom/wssyncmldm/eng/core/XDMVnode;
    if-nez p1, :cond_4

    .line 240
    :goto_3
    return-object p0

    .line 228
    :cond_4
    iget-object v0, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->childlist:Lcom/wssyncmldm/eng/core/XDMVnode;

    .line 230
    invoke-static {p0}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsPackStart(Ljava/io/DataOutputStream;)Ljava/io/DataOutputStream;

    move-result-object p0

    .line 231
    invoke-static {p0, p1}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsPackNode(Ljava/io/DataOutputStream;Lcom/wssyncmldm/eng/core/XDMVnode;)Ljava/io/DataOutputStream;

    move-result-object p0

    .line 233
    :goto_e
    if-nez v0, :cond_15

    .line 239
    invoke-static {p0}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsPackEnd(Ljava/io/DataOutputStream;)Ljava/io/DataOutputStream;

    move-result-object p0

    .line 240
    goto :goto_3

    .line 235
    :cond_15
    invoke-static {p0, v0}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsPackFsNode(Ljava/io/DataOutputStream;Lcom/wssyncmldm/eng/core/XDMVnode;)Ljava/io/DataOutputStream;

    move-result-object p0

    .line 236
    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->next:Lcom/wssyncmldm/eng/core/XDMVnode;

    goto :goto_e
.end method

.method public static xdmOmVfsPackInt16(Ljava/io/DataOutputStream;I)Ljava/io/DataOutputStream;
    .registers 2
    .parameter "pBuff"
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 369
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 370
    return-object p0
.end method

.method public static xdmOmVfsPackInt32(Ljava/io/DataOutputStream;I)Ljava/io/DataOutputStream;
    .registers 2
    .parameter "pBuff"
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 364
    return-object p0
.end method

.method public static xdmOmVfsPackNode(Ljava/io/DataOutputStream;Lcom/wssyncmldm/eng/core/XDMVnode;)Ljava/io/DataOutputStream;
    .registers 7
    .parameter "pBuff"
    .parameter "ptNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    const/4 v2, 0x0

    .line 257
    .local v2, num:I
    iget-object v1, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->acl:Lcom/wssyncmldm/eng/core/XDMOmList;

    .line 258
    .local v1, item:Lcom/wssyncmldm/eng/core/XDMOmList;
    :goto_3
    if-nez v1, :cond_53

    .line 264
    invoke-static {p0, v2}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsPackByte(Ljava/io/DataOutputStream;I)Ljava/io/DataOutputStream;

    move-result-object p0

    .line 266
    iget-object v1, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->acl:Lcom/wssyncmldm/eng/core/XDMOmList;

    .line 267
    :goto_b
    if-nez v1, :cond_58

    .line 275
    iget v4, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->format:I

    invoke-static {p0, v4}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsPackInt32(Ljava/io/DataOutputStream;I)Ljava/io/DataOutputStream;

    move-result-object p0

    .line 276
    iget-object v4, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->m_szName:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsPackStr(Ljava/io/DataOutputStream;Ljava/lang/String;)Ljava/io/DataOutputStream;

    move-result-object p0

    .line 277
    iget v4, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-static {p0, v4}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsPackInt32(Ljava/io/DataOutputStream;I)Ljava/io/DataOutputStream;

    move-result-object p0

    .line 278
    iget-object v4, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->title:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsPackStr(Ljava/io/DataOutputStream;Ljava/lang/String;)Ljava/io/DataOutputStream;

    move-result-object p0

    .line 279
    iget-object v4, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->m_szTstamp:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsPackStr(Ljava/io/DataOutputStream;Ljava/lang/String;)Ljava/io/DataOutputStream;

    move-result-object p0

    .line 280
    iget v4, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->scope:I

    invoke-static {p0, v4}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsPackInt32(Ljava/io/DataOutputStream;I)Ljava/io/DataOutputStream;

    move-result-object p0

    .line 282
    const/4 v2, 0x0

    .line 283
    iget-object v1, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    .line 284
    :goto_34
    if-nez v1, :cond_6b

    .line 289
    invoke-static {p0, v2}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsPackByte(Ljava/io/DataOutputStream;I)Ljava/io/DataOutputStream;

    move-result-object p0

    .line 290
    if-lez v2, :cond_40

    .line 292
    iget-object v1, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    .line 293
    :goto_3e
    if-nez v1, :cond_70

    .line 301
    :cond_40
    iget v4, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->verno:I

    invoke-static {p0, v4}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsPackInt16(Ljava/io/DataOutputStream;I)Ljava/io/DataOutputStream;

    move-result-object p0

    .line 302
    iget-object v4, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->m_szDdfName:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsPackStr(Ljava/io/DataOutputStream;Ljava/lang/String;)Ljava/io/DataOutputStream;

    move-result-object p0

    .line 303
    iget v4, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->vaddr:I

    invoke-static {p0, v4}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsPackInt32(Ljava/io/DataOutputStream;I)Ljava/io/DataOutputStream;

    move-result-object p0

    .line 305
    return-object p0

    .line 260
    :cond_53
    add-int/lit8 v2, v2, 0x1

    .line 261
    iget-object v1, v1, Lcom/wssyncmldm/eng/core/XDMOmList;->next:Lcom/wssyncmldm/eng/core/XDMOmList;

    goto :goto_3

    .line 269
    :cond_58
    iget-object v0, v1, Lcom/wssyncmldm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    check-cast v0, Lcom/wssyncmldm/eng/core/XDMOmAcl;

    .line 270
    .local v0, acl:Lcom/wssyncmldm/eng/core/XDMOmAcl;
    iget-object v4, v0, Lcom/wssyncmldm/eng/core/XDMOmAcl;->m_szServerid:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsPackStr(Ljava/io/DataOutputStream;Ljava/lang/String;)Ljava/io/DataOutputStream;

    move-result-object p0

    .line 271
    iget v4, v0, Lcom/wssyncmldm/eng/core/XDMOmAcl;->ac:I

    invoke-static {p0, v4}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsPackByte(Ljava/io/DataOutputStream;I)Ljava/io/DataOutputStream;

    move-result-object p0

    .line 272
    iget-object v1, v1, Lcom/wssyncmldm/eng/core/XDMOmList;->next:Lcom/wssyncmldm/eng/core/XDMOmList;

    goto :goto_b

    .line 286
    .end local v0           #acl:Lcom/wssyncmldm/eng/core/XDMOmAcl;
    :cond_6b
    add-int/lit8 v2, v2, 0x1

    .line 287
    iget-object v1, v1, Lcom/wssyncmldm/eng/core/XDMOmList;->next:Lcom/wssyncmldm/eng/core/XDMOmList;

    goto :goto_34

    .line 295
    :cond_70
    iget-object v3, v1, Lcom/wssyncmldm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 296
    .local v3, szData:Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsPackStr(Ljava/io/DataOutputStream;Ljava/lang/String;)Ljava/io/DataOutputStream;

    move-result-object p0

    .line 297
    iget-object v1, v1, Lcom/wssyncmldm/eng/core/XDMOmList;->next:Lcom/wssyncmldm/eng/core/XDMOmList;

    goto :goto_3e
.end method

.method public static xdmOmVfsPackStart(Ljava/io/DataOutputStream;)Ljava/io/DataOutputStream;
    .registers 2
    .parameter "pBuff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 317
    return-object p0
.end method

.method public static xdmOmVfsPackStr(Ljava/io/DataOutputStream;Ljava/lang/String;)Ljava/io/DataOutputStream;
    .registers 5
    .parameter "pBuff"
    .parameter "szData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    const/4 v1, 0x0

    .line 336
    .local v1, len:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 338
    const/4 v1, 0x0

    .line 344
    :goto_8
    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 346
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 350
    :try_start_11
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_18} :catch_1e

    .line 358
    :cond_18
    :goto_18
    return-object p0

    .line 342
    :cond_19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_8

    .line 352
    :catch_1e
    move-exception v0

    .line 354
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_18
.end method

.method public static xdmOmVfsPath2Node(Lcom/wssyncmldm/eng/core/XDMOmVfs;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;
    .registers 11
    .parameter "pVfs"
    .parameter "szPath"

    .prologue
    const/4 v7, 0x0

    .line 602
    const-string v5, ""

    .line 603
    .local v5, szNodeName:Ljava/lang/String;
    move-object v6, p1

    .line 604
    .local v6, szTempPath:Ljava/lang/String;
    const/4 v4, 0x0

    .line 606
    .local v4, ptNode:Lcom/wssyncmldm/eng/core/XDMVnode;
    iget-object v3, p0, Lcom/wssyncmldm/eng/core/XDMOmVfs;->root:Lcom/wssyncmldm/eng/core/XDMVnode;

    .line 608
    .local v3, ptBaseNode:Lcom/wssyncmldm/eng/core/XDMVnode;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 631
    :cond_d
    :goto_d
    return-object v7

    .line 611
    :cond_e
    const-string v8, "."

    invoke-virtual {p1, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_1e

    const-string v8, "./"

    invoke-virtual {p1, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_21

    .line 613
    :cond_1e
    iget-object v7, p0, Lcom/wssyncmldm/eng/core/XDMOmVfs;->root:Lcom/wssyncmldm/eng/core/XDMVnode;

    goto :goto_d

    .line 616
    :cond_21
    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 617
    .local v2, nodenamesplit:[Ljava/lang/String;
    array-length v1, v2

    .line 618
    .local v1, l:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_29
    if-lt v0, v1, :cond_2d

    move-object v7, v4

    .line 631
    goto :goto_d

    .line 620
    :cond_2d
    aget-object v5, v2, v0

    .line 622
    invoke-static {p0, v5, v3}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsGetNode(Lcom/wssyncmldm/eng/core/XDMOmVfs;Ljava/lang/String;Lcom/wssyncmldm/eng/core/XDMVnode;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v4

    .line 623
    if-eqz v4, :cond_d

    .line 628
    move-object v3, v4

    .line 618
    add-int/lit8 v0, v0, 0x1

    goto :goto_29
.end method

.method public static xdmOmVfsRemoveNode(Lcom/wssyncmldm/eng/core/XDMOmVfs;Lcom/wssyncmldm/eng/core/XDMVnode;Z)I
    .registers 10
    .parameter "pVfs"
    .parameter "ptNode"
    .parameter "deletechilds"

    .prologue
    const/4 v4, -0x4

    const/4 v6, 0x0

    .line 856
    iget-object v0, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->childlist:Lcom/wssyncmldm/eng/core/XDMVnode;

    .line 860
    .local v0, cur:Lcom/wssyncmldm/eng/core/XDMVnode;
    if-eqz v0, :cond_18

    .line 862
    if-nez p2, :cond_16

    move v2, v4

    .line 930
    :cond_9
    :goto_9
    return v2

    .line 869
    :cond_a
    const/4 v5, 0x1

    invoke-static {p0, v0, v5}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsRemoveNode(Lcom/wssyncmldm/eng/core/XDMOmVfs;Lcom/wssyncmldm/eng/core/XDMVnode;Z)I

    move-result v2

    .line 870
    .local v2, ret:I
    if-nez v2, :cond_9

    .line 875
    iget-object v5, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->childlist:Lcom/wssyncmldm/eng/core/XDMVnode;

    if-nez v5, :cond_22

    .line 877
    const/4 v0, 0x0

    .line 867
    .end local v2           #ret:I
    :cond_16
    :goto_16
    if-nez v0, :cond_a

    .line 886
    :cond_18
    iget-object v5, p0, Lcom/wssyncmldm/eng/core/XDMOmVfs;->root:Lcom/wssyncmldm/eng/core/XDMVnode;

    invoke-static {p0, v5, p1}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsGetParent(Lcom/wssyncmldm/eng/core/XDMOmVfs;Lcom/wssyncmldm/eng/core/XDMVnode;Lcom/wssyncmldm/eng/core/XDMVnode;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v1

    .line 887
    .local v1, ptParent:Lcom/wssyncmldm/eng/core/XDMVnode;
    if-nez v1, :cond_25

    move v2, v4

    .line 889
    goto :goto_9

    .line 881
    .end local v1           #ptParent:Lcom/wssyncmldm/eng/core/XDMVnode;
    .restart local v2       #ret:I
    :cond_22
    iget-object v0, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->childlist:Lcom/wssyncmldm/eng/core/XDMVnode;

    goto :goto_16

    .line 891
    .end local v2           #ret:I
    .restart local v1       #ptParent:Lcom/wssyncmldm/eng/core/XDMVnode;
    :cond_25
    iget-object v4, v1, Lcom/wssyncmldm/eng/core/XDMVnode;->childlist:Lcom/wssyncmldm/eng/core/XDMVnode;

    if-ne v4, p1, :cond_4e

    .line 893
    iget-object v3, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->next:Lcom/wssyncmldm/eng/core/XDMVnode;

    .line 894
    .local v3, tmp:Lcom/wssyncmldm/eng/core/XDMVnode;
    iput-object v3, v1, Lcom/wssyncmldm/eng/core/XDMVnode;->childlist:Lcom/wssyncmldm/eng/core/XDMVnode;

    .line 910
    .end local v3           #tmp:Lcom/wssyncmldm/eng/core/XDMVnode;
    :cond_2d
    :goto_2d
    iget-object v4, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->acl:Lcom/wssyncmldm/eng/core/XDMOmList;

    if-eqz v4, :cond_36

    .line 912
    iget-object v4, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->acl:Lcom/wssyncmldm/eng/core/XDMOmList;

    invoke-static {v4}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsDeleteAclList(Lcom/wssyncmldm/eng/core/XDMOmList;)V

    .line 914
    :cond_36
    iget-object v4, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    if-eqz v4, :cond_3f

    .line 916
    iget-object v4, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    invoke-static {v4}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsDeleteMimeList(Lcom/wssyncmldm/eng/core/XDMOmList;)V

    .line 919
    :cond_3f
    iput-object v6, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->m_szName:Ljava/lang/String;

    .line 920
    iput-object v6, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->title:Ljava/lang/String;

    .line 921
    iput-object v6, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->m_szTstamp:Ljava/lang/String;

    .line 922
    iput-object v6, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->m_szDdfName:Ljava/lang/String;

    .line 924
    iput-object v6, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->next:Lcom/wssyncmldm/eng/core/XDMVnode;

    .line 927
    iput-object v6, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->ptParentNode:Lcom/wssyncmldm/eng/core/XDMVnode;

    .line 928
    const/4 p1, 0x0

    .line 930
    const/4 v2, 0x0

    goto :goto_9

    .line 898
    :cond_4e
    iget-object v0, v1, Lcom/wssyncmldm/eng/core/XDMVnode;->childlist:Lcom/wssyncmldm/eng/core/XDMVnode;

    .line 899
    :goto_50
    iget-object v4, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->next:Lcom/wssyncmldm/eng/core/XDMVnode;

    if-eqz v4, :cond_2d

    .line 901
    iget-object v4, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->next:Lcom/wssyncmldm/eng/core/XDMVnode;

    if-ne v4, p1, :cond_5d

    .line 903
    iget-object v4, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->next:Lcom/wssyncmldm/eng/core/XDMVnode;

    iput-object v4, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->next:Lcom/wssyncmldm/eng/core/XDMVnode;

    goto :goto_2d

    .line 906
    :cond_5d
    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->next:Lcom/wssyncmldm/eng/core/XDMVnode;

    goto :goto_50
.end method

.method private xdmOmVfsResetStdobj()V
    .registers 2

    .prologue
    .line 32
    const/4 v0, 0x0

    sput v0, Lcom/wssyncmldm/eng/core/XDMOmVfs;->index:I

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMOmVfs;->stdobj_space:[B

    .line 34
    const v0, 0xa000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMOmVfs;->stdobj_space:[B

    .line 35
    return-void
.end method

.method public static xdmOmVfsSaveFs(Lcom/wssyncmldm/eng/core/XDMOmVfs;)I
    .registers 9
    .parameter "pVfs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, Data:Ljava/io/DataOutputStream;
    const/4 v3, 0x0

    .line 186
    .local v3, nFileId:I
    const/4 v5, 0x0

    .line 187
    .local v5, szFileName:Ljava/lang/String;
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFileIdObjectTreeInfo()I

    move-result v3

    .line 188
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbFileGetNameFromCallerID(I)Ljava/lang/String;

    move-result-object v5

    .line 192
    :try_start_b
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_34

    .line 193
    .end local v0           #Data:Ljava/io/DataOutputStream;
    .local v1, Data:Ljava/io/DataOutputStream;
    :try_start_15
    iget-object v6, p0, Lcom/wssyncmldm/eng/core/XDMOmVfs;->root:Lcom/wssyncmldm/eng/core/XDMVnode;

    iget-object v4, v6, Lcom/wssyncmldm/eng/core/XDMVnode;->childlist:Lcom/wssyncmldm/eng/core/XDMVnode;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_19} :catch_3d

    .local v4, ptNode:Lcom/wssyncmldm/eng/core/XDMVnode;
    move-object v0, v1

    .line 195
    .end local v1           #Data:Ljava/io/DataOutputStream;
    .restart local v0       #Data:Ljava/io/DataOutputStream;
    :goto_1a
    if-nez v4, :cond_2d

    .line 200
    :try_start_1c
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_34

    .line 207
    .end local v4           #ptNode:Lcom/wssyncmldm/eng/core/XDMVnode;
    :goto_1f
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFileIdObjectData()I

    move-result v3

    .line 208
    const v6, 0xa000

    iget-object v7, p0, Lcom/wssyncmldm/eng/core/XDMOmVfs;->stdobj_space:[B

    invoke-static {v3, v6, v7}, Lcom/wssyncmldm/db/file/XDB;->xdbWriteFile(IILjava/lang/Object;)Z

    .line 210
    const/4 v6, 0x0

    return v6

    .line 197
    .restart local v4       #ptNode:Lcom/wssyncmldm/eng/core/XDMVnode;
    :cond_2d
    :try_start_2d
    invoke-static {v0, v4}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsPackFsNode(Ljava/io/DataOutputStream;Lcom/wssyncmldm/eng/core/XDMVnode;)Ljava/io/DataOutputStream;

    move-result-object v0

    .line 198
    iget-object v4, v4, Lcom/wssyncmldm/eng/core/XDMVnode;->next:Lcom/wssyncmldm/eng/core/XDMVnode;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_33} :catch_34

    goto :goto_1a

    .line 202
    .end local v4           #ptNode:Lcom/wssyncmldm/eng/core/XDMVnode;
    :catch_34
    move-exception v2

    .line 204
    .local v2, e:Ljava/lang/Exception;
    :goto_35
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_1f

    .line 202
    .end local v0           #Data:Ljava/io/DataOutputStream;
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #Data:Ljava/io/DataOutputStream;
    :catch_3d
    move-exception v2

    move-object v0, v1

    .end local v1           #Data:Ljava/io/DataOutputStream;
    .restart local v0       #Data:Ljava/io/DataOutputStream;
    goto :goto_35
.end method

.method public static xdmOmVfsSaveFsData(Lcom/wssyncmldm/eng/core/XDMOmVfs;ILjava/lang/Object;I)I
    .registers 10
    .parameter "pVfs"
    .parameter "l"
    .parameter "pBuff"
    .parameter "nSize"

    .prologue
    .line 832
    const/4 v1, 0x0

    .line 833
    .local v1, i:I
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 834
    .local v2, szTmp:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 835
    .local v0, data:[B
    const/4 v1, 0x0

    :goto_f
    if-lt v1, p3, :cond_13

    .line 841
    :cond_11
    const/4 v3, 0x0

    return v3

    .line 837
    :cond_13
    array-length v3, v0

    if-le v3, v1, :cond_11

    .line 839
    iget-object v3, p0, Lcom/wssyncmldm/eng/core/XDMOmVfs;->stdobj_space:[B

    add-int v4, p1, v1

    aget-byte v5, v0, v1

    aput-byte v5, v3, v4

    .line 835
    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method public static xdmOmVfsSetData(Lcom/wssyncmldm/eng/core/XDMOmVfs;Lcom/wssyncmldm/eng/core/XDMVnode;Ljava/lang/Object;I)I
    .registers 6
    .parameter "pVfs"
    .parameter "ptNode"
    .parameter "pBuff"
    .parameter "nBuffSize"

    .prologue
    .line 1020
    invoke-static {p0, p3}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsGetFreeVaddr(Lcom/wssyncmldm/eng/core/XDMOmVfs;I)I

    move-result v0

    .line 1021
    .local v0, addr:I
    if-gez v0, :cond_7

    .line 1035
    .end local v0           #addr:I
    :goto_6
    return v0

    .line 1026
    .restart local v0       #addr:I
    :cond_7
    iput v0, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->vaddr:I

    .line 1027
    iput p3, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    .line 1029
    invoke-static {p0, v0, p2, p3}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsSaveFsData(Lcom/wssyncmldm/eng/core/XDMOmVfs;ILjava/lang/Object;I)I

    move-result v1

    .line 1030
    .local v1, ret:I
    if-eqz v1, :cond_13

    .line 1032
    const/4 v0, -0x4

    goto :goto_6

    .line 1035
    :cond_13
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static xdmOmVfsUnpackFsNode(Lcom/wssyncmldm/eng/core/XDMOmVfs;Ljava/io/DataInputStream;ILcom/wssyncmldm/eng/core/XDMVnode;[BI)I
    .registers 15
    .parameter "pVfs"
    .parameter "in"
    .parameter "pBuff"
    .parameter "ptNode"
    .parameter "buf"
    .parameter "nSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v8, 0x42

    const/4 v6, 0x0

    const/16 v7, 0x44

    .line 376
    move v2, p2

    .line 378
    .local v2, ptr:I
    if-nez p1, :cond_28

    move v0, v6

    .line 414
    :goto_9
    return v0

    .line 383
    :cond_a
    if-ne v2, v8, :cond_49

    .line 385
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    .line 386
    sget v0, Lcom/wssyncmldm/eng/core/XDMOmVfs;->index:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/wssyncmldm/eng/core/XDMOmVfs;->index:I

    .line 387
    new-instance v3, Lcom/wssyncmldm/eng/core/XDMVnode;

    invoke-direct {v3}, Lcom/wssyncmldm/eng/core/XDMVnode;-><init>()V

    .line 388
    .local v3, ptChild:Lcom/wssyncmldm/eng/core/XDMVnode;
    invoke-static {p1, v3}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsUnpackNode(Ljava/io/DataInputStream;Lcom/wssyncmldm/eng/core/XDMVnode;)Ljava/io/DataInputStream;

    move-result-object p1

    .line 389
    invoke-static {p3, v3}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsAppendNode(Lcom/wssyncmldm/eng/core/XDMVnode;Lcom/wssyncmldm/eng/core/XDMVnode;)I

    .line 391
    sget v0, Lcom/wssyncmldm/eng/core/XDMOmVfs;->index:I

    aget-byte v2, p4, v0

    .line 392
    :cond_26
    :goto_26
    if-ne v2, v7, :cond_3a

    .line 381
    .end local v3           #ptChild:Lcom/wssyncmldm/eng/core/XDMVnode;
    :cond_28
    if-ne v2, v7, :cond_a

    .line 409
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    .line 410
    sget v0, Lcom/wssyncmldm/eng/core/XDMOmVfs;->index:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/wssyncmldm/eng/core/XDMOmVfs;->index:I

    .line 411
    sget v0, Lcom/wssyncmldm/eng/core/XDMOmVfs;->index:I

    if-ne v0, p5, :cond_4d

    move v0, v7

    .line 412
    goto :goto_9

    .line 394
    .restart local v3       #ptChild:Lcom/wssyncmldm/eng/core/XDMVnode;
    :cond_3a
    if-ne v2, v8, :cond_45

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    .line 396
    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsUnpackFsNode(Lcom/wssyncmldm/eng/core/XDMOmVfs;Ljava/io/DataInputStream;ILcom/wssyncmldm/eng/core/XDMVnode;[BI)I

    move-result v2

    goto :goto_26

    .line 398
    :cond_45
    if-eq v2, v7, :cond_26

    move v0, v6

    .line 400
    goto :goto_9

    .line 404
    .end local v3           #ptChild:Lcom/wssyncmldm/eng/core/XDMVnode;
    :cond_49
    if-eq v2, v7, :cond_28

    move v0, v6

    .line 406
    goto :goto_9

    .line 414
    :cond_4d
    sget v0, Lcom/wssyncmldm/eng/core/XDMOmVfs;->index:I

    aget-byte v0, p4, v0

    goto :goto_9
.end method

.method public static xdmOmVfsUnpackNode(Ljava/io/DataInputStream;Lcom/wssyncmldm/eng/core/XDMVnode;)Ljava/io/DataInputStream;
    .registers 10
    .parameter "in"
    .parameter "ptNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 419
    const/4 v4, 0x0

    .line 422
    .local v4, num:I
    const/4 v6, 0x0

    .line 424
    .local v6, szTmp:Ljava/lang/String;
    const-string v5, ""

    .line 426
    .local v5, szData:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 427
    sget v7, Lcom/wssyncmldm/eng/core/XDMOmVfs;->index:I

    add-int/lit8 v7, v7, 0x4

    sput v7, Lcom/wssyncmldm/eng/core/XDMOmVfs;->index:I

    .line 428
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-lt v2, v4, :cond_75

    .line 441
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->format:I

    .line 442
    sget v7, Lcom/wssyncmldm/eng/core/XDMOmVfs;->index:I

    add-int/lit8 v7, v7, 0x4

    sput v7, Lcom/wssyncmldm/eng/core/XDMOmVfs;->index:I

    .line 443
    invoke-static {p0}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsUnpackStrDup(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->m_szName:Ljava/lang/String;

    .line 444
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    .line 445
    sget v7, Lcom/wssyncmldm/eng/core/XDMOmVfs;->index:I

    add-int/lit8 v7, v7, 0x4

    sput v7, Lcom/wssyncmldm/eng/core/XDMOmVfs;->index:I

    .line 446
    invoke-static {p0}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsUnpackStrDup(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->title:Ljava/lang/String;

    .line 447
    invoke-static {p0}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsUnpackStrDup(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->m_szTstamp:Ljava/lang/String;

    .line 448
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->scope:I

    .line 449
    sget v7, Lcom/wssyncmldm/eng/core/XDMOmVfs;->index:I

    add-int/lit8 v7, v7, 0x4

    sput v7, Lcom/wssyncmldm/eng/core/XDMOmVfs;->index:I

    .line 450
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 451
    sget v7, Lcom/wssyncmldm/eng/core/XDMOmVfs;->index:I

    add-int/lit8 v7, v7, 0x4

    sput v7, Lcom/wssyncmldm/eng/core/XDMOmVfs;->index:I

    .line 452
    if-lez v4, :cond_56

    .line 454
    const/4 v2, 0x0

    :goto_54
    if-lt v2, v4, :cond_9f

    .line 463
    :cond_56
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->verno:I

    .line 464
    sget v7, Lcom/wssyncmldm/eng/core/XDMOmVfs;->index:I

    add-int/lit8 v7, v7, 0x4

    sput v7, Lcom/wssyncmldm/eng/core/XDMOmVfs;->index:I

    .line 465
    invoke-static {p0}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsUnpackStrDup(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->m_szDdfName:Ljava/lang/String;

    .line 466
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->vaddr:I

    .line 467
    sget v7, Lcom/wssyncmldm/eng/core/XDMOmVfs;->index:I

    add-int/lit8 v7, v7, 0x4

    sput v7, Lcom/wssyncmldm/eng/core/XDMOmVfs;->index:I

    .line 469
    return-object p0

    .line 430
    :cond_75
    invoke-static {p0}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsUnpackStr(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    .line 431
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 432
    .local v0, ac:I
    sget v7, Lcom/wssyncmldm/eng/core/XDMOmVfs;->index:I

    add-int/lit8 v7, v7, 0x4

    sput v7, Lcom/wssyncmldm/eng/core/XDMOmVfs;->index:I

    .line 434
    new-instance v1, Lcom/wssyncmldm/eng/core/XDMOmAcl;

    invoke-direct {v1}, Lcom/wssyncmldm/eng/core/XDMOmAcl;-><init>()V

    .line 435
    .local v1, acl:Lcom/wssyncmldm/eng/core/XDMOmAcl;
    iput-object v6, v1, Lcom/wssyncmldm/eng/core/XDMOmAcl;->m_szServerid:Ljava/lang/String;

    .line 436
    iput v0, v1, Lcom/wssyncmldm/eng/core/XDMOmAcl;->ac:I

    .line 437
    new-instance v3, Lcom/wssyncmldm/eng/core/XDMOmList;

    invoke-direct {v3}, Lcom/wssyncmldm/eng/core/XDMOmList;-><init>()V

    .line 438
    .local v3, item:Lcom/wssyncmldm/eng/core/XDMOmList;
    iput-object v1, v3, Lcom/wssyncmldm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    .line 439
    iget-object v7, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->acl:Lcom/wssyncmldm/eng/core/XDMOmList;

    invoke-static {v7, v3}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsAppendList(Lcom/wssyncmldm/eng/core/XDMOmList;Lcom/wssyncmldm/eng/core/XDMOmList;)Lcom/wssyncmldm/eng/core/XDMOmList;

    move-result-object v7

    iput-object v7, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->acl:Lcom/wssyncmldm/eng/core/XDMOmList;

    .line 428
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_f

    .line 456
    .end local v0           #ac:I
    .end local v1           #acl:Lcom/wssyncmldm/eng/core/XDMOmAcl;
    .end local v3           #item:Lcom/wssyncmldm/eng/core/XDMOmList;
    :cond_9f
    invoke-static {p0}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsUnpackStr(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    .line 457
    move-object v5, v6

    .line 458
    new-instance v3, Lcom/wssyncmldm/eng/core/XDMOmList;

    invoke-direct {v3}, Lcom/wssyncmldm/eng/core/XDMOmList;-><init>()V

    .line 459
    .restart local v3       #item:Lcom/wssyncmldm/eng/core/XDMOmList;
    iput-object v5, v3, Lcom/wssyncmldm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    .line 460
    iget-object v7, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    invoke-static {v7, v3}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsAppendList(Lcom/wssyncmldm/eng/core/XDMOmList;Lcom/wssyncmldm/eng/core/XDMOmList;)Lcom/wssyncmldm/eng/core/XDMOmList;

    move-result-object v7

    iput-object v7, p1, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    .line 454
    add-int/lit8 v2, v2, 0x1

    goto :goto_54
.end method

.method public static xdmOmVfsUnpackStr(Ljava/io/DataInputStream;)Ljava/lang/String;
    .registers 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 474
    const/4 v0, 0x0

    .local v0, len:I
    move-object v2, v3

    .line 475
    check-cast v2, [B

    .line 476
    .local v2, tmp:[B
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 477
    sget v4, Lcom/wssyncmldm/eng/core/XDMOmVfs;->index:I

    add-int/lit8 v4, v4, 0x4

    sput v4, Lcom/wssyncmldm/eng/core/XDMOmVfs;->index:I

    .line 479
    if-nez v0, :cond_12

    .line 494
    :goto_11
    return-object v3

    .line 483
    :cond_12
    const/16 v3, 0x200

    if-le v0, v3, :cond_1e

    .line 485
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "OM_MAX_LEN over"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 488
    :cond_1e
    new-array v2, v0, [B

    .line 489
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0}, Ljava/io/DataInputStream;->read([BII)I

    .line 491
    sget v3, Lcom/wssyncmldm/eng/core/XDMOmVfs;->index:I

    add-int/2addr v3, v0

    sput v3, Lcom/wssyncmldm/eng/core/XDMOmVfs;->index:I

    .line 493
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .local v1, szRet:Ljava/lang/String;
    move-object v3, v1

    .line 494
    goto :goto_11
.end method

.method public static xdmOmVfsUnpackStrDup(Ljava/io/DataInputStream;)Ljava/lang/String;
    .registers 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 500
    move-object v2, v3

    check-cast v2, [B

    .line 501
    .local v2, tmp:[B
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 502
    .local v0, len:I
    sget v4, Lcom/wssyncmldm/eng/core/XDMOmVfs;->index:I

    add-int/lit8 v4, v4, 0x4

    sput v4, Lcom/wssyncmldm/eng/core/XDMOmVfs;->index:I

    .line 504
    if-nez v0, :cond_11

    .line 520
    :goto_10
    return-object v3

    .line 508
    :cond_11
    const/16 v3, 0x200

    if-le v0, v3, :cond_1d

    .line 510
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "OM_MAX_LEN over"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 513
    :cond_1d
    new-array v2, v0, [B

    .line 514
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0}, Ljava/io/DataInputStream;->read([BII)I

    .line 516
    sget v3, Lcom/wssyncmldm/eng/core/XDMOmVfs;->index:I

    add-int/2addr v3, v0

    sput v3, Lcom/wssyncmldm/eng/core/XDMOmVfs;->index:I

    .line 518
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .local v1, szRet:Ljava/lang/String;
    move-object v3, v1

    .line 520
    goto :goto_10
.end method

.method public static xdmOmVfsWriteObj(Lcom/wssyncmldm/eng/core/XDMOmVfs;Ljava/lang/String;IILjava/lang/Object;I)I
    .registers 11
    .parameter "pVfs"
    .parameter "szPath"
    .parameter "nTotalSize"
    .parameter "nOffset"
    .parameter "pBuff"
    .parameter "nBuffSize"

    .prologue
    .line 708
    const/4 v0, 0x0

    .line 712
    .local v0, addr:I
    invoke-static {p0, p1}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsPath2Node(Lcom/wssyncmldm/eng/core/XDMOmVfs;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v2

    .line 713
    .local v2, ptNode:Lcom/wssyncmldm/eng/core/XDMVnode;
    if-nez v2, :cond_9

    .line 715
    const/4 v4, -0x1

    .line 744
    :goto_8
    return v4

    .line 717
    :cond_9
    if-nez p3, :cond_28

    .line 720
    invoke-static {p0, p2}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsGetFreeVaddr(Lcom/wssyncmldm/eng/core/XDMOmVfs;I)I

    move-result v0

    .line 721
    if-gez v0, :cond_13

    move v4, v0

    .line 723
    goto :goto_8

    .line 725
    :cond_13
    iput v0, v2, Lcom/wssyncmldm/eng/core/XDMVnode;->vaddr:I

    .line 726
    iput p2, v2, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    .line 733
    :goto_17
    add-int v1, p3, p5

    .line 734
    .local v1, blocksize:I
    if-le v1, p2, :cond_1e

    .line 736
    sub-int v4, v1, p2

    sub-int/2addr p5, v4

    .line 739
    :cond_1e
    add-int v4, v0, p3

    invoke-static {p0, v4, p4, p5}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsSaveFsData(Lcom/wssyncmldm/eng/core/XDMOmVfs;ILjava/lang/Object;I)I

    move-result v3

    .line 740
    .local v3, ret:I
    if-eqz v3, :cond_2b

    .line 742
    const/4 v4, -0x4

    goto :goto_8

    .line 730
    .end local v1           #blocksize:I
    .end local v3           #ret:I
    :cond_28
    iget v0, v2, Lcom/wssyncmldm/eng/core/XDMVnode;->vaddr:I

    goto :goto_17

    .restart local v1       #blocksize:I
    .restart local v3       #ret:I
    :cond_2b
    move v4, p5

    .line 744
    goto :goto_8
.end method
