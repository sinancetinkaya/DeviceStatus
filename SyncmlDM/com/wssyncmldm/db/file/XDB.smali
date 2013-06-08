.class public Lcom/wssyncmldm/db/file/XDB;
.super Lcom/wssyncmldm/db/file/XDBFactoryBootstrap;
.source "XDB.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/wssyncmldm/interfaces/XUIInterface;
.implements Lcom/wssyncmldm/interfaces/XDBInterface;
.implements Lcom/wssyncmldm/interfaces/XFOTAInterface;
.implements Lcom/wssyncmldm/interfaces/XUICInterface;
.implements Lcom/wssyncmldm/interfaces/XDMExternalInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;,
        Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;
    }
.end annotation


# static fields
.field public static ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef; = null

.field public static final DMINFOMAGIC:I = 0x933

.field public static final DMPROFILEMAGIC:I = 0xec7

.field private static final FFS_OWNER_SYNCML:I = 0xf0

.field public static final FILE_PATH_UI_NET_PROFILE_DB:Ljava/lang/String; = "data/data/com.wssyncmldm/dmuinetprofile.dat"

.field public static final NVMDMAccXNode:I = 0x83

.field public static final NVMDMAgentInfo:I = 0x61

.field public static final NVMDMInfo1:I = 0x52

.field public static final NVMDMInfo2:I = 0x53

.field public static final NVMDMInfo3:I = 0x54

.field public static final NVMDMInfo4:I = 0x55

.field public static final NVMDMInfo5:I = 0x56

.field public static final NVMDMProfile:I = 0x51

.field public static final NVMFUMOInfo:I = 0x57

.field public static final NVMIMSIInfo:I = 0x59

.field public static final NVMNetworkInfo1:I = 0x80

.field public static final NVMNetworkInfo2:I = 0x81

.field public static final NVMNetworkInfo3:I = 0x82

.field public static final NVMNotiInfo:I = 0x62

.field public static final NVMPollingInfo:I = 0x5a

.field public static final NVMPostPone:I = 0x58

.field public static final NVMResyncMode:I = 0x60

.field public static NetProfileClass:Lcom/wssyncmldm/db/file/XDBNetworkProfileList; = null

.field public static ProfileInfoClass:[Lcom/wssyncmldm/db/file/XDBProfileInfo; = null

.field private static XDMFileParam:[Lcom/wssyncmldm/db/file/XDBFileParam; = null

.field private static XDMNVMParamCount:I = 0x0

.field public static XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm; = null

.field public static final XDM_FFS_DELTA_FILE_EXTENTION_:Ljava/lang/String; = "update.zip"

.field public static final XDM_FFS_FILE_EXTENTION:Ljava/lang/String; = ".cfg"

.field public static final XDM_FFS_FOTA_SIZE_FILE:Ljava/lang/String; = "data/data/com.wssyncmldm/2355.cfg"

.field public static final XDM_NET_PROFILE_LIST:I = 0x1

.field public static final XDM_PROFILE_LIST:I = 0x0

.field public static final XDM_PROFILE_LIST_VIEW:I = 0x2

.field public static dbadapter:Lcom/wssyncmldm/db/file/XDBAdapter; = null

.field private static gFumoStatus:I = 0x0

.field private static final serialVersionUID:J = 0x1L

.field private static xdmSyncMLFileParam:[Lcom/wssyncmldm/db/file/XDBFileNVMParam;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 137
    const/4 v0, 0x0

    sput-object v0, Lcom/wssyncmldm/db/file/XDB;->dbadapter:Lcom/wssyncmldm/db/file/XDBAdapter;

    .line 146
    sget-object v0, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_MAX:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    invoke-virtual {v0}, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->Value()I

    move-result v0

    sput v0, Lcom/wssyncmldm/db/file/XDB;->XDMNVMParamCount:I

    .line 152
    const/4 v0, -0x1

    sput v0, Lcom/wssyncmldm/db/file/XDB;->gFumoStatus:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/wssyncmldm/db/file/XDBFactoryBootstrap;-><init>()V

    return-void
.end method

.method public static xdbAdpAppFileCreate(I[B)I
    .registers 5
    .parameter "FileID"
    .parameter "pBuffer"

    .prologue
    .line 1964
    const/4 v1, 0x0

    .line 1965
    .local v1, szFileName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1966
    .local v0, nRet:I
    invoke-static {p0}, Lcom/wssyncmldm/db/file/XDB;->xdbFileGetNameFromCallerID(I)Ljava/lang/String;

    move-result-object v1

    .line 1968
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->dbadapter:Lcom/wssyncmldm/db/file/XDBAdapter;

    invoke-virtual {v2, v1, p1}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbFileCreateWrite(Ljava/lang/String;[B)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1969
    const/4 v0, 0x5

    .line 1971
    :cond_f
    return v0
.end method

.method public static xdbAdpAppendFileWrite(I[B)I
    .registers 11
    .parameter "FileID"
    .parameter "buffer"

    .prologue
    .line 1725
    const-string v6, ""

    .line 1726
    .local v6, szFileName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1727
    .local v0, Data:Ljava/io/DataOutputStream;
    const/4 v2, 0x0

    .line 1728
    .local v2, File:Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 1730
    .local v5, nRtnStatus:I
    if-lez p0, :cond_33

    .line 1731
    invoke-static {p0}, Lcom/wssyncmldm/db/file/XDB;->xdbFileGetNameFromCallerID(I)Ljava/lang/String;

    move-result-object v6

    .line 1737
    :try_start_b
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v3, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_96
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_11} :catch_c4
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_11} :catch_6e

    .line 1738
    .end local v2           #File:Ljava/io/FileOutputStream;
    .local v3, File:Ljava/io/FileOutputStream;
    :try_start_11
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_b6
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_16} :catch_c7
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_16} :catch_bd

    .line 1740
    .end local v0           #Data:Ljava/io/DataOutputStream;
    .local v1, Data:Ljava/io/DataOutputStream;
    :try_start_16
    monitor-enter v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_b9
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_17} :catch_38
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_17} :catch_c0

    .line 1742
    :try_start_17
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 1743
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_35

    .line 1759
    :try_start_1b
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 1760
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileDescriptor;->sync()V

    .line 1761
    if-eqz v1, :cond_2a

    .line 1763
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 1765
    :cond_2a
    if-eqz v3, :cond_2f

    .line 1767
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_2f} :catch_62

    :cond_2f
    move-object v2, v3

    .end local v3           #File:Ljava/io/FileOutputStream;
    .restart local v2       #File:Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1           #Data:Ljava/io/DataOutputStream;
    .restart local v0       #Data:Ljava/io/DataOutputStream;
    :cond_31
    :goto_31
    move v7, v5

    .line 1777
    :goto_32
    return v7

    .line 1733
    :cond_33
    const/4 v7, 0x2

    goto :goto_32

    .line 1743
    .end local v0           #Data:Ljava/io/DataOutputStream;
    .end local v2           #File:Ljava/io/FileOutputStream;
    .restart local v1       #Data:Ljava/io/DataOutputStream;
    .restart local v3       #File:Ljava/io/FileOutputStream;
    :catchall_35
    move-exception v7

    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    :try_start_37
    throw v7
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_b9
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_38} :catch_38
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_38} :catch_c0

    .line 1745
    :catch_38
    move-exception v4

    move-object v2, v3

    .end local v3           #File:Ljava/io/FileOutputStream;
    .restart local v2       #File:Ljava/io/FileOutputStream;
    move-object v0, v1

    .line 1747
    .end local v1           #Data:Ljava/io/DataOutputStream;
    .restart local v0       #Data:Ljava/io/DataOutputStream;
    .local v4, e:Ljava/io/FileNotFoundException;
    :goto_3b
    :try_start_3b
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_96

    .line 1748
    const/4 v5, 0x3

    .line 1759
    :try_start_43
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 1760
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileDescriptor;->sync()V

    .line 1761
    if-eqz v0, :cond_52

    .line 1763
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 1765
    :cond_52
    if-eqz v2, :cond_31

    .line 1767
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_57} :catch_58

    goto :goto_31

    .line 1770
    :catch_58
    move-exception v4

    .line 1772
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1773
    const/4 v5, 0x5

    .line 1775
    goto :goto_31

    .line 1770
    .end local v0           #Data:Ljava/io/DataOutputStream;
    .end local v2           #File:Ljava/io/FileOutputStream;
    .end local v4           #e:Ljava/io/IOException;
    .restart local v1       #Data:Ljava/io/DataOutputStream;
    .restart local v3       #File:Ljava/io/FileOutputStream;
    :catch_62
    move-exception v4

    .line 1772
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1773
    const/4 v5, 0x5

    move-object v2, v3

    .end local v3           #File:Ljava/io/FileOutputStream;
    .restart local v2       #File:Ljava/io/FileOutputStream;
    move-object v0, v1

    .line 1775
    .end local v1           #Data:Ljava/io/DataOutputStream;
    .restart local v0       #Data:Ljava/io/DataOutputStream;
    goto :goto_31

    .line 1750
    .end local v4           #e:Ljava/io/IOException;
    :catch_6e
    move-exception v4

    .line 1752
    .restart local v4       #e:Ljava/io/IOException;
    :goto_6f
    :try_start_6f
    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_76
    .catchall {:try_start_6f .. :try_end_76} :catchall_96

    .line 1753
    const/4 v5, 0x4

    .line 1759
    :try_start_77
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 1760
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileDescriptor;->sync()V

    .line 1761
    if-eqz v0, :cond_86

    .line 1763
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 1765
    :cond_86
    if-eqz v2, :cond_31

    .line 1767
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_8b} :catch_8c

    goto :goto_31

    .line 1770
    :catch_8c
    move-exception v4

    .line 1772
    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1773
    const/4 v5, 0x5

    .line 1775
    goto :goto_31

    .line 1757
    .end local v4           #e:Ljava/io/IOException;
    :catchall_96
    move-exception v7

    .line 1759
    :goto_97
    :try_start_97
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 1760
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/FileDescriptor;->sync()V

    .line 1761
    if-eqz v0, :cond_a6

    .line 1763
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 1765
    :cond_a6
    if-eqz v2, :cond_ab

    .line 1767
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_ab} :catch_ac

    .line 1774
    :cond_ab
    :goto_ab
    throw v7

    .line 1770
    :catch_ac
    move-exception v4

    .line 1772
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1773
    const/4 v5, 0x5

    goto :goto_ab

    .line 1757
    .end local v2           #File:Ljava/io/FileOutputStream;
    .end local v4           #e:Ljava/io/IOException;
    .restart local v3       #File:Ljava/io/FileOutputStream;
    :catchall_b6
    move-exception v7

    move-object v2, v3

    .end local v3           #File:Ljava/io/FileOutputStream;
    .restart local v2       #File:Ljava/io/FileOutputStream;
    goto :goto_97

    .end local v0           #Data:Ljava/io/DataOutputStream;
    .end local v2           #File:Ljava/io/FileOutputStream;
    .restart local v1       #Data:Ljava/io/DataOutputStream;
    .restart local v3       #File:Ljava/io/FileOutputStream;
    :catchall_b9
    move-exception v7

    move-object v2, v3

    .end local v3           #File:Ljava/io/FileOutputStream;
    .restart local v2       #File:Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1           #Data:Ljava/io/DataOutputStream;
    .restart local v0       #Data:Ljava/io/DataOutputStream;
    goto :goto_97

    .line 1750
    .end local v2           #File:Ljava/io/FileOutputStream;
    .restart local v3       #File:Ljava/io/FileOutputStream;
    :catch_bd
    move-exception v4

    move-object v2, v3

    .end local v3           #File:Ljava/io/FileOutputStream;
    .restart local v2       #File:Ljava/io/FileOutputStream;
    goto :goto_6f

    .end local v0           #Data:Ljava/io/DataOutputStream;
    .end local v2           #File:Ljava/io/FileOutputStream;
    .restart local v1       #Data:Ljava/io/DataOutputStream;
    .restart local v3       #File:Ljava/io/FileOutputStream;
    :catch_c0
    move-exception v4

    move-object v2, v3

    .end local v3           #File:Ljava/io/FileOutputStream;
    .restart local v2       #File:Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1           #Data:Ljava/io/DataOutputStream;
    .restart local v0       #Data:Ljava/io/DataOutputStream;
    goto :goto_6f

    .line 1745
    :catch_c4
    move-exception v4

    goto/16 :goto_3b

    .end local v2           #File:Ljava/io/FileOutputStream;
    .restart local v3       #File:Ljava/io/FileOutputStream;
    :catch_c7
    move-exception v4

    move-object v2, v3

    .end local v3           #File:Ljava/io/FileOutputStream;
    .restart local v2       #File:Ljava/io/FileOutputStream;
    goto/16 :goto_3b
.end method

.method public static xdbAdpDeltaDelete()Z
    .registers 2

    .prologue
    .line 2001
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbAdpDeltaSearchPath()Ljava/lang/String;

    move-result-object v0

    .line 2002
    .local v0, szDeltaPath:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2003
    const/4 v1, 0x0

    .line 2005
    :goto_b
    return v1

    :cond_c
    invoke-static {v0}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbFileDelete(Ljava/lang/String;)Z

    move-result v1

    goto :goto_b
.end method

.method public static xdbAdpDeltaFolderCreate(I)Z
    .registers 5
    .parameter "index"

    .prologue
    .line 2076
    const/4 v0, 0x0

    .line 2077
    .local v0, bRet:Z
    const-string v1, ""

    .line 2079
    .local v1, szPath:Ljava/lang/String;
    packed-switch p0, :pswitch_data_40

    .line 2100
    :goto_6
    return v0

    .line 2082
    :pswitch_7
    sget-object v2, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->CACHE_DIR_PATH:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2083
    sget-object v2, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->FOTA_DIR_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2084
    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbFolderCreate(Ljava/lang/String;)Z

    move-result v0

    .line 2085
    goto :goto_6

    .line 2087
    :pswitch_1a
    sget-object v2, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->DATA_DIR_PATH:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2088
    sget-object v2, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->FOTA_DIR_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2089
    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbFolderCreate(Ljava/lang/String;)Z

    move-result v0

    .line 2090
    goto :goto_6

    .line 2092
    :pswitch_2d
    sget-object v2, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->FOTA_EXTERNAL_DIR_PATH:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2093
    sget-object v2, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->FOTA_DIR_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2094
    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbFolderCreate(Ljava/lang/String;)Z

    move-result v0

    .line 2095
    goto :goto_6

    .line 2079
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_7
        :pswitch_1a
        :pswitch_2d
    .end packed-switch
.end method

.method public static xdbAdpDeltaSearchPath()Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x3

    .line 2010
    const-string v4, ""

    .line 2011
    .local v4, szFilePath:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2012
    .local v0, bRet:Z
    const-wide/16 v1, 0x0

    .line 2014
    .local v1, handle:J
    const v5, 0x249f00

    sget-object v6, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->FileFirmwareData:Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

    invoke-virtual {v6}, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->FileId()I

    move-result v6

    add-int/2addr v5, v6

    int-to-long v1, v5

    .line 2016
    const/4 v3, 0x1

    .local v3, i:I
    :goto_15
    if-gt v3, v8, :cond_81

    .line 2018
    if-ne v3, v9, :cond_4c

    .line 2020
    const-string v5, "%s/%d%s"

    new-array v6, v8, [Ljava/lang/Object;

    const-string v7, "data/data/com.wssyncmldm/"

    aput-object v7, v6, v11

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    const-string v7, ".cfg"

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2031
    :cond_2f
    :goto_2f
    invoke-static {v4}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbFileExist(Ljava/lang/String;)Z

    move-result v0

    .line 2032
    if-eqz v0, :cond_7e

    .line 2034
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Existed delta file path : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 2039
    .end local v4           #szFilePath:Ljava/lang/String;
    :goto_4b
    return-object v4

    .line 2022
    .restart local v4       #szFilePath:Ljava/lang/String;
    :cond_4c
    if-ne v3, v10, :cond_65

    .line 2024
    const-string v5, "%s/%d%s"

    new-array v6, v8, [Ljava/lang/Object;

    sget-object v7, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->FOTA_EXTERNAL_DIR_PATH:Ljava/lang/String;

    aput-object v7, v6, v11

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    const-string v7, ".cfg"

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2f

    .line 2026
    :cond_65
    if-ne v3, v8, :cond_2f

    .line 2028
    const-string v5, "%s/%d%s"

    new-array v6, v8, [Ljava/lang/Object;

    sget-object v7, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->EXTERNAL_SD_DIR_PATH:Ljava/lang/String;

    aput-object v7, v6, v11

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    const-string v7, ".cfg"

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2f

    .line 2016
    :cond_7e
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 2039
    :cond_81
    const/4 v4, 0x0

    goto :goto_4b
.end method

.method public static xdbAdpFileDelete(Ljava/lang/String;I)I
    .registers 6
    .parameter "szName"
    .parameter "FileID"

    .prologue
    .line 2044
    const/4 v1, 0x0

    .line 2045
    .local v1, eRet:I
    const/4 v2, 0x0

    .line 2047
    .local v2, szFileName:Ljava/lang/String;
    if-lez p1, :cond_10

    .line 2049
    invoke-static {p1}, Lcom/wssyncmldm/db/file/XDB;->xdbFileGetNameFromCallerID(I)Ljava/lang/String;

    move-result-object v2

    .line 2065
    :goto_8
    :try_start_8
    sget-object v3, Lcom/wssyncmldm/db/file/XDB;->dbadapter:Lcom/wssyncmldm/db/file/XDBAdapter;

    invoke-virtual {v3, v2}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbFileRemove(Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_1f

    move-result v1

    :goto_e
    move v3, v1

    .line 2071
    :goto_f
    return v3

    .line 2053
    :cond_10
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2055
    const-string v3, "pszFileName is NULL"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 2056
    const/4 v3, 0x2

    goto :goto_f

    .line 2060
    :cond_1d
    move-object v2, p0

    goto :goto_8

    .line 2067
    :catch_1f
    move-exception v0

    .line 2069
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public static xdbAdpFileExists(Ljava/lang/String;I)I
    .registers 5
    .parameter "szName"
    .parameter "FileID"

    .prologue
    .line 1976
    const/4 v1, 0x0

    .line 1977
    .local v1, szFileName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1979
    .local v0, eRet:I
    if-lez p1, :cond_10

    .line 1981
    invoke-static {p1}, Lcom/wssyncmldm/db/file/XDB;->xdbFileGetNameFromCallerID(I)Ljava/lang/String;

    move-result-object v1

    .line 1995
    :goto_8
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->dbadapter:Lcom/wssyncmldm/db/file/XDBAdapter;

    invoke-virtual {v2, v1}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbFileExists(Ljava/lang/String;)I

    move-result v0

    move v2, v0

    .line 1996
    :goto_f
    return v2

    .line 1985
    :cond_10
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1987
    const/4 v2, 0x2

    goto :goto_f

    .line 1991
    :cond_18
    move-object v1, p0

    goto :goto_8
.end method

.method public static xdbAgentInfoDbRead(I)Ljava/lang/Object;
    .registers 2
    .parameter "nType"

    .prologue
    .line 292
    packed-switch p0, :pswitch_data_1a

    .line 301
    const-string v0, "Wrong Type"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 304
    const/4 v0, 0x0

    :goto_9
    return-object v0

    .line 295
    :pswitch_a
    sget-object v0, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDmAgentInfo:Lcom/wssyncmldm/db/file/XDBAgentInfo;

    goto :goto_9

    .line 298
    :pswitch_f
    sget-object v0, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDmAgentInfo:Lcom/wssyncmldm/db/file/XDBAgentInfo;

    iget v0, v0, Lcom/wssyncmldm/db/file/XDBAgentInfo;->m_nAgentType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_9

    .line 292
    :pswitch_data_1a
    .packed-switch 0x6e
        :pswitch_a
        :pswitch_f
    .end packed-switch
.end method

.method public static xdbAgentInfoDbWrite(ILjava/lang/Object;)V
    .registers 4
    .parameter "nType"
    .parameter "Input"

    .prologue
    .line 309
    packed-switch p0, :pswitch_data_20

    .line 320
    const-string v0, "Wrong Type"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 323
    .end local p1
    :goto_8
    return-void

    .line 312
    .restart local p1
    :pswitch_9
    sget-object v0, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    check-cast p1, Lcom/wssyncmldm/db/file/XDBAgentInfo;

    .end local p1
    iput-object p1, v0, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDmAgentInfo:Lcom/wssyncmldm/db/file/XDBAgentInfo;

    goto :goto_8

    .line 316
    .restart local p1
    :pswitch_10
    sget-object v0, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDmAgentInfo:Lcom/wssyncmldm/db/file/XDBAgentInfo;

    check-cast p1, Ljava/lang/Integer;

    .end local p1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/wssyncmldm/db/file/XDBAgentInfo;->m_nAgentType:I

    goto :goto_8

    .line 309
    nop

    :pswitch_data_20
    .packed-switch 0x6e
        :pswitch_9
        :pswitch_10
    .end packed-switch
.end method

.method public static xdbAppendDeltaFile(I[B)I
    .registers 6
    .parameter "FileID"
    .parameter "pBuffer"

    .prologue
    .line 1641
    const/4 v2, 0x0

    .line 1642
    .local v2, eRet:I
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlAgentGetWriteStatus()Z

    move-result v0

    .line 1646
    .local v0, bWriteStatus:Z
    :try_start_5
    invoke-static {p0}, Lcom/wssyncmldm/db/file/XDB;->xdbFileOpen(I)I

    move-result v2

    .line 1647
    if-eqz v2, :cond_27

    if-nez v0, :cond_27

    .line 1649
    invoke-static {p0, p1}, Lcom/wssyncmldm/db/file/XDB;->xdbAdpAppFileCreate(I[B)I

    move-result v2

    .line 1650
    if-nez v2, :cond_18

    .line 1652
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlAgentSetWriteStatus(Z)Z

    .line 1680
    :goto_17
    return v2

    .line 1656
    :cond_18
    const-string v3, "Create FAILED"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1d} :catch_1e

    goto :goto_17

    .line 1676
    :catch_1e
    move-exception v1

    .line 1678
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_17

    .line 1659
    .end local v1           #e:Ljava/lang/Exception;
    :cond_27
    if-eqz v2, :cond_31

    if-eqz v0, :cond_31

    .line 1661
    :try_start_2b
    const-string v3, "Append FAILED"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_17

    .line 1665
    :cond_31
    invoke-static {p0, p1}, Lcom/wssyncmldm/db/file/XDB;->xdbAdpAppendFileWrite(I[B)I

    move-result v2

    .line 1666
    if-nez v2, :cond_3c

    .line 1668
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlAgentSetWriteStatus(Z)Z

    goto :goto_17

    .line 1672
    :cond_3c
    const-string v3, "Append FAILED"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_41} :catch_1e

    goto :goto_17
.end method

.method public static xdbAppendFile(I[B)I
    .registers 5
    .parameter "FileID"
    .parameter "pBuffer"

    .prologue
    .line 1610
    const/4 v1, 0x0

    .line 1614
    .local v1, eRet:I
    :try_start_1
    invoke-static {p0}, Lcom/wssyncmldm/db/file/XDB;->xdbFileOpen(I)I

    move-result v1

    .line 1615
    if-eqz v1, :cond_13

    .line 1617
    invoke-static {p0, p1}, Lcom/wssyncmldm/db/file/XDB;->xdbAdpAppFileCreate(I[B)I

    move-result v1

    .line 1618
    if-eqz v1, :cond_12

    .line 1620
    const-string v2, "Create FAILED"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1636
    :cond_12
    :goto_12
    return v1

    .line 1625
    :cond_13
    invoke-static {p0, p1}, Lcom/wssyncmldm/db/file/XDB;->xdbAdpAppendFileWrite(I[B)I

    move-result v1

    .line 1626
    if-eqz v1, :cond_12

    .line 1628
    const-string v2, "Append FAILED"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_1f

    goto :goto_12

    .line 1632
    :catch_1f
    move-exception v0

    .line 1634
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_12
.end method

.method public static xdbCacheSpecificFileSize(Ljava/io/File;)J
    .registers 14
    .parameter "TargetFolder"

    .prologue
    .line 2152
    const-string v9, ""

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 2154
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 2155
    .local v0, ChildFile:[Ljava/io/File;
    const/4 v3, 0x0

    .line 2156
    .local v3, nSize:I
    const-wide/16 v4, 0x0

    .line 2158
    .local v4, nTotalFileSize:J
    if-nez v0, :cond_2a

    .line 2160
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "can not get child list of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    move-wide v6, v4

    .line 2197
    .end local v4           #nTotalFileSize:J
    .local v6, nTotalFileSize:J
    :goto_29
    return-wide v6

    .line 2164
    .end local v6           #nTotalFileSize:J
    .restart local v4       #nTotalFileSize:J
    :cond_2a
    array-length v3, v0

    .line 2165
    const-string v9, "nfilenum of directory [%s] : %d "

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 2169
    if-lez v3, :cond_b5

    .line 2171
    const/4 v2, 0x0

    .local v2, i:I
    :goto_48
    if-ge v2, v3, :cond_b5

    .line 2173
    :try_start_4a
    aget-object v9, v0, v2

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 2174
    .local v8, szName:Ljava/lang/String;
    const-string v9, "lost+found"

    invoke-virtual {v9, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_60

    const-string v9, "recovery"

    invoke-virtual {v9, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a1

    .line 2176
    :cond_60
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File name : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 2177
    aget-object v9, v0, v2

    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_a4

    .line 2179
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is file."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 2180
    sget-object v9, Lcom/wssyncmldm/db/file/XDB;->dbadapter:Lcom/wssyncmldm/db/file/XDBAdapter;

    aget-object v10, v0, v2

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbFileGetSize(Ljava/lang/String;)J

    move-result-wide v9

    add-long/2addr v4, v9

    .line 2171
    :cond_a1
    :goto_a1
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    .line 2184
    :cond_a4
    aget-object v9, v0, v2

    invoke-static {v9}, Lcom/wssyncmldm/db/file/XDB;->xdbGetInternalFileSize(Ljava/io/File;)J
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_a9} :catch_ac

    move-result-wide v9

    add-long/2addr v4, v9

    goto :goto_a1

    .line 2190
    .end local v8           #szName:Ljava/lang/String;
    :catch_ac
    move-exception v1

    .line 2192
    .local v1, ex:Ljava/lang/Exception;
    const-string v9, "fail to delete"

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move-wide v6, v4

    .line 2193
    .end local v4           #nTotalFileSize:J
    .restart local v6       #nTotalFileSize:J
    goto/16 :goto_29

    .line 2196
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v2           #i:I
    .end local v6           #nTotalFileSize:J
    .restart local v4       #nTotalFileSize:J
    :cond_b5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "nTotalFileSize = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    move-wide v6, v4

    .line 2197
    .end local v4           #nTotalFileSize:J
    .restart local v6       #nTotalFileSize:J
    goto/16 :goto_29
.end method

.method public static xdbCheckActiveProfileIndexByServerID(Ljava/lang/String;)Z
    .registers 7
    .parameter "szInputServerId"

    .prologue
    .line 4285
    const/4 v3, 0x0

    .line 4286
    .local v3, szServerId:Ljava/lang/String;
    const/4 v0, 0x0

    .line 4287
    .local v0, bActiveProfile:Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "serverId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 4288
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 4290
    const-string v4, "ServerID is NULL"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 4291
    const/4 v4, 0x0

    .line 4312
    :goto_24
    return v4

    .line 4294
    :cond_25
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetServerID()Ljava/lang/String;

    move-result-object v3

    .line 4295
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 4296
    const/4 v4, 0x1

    goto :goto_24

    .line 4298
    :cond_31
    const/4 v2, 0x0

    .local v2, i:I
    :goto_32
    const/4 v4, 0x3

    if-ge v2, v4, :cond_48

    .line 4300
    add-int/lit8 v4, v2, 0x52

    invoke-static {v4}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbSqlRead(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;

    .line 4302
    .local v1, dmInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;
    if-eqz v1, :cond_4a

    .line 4304
    iget-object v4, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerID:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 4306
    const/4 v0, 0x1

    .end local v1           #dmInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;
    :cond_48
    move v4, v0

    .line 4312
    goto :goto_24

    .line 4298
    .restart local v1       #dmInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;
    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_32
.end method

.method public static xdbCheckProfileListExist()Z
    .registers 4

    .prologue
    .line 3293
    const/4 v2, 0x0

    .line 3294
    .local v2, pDMProfile:Lcom/wssyncmldm/db/file/XDBProflieListInfo;
    const/4 v0, 0x0

    .line 3295
    .local v0, bReturn:Z
    const/4 v1, 0x0

    .line 3297
    .local v1, i:I
    new-instance v2, Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    .end local v2           #pDMProfile:Lcom/wssyncmldm/db/file/XDBProflieListInfo;
    invoke-direct {v2}, Lcom/wssyncmldm/db/file/XDBProflieListInfo;-><init>()V

    .line 3298
    .restart local v2       #pDMProfile:Lcom/wssyncmldm/db/file/XDBProflieListInfo;
    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDB;->xdbGetProflieList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #pDMProfile:Lcom/wssyncmldm/db/file/XDBProflieListInfo;
    check-cast v2, Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    .line 3300
    .restart local v2       #pDMProfile:Lcom/wssyncmldm/db/file/XDBProflieListInfo;
    if-eqz v2, :cond_1f

    .line 3302
    const/4 v1, 0x0

    :goto_11
    const/4 v3, 0x3

    if-ge v1, v3, :cond_1f

    .line 3304
    iget-object v3, v2, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->ProfileName:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 3306
    const/4 v0, 0x1

    .line 3311
    :cond_1f
    return v0

    .line 3302
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_11
.end method

.method public static xdbClearCache(Ljava/io/File;)Z
    .registers 12
    .parameter "targetFolder"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2202
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 2203
    .local v0, childFile:[Ljava/io/File;
    const/4 v1, 0x0

    .line 2204
    .local v1, confirm:Z
    const/4 v4, 0x0

    .line 2206
    .local v4, size:I
    const-string v8, ""

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 2207
    if-nez v0, :cond_2a

    .line 2209
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can not get child list of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 2251
    :goto_29
    return v6

    .line 2213
    :cond_2a
    array-length v4, v0

    .line 2214
    const-string v8, "nfilenum of directory [%s] : %d "

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 2217
    if-lez v4, :cond_d1

    .line 2219
    const/4 v3, 0x0

    .local v3, i:I
    :goto_46
    if-ge v3, v4, :cond_d1

    .line 2221
    :try_start_48
    aget-object v8, v0, v3

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2222
    .local v5, szName:Ljava/lang/String;
    const-string v8, "lost+found"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_66

    const-string v8, "recovery"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_66

    sget-object v8, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->FOTA_DIR_PATH:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7f

    .line 2224
    :cond_66
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cannot delete specific file in cache directory "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 2219
    :goto_7c
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 2228
    :cond_7f
    aget-object v8, v0, v3

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_cb

    .line 2230
    aget-object v8, v0, v3

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v1

    .line 2231
    if-nez v1, :cond_b4

    .line 2233
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fail to delete "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v3

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_ab} :catch_ac

    goto :goto_7c

    .line 2246
    .end local v5           #szName:Ljava/lang/String;
    :catch_ac
    move-exception v2

    .line 2248
    .local v2, ex:Ljava/lang/Exception;
    const-string v7, "fail to delete"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto/16 :goto_29

    .line 2236
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v5       #szName:Ljava/lang/String;
    :cond_b4
    :try_start_b4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deleted file name is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_7c

    .line 2240
    :cond_cb
    aget-object v8, v0, v3

    invoke-static {v8}, Lcom/wssyncmldm/db/file/XDB;->xdbClearCache(Ljava/io/File;)Z
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_d0} :catch_ac

    goto :goto_7c

    .end local v3           #i:I
    .end local v5           #szName:Ljava/lang/String;
    :cond_d1
    move v6, v7

    .line 2251
    goto/16 :goto_29
.end method

.method public static xdbClearFileInFolder(Ljava/io/File;)Z
    .registers 12
    .parameter "targetFolder"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2256
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 2257
    .local v0, childFile:[Ljava/io/File;
    const/4 v1, 0x0

    .line 2258
    .local v1, confirm:Z
    const/4 v4, 0x0

    .line 2260
    .local v4, size:I
    const-string v8, ""

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 2261
    if-nez v0, :cond_2a

    .line 2263
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can not get child list of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 2298
    :goto_29
    return v6

    .line 2267
    :cond_2a
    array-length v4, v0

    .line 2268
    const-string v8, "nfilenum of directory [%s] : %d "

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 2271
    if-lez v4, :cond_a1

    .line 2273
    const/4 v3, 0x0

    .local v3, i:I
    :goto_46
    if-ge v3, v4, :cond_a1

    .line 2275
    :try_start_48
    aget-object v8, v0, v3

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2276
    .local v5, szName:Ljava/lang/String;
    aget-object v8, v0, v3

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_9b

    .line 2278
    aget-object v8, v0, v3

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v1

    .line 2279
    if-nez v1, :cond_7d

    .line 2281
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fail to delete "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v3

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 2273
    :goto_7a
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 2284
    :cond_7d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deleted file name is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_93} :catch_94

    goto :goto_7a

    .line 2293
    .end local v5           #szName:Ljava/lang/String;
    :catch_94
    move-exception v2

    .line 2295
    .local v2, ex:Ljava/lang/Exception;
    const-string v7, "fail to delete"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_29

    .line 2288
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v5       #szName:Ljava/lang/String;
    :cond_9b
    :try_start_9b
    aget-object v8, v0, v3

    invoke-static {v8}, Lcom/wssyncmldm/db/file/XDB;->xdbClearFileInFolder(Ljava/io/File;)Z
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_a0} :catch_94

    goto :goto_7a

    .end local v3           #i:I
    .end local v5           #szName:Ljava/lang/String;
    :cond_a1
    move v6, v7

    .line 2298
    goto :goto_29
.end method

.method public static xdbClearUicResultKeepFlag()V
    .registers 4

    .prologue
    .line 4808
    const/4 v1, 0x0

    .line 4811
    .local v1, eUIcKeepFlag:I
    const/16 v2, 0x10

    :try_start_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_b

    .line 4817
    :goto_a
    return-void

    .line 4813
    :catch_b
    move-exception v0

    .line 4815
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_a
.end method

.method public static xdbDMffs_Init()V
    .registers 7

    .prologue
    const-wide/16 v5, 0x1

    const/4 v4, 0x0

    .line 1858
    const/4 v1, 0x0

    .line 1860
    .local v1, nCount:I
    const-string v2, "xdbDMffs_Init"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1865
    const/16 v0, 0x83

    .line 1866
    .local v0, AreaCodeTemp:I
    const-wide/16 v2, 0x3

    invoke-static {v2, v3}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbExistsAccXListNodeRow(J)Z

    move-result v2

    if-nez v2, :cond_16

    .line 1867
    invoke-static {v0, v4}, Lcom/wssyncmldm/db/file/XDB;->xdbInitFfsFile(II)Z

    .line 1870
    :cond_16
    const/4 v1, 0x0

    :goto_17
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2d

    .line 1872
    add-int/lit8 v0, v1, 0x52

    .line 1873
    add-int/lit8 v2, v1, 0x1

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbExistsProfileRow(J)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 1874
    add-int/lit16 v2, v1, 0x933

    invoke-static {v0, v2}, Lcom/wssyncmldm/db/file/XDB;->xdbInitFfsFile(II)Z

    .line 1870
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1877
    :cond_2d
    const/16 v0, 0x51

    .line 1878
    invoke-static {v5, v6}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbExistsProfileListRow(J)Z

    move-result v2

    if-nez v2, :cond_7d

    .line 1879
    const/16 v2, 0xec7

    invoke-static {v0, v2}, Lcom/wssyncmldm/db/file/XDB;->xdbInitFfsFile(II)Z

    .line 1883
    :goto_3a
    const/16 v0, 0x57

    .line 1884
    invoke-static {v5, v6}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbExistsFUMORow(J)Z

    move-result v2

    if-nez v2, :cond_45

    .line 1885
    invoke-static {v0, v4}, Lcom/wssyncmldm/db/file/XDB;->xdbInitFfsFile(II)Z

    .line 1887
    :cond_45
    const/16 v0, 0x58

    .line 1888
    invoke-static {v5, v6}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbExistsPostPoneRow(J)Z

    move-result v2

    if-nez v2, :cond_50

    .line 1889
    invoke-static {v0, v4}, Lcom/wssyncmldm/db/file/XDB;->xdbInitFfsFile(II)Z

    .line 1891
    :cond_50
    const/16 v0, 0x59

    .line 1892
    invoke-static {v5, v6}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbExistsSimInfoRow(J)Z

    move-result v2

    if-nez v2, :cond_5b

    .line 1893
    invoke-static {v0, v4}, Lcom/wssyncmldm/db/file/XDB;->xdbInitFfsFile(II)Z

    .line 1895
    :cond_5b
    const/16 v0, 0x5a

    .line 1896
    invoke-static {v5, v6}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbExistsPollingRow(J)Z

    move-result v2

    if-nez v2, :cond_66

    .line 1897
    invoke-static {v0, v4}, Lcom/wssyncmldm/db/file/XDB;->xdbInitFfsFile(II)Z

    .line 1901
    :cond_66
    const/16 v0, 0x60

    .line 1902
    invoke-static {v5, v6}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbExistsResyncModeRow(J)Z

    move-result v2

    if-nez v2, :cond_71

    .line 1903
    invoke-static {v0, v4}, Lcom/wssyncmldm/db/file/XDB;->xdbInitFfsFile(II)Z

    .line 1906
    :cond_71
    const/16 v0, 0x61

    .line 1907
    invoke-static {v5, v6}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbSqlAgentInfoExistsRow(J)Z

    move-result v2

    if-nez v2, :cond_7c

    .line 1908
    invoke-static {v0, v4}, Lcom/wssyncmldm/db/file/XDB;->xdbInitFfsFile(II)Z

    .line 1909
    :cond_7c
    return-void

    .line 1881
    :cond_7d
    invoke-static {v4}, Lcom/wssyncmldm/db/file/XDB;->xdbReadListInfo(I)Ljava/lang/Object;

    goto :goto_3a
.end method

.method public static xdbDelete(II)Z
    .registers 4
    .parameter "FileID"
    .parameter "rowId"

    .prologue
    .line 423
    const/4 v0, 0x0

    .line 425
    .local v0, wRC:I
    packed-switch p0, :pswitch_data_16

    .line 432
    const-string v1, "Not Support file id----"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 435
    :goto_9
    if-nez v0, :cond_14

    .line 437
    const/4 v1, 0x1

    .line 441
    :goto_c
    return v1

    .line 428
    :pswitch_d
    const/16 v1, 0x62

    invoke-static {v1, p1}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbSqlDelete(II)I

    move-result v0

    .line 429
    goto :goto_9

    .line 441
    :cond_14
    const/4 v1, 0x0

    goto :goto_c

    .line 425
    :pswitch_data_16
    .packed-switch 0x226
        :pswitch_d
    .end packed-switch
.end method

.method public static xdbDelete(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "FileID"
    .parameter "szColName"
    .parameter "szColData"

    .prologue
    .line 447
    const/4 v0, 0x0

    .line 449
    .local v0, wRC:I
    packed-switch p0, :pswitch_data_16

    .line 456
    const-string v1, "Not Support file id----"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 459
    :goto_9
    if-nez v0, :cond_14

    .line 461
    const/4 v1, 0x1

    .line 465
    :goto_c
    return v1

    .line 452
    :pswitch_d
    const/16 v1, 0x62

    invoke-static {v1, p1, p2}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbSqlDelete(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 453
    goto :goto_9

    .line 465
    :cond_14
    const/4 v1, 0x0

    goto :goto_c

    .line 449
    :pswitch_data_16
    .packed-switch 0x226
        :pswitch_d
    .end packed-switch
.end method

.method public static xdbDeleteFile(I)I
    .registers 3
    .parameter "FileID"

    .prologue
    .line 1803
    const/4 v0, 0x0

    .line 1804
    .local v0, rc:I
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/wssyncmldm/db/file/XDB;->xdbAdpFileDelete(Ljava/lang/String;I)I

    move-result v0

    .line 1805
    return v0
.end method

.method public static xdbDeleteFile(Ljava/lang/String;)Z
    .registers 2
    .parameter "szPath"

    .prologue
    .line 1811
    invoke-static {p0}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbFileDelete(Ljava/lang/String;)Z

    move-result v0

    .line 1813
    .local v0, bRet:Z
    return v0
.end method

.method public static xdbDeleteWriteObjectSizeFUMO(Ljava/lang/String;)I
    .registers 4
    .parameter "szPath"

    .prologue
    .line 4024
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4025
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 4026
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_10

    .line 4034
    :cond_e
    const/4 v2, 0x0

    .end local v1           #file:Ljava/io/File;
    :goto_f
    return v2

    .line 4028
    :catch_10
    move-exception v0

    .line 4030
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 4032
    const/4 v2, -0x1

    goto :goto_f
.end method

.method public static xdbFileGetNameFromCallerID(I)Ljava/lang/String;
    .registers 11
    .parameter "FileID"

    .prologue
    const/4 v5, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 1913
    const/4 v3, 0x0

    .line 1914
    .local v3, szFileName:Ljava/lang/String;
    const-wide/16 v0, 0x0

    .line 1916
    .local v0, handle:J
    sget-object v4, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->FileFirmwareData:Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

    invoke-virtual {v4}, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->FileId()I

    move-result v4

    if-ne p0, v4, :cond_56

    .line 1920
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetDeltaFileSaveIndex()I

    move-result v2

    .line 1921
    .local v2, nDeltaFileIndex:I
    if-nez v2, :cond_2a

    .line 1923
    const-string v4, "%s/%s/%s"

    new-array v5, v5, [Ljava/lang/Object;

    sget-object v6, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->CACHE_DIR_PATH:Ljava/lang/String;

    aput-object v6, v5, v8

    sget-object v6, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->FOTA_DIR_PATH:Ljava/lang/String;

    aput-object v6, v5, v9

    const-string v6, "update.zip"

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1959
    .end local v2           #nDeltaFileIndex:I
    :goto_29
    return-object v3

    .line 1925
    .restart local v2       #nDeltaFileIndex:I
    :cond_2a
    if-ne v2, v7, :cond_41

    .line 1927
    const-string v4, "%s/%s/%s"

    new-array v5, v5, [Ljava/lang/Object;

    sget-object v6, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->FOTA_EXTERNAL_DIR_PATH:Ljava/lang/String;

    aput-object v6, v5, v8

    sget-object v6, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->FOTA_DIR_PATH:Ljava/lang/String;

    aput-object v6, v5, v9

    const-string v6, "update.zip"

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_29

    .line 1932
    :cond_41
    const-string v4, "%s/%s/%s"

    new-array v5, v5, [Ljava/lang/Object;

    sget-object v6, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->DATA_DIR_PATH:Ljava/lang/String;

    aput-object v6, v5, v8

    sget-object v6, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->FOTA_DIR_PATH:Ljava/lang/String;

    aput-object v6, v5, v9

    const-string v6, "update.zip"

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_29

    .line 1956
    .end local v2           #nDeltaFileIndex:I
    :cond_56
    const v4, 0x249f00

    add-int/2addr v4, p0

    int-to-long v0, v4

    .line 1957
    const-string v4, "%s/%d%s"

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "data/data/com.wssyncmldm/"

    aput-object v6, v5, v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v9

    const-string v6, ".cfg"

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_29
.end method

.method private static xdbFileOpen(I)I
    .registers 7
    .parameter "FileID"

    .prologue
    .line 1685
    const-string v3, ""

    .line 1686
    .local v3, szFileName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1688
    .local v0, Input:Ljava/io/DataInputStream;
    if-lez p0, :cond_48

    .line 1690
    invoke-static {p0}, Lcom/wssyncmldm/db/file/XDB;->xdbFileGetNameFromCallerID(I)Ljava/lang/String;

    move-result-object v3

    .line 1693
    :try_start_9
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_13} :catch_24

    .line 1704
    .end local v0           #Input:Ljava/io/DataInputStream;
    .local v1, Input:Ljava/io/DataInputStream;
    if-eqz v1, :cond_18

    .line 1706
    :try_start_15
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_1b

    .line 1720
    :cond_18
    :goto_18
    const/4 v4, 0x0

    move-object v0, v1

    .end local v1           #Input:Ljava/io/DataInputStream;
    .restart local v0       #Input:Ljava/io/DataInputStream;
    :cond_1a
    :goto_1a
    return v4

    .line 1709
    .end local v0           #Input:Ljava/io/DataInputStream;
    .restart local v1       #Input:Ljava/io/DataInputStream;
    :catch_1b
    move-exception v2

    .line 1711
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_18

    .line 1695
    .end local v1           #Input:Ljava/io/DataInputStream;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #Input:Ljava/io/DataInputStream;
    :catch_24
    move-exception v2

    .line 1697
    .local v2, e:Ljava/io/FileNotFoundException;
    :try_start_25
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_3a

    .line 1698
    const/4 v4, 0x3

    .line 1704
    if-eqz v0, :cond_1a

    .line 1706
    :try_start_2f
    throw v0
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_30} :catch_31

    goto :goto_1a

    .line 1709
    :catch_31
    move-exception v2

    .line 1711
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_1a

    .line 1702
    .end local v2           #e:Ljava/io/IOException;
    :catchall_3a
    move-exception v4

    .line 1704
    if-eqz v0, :cond_3e

    .line 1706
    :try_start_3d
    throw v0
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_3e} :catch_3f

    .line 1712
    :cond_3e
    :goto_3e
    throw v4

    .line 1709
    :catch_3f
    move-exception v2

    .line 1711
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_3e

    .line 1717
    .end local v2           #e:Ljava/io/IOException;
    :cond_48
    const/4 v4, 0x5

    goto :goto_1a
.end method

.method public static xdbFullResetFFS()Ljava/lang/Object;
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 1835
    const/4 v1, 0x0

    .line 1839
    .local v1, i:I
    sget-object v3, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->FileMax:Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

    invoke-virtual {v3}, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->Index()I

    move-result v0

    .line 1840
    .local v0, IndexLen:I
    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_25

    .line 1842
    sget-object v3, Lcom/wssyncmldm/db/file/XDB;->XDMFileParam:[Lcom/wssyncmldm/db/file/XDBFileParam;

    aget-object v2, v3, v1

    .line 1843
    .local v2, pFileParam:Lcom/wssyncmldm/db/file/XDBFileParam;
    iget v3, v2, Lcom/wssyncmldm/db/file/XDBFileParam;->FileID:I

    invoke-static {v4, v3}, Lcom/wssyncmldm/db/file/XDB;->xdbAdpFileExists(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_22

    .line 1845
    iget v3, v2, Lcom/wssyncmldm/db/file/XDBFileParam;->FileID:I

    invoke-static {v4, v3}, Lcom/wssyncmldm/db/file/XDB;->xdbAdpFileDelete(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_22

    .line 1847
    const/4 v3, 0x0

    iput v3, v2, Lcom/wssyncmldm/db/file/XDBFileParam;->nSize:I

    .line 1840
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1852
    .end local v2           #pFileParam:Lcom/wssyncmldm/db/file/XDBFileParam;
    :cond_25
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3
.end method

.method public static xdbFullRestAll()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 1818
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbFullResetFFS()Ljava/lang/Object;

    .line 1819
    invoke-static {}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbFullReset()V

    .line 1820
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbInit()Z

    .line 1821
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbDMffs_Init()V

    .line 1822
    const/4 v0, -0x1

    sput v0, Lcom/wssyncmldm/db/file/XDB;->gFumoStatus:I

    .line 1823
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMInitAdapter;->xdmInitAdpEXTInit()Z

    .line 1824
    invoke-static {v1}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSetIsConnected(Z)V

    .line 1825
    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetSyncMode(I)Z

    .line 1826
    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentTpSetRetryCount(I)V

    .line 1828
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 1829
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 1830
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 1831
    return-void
.end method

.method public static xdbGetAcceptType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3440
    const/4 v0, 0x0

    .line 3442
    .local v0, nFUMOStatus:I
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v0

    .line 3444
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_d

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_12

    .line 3446
    :cond_d
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMODDAcceptType()Ljava/lang/String;

    move-result-object v1

    .line 3449
    :goto_11
    return-object v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public static xdbGetAppID(I)Ljava/lang/String;
    .registers 5
    .parameter "appId"

    .prologue
    .line 2953
    const-string v2, ""

    .line 2956
    .local v2, szAppID:Ljava/lang/String;
    packed-switch p0, :pswitch_data_24

    .line 2965
    const/16 v3, 0x3b

    :try_start_7
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 2973
    :goto_f
    :pswitch_f
    return-object v2

    .line 2959
    :pswitch_10
    const/16 v3, 0x3b

    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1a} :catch_1b

    .line 2960
    goto :goto_f

    .line 2969
    :catch_1b
    move-exception v1

    .line 2971
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_f

    .line 2956
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
    .end packed-switch
.end method

.method public static xdbGetAuthLevel()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2978
    const-string v2, ""

    .line 2981
    .local v2, szAuthLevel:Ljava/lang/String;
    const/16 v3, 0x3c

    :try_start_4
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    .line 2987
    :goto_c
    return-object v2

    .line 2983
    :catch_d
    move-exception v1

    .line 2985
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static xdbGetAuthType()I
    .registers 3

    .prologue
    .line 2440
    const/4 v0, 0x0

    .line 2443
    .local v0, authType:I
    const/16 v2, 0x44

    :try_start_3
    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_12} :catch_14

    move-result v0

    .line 2449
    :goto_13
    return v0

    .line 2445
    :catch_14
    move-exception v1

    .line 2447
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_13
.end method

.method public static xdbGetAutoUpdateFlag()Z
    .registers 1

    .prologue
    .line 3468
    const-string v0, "SOFTWARE_UPDATE_AUTO_UPDATE"

    invoke-static {v0}, Lcom/wssyncmldm/db/file/XDB;->xdbGetSettingContentProviderDB(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static xdbGetChangedProtocol()Z
    .registers 3

    .prologue
    .line 2506
    const/4 v0, 0x0

    .line 2509
    .local v0, bChanged:Z
    const/16 v2, 0x4a

    :try_start_3
    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_12} :catch_14

    move-result v0

    .line 2515
    :goto_13
    return v0

    .line 2511
    :catch_14
    move-exception v1

    .line 2513
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_13
.end method

.method public static xdbGetClientNonce()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3090
    const-string v2, ""

    .line 3093
    .local v2, szNonce:Ljava/lang/String;
    const/16 v3, 0x41

    :try_start_4
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    .line 3099
    :goto_c
    return-object v2

    .line 3095
    :catch_d
    move-exception v1

    .line 3097
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static xdbGetClientPassword()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3048
    const-string v2, ""

    .line 3051
    .local v2, szClientPassword:Ljava/lang/String;
    const/16 v3, 0x37

    :try_start_4
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    .line 3057
    :goto_c
    return-object v2

    .line 3053
    :catch_d
    move-exception v1

    .line 3055
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static xdbGetConBack()Lcom/wssyncmldm/db/file/XDBNetConProfileBackup;
    .registers 4

    .prologue
    .line 3215
    new-instance v2, Lcom/wssyncmldm/db/file/XDBNetConProfileBackup;

    invoke-direct {v2}, Lcom/wssyncmldm/db/file/XDBNetConProfileBackup;-><init>()V

    .line 3218
    .local v2, ptConBack:Lcom/wssyncmldm/db/file/XDBNetConProfileBackup;
    const/16 v3, 0x49

    :try_start_7
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/wssyncmldm/db/file/XDBNetConProfileBackup;

    move-object v2, v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_10

    .line 3224
    :goto_f
    return-object v2

    .line 3220
    :catch_10
    move-exception v1

    .line 3222
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static xdbGetConRef()Lcom/wssyncmldm/db/file/XDBInfoConRef;
    .registers 4

    .prologue
    .line 3189
    new-instance v1, Lcom/wssyncmldm/db/file/XDBInfoConRef;

    invoke-direct {v1}, Lcom/wssyncmldm/db/file/XDBInfoConRef;-><init>()V

    .line 3192
    .local v1, Conref:Lcom/wssyncmldm/db/file/XDBInfoConRef;
    const/16 v3, 0x48

    :try_start_7
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/wssyncmldm/db/file/XDBInfoConRef;

    move-object v1, v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_10

    .line 3198
    :goto_f
    return-object v1

    .line 3194
    :catch_10
    move-exception v2

    .line 3196
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static xdbGetDDFParserNodeIndex()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4703
    const-string v2, ""

    .line 4706
    .local v2, szIndex:Ljava/lang/String;
    const/16 v3, 0x15

    :try_start_4
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    .line 4712
    :goto_c
    return-object v2

    .line 4708
    :catch_d
    move-exception v1

    .line 4710
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static xdbGetDMXNodeInfo(I)Ljava/lang/Object;
    .registers 4
    .parameter "nIndex"

    .prologue
    .line 2588
    const/4 v1, 0x0

    .line 2591
    .local v1, ptAccXNodeInfo:Ljava/lang/Object;
    :try_start_1
    invoke-static {p0}, Lcom/wssyncmldm/db/file/XDB;->xdb_E2P_XDM_ACCXNODE_INFO(I)I

    move-result v2

    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_a

    move-result-object v1

    .line 2597
    .end local v1           #ptAccXNodeInfo:Ljava/lang/Object;
    :goto_9
    return-object v1

    .line 2593
    .restart local v1       #ptAccXNodeInfo:Ljava/lang/Object;
    :catch_a
    move-exception v0

    .line 2595
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static xdbGetDeltaFileSaveIndex()I
    .registers 4

    .prologue
    .line 3566
    const/4 v1, 0x0

    .line 3570
    .local v1, nIndex:I
    const/16 v3, 0x16

    :try_start_3
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v2

    .line 3571
    .local v2, oStatus:Ljava/lang/Object;
    if-eqz v2, :cond_f

    .line 3572
    check-cast v2, Ljava/lang/Integer;

    .end local v2           #oStatus:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_10

    move-result v1

    .line 3579
    :cond_f
    :goto_f
    return v1

    .line 3574
    :catch_10
    move-exception v0

    .line 3576
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static xdbGetDevDiscovery()Z
    .registers 4

    .prologue
    .line 4217
    const/4 v0, 0x0

    .line 4221
    .local v0, bFlag:Z
    const/16 v3, 0x11

    :try_start_3
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v2

    .line 4222
    .local v2, oStatus:Ljava/lang/Object;
    if-eqz v2, :cond_f

    .line 4223
    check-cast v2, Ljava/lang/Boolean;

    .end local v2           #oStatus:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_10

    move-result v0

    .line 4229
    :cond_f
    :goto_f
    return v0

    .line 4225
    :catch_10
    move-exception v1

    .line 4227
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static xdbGetDmAgentType()I
    .registers 4

    .prologue
    .line 4834
    const/4 v1, 0x0

    .line 4838
    .local v1, nRet:I
    const/16 v3, 0x6f

    :try_start_3
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v2

    .line 4839
    .local v2, oStatus:Ljava/lang/Object;
    if-eqz v2, :cond_f

    .line 4840
    check-cast v2, Ljava/lang/Integer;

    .end local v2           #oStatus:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_10

    move-result v1

    .line 4846
    :cond_f
    :goto_f
    return v1

    .line 4842
    :catch_10
    move-exception v0

    .line 4844
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static xdbGetDownloadAddrFUMO(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "szURL"

    .prologue
    .line 3927
    const-string v2, ""

    .line 3930
    .local v2, szReportURI:Ljava/lang/String;
    const/16 v3, 0xcf

    :try_start_4
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    .line 3936
    :goto_c
    return-object v2

    .line 3932
    :catch_d
    move-exception v1

    .line 3934
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static xdbGetDownloadPostponeStatus()I
    .registers 5

    .prologue
    .line 4199
    const/4 v1, 0x0

    .line 4203
    .local v1, nStatus:I
    const/16 v3, 0xff

    :try_start_3
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v2

    .line 4204
    .local v2, oStatus:Ljava/lang/Object;
    if-eqz v2, :cond_f

    .line 4205
    check-cast v2, Ljava/lang/Integer;

    .end local v2           #oStatus:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_26

    move-result v1

    .line 4211
    :cond_f
    :goto_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Download Postpone status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 4212
    return v1

    .line 4207
    :catch_26
    move-exception v0

    .line 4209
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static xdbGetExists(I)Z
    .registers 3
    .parameter "FileID"

    .prologue
    .line 383
    const/4 v0, 0x0

    .line 385
    .local v0, bExists:Z
    packed-switch p0, :pswitch_data_12

    .line 391
    const-string v1, "Not Support file id----"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 394
    :goto_9
    return v0

    .line 388
    :pswitch_a
    const/16 v1, 0x62

    invoke-static {v1}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbSqlExistsRow(I)Z

    move-result v0

    .line 389
    goto :goto_9

    .line 385
    nop

    :pswitch_data_12
    .packed-switch 0x226
        :pswitch_a
    .end packed-switch
.end method

.method public static xdbGetFUMOCorrelator()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3410
    const-string v2, ""

    .line 3413
    .local v2, szCorrelator:Ljava/lang/String;
    const/16 v3, 0xd9

    :try_start_4
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_23

    .line 3419
    :goto_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pCorrelator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 3421
    return-object v2

    .line 3415
    :catch_23
    move-exception v1

    .line 3417
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static xdbGetFUMODDAcceptType()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3636
    const-string v2, ""

    .line 3639
    .local v2, szAccept:Ljava/lang/String;
    const/16 v3, 0xe1

    :try_start_4
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    .line 3645
    :goto_c
    return-object v2

    .line 3641
    :catch_d
    move-exception v1

    .line 3643
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static xdbGetFUMODDContentType()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3609
    const-string v2, ""

    .line 3612
    .local v2, szContent:Ljava/lang/String;
    const/16 v3, 0xdf

    :try_start_4
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    .line 3619
    :goto_c
    return-object v2

    .line 3614
    :catch_d
    move-exception v1

    .line 3616
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static xdbGetFUMODescription()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3702
    const-string v2, ""

    .line 3705
    .local v2, szDescription:Ljava/lang/String;
    const/16 v3, 0xe3

    :try_start_4
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    .line 3712
    :goto_c
    return-object v2

    .line 3707
    :catch_d
    move-exception v1

    .line 3709
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static xdbGetFUMODownloadMode()Ljava/lang/Boolean;
    .registers 4

    .prologue
    .line 3760
    const/4 v1, 0x0

    .line 3764
    .local v1, nDownloadMode:Z
    const/16 v3, 0xdd

    :try_start_3
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v2

    .line 3765
    .local v2, oStatus:Ljava/lang/Object;
    if-eqz v2, :cond_f

    .line 3766
    check-cast v2, Ljava/lang/Boolean;

    .end local v2           #oStatus:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_14

    move-result v1

    .line 3772
    :cond_f
    :goto_f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    .line 3768
    :catch_14
    move-exception v0

    .line 3770
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static xdbGetFUMOInitiatedType()I
    .registers 4

    .prologue
    .line 4793
    const/4 v1, 0x0

    .line 4796
    .local v1, nInitType:I
    const/16 v2, 0xe2

    :try_start_3
    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_24

    move-result v1

    .line 4802
    :goto_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initiated Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 4803
    return v1

    .line 4798
    :catch_24
    move-exception v0

    .line 4800
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_d
.end method

.method public static xdbGetFUMOProtocol()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2760
    const/4 v2, 0x0

    .line 2761
    .local v2, nFUMOStatus:I
    const-string v3, ""

    .line 2763
    .local v3, szProtocol:Ljava/lang/String;
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v2

    .line 2767
    const/16 v4, 0x28

    if-eq v2, v4, :cond_13

    const/16 v4, 0x14

    if-eq v2, v4, :cond_13

    const/16 v4, 0xe6

    if-ne v2, v4, :cond_1e

    .line 2769
    :cond_13
    const/16 v4, 0xd2

    :try_start_15
    invoke-static {v4}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 2785
    :goto_1d
    return-object v3

    .line 2771
    :cond_1e
    const/16 v4, 0xa

    if-ne v2, v4, :cond_2d

    .line 2773
    const/16 v4, 0xc9

    invoke-static {v4}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    goto :goto_1d

    .line 2777
    :cond_2d
    const/16 v4, 0xce

    invoke-static {v4}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_37} :catch_38

    goto :goto_1d

    .line 2780
    :catch_38
    move-exception v1

    .line 2782
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_1d
.end method

.method public static xdbGetFUMOResultCode()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3789
    const-string v2, ""

    .line 3792
    .local v2, szResultCode:Ljava/lang/String;
    const/16 v3, 0xd8

    :try_start_4
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    .line 3798
    :goto_c
    return-object v2

    .line 3794
    :catch_d
    move-exception v1

    .line 3796
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static xdbGetFUMOStatus()I
    .registers 5

    .prologue
    .line 3316
    const/4 v1, 0x0

    .line 3318
    .local v1, nStatus:I
    sget v3, Lcom/wssyncmldm/db/file/XDB;->gFumoStatus:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1f

    .line 3320
    sget v1, Lcom/wssyncmldm/db/file/XDB;->gFumoStatus:I

    .line 3343
    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xdbGetFUMOStatus : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 3344
    return v1

    .line 3324
    :cond_1f
    const/4 v2, 0x0

    .line 3327
    .local v2, oStatus:Ljava/lang/Object;
    const/16 v3, 0xdb

    :try_start_22
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_35

    move-result-object v2

    .line 3333
    .end local v2           #oStatus:Ljava/lang/Object;
    :goto_26
    if-eqz v2, :cond_3e

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-eqz v3, :cond_3e

    .line 3335
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_8

    .line 3329
    .restart local v2       #oStatus:Ljava/lang/Object;
    :catch_35
    move-exception v0

    .line 3331
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_26

    .line 3339
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #oStatus:Ljava/lang/Object;
    :cond_3e
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public static xdbGetFUMOStatusNode()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3382
    const-string v2, ""

    .line 3385
    .local v2, szNodeName:Ljava/lang/String;
    const/16 v3, 0xda

    :try_start_4
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_23

    .line 3392
    :goto_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pNodeName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 3393
    return-object v2

    .line 3387
    :catch_23
    move-exception v1

    .line 3389
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static xdbGetFUMOUpdateMechanism()I
    .registers 4

    .prologue
    .line 3651
    const/4 v1, 0x0

    .line 3654
    .local v1, nMechanism:I
    const/16 v3, 0xdc

    :try_start_3
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v2

    .line 3655
    .local v2, temp:Ljava/lang/Object;
    if-eqz v2, :cond_17

    .line 3657
    check-cast v2, Ljava/lang/Integer;

    .end local v2           #temp:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_19

    move-result v1

    .line 3664
    :goto_f
    if-eqz v1, :cond_15

    const/16 v3, 0xf

    if-lt v1, v3, :cond_16

    .line 3666
    :cond_15
    const/4 v1, 0x0

    .line 3673
    .local v0, e:Ljava/lang/Exception;
    :cond_16
    :goto_16
    return v1

    .line 3661
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #temp:Ljava/lang/Object;
    :cond_17
    const/4 v1, 0x0

    goto :goto_f

    .line 3669
    .end local v2           #temp:Ljava/lang/Object;
    :catch_19
    move-exception v0

    .line 3671
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_16
.end method

.method public static xdbGetFUMOUpdateReportURI()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3894
    const-string v2, ""

    .line 3897
    .local v2, szReportURI:Ljava/lang/String;
    const/16 v3, 0xde

    :try_start_4
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 3899
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 3901
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentGetDefaultLocuri()Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_17

    move-result-object v2

    .line 3908
    :cond_16
    :goto_16
    return-object v2

    .line 3904
    :catch_17
    move-exception v1

    .line 3906
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_16
.end method

.method public static xdbGetFileIdBootstrap()I
    .registers 1

    .prologue
    .line 2401
    sget-object v0, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->FileBootstrapWbxml:Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

    invoke-virtual {v0}, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->FileId()I

    move-result v0

    return v0
.end method

.method public static xdbGetFileIdFirmwareData()I
    .registers 1

    .prologue
    .line 2391
    sget-object v0, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->FileFirmwareData:Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

    invoke-virtual {v0}, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->FileId()I

    move-result v0

    return v0
.end method

.method public static xdbGetFileIdLargeObjectData()I
    .registers 1

    .prologue
    .line 2396
    sget-object v0, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->FileLargeObjectData:Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

    invoke-virtual {v0}, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->FileId()I

    move-result v0

    return v0
.end method

.method public static xdbGetFileIdObjectData()I
    .registers 1

    .prologue
    .line 2381
    sget-object v0, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->FileObjectData:Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

    invoke-virtual {v0}, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->FileId()I

    move-result v0

    return v0
.end method

.method public static xdbGetFileIdObjectTreeInfo()I
    .registers 1

    .prologue
    .line 2386
    sget-object v0, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->FileObjectTreeInfo:Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

    invoke-virtual {v0}, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->FileId()I

    move-result v0

    return v0
.end method

.method public static xdbGetFileIdTNDS()I
    .registers 1

    .prologue
    .line 2406
    sget-object v0, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->FileTndsXmlData:Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

    invoke-virtual {v0}, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->FileId()I

    move-result v0

    return v0
.end method

.method public static xdbGetFileSize(I)I
    .registers 6
    .parameter "FileID"

    .prologue
    .line 1782
    const/4 v2, 0x0

    .line 1783
    .local v2, szFileName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1785
    .local v1, nSize:I
    if-lez p0, :cond_11

    .line 1786
    invoke-static {p0}, Lcom/wssyncmldm/db/file/XDB;->xdbFileGetNameFromCallerID(I)Ljava/lang/String;

    move-result-object v2

    .line 1792
    :try_start_8
    sget-object v3, Lcom/wssyncmldm/db/file/XDB;->dbadapter:Lcom/wssyncmldm/db/file/XDBAdapter;

    invoke-virtual {v3, v2}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbFileGetSize(Ljava/lang/String;)J
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_d} :catch_13

    move-result-wide v3

    long-to-int v1, v3

    :goto_f
    move v3, v1

    .line 1798
    :goto_10
    return v3

    .line 1788
    :cond_11
    const/4 v3, -0x1

    goto :goto_10

    .line 1794
    :catch_13
    move-exception v0

    .line 1796
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static xdbGetFotaBearerStatus()I
    .registers 5

    .prologue
    .line 3493
    const/4 v1, 0x0

    .line 3497
    .local v1, status:I
    :try_start_1
    invoke-static {}, Lcom/wssyncmldm/XDMApplication;->xdmGetContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SMLDM_BEARER"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 3498
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_27

    .line 3505
    :goto_26
    return v1

    .line 3500
    :catch_27
    move-exception v0

    .line 3502
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_26
.end method

.method public static xdbGetFotaClientRegistration()I
    .registers 5

    .prologue
    .line 3550
    const/4 v1, 0x0

    .line 3553
    .local v1, status:I
    :try_start_1
    invoke-static {}, Lcom/wssyncmldm/XDMApplication;->xdmGetContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "FOTA_CLIENT_REGISTRATION"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 3554
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_27

    .line 3561
    :goto_26
    return v1

    .line 3556
    :catch_27
    move-exception v0

    .line 3558
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_26
.end method

.method public static xdbGetFotaStartStatus()I
    .registers 5

    .prologue
    .line 3534
    const/4 v1, 0x0

    .line 3537
    .local v1, status:I
    :try_start_1
    invoke-static {}, Lcom/wssyncmldm/XDMApplication;->xdmGetContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SMLDM_FOTA_START"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 3538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_27

    .line 3545
    :goto_26
    return v1

    .line 3540
    :catch_27
    move-exception v0

    .line 3542
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_26
.end method

.method public static xdbGetInDMCycle()Z
    .registers 3

    .prologue
    .line 4541
    const/4 v0, 0x0

    .line 4544
    .local v0, bCycle:Z
    const/16 v2, 0x88

    :try_start_3
    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_e

    move-result v0

    .line 4550
    :goto_d
    return v0

    .line 4546
    :catch_e
    move-exception v1

    .line 4548
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_d
.end method

.method private static xdbGetInternalFileSize(Ljava/io/File;)J
    .registers 14
    .parameter "TargetFolder"

    .prologue
    .line 2105
    const-string v9, ""

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 2107
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 2108
    .local v0, ChildFile:[Ljava/io/File;
    const/4 v3, 0x0

    .line 2109
    .local v3, nSize:I
    const-wide/16 v4, 0x0

    .line 2111
    .local v4, nTotalFileSize:J
    if-nez v0, :cond_2a

    .line 2113
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "can not get child list of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    move-wide v6, v4

    .line 2147
    .end local v4           #nTotalFileSize:J
    .local v6, nTotalFileSize:J
    :goto_29
    return-wide v6

    .line 2117
    .end local v6           #nTotalFileSize:J
    .restart local v4       #nTotalFileSize:J
    :cond_2a
    array-length v3, v0

    .line 2118
    const-string v9, "nfilenum of directory [%s] : %d "

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 2122
    if-lez v3, :cond_a4

    .line 2124
    const/4 v2, 0x0

    .local v2, i:I
    :goto_48
    if-ge v2, v3, :cond_a4

    .line 2126
    :try_start_4a
    aget-object v9, v0, v2

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 2127
    .local v8, szName:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File name : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 2128
    aget-object v9, v0, v2

    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_94

    .line 2130
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is file."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 2131
    sget-object v9, Lcom/wssyncmldm/db/file/XDB;->dbadapter:Lcom/wssyncmldm/db/file/XDBAdapter;

    aget-object v10, v0, v2

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbFileGetSize(Ljava/lang/String;)J

    move-result-wide v9

    add-long/2addr v4, v9

    .line 2124
    :goto_91
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    .line 2135
    :cond_94
    aget-object v9, v0, v2

    invoke-static {v9}, Lcom/wssyncmldm/db/file/XDB;->xdbGetInternalFileSize(Ljava/io/File;)J
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_99} :catch_9c

    move-result-wide v9

    add-long/2addr v4, v9

    goto :goto_91

    .line 2140
    .end local v8           #szName:Ljava/lang/String;
    :catch_9c
    move-exception v1

    .line 2142
    .local v1, ex:Ljava/lang/Exception;
    const-string v9, "fail to delete"

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move-wide v6, v4

    .line 2143
    .end local v4           #nTotalFileSize:J
    .restart local v6       #nTotalFileSize:J
    goto :goto_29

    .line 2146
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v2           #i:I
    .end local v6           #nTotalFileSize:J
    .restart local v4       #nTotalFileSize:J
    :cond_a4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "nTotalFileSize = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    move-wide v6, v4

    .line 2147
    .end local v4           #nTotalFileSize:J
    .restart local v6       #nTotalFileSize:J
    goto/16 :goto_29
.end method

.method public static xdbGetMimeType()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3426
    const/4 v0, 0x0

    .line 3428
    .local v0, nFUMOStatus:I
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v0

    .line 3429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nFUMOStatus :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 3431
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_23

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_28

    .line 3433
    :cond_23
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMODDContentType()Ljava/lang/String;

    move-result-object v1

    .line 3435
    :goto_27
    return-object v1

    :cond_28
    const/4 v1, 0x0

    goto :goto_27
.end method

.method public static xdbGetNetworkConnName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3174
    const-string v2, ""

    .line 3177
    .local v2, szNetConnName:Ljava/lang/String;
    const/16 v3, 0x9

    :try_start_4
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 3178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NetConnName is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_22} :catch_23

    .line 3184
    :goto_22
    return-object v2

    .line 3180
    :catch_23
    move-exception v1

    .line 3182
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_22
.end method

.method public static xdbGetNetworkIdx()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3265
    const-string v2, ""

    .line 3268
    .local v2, szIdx:Ljava/lang/String;
    const/16 v3, 0x46

    :try_start_4
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    .line 3274
    :goto_c
    return-object v2

    .line 3270
    :catch_d
    move-exception v1

    .line 3272
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static xdbGetNofiInfo()Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;
    .registers 4

    .prologue
    .line 3279
    new-instance v2, Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;

    invoke-direct {v2}, Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;-><init>()V

    .line 3282
    .local v2, pSessionSaveInfo:Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;
    const/16 v3, 0xd

    :try_start_7
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;

    move-object v2, v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_10

    .line 3288
    :goto_f
    return-object v2

    .line 3284
    :catch_10
    move-exception v1

    .line 3286
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static xdbGetNonceResync()Z
    .registers 5

    .prologue
    .line 2614
    const/4 v0, 0x0

    .line 2618
    .local v0, bResync:Z
    const/16 v3, 0x96

    :try_start_3
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v2

    .line 2619
    .local v2, oStatus:Ljava/lang/Object;
    if-eqz v2, :cond_f

    .line 2620
    check-cast v2, Ljava/lang/Boolean;

    .end local v2           #oStatus:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2621
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ResyncMode is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_29} :catch_2a

    .line 2627
    :goto_29
    return v0

    .line 2623
    :catch_2a
    move-exception v1

    .line 2625
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_29
.end method

.method public static xdbGetNotiDigest(Ljava/lang/String;I[BI)Ljava/lang/String;
    .registers 15
    .parameter "szServerID"
    .parameter "nAuthType"
    .parameter "pPacketBody"
    .parameter "nBodyLen"

    .prologue
    const/4 v0, 0x0

    .line 4730
    const-string v10, ""

    .line 4731
    .local v10, szServerNonce:Ljava/lang/String;
    const-string v1, ""

    .line 4732
    .local v1, szServerId:Ljava/lang/String;
    const-string v2, ""

    .line 4733
    .local v2, szServerPwd:Ljava/lang/String;
    const-string v9, ""

    .line 4735
    .local v9, szDigest:Ljava/lang/String;
    const/4 v4, 0x0

    .line 4737
    .local v4, nNonceLen:I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 4739
    const-string v5, "pServerID is NULL"

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 4775
    :cond_15
    :goto_15
    return-object v0

    .line 4743
    :cond_16
    invoke-static {p0}, Lcom/wssyncmldm/db/file/XDB;->xdbSetActiveProfileIndexByServerID(Ljava/lang/String;)I

    move-result v8

    .line 4746
    .local v8, nActive:I
    :try_start_1a
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetServerID()Ljava/lang/String;

    move-result-object v1

    .line 4747
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetServerPassword()Ljava/lang/String;

    move-result-object v2

    .line 4748
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetServerNonce()Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_25} :catch_9a

    move-result-object v10

    .line 4755
    :goto_26
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 4759
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nActive = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 4760
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "szServerId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 4761
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "szServerPwd = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 4762
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "szServerNonce = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 4764
    const/4 v3, 0x0

    .line 4765
    .local v3, pNonce:[B
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/eng/core/XDMBase64;->xdmBase64Decode([B)[B

    move-result-object v3

    .line 4768
    if-eqz v3, :cond_15

    .line 4773
    array-length v4, v3

    move v0, p1

    move-object v5, p2

    move v6, p3

    .line 4774
    invoke-static/range {v0 .. v6}, Lcom/wssyncmldm/eng/core/XDMAuth;->xdmAuthMakeDigest(ILjava/lang/String;Ljava/lang/String;[BI[BI)Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    .line 4775
    goto/16 :goto_15

    .line 4750
    .end local v3           #pNonce:[B
    :catch_9a
    move-exception v7

    .line 4752
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_26
.end method

.method public static xdbGetNotiEvent()I
    .registers 4

    .prologue
    .line 3144
    const/4 v1, 0x0

    .line 3148
    .local v1, nEvent:I
    const/16 v3, 0xc

    :try_start_3
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v2

    .line 3149
    .local v2, oStatus:Ljava/lang/Object;
    if-eqz v2, :cond_f

    .line 3150
    check-cast v2, Ljava/lang/Integer;

    .end local v2           #oStatus:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_10

    move-result v1

    .line 3156
    :cond_f
    :goto_f
    return v1

    .line 3152
    :catch_10
    move-exception v0

    .line 3154
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static xdbGetNotiReSyncMode()I
    .registers 4

    .prologue
    .line 4422
    const/4 v1, 0x0

    .line 4426
    .local v1, nMode:I
    const/16 v3, 0xe

    :try_start_3
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v2

    .line 4427
    .local v2, oStatus:Ljava/lang/Object;
    if-eqz v2, :cond_f

    .line 4428
    check-cast v2, Ljava/lang/Integer;

    .end local v2           #oStatus:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_10

    move-result v1

    .line 4434
    :cond_f
    :goto_f
    return v1

    .line 4430
    :catch_10
    move-exception v0

    .line 4432
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static xdbGetNotiSessionID(I)Ljava/lang/String;
    .registers 5
    .parameter "appId"

    .prologue
    .line 2815
    const-string v2, ""

    .line 2818
    .local v2, szSessionId:Ljava/lang/String;
    packed-switch p0, :pswitch_data_2a

    .line 2826
    :try_start_5
    const-string v3, "Not Support Application"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 2827
    const/16 v3, 0xa

    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 2836
    :goto_14
    return-object v2

    .line 2821
    :pswitch_15
    const/16 v3, 0xa

    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1f} :catch_20

    .line 2822
    goto :goto_14

    .line 2831
    :catch_20
    move-exception v1

    .line 2833
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_14

    .line 2818
    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_15
    .end packed-switch
.end method

.method public static xdbGetObjectFUMO()Lcom/wssyncmldm/db/file/XDBFumoInfo;
    .registers 4

    .prologue
    .line 4039
    new-instance v2, Lcom/wssyncmldm/db/file/XDBFumoInfo;

    invoke-direct {v2}, Lcom/wssyncmldm/db/file/XDBFumoInfo;-><init>()V

    .line 4043
    .local v2, ptObjFUMO:Lcom/wssyncmldm/db/file/XDBFumoInfo;
    const/16 v3, 0xc8

    :try_start_7
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/wssyncmldm/db/file/XDBFumoInfo;

    move-object v2, v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_10

    .line 4049
    :goto_f
    return-object v2

    .line 4045
    :catch_10
    move-exception v1

    .line 4047
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static xdbGetObjectSizeFUMO()I
    .registers 4

    .prologue
    .line 3941
    const/4 v1, 0x0

    .line 3945
    .local v1, nSize:I
    const/16 v3, 0xd6

    :try_start_3
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v2

    .line 3946
    .local v2, oStatus:Ljava/lang/Object;
    if-eqz v2, :cond_f

    .line 3947
    check-cast v2, Ljava/lang/Integer;

    .end local v2           #oStatus:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_10

    move-result v1

    .line 3953
    :cond_f
    :goto_f
    return v1

    .line 3949
    :catch_10
    move-exception v0

    .line 3951
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static xdbGetPollingInfo()Lcom/wssyncmldm/db/file/XDBPollingInfo;
    .registers 4

    .prologue
    .line 4488
    new-instance v2, Lcom/wssyncmldm/db/file/XDBPollingInfo;

    invoke-direct {v2}, Lcom/wssyncmldm/db/file/XDBPollingInfo;-><init>()V

    .line 4491
    .local v2, pollingInfo:Lcom/wssyncmldm/db/file/XDBPollingInfo;
    const/16 v3, 0x82

    :try_start_7
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/wssyncmldm/db/file/XDBPollingInfo;

    move-object v2, v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_10

    .line 4497
    :goto_f
    return-object v2

    .line 4493
    :catch_10
    move-exception v1

    .line 4495
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static xdbGetPollingOrgVersionUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4514
    const-string v2, ""

    .line 4517
    .local v2, szUrl:Ljava/lang/String;
    const/16 v3, 0x83

    :try_start_4
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    .line 4523
    :goto_c
    return-object v2

    .line 4519
    :catch_d
    move-exception v1

    .line 4521
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static xdbGetPollingPeriod()I
    .registers 3

    .prologue
    .line 4595
    const/4 v1, 0x0

    .line 4598
    .local v1, nPeriod:I
    const/16 v2, 0x85

    :try_start_3
    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_e

    move-result v1

    .line 4604
    :goto_d
    return v1

    .line 4600
    :catch_e
    move-exception v0

    .line 4602
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_d
.end method

.method public static xdbGetPollingPeriodUnit()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4676
    const-string v2, ""

    .line 4679
    .local v2, szPeriodUnit:Ljava/lang/String;
    const/16 v3, 0x89

    :try_start_4
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    .line 4685
    :goto_c
    return-object v2

    .line 4681
    :catch_d
    move-exception v1

    .line 4683
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static xdbGetPollingRange()I
    .registers 3

    .prologue
    .line 4649
    const/4 v1, 0x0

    .line 4652
    .local v1, nRange:I
    const/16 v2, 0x87

    :try_start_3
    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_e

    move-result v1

    .line 4658
    :goto_d
    return v1

    .line 4654
    :catch_e
    move-exception v0

    .line 4656
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_d
.end method

.method public static xdbGetPollingTime()I
    .registers 3

    .prologue
    .line 4622
    const/4 v1, 0x0

    .line 4625
    .local v1, nTime:I
    const/16 v2, 0x86

    :try_start_3
    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_e

    move-result v1

    .line 4631
    :goto_d
    return v1

    .line 4627
    :catch_e
    move-exception v0

    .line 4629
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_d
.end method

.method public static xdbGetPollingVersionUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4568
    const-string v2, ""

    .line 4571
    .local v2, szUrl:Ljava/lang/String;
    const/16 v3, 0x84

    :try_start_4
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    .line 4577
    :goto_c
    return-object v2

    .line 4573
    :catch_d
    move-exception v1

    .line 4575
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static xdbGetPostPoneCurrentVersion()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4096
    const-string v2, ""

    .line 4099
    .local v2, szCurrentVersion:Ljava/lang/String;
    const/16 v3, 0x100

    :try_start_4
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v1

    .line 4100
    .local v1, oCurrentVersion:Ljava/lang/Object;
    if-eqz v1, :cond_e

    .line 4102
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_f

    move-result-object v2

    .line 4109
    .end local v1           #oCurrentVersion:Ljava/lang/Object;
    :cond_e
    :goto_e
    return-object v2

    .line 4105
    :catch_f
    move-exception v0

    .line 4107
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public static xdbGetPostPoneTime()Lcom/wssyncmldm/db/file/XDBPostPoneInfo;
    .registers 4

    .prologue
    .line 4068
    new-instance v2, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;

    invoke-direct {v2}, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;-><init>()V

    .line 4071
    .local v2, ptPostPone:Lcom/wssyncmldm/db/file/XDBPostPoneInfo;
    const/16 v3, 0x102

    :try_start_7
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;

    move-object v2, v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_10

    .line 4077
    :goto_f
    return-object v2

    .line 4073
    :catch_10
    move-exception v1

    .line 4075
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static xdbGetPostponeAutoinstall()Z
    .registers 4

    .prologue
    .line 4138
    const/4 v0, 0x0

    .line 4142
    .local v0, bFlag:Z
    const/16 v3, 0x101

    :try_start_3
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v2

    .line 4143
    .local v2, oStatus:Ljava/lang/Object;
    if-eqz v2, :cond_f

    .line 4144
    check-cast v2, Ljava/lang/Boolean;

    .end local v2           #oStatus:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_10

    move-result v0

    .line 4150
    :cond_f
    :goto_f
    return v0

    .line 4146
    :catch_10
    move-exception v1

    .line 4148
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static xdbGetPostponeCount()I
    .registers 5

    .prologue
    .line 4168
    const/4 v1, 0x0

    .line 4172
    .local v1, nCount:I
    const/16 v3, 0xfa

    :try_start_3
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v2

    .line 4173
    .local v2, oStatus:Ljava/lang/Object;
    if-eqz v2, :cond_f

    .line 4174
    check-cast v2, Ljava/lang/Integer;

    .end local v2           #oStatus:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_26

    move-result v1

    .line 4180
    :cond_f
    :goto_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set Autoinstall status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 4181
    return v1

    .line 4176
    :catch_26
    move-exception v0

    .line 4178
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static xdbGetPrefConRef()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3006
    const-string v2, ""

    .line 3009
    .local v2, szPrefConRef:Ljava/lang/String;
    const/16 v3, 0x3e

    :try_start_4
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    .line 3015
    :goto_c
    return-object v2

    .line 3011
    :catch_d
    move-exception v1

    .line 3013
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static xdbGetProfileIndex()I
    .registers 3

    .prologue
    .line 2414
    const/4 v1, 0x0

    .line 2417
    .local v1, nIdx:I
    const/4 v2, 0x2

    :try_start_2
    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_13

    move-result v1

    .line 2423
    :goto_12
    return v1

    .line 2419
    :catch_13
    move-exception v0

    .line 2421
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_12
.end method

.method public static xdbGetProfileInfo()Lcom/wssyncmldm/db/file/XDBProfileInfo;
    .registers 4

    .prologue
    .line 2520
    new-instance v2, Lcom/wssyncmldm/db/file/XDBProfileInfo;

    invoke-direct {v2}, Lcom/wssyncmldm/db/file/XDBProfileInfo;-><init>()V

    .line 2523
    .local v2, ptProfileInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;
    const/16 v3, 0x32

    :try_start_7
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;

    move-object v2, v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_10

    .line 2529
    :goto_f
    return-object v2

    .line 2525
    :catch_10
    move-exception v1

    .line 2527
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static xdbGetProfileName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2562
    const-string v2, "server1"

    .line 2565
    .local v2, szProfileName:Ljava/lang/String;
    const/16 v3, 0x47

    :try_start_4
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    .line 2571
    :goto_c
    return-object v2

    .line 2567
    :catch_d
    move-exception v1

    .line 2569
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static xdbGetProflieIdx()I
    .registers 4

    .prologue
    .line 2681
    const/4 v1, 0x0

    .line 2685
    .local v1, nIdx:I
    const/4 v3, 0x2

    :try_start_2
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v2

    .line 2686
    .local v2, oStatus:Ljava/lang/Object;
    if-eqz v2, :cond_e

    .line 2687
    check-cast v2, Ljava/lang/Integer;

    .end local v2           #oStatus:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_f

    move-result v1

    .line 2693
    :cond_e
    :goto_e
    return v1

    .line 2689
    :catch_f
    move-exception v0

    .line 2691
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public static xdbGetProflieList(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "ptProflieList"

    .prologue
    .line 2658
    const/16 v1, 0x8

    :try_start_2
    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_7

    move-result-object p0

    .line 2664
    :goto_6
    return-object p0

    .line 2660
    :catch_7
    move-exception v0

    .line 2662
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public static xdbGetProtocol()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2746
    const-string v2, ""

    .line 2749
    .local v2, szProtocol:Ljava/lang/String;
    const/16 v3, 0x34

    :try_start_4
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    .line 2755
    :goto_c
    return-object v2

    .line 2751
    :catch_d
    move-exception v1

    .line 2753
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static xdbGetPushMessageFlag()Z
    .registers 1

    .prologue
    .line 3481
    const-string v0, "SOFTWARE_UPDATE_PUSH_MESSAGE"

    invoke-static {v0}, Lcom/wssyncmldm/db/file/XDB;->xdbGetSettingContentProviderDB(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static xdbGetServerAddress(I)Ljava/lang/String;
    .registers 6
    .parameter "appId"

    .prologue
    .line 2912
    const/4 v2, 0x0

    .line 2913
    .local v2, nStatus:I
    const-string v3, ""

    .line 2916
    .local v3, szServerIP:Ljava/lang/String;
    packed-switch p0, :pswitch_data_5a

    .line 2940
    const/16 v4, 0x39

    :try_start_8
    invoke-static {v4}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 2948
    :goto_10
    return-object v3

    .line 2919
    :pswitch_11
    const/16 v4, 0x39

    invoke-static {v4}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 2920
    goto :goto_10

    .line 2924
    :pswitch_1c
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v2

    .line 2925
    const/16 v4, 0x28

    if-eq v2, v4, :cond_2c

    const/16 v4, 0x14

    if-eq v2, v4, :cond_2c

    const/16 v4, 0xe6

    if-ne v2, v4, :cond_37

    .line 2927
    :cond_2c
    const/16 v4, 0xd4

    invoke-static {v4}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    goto :goto_10

    .line 2929
    :cond_37
    const/16 v4, 0xa

    if-ne v2, v4, :cond_46

    .line 2931
    const/16 v4, 0xcc

    invoke-static {v4}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    goto :goto_10

    .line 2935
    :cond_46
    const/16 v4, 0xd0

    invoke-static {v4}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_50} :catch_51

    .line 2937
    goto :goto_10

    .line 2944
    :catch_51
    move-exception v1

    .line 2946
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_10

    .line 2916
    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_11
        :pswitch_1c
    .end packed-switch
.end method

.method public static xdbGetServerAuthLevel()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2992
    const-string v2, ""

    .line 2995
    .local v2, szAuthLevel:Ljava/lang/String;
    const/16 v3, 0x3d

    :try_start_4
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    .line 3001
    :goto_c
    return-object v2

    .line 2997
    :catch_d
    move-exception v1

    .line 2999
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static xdbGetServerAuthType()I
    .registers 3

    .prologue
    .line 2454
    const/4 v0, 0x0

    .line 2457
    .local v0, authType:I
    const/16 v2, 0x45

    :try_start_3
    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_12} :catch_14

    move-result v0

    .line 2463
    :goto_13
    return v0

    .line 2459
    :catch_14
    move-exception v1

    .line 2461
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_13
.end method

.method public static xdbGetServerID()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3020
    const-string v2, ""

    .line 3023
    .local v2, szSeverid:Ljava/lang/String;
    const/16 v3, 0x3f

    :try_start_4
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    .line 3029
    :goto_c
    return-object v2

    .line 3025
    :catch_d
    move-exception v1

    .line 3027
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static xdbGetServerNonce()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3076
    const-string v2, ""

    .line 3079
    .local v2, szNonce:Ljava/lang/String;
    const/16 v3, 0x42

    :try_start_4
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    .line 3085
    :goto_c
    return-object v2

    .line 3081
    :catch_d
    move-exception v1

    .line 3083
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static xdbGetServerPassword()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3062
    const-string v2, ""

    .line 3065
    .local v2, szServerPassword:Ljava/lang/String;
    const/16 v3, 0x40

    :try_start_4
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    .line 3071
    :goto_c
    return-object v2

    .line 3067
    :catch_d
    move-exception v1

    .line 3069
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static xdbGetServerPort(I)I
    .registers 5
    .parameter "appId"

    .prologue
    .line 3104
    const/4 v1, 0x0

    .line 3105
    .local v1, nStatus:I
    const/4 v2, 0x0

    .line 3108
    .local v2, port:I
    packed-switch p0, :pswitch_data_70

    .line 3139
    :goto_5
    return v2

    .line 3111
    :pswitch_6
    const/16 v3, 0x38

    :try_start_8
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3112
    goto :goto_5

    .line 3115
    :pswitch_19
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v1

    .line 3116
    const/16 v3, 0x28

    if-eq v1, v3, :cond_29

    const/16 v3, 0x14

    if-eq v1, v3, :cond_29

    const/16 v3, 0xe6

    if-ne v1, v3, :cond_3c

    .line 3118
    :cond_29
    const/16 v3, 0xd5

    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_5

    .line 3120
    :cond_3c
    const/16 v3, 0xa

    if-ne v1, v3, :cond_53

    .line 3122
    const/16 v3, 0xcd

    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_5

    .line 3126
    :cond_53
    const/16 v3, 0xd1

    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_64} :catch_66

    move-result v2

    .line 3128
    goto :goto_5

    .line 3134
    :catch_66
    move-exception v0

    .line 3136
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_5

    .line 3108
    nop

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_6
        :pswitch_19
    .end packed-switch
.end method

.method public static xdbGetServerUrl(I)Ljava/lang/String;
    .registers 6
    .parameter "appId"

    .prologue
    .line 2870
    const-string v3, ""

    .line 2871
    .local v3, szServerUrl:Ljava/lang/String;
    const/4 v2, 0x0

    .line 2875
    .local v2, nStatus:I
    packed-switch p0, :pswitch_data_5a

    .line 2899
    const/16 v4, 0x43

    :try_start_8
    invoke-static {v4}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 2907
    :goto_10
    return-object v3

    .line 2878
    :pswitch_11
    const/16 v4, 0x43

    invoke-static {v4}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 2879
    goto :goto_10

    .line 2883
    :pswitch_1c
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v2

    .line 2884
    const/16 v4, 0x28

    if-eq v2, v4, :cond_2c

    const/16 v4, 0x14

    if-eq v2, v4, :cond_2c

    const/16 v4, 0xe6

    if-ne v2, v4, :cond_37

    .line 2886
    :cond_2c
    const/16 v4, 0xd3

    invoke-static {v4}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    goto :goto_10

    .line 2888
    :cond_37
    const/16 v4, 0xa

    if-ne v2, v4, :cond_46

    .line 2890
    const/16 v4, 0xcb

    invoke-static {v4}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    goto :goto_10

    .line 2894
    :cond_46
    const/16 v4, 0xcf

    invoke-static {v4}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_50} :catch_51

    .line 2896
    goto :goto_10

    .line 2903
    :catch_51
    move-exception v1

    .line 2905
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_10

    .line 2875
    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_11
        :pswitch_1c
    .end packed-switch
.end method

.method public static xdbGetSessionSaveStatus(I)Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;
    .registers 6
    .parameter "appId"

    .prologue
    .line 4365
    new-instance v2, Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;

    invoke-direct {v2}, Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;-><init>()V

    .line 4368
    .local v2, pSessionSaveInfo:Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;
    packed-switch p0, :pswitch_data_58

    .line 4384
    :goto_8
    :pswitch_8
    if-nez v2, :cond_25

    .line 4386
    const-string v3, "Read Error"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 4387
    const/4 v2, 0x0

    .line 4392
    .end local v2           #pSessionSaveInfo:Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;
    :goto_10
    return-object v2

    .line 4371
    .restart local v2       #pSessionSaveInfo:Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;
    :pswitch_11
    const/16 v3, 0xd

    :try_start_13
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;

    move-object v2, v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1b} :catch_1c

    .line 4372
    goto :goto_8

    .line 4379
    :catch_1c
    move-exception v1

    .line 4381
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_8

    .line 4391
    .end local v1           #e:Ljava/lang/Exception;
    :cond_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nSessionSaveState ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;->nSessionSaveState:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], nNotiUiEvent ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;->nNotiUiEvent:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_10

    .line 4368
    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_11
        :pswitch_8
    .end packed-switch
.end method

.method public static xdbGetSettingContentProviderDB(Ljava/lang/String;)Z
    .registers 7
    .parameter "szUrl"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4851
    const/4 v1, 0x0

    .line 4854
    .local v1, nCheck:I
    :try_start_3
    invoke-static {}, Lcom/wssyncmldm/XDMApplication;->xdmGetContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, p0, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_13

    move-result v1

    .line 4860
    :goto_10
    if-ne v1, v2, :cond_1c

    :goto_12
    return v2

    .line 4856
    :catch_13
    move-exception v0

    .line 4858
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_10

    .end local v0           #e:Ljava/lang/Exception;
    :cond_1c
    move v2, v3

    .line 4860
    goto :goto_12
.end method

.method public static xdbGetSimIMSI()Lcom/wssyncmldm/db/file/XDBSimInfo;
    .registers 4

    .prologue
    .line 4456
    const/4 v2, 0x0

    .line 4459
    .local v2, pIMSI:Lcom/wssyncmldm/db/file/XDBSimInfo;
    const/16 v3, 0x78

    :try_start_3
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/wssyncmldm/db/file/XDBSimInfo;

    move-object v2, v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b} :catch_c

    .line 4465
    :goto_b
    return-object v2

    .line 4461
    :catch_c
    move-exception v1

    .line 4463
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public static xdbGetStatusAddrFUMO(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "szURL"

    .prologue
    .line 3913
    const-string v2, ""

    .line 3916
    .local v2, szReportURI:Ljava/lang/String;
    const/16 v3, 0xd3

    :try_start_4
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    .line 3922
    :goto_c
    return-object v2

    .line 3918
    :catch_d
    move-exception v1

    .line 3920
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_c
.end method

.method private static xdbGetSyncMLFileParamAreaCode(I)Ljava/lang/Object;
    .registers 4
    .parameter "areacode"

    .prologue
    .line 1559
    const/16 v1, 0x51

    if-ne p0, v1, :cond_f

    .line 1561
    sget-object v1, Lcom/wssyncmldm/db/file/XDB;->xdmSyncMLFileParam:[Lcom/wssyncmldm/db/file/XDBFileNVMParam;

    sget-object v2, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_DM_PROFILE:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    invoke-virtual {v2}, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->Value()I

    move-result v2

    aget-object v0, v1, v2

    .line 1605
    :goto_e
    return-object v0

    .line 1563
    :cond_f
    const/16 v1, 0x52

    if-lt p0, v1, :cond_22

    const/16 v1, 0x56

    if-gt p0, v1, :cond_22

    .line 1565
    sget-object v1, Lcom/wssyncmldm/db/file/XDB;->xdmSyncMLFileParam:[Lcom/wssyncmldm/db/file/XDBFileNVMParam;

    sget-object v2, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_DM_INFO:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    invoke-virtual {v2}, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->Value()I

    move-result v2

    aget-object v0, v1, v2

    .local v0, SyncMLFileParamtemp:Lcom/wssyncmldm/db/file/XDBFileNVMParam;
    goto :goto_e

    .line 1567
    .end local v0           #SyncMLFileParamtemp:Lcom/wssyncmldm/db/file/XDBFileNVMParam;
    :cond_22
    const/16 v1, 0x57

    if-ne p0, v1, :cond_31

    .line 1569
    sget-object v1, Lcom/wssyncmldm/db/file/XDB;->xdmSyncMLFileParam:[Lcom/wssyncmldm/db/file/XDBFileNVMParam;

    sget-object v2, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_FUMO_INFO:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    invoke-virtual {v2}, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->Value()I

    move-result v2

    aget-object v0, v1, v2

    .restart local v0       #SyncMLFileParamtemp:Lcom/wssyncmldm/db/file/XDBFileNVMParam;
    goto :goto_e

    .line 1571
    .end local v0           #SyncMLFileParamtemp:Lcom/wssyncmldm/db/file/XDBFileNVMParam;
    :cond_31
    const/16 v1, 0x58

    if-ne p0, v1, :cond_40

    .line 1573
    sget-object v1, Lcom/wssyncmldm/db/file/XDB;->xdmSyncMLFileParam:[Lcom/wssyncmldm/db/file/XDBFileNVMParam;

    sget-object v2, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_FUMO_POSTPONE:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    invoke-virtual {v2}, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->Value()I

    move-result v2

    aget-object v0, v1, v2

    .restart local v0       #SyncMLFileParamtemp:Lcom/wssyncmldm/db/file/XDBFileNVMParam;
    goto :goto_e

    .line 1575
    .end local v0           #SyncMLFileParamtemp:Lcom/wssyncmldm/db/file/XDBFileNVMParam;
    :cond_40
    const/16 v1, 0x59

    if-ne p0, v1, :cond_4f

    .line 1577
    sget-object v1, Lcom/wssyncmldm/db/file/XDB;->xdmSyncMLFileParam:[Lcom/wssyncmldm/db/file/XDBFileNVMParam;

    sget-object v2, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_IMSI_INFO:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    invoke-virtual {v2}, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->Value()I

    move-result v2

    aget-object v0, v1, v2

    .restart local v0       #SyncMLFileParamtemp:Lcom/wssyncmldm/db/file/XDBFileNVMParam;
    goto :goto_e

    .line 1579
    .end local v0           #SyncMLFileParamtemp:Lcom/wssyncmldm/db/file/XDBFileNVMParam;
    :cond_4f
    const/16 v1, 0x5a

    if-ne p0, v1, :cond_5e

    .line 1581
    sget-object v1, Lcom/wssyncmldm/db/file/XDB;->xdmSyncMLFileParam:[Lcom/wssyncmldm/db/file/XDBFileNVMParam;

    sget-object v2, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_POLLING_INFO:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    invoke-virtual {v2}, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->Value()I

    move-result v2

    aget-object v0, v1, v2

    .restart local v0       #SyncMLFileParamtemp:Lcom/wssyncmldm/db/file/XDBFileNVMParam;
    goto :goto_e

    .line 1583
    .end local v0           #SyncMLFileParamtemp:Lcom/wssyncmldm/db/file/XDBFileNVMParam;
    :cond_5e
    const/16 v1, 0x83

    if-ne p0, v1, :cond_6d

    .line 1585
    sget-object v1, Lcom/wssyncmldm/db/file/XDB;->xdmSyncMLFileParam:[Lcom/wssyncmldm/db/file/XDBFileNVMParam;

    sget-object v2, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_DM_ACC_X_NODE:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    invoke-virtual {v2}, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->Value()I

    move-result v2

    aget-object v0, v1, v2

    .restart local v0       #SyncMLFileParamtemp:Lcom/wssyncmldm/db/file/XDBFileNVMParam;
    goto :goto_e

    .line 1587
    .end local v0           #SyncMLFileParamtemp:Lcom/wssyncmldm/db/file/XDBFileNVMParam;
    :cond_6d
    const/16 v1, 0x60

    if-ne p0, v1, :cond_7c

    .line 1589
    sget-object v1, Lcom/wssyncmldm/db/file/XDB;->xdmSyncMLFileParam:[Lcom/wssyncmldm/db/file/XDBFileNVMParam;

    sget-object v2, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_NOTI_RESYNC_MODE:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    invoke-virtual {v2}, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->Value()I

    move-result v2

    aget-object v0, v1, v2

    .restart local v0       #SyncMLFileParamtemp:Lcom/wssyncmldm/db/file/XDBFileNVMParam;
    goto :goto_e

    .line 1591
    .end local v0           #SyncMLFileParamtemp:Lcom/wssyncmldm/db/file/XDBFileNVMParam;
    :cond_7c
    const/16 v1, 0x61

    if-ne p0, v1, :cond_8b

    .line 1593
    sget-object v1, Lcom/wssyncmldm/db/file/XDB;->xdmSyncMLFileParam:[Lcom/wssyncmldm/db/file/XDBFileNVMParam;

    sget-object v2, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_DM_AGENT_INFO:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    invoke-virtual {v2}, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->Value()I

    move-result v2

    aget-object v0, v1, v2

    .restart local v0       #SyncMLFileParamtemp:Lcom/wssyncmldm/db/file/XDBFileNVMParam;
    goto :goto_e

    .line 1595
    .end local v0           #SyncMLFileParamtemp:Lcom/wssyncmldm/db/file/XDBFileNVMParam;
    :cond_8b
    const/16 v1, 0x62

    if-ne p0, v1, :cond_9b

    .line 1597
    sget-object v1, Lcom/wssyncmldm/db/file/XDB;->xdmSyncMLFileParam:[Lcom/wssyncmldm/db/file/XDBFileNVMParam;

    sget-object v2, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_NOTI_INFO:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    invoke-virtual {v2}, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->Value()I

    move-result v2

    aget-object v0, v1, v2

    .restart local v0       #SyncMLFileParamtemp:Lcom/wssyncmldm/db/file/XDBFileNVMParam;
    goto/16 :goto_e

    .line 1601
    .end local v0           #SyncMLFileParamtemp:Lcom/wssyncmldm/db/file/XDBFileNVMParam;
    :cond_9b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FFS not find area code by num :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1602
    const/4 v0, 0x0

    goto/16 :goto_e
.end method

.method public static xdbGetUpdateWait()Ljava/lang/Boolean;
    .registers 5

    .prologue
    .line 3729
    const/4 v0, 0x0

    .line 3733
    .local v0, bUpdateWait:Z
    const/16 v3, 0xe0

    :try_start_3
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v2

    .line 3734
    .local v2, oStatus:Ljava/lang/Object;
    if-eqz v2, :cond_f

    .line 3735
    check-cast v2, Ljava/lang/Boolean;

    .end local v2           #oStatus:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_2e

    move-result v0

    .line 3741
    :cond_f
    :goto_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bUpdateWait "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 3742
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    .line 3737
    :catch_2e
    move-exception v1

    .line 3739
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static xdbGetUsername()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3034
    const-string v2, ""

    .line 3037
    .local v2, szUserName:Ljava/lang/String;
    const/16 v3, 0x36

    :try_start_4
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    .line 3043
    :goto_c
    return-object v2

    .line 3039
    :catch_d
    move-exception v1

    .line 3041
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static xdbGetWifiOnlyFlag()Z
    .registers 1

    .prologue
    .line 3455
    const-string v0, "SOFTWARE_UPDATE_WIFI_ONLY"

    invoke-static {v0}, Lcom/wssyncmldm/db/file/XDB;->xdbGetSettingContentProviderDB(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static xdbGetWriteObjectSizeFUMO()I
    .registers 7

    .prologue
    .line 3959
    const/4 v4, 0x0

    .line 3960
    .local v4, nSize:I
    const/4 v1, 0x0

    .line 3961
    .local v1, f:Ljava/io/RandomAccessFile;
    new-instance v3, Ljava/io/File;

    const-string v5, "data/data/com.wssyncmldm/2355.cfg"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3964
    .local v3, file:Ljava/io/File;
    :try_start_9
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v2, v3, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_3c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_25

    .line 3965
    .end local v1           #f:Ljava/io/RandomAccessFile;
    .local v2, f:Ljava/io/RandomAccessFile;
    :try_start_10
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_4c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_4f

    move-result v4

    .line 3975
    if-eqz v2, :cond_19

    .line 3977
    :try_start_16
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1b

    :cond_19
    move-object v1, v2

    .line 3986
    .end local v2           #f:Ljava/io/RandomAccessFile;
    .restart local v1       #f:Ljava/io/RandomAccessFile;
    :cond_1a
    :goto_1a
    return v4

    .line 3980
    .end local v1           #f:Ljava/io/RandomAccessFile;
    .restart local v2       #f:Ljava/io/RandomAccessFile;
    :catch_1b
    move-exception v0

    .line 3982
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move-object v1, v2

    .line 3984
    .end local v2           #f:Ljava/io/RandomAccessFile;
    .restart local v1       #f:Ljava/io/RandomAccessFile;
    goto :goto_1a

    .line 3967
    .end local v0           #e:Ljava/io/IOException;
    :catch_25
    move-exception v0

    .line 3969
    .local v0, e:Ljava/lang/Exception;
    :goto_26
    :try_start_26
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_3c

    .line 3975
    if-eqz v1, :cond_1a

    .line 3977
    :try_start_2f
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_1a

    .line 3980
    :catch_33
    move-exception v0

    .line 3982
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_1a

    .line 3973
    .end local v0           #e:Ljava/io/IOException;
    :catchall_3c
    move-exception v5

    .line 3975
    :goto_3d
    if-eqz v1, :cond_42

    .line 3977
    :try_start_3f
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    .line 3983
    :cond_42
    :goto_42
    throw v5

    .line 3980
    :catch_43
    move-exception v0

    .line 3982
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_42

    .line 3973
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #f:Ljava/io/RandomAccessFile;
    .restart local v2       #f:Ljava/io/RandomAccessFile;
    :catchall_4c
    move-exception v5

    move-object v1, v2

    .end local v2           #f:Ljava/io/RandomAccessFile;
    .restart local v1       #f:Ljava/io/RandomAccessFile;
    goto :goto_3d

    .line 3967
    .end local v1           #f:Ljava/io/RandomAccessFile;
    .restart local v2       #f:Ljava/io/RandomAccessFile;
    :catch_4f
    move-exception v0

    move-object v1, v2

    .end local v2           #f:Ljava/io/RandomAccessFile;
    .restart local v1       #f:Ljava/io/RandomAccessFile;
    goto :goto_26
.end method

.method public static xdbInit()Z
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 193
    :try_start_1
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->values()[Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

    move-result-object v1

    .line 195
    .local v1, Files:[Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;
    sget-object v7, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->FileMax:Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

    invoke-virtual {v7}, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->Index()I

    move-result v7

    new-array v7, v7, [Lcom/wssyncmldm/db/file/XDBFileParam;

    sput-object v7, Lcom/wssyncmldm/db/file/XDB;->XDMFileParam:[Lcom/wssyncmldm/db/file/XDBFileParam;

    .line 197
    move-object v2, v1

    .local v2, arr$:[Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_12
    if-ge v4, v5, :cond_22

    aget-object v0, v2, v4

    .line 199
    .local v0, File:Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;
    invoke-virtual {v0}, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->Index()I

    move-result v7

    sget-object v8, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->FileMax:Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

    invoke-virtual {v8}, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->Index()I

    move-result v8

    if-ne v7, v8, :cond_55

    .line 208
    .end local v0           #File:Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;
    :cond_22
    sget v7, Lcom/wssyncmldm/db/file/XDB;->XDMNVMParamCount:I

    new-array v7, v7, [Lcom/wssyncmldm/db/file/XDBFileNVMParam;

    sput-object v7, Lcom/wssyncmldm/db/file/XDB;->xdmSyncMLFileParam:[Lcom/wssyncmldm/db/file/XDBFileNVMParam;

    .line 209
    sget-object v7, Lcom/wssyncmldm/db/file/XDB;->xdmSyncMLFileParam:[Lcom/wssyncmldm/db/file/XDBFileNVMParam;

    sget v8, Lcom/wssyncmldm/db/file/XDB;->XDMNVMParamCount:I

    invoke-static {v7, v8}, Lcom/wssyncmldm/db/file/XDB;->xdbSyncMLFileParmInit([Lcom/wssyncmldm/db/file/XDBFileNVMParam;I)[Lcom/wssyncmldm/db/file/XDBFileNVMParam;

    move-result-object v7

    sput-object v7, Lcom/wssyncmldm/db/file/XDB;->xdmSyncMLFileParam:[Lcom/wssyncmldm/db/file/XDBFileNVMParam;

    .line 211
    const/4 v7, 0x3

    new-array v7, v7, [Lcom/wssyncmldm/db/file/XDBProfileInfo;

    sput-object v7, Lcom/wssyncmldm/db/file/XDB;->ProfileInfoClass:[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    .line 212
    new-instance v7, Lcom/wssyncmldm/db/file/XDBNetworkProfileList;

    invoke-direct {v7}, Lcom/wssyncmldm/db/file/XDBNetworkProfileList;-><init>()V

    sput-object v7, Lcom/wssyncmldm/db/file/XDB;->NetProfileClass:Lcom/wssyncmldm/db/file/XDBNetworkProfileList;

    .line 213
    new-instance v7, Lcom/wssyncmldm/db/file/XDBNvm;

    invoke-direct {v7}, Lcom/wssyncmldm/db/file/XDBNvm;-><init>()V

    sput-object v7, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    .line 214
    new-instance v7, Lcom/wssyncmldm/db/file/XDBInfoConRef;

    invoke-direct {v7}, Lcom/wssyncmldm/db/file/XDBInfoConRef;-><init>()V

    sput-object v7, Lcom/wssyncmldm/db/file/XDB;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    .line 215
    new-instance v7, Lcom/wssyncmldm/db/file/XDBAdapter;

    invoke-direct {v7}, Lcom/wssyncmldm/db/file/XDBAdapter;-><init>()V

    sput-object v7, Lcom/wssyncmldm/db/file/XDB;->dbadapter:Lcom/wssyncmldm/db/file/XDBAdapter;

    .line 223
    const/4 v6, 0x1

    .end local v2           #arr$:[Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :goto_54
    return v6

    .line 202
    .restart local v0       #File:Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;
    .restart local v2       #arr$:[Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_55
    sget-object v7, Lcom/wssyncmldm/db/file/XDB;->XDMFileParam:[Lcom/wssyncmldm/db/file/XDBFileParam;

    invoke-virtual {v0}, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->Index()I

    move-result v8

    new-instance v9, Lcom/wssyncmldm/db/file/XDBFileParam;

    invoke-direct {v9}, Lcom/wssyncmldm/db/file/XDBFileParam;-><init>()V

    aput-object v9, v7, v8

    .line 203
    sget-object v7, Lcom/wssyncmldm/db/file/XDB;->XDMFileParam:[Lcom/wssyncmldm/db/file/XDBFileParam;

    invoke-virtual {v0}, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->Index()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v0}, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->FileId()I

    move-result v8

    iput v8, v7, Lcom/wssyncmldm/db/file/XDBFileParam;->FileID:I

    .line 204
    sget-object v7, Lcom/wssyncmldm/db/file/XDB;->XDMFileParam:[Lcom/wssyncmldm/db/file/XDBFileParam;

    invoke-virtual {v0}, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->Index()I

    move-result v8

    aget-object v7, v7, v8

    const/4 v8, 0x0

    iput v8, v7, Lcom/wssyncmldm/db/file/XDBFileParam;->hFile:I

    .line 205
    sget-object v7, Lcom/wssyncmldm/db/file/XDB;->XDMFileParam:[Lcom/wssyncmldm/db/file/XDBFileParam;

    invoke-virtual {v0}, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->Index()I

    move-result v8

    aget-object v7, v7, v8

    const/4 v8, 0x0

    iput v8, v7, Lcom/wssyncmldm/db/file/XDBFileParam;->nSize:I
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_86} :catch_89

    .line 197
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 217
    .end local v0           #File:Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;
    .end local v2           #arr$:[Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :catch_89
    move-exception v3

    .line 219
    .local v3, ex:Ljava/lang/Exception;
    const-string v7, "xdbInit Exception"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_54
.end method

.method public static xdbInitFfsFile(II)Z
    .registers 7
    .parameter "FileID"
    .parameter "nMagicNumber"

    .prologue
    const/4 v2, 0x0

    .line 1520
    const/4 v1, 0x0

    .line 1521
    .local v1, wRC:I
    const/4 v0, 0x0

    .line 1523
    .local v0, pfileparam:Lcom/wssyncmldm/db/file/XDBFileNVMParam;
    invoke-static {p0}, Lcom/wssyncmldm/db/file/XDB;->xdbGetSyncMLFileParamAreaCode(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #pfileparam:Lcom/wssyncmldm/db/file/XDBFileNVMParam;
    check-cast v0, Lcom/wssyncmldm/db/file/XDBFileNVMParam;

    .line 1524
    .restart local v0       #pfileparam:Lcom/wssyncmldm/db/file/XDBFileNVMParam;
    if-nez v0, :cond_c

    .line 1550
    :cond_b
    :goto_b
    return v2

    .line 1527
    :cond_c
    invoke-static {v0}, Lcom/wssyncmldm/db/file/XDB;->xdbSetSyncMLNVMUser(Lcom/wssyncmldm/db/file/XDBFileNVMParam;)Lcom/wssyncmldm/db/file/XDBFileNVMParam;

    move-result-object v0

    .line 1528
    if-eqz v0, :cond_b

    .line 1531
    iget v3, v0, Lcom/wssyncmldm/db/file/XDBFileNVMParam;->AreaCode:I

    iget-object v4, v0, Lcom/wssyncmldm/db/file/XDBFileNVMParam;->pNVMUser:Ljava/lang/Object;

    invoke-static {v3, v4, p1}, Lcom/wssyncmldm/db/file/XDB;->xdbLoadCallback(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lcom/wssyncmldm/db/file/XDBFileNVMParam;->pNVMUser:Ljava/lang/Object;

    .line 1532
    iget-object v3, v0, Lcom/wssyncmldm/db/file/XDBFileNVMParam;->pNVMUser:Ljava/lang/Object;

    if-eqz v3, :cond_b

    .line 1535
    const/16 v3, 0x51

    if-lt p0, v3, :cond_b

    const/16 v3, 0x62

    if-gt p0, v3, :cond_b

    .line 1537
    iget-object v3, v0, Lcom/wssyncmldm/db/file/XDBFileNVMParam;->pNVMUser:Ljava/lang/Object;

    invoke-static {p0, v3}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbSqlCreate(ILjava/lang/Object;)I

    move-result v1

    .line 1544
    if-nez v1, :cond_b

    .line 1546
    const/4 v2, 0x1

    goto :goto_b
.end method

.method private static xdbInitNVMSyncDMFUMOInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "SyncDMFUMOInfo"

    .prologue
    .line 1400
    move-object v0, p0

    check-cast v0, Lcom/wssyncmldm/db/file/XDBFumoInfo;

    .line 1402
    .local v0, pFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;
    if-nez v0, :cond_f

    .line 1404
    new-instance v0, Lcom/wssyncmldm/db/file/XDBFumoInfo;

    .end local v0           #pFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;
    invoke-direct {v0}, Lcom/wssyncmldm/db/file/XDBFumoInfo;-><init>()V

    .line 1405
    .restart local v0       #pFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;
    const-string v1, "pFUMOInfo = null"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1408
    :cond_f
    const-string v1, "http://"

    iput-object v1, v0, Lcom/wssyncmldm/db/file/XDBFumoInfo;->ServerUrl:Ljava/lang/String;

    .line 1409
    const-string v1, "0.0.0.0"

    iput-object v1, v0, Lcom/wssyncmldm/db/file/XDBFumoInfo;->ServerIP:Ljava/lang/String;

    .line 1410
    const-string v1, ""

    iput-object v1, v0, Lcom/wssyncmldm/db/file/XDBFumoInfo;->ResultCode:Ljava/lang/String;

    .line 1411
    const/16 v1, 0x50

    iput v1, v0, Lcom/wssyncmldm/db/file/XDBFumoInfo;->ServerPort:I

    .line 1412
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/wssyncmldm/db/file/XDBFumoInfo;->nDownloadMode:Z

    .line 1413
    const-string v1, "http"

    iput-object v1, v0, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szProtocol:Ljava/lang/String;

    .line 1415
    return-object v0
.end method

.method private static xdbInitNVMSyncDMInfo(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 4
    .parameter "SyncdmInfo"
    .parameter "nMagicNumber"

    .prologue
    .line 1388
    move-object v0, p0

    check-cast v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;

    .line 1389
    .local v0, NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;
    const/4 v1, 0x0

    .line 1391
    .local v1, nProfileIndex:I
    add-int/lit16 v1, p1, -0x933

    .line 1392
    invoke-static {v0, v1}, Lcom/wssyncmldm/db/file/XDB;->xdbFBGetFactoryBootstrapData(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;
    check-cast v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;

    .line 1393
    .restart local v0       #NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;
    invoke-static {v0, v1}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbAdpInitNetProfile(Ljava/lang/Object;I)V

    .line 1394
    iput p1, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->MagicNumber:I

    .line 1395
    return-object v0
.end method

.method private static xdbInitNVMSyncDMPollingInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "SyncDMPollingInfo"

    .prologue
    .line 1432
    move-object v0, p0

    check-cast v0, Lcom/wssyncmldm/db/file/XDBPollingInfo;

    .line 1433
    .local v0, pPollingInfo:Lcom/wssyncmldm/db/file/XDBPollingInfo;
    return-object v0
.end method

.method private static xdbInitNVMSyncDMPostPone(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "SyncDMPostPone"

    .prologue
    .line 1420
    move-object v0, p0

    check-cast v0, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;

    .line 1421
    .local v0, stSyncDMPostPone:Lcom/wssyncmldm/db/file/XDBPostPoneInfo;
    return-object v0
.end method

.method static xdbInitNVMSyncDMProfile(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 7
    .parameter "pProfileList"
    .parameter "nMagicNumber"

    .prologue
    .line 1356
    move-object v1, p0

    check-cast v1, Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    .line 1357
    .local v1, ptProflieList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;
    const/4 v0, 0x0

    .line 1358
    .local v0, nCount:I
    const-string v2, ""

    .line 1359
    .local v2, szTemp:Ljava/lang/String;
    sget-object v3, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    if-eqz v3, :cond_10

    sget-object v3, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v3, v3, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    if-nez v3, :cond_17

    .line 1361
    :cond_10
    const-string v3, "XDMNvmClass or XDMNvmClass.tProfileList is null. return"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1362
    const/4 p0, 0x0

    .line 1383
    .end local p0
    :goto_16
    return-object p0

    .line 1365
    .restart local p0
    :cond_17
    const/4 v0, 0x0

    :goto_18
    const/4 v3, 0x3

    if-ge v0, v3, :cond_42

    .line 1367
    sget-object v3, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v3, v3, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    iput v0, v3, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->Profileindex:I

    .line 1368
    const/16 v3, 0x47

    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #szTemp:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 1370
    .restart local v2       #szTemp:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 1372
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetServerID()Ljava/lang/String;

    move-result-object v2

    .line 1373
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 1374
    const-string v2, ""

    .line 1376
    :cond_3b
    iget-object v3, v1, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->ProfileName:[Ljava/lang/String;

    aput-object v2, v3, v0

    .line 1365
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 1378
    :cond_42
    sget-object v3, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v3, v3, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    const/4 v4, 0x0

    iput v4, v3, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->Profileindex:I

    .line 1380
    iput p1, v1, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->MagicNumber:I

    .line 1381
    const-string v3, "DM Profile"

    iput-object v3, v1, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->m_szNetworkConnName:Ljava/lang/String;

    goto :goto_16
.end method

.method private static xdbInitNVMSyncDMSimIMSI(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "SyncDMSimInfo"

    .prologue
    .line 1426
    move-object v0, p0

    check-cast v0, Lcom/wssyncmldm/db/file/XDBSimInfo;

    .line 1427
    .local v0, pSimInfo:Lcom/wssyncmldm/db/file/XDBSimInfo;
    return-object v0
.end method

.method public static xdbInsert(ILjava/lang/Object;)Z
    .registers 4
    .parameter "FileID"
    .parameter "Input"

    .prologue
    .line 399
    const/4 v0, 0x0

    .line 401
    .local v0, wRC:I
    packed-switch p0, :pswitch_data_16

    .line 408
    const-string v1, "Not Support file id----"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 411
    :goto_9
    if-nez v0, :cond_14

    .line 413
    const/4 v1, 0x1

    .line 417
    :goto_c
    return v1

    .line 404
    :pswitch_d
    const/16 v1, 0x62

    invoke-static {v1, p1}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbSqlCreate(ILjava/lang/Object;)I

    move-result v0

    .line 405
    goto :goto_9

    .line 417
    :cond_14
    const/4 v1, 0x0

    goto :goto_c

    .line 401
    :pswitch_data_16
    .packed-switch 0x226
        :pswitch_d
    .end packed-switch
.end method

.method private static xdbLoadCallback(ILjava/lang/Object;I)Ljava/lang/Object;
    .registers 4
    .parameter "areaCode"
    .parameter "pNVMUser"
    .parameter "magicNumber"

    .prologue
    .line 1472
    const/16 v0, 0x51

    if-ne p0, v0, :cond_9

    .line 1474
    invoke-static {p1, p2}, Lcom/wssyncmldm/db/file/XDB;->xdbInitNVMSyncDMProfile(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    .line 1515
    :cond_8
    :goto_8
    return-object p1

    .line 1476
    :cond_9
    const/16 v0, 0x52

    if-lt p0, v0, :cond_16

    const/16 v0, 0x56

    if-gt p0, v0, :cond_16

    .line 1478
    invoke-static {p1, p2}, Lcom/wssyncmldm/db/file/XDB;->xdbInitNVMSyncDMInfo(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_8

    .line 1480
    :cond_16
    const/16 v0, 0x57

    if-ne p0, v0, :cond_1f

    .line 1482
    invoke-static {p1}, Lcom/wssyncmldm/db/file/XDB;->xdbInitNVMSyncDMFUMOInfo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_8

    .line 1484
    :cond_1f
    const/16 v0, 0x58

    if-ne p0, v0, :cond_28

    .line 1486
    invoke-static {p1}, Lcom/wssyncmldm/db/file/XDB;->xdbInitNVMSyncDMPostPone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_8

    .line 1488
    :cond_28
    const/16 v0, 0x59

    if-ne p0, v0, :cond_31

    .line 1490
    invoke-static {p1}, Lcom/wssyncmldm/db/file/XDB;->xdbInitNVMSyncDMSimIMSI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_8

    .line 1492
    :cond_31
    const/16 v0, 0x5a

    if-ne p0, v0, :cond_3a

    .line 1494
    invoke-static {p1}, Lcom/wssyncmldm/db/file/XDB;->xdbInitNVMSyncDMPollingInfo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_8

    .line 1496
    :cond_3a
    const/16 v0, 0x83

    if-ne p0, v0, :cond_43

    .line 1499
    invoke-static {p1}, Lcom/wssyncmldm/db/file/XDB;->xdbNVMSyncDMAccXNodeInit(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_8

    .line 1501
    :cond_43
    const/16 v0, 0x60

    if-ne p0, v0, :cond_4c

    .line 1504
    invoke-static {p1}, Lcom/wssyncmldm/db/file/XDB;->xdbNVMSyncDMResyncModeInit(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_8

    .line 1506
    :cond_4c
    const/16 v0, 0x61

    if-ne p0, v0, :cond_55

    .line 1508
    invoke-static {p1}, Lcom/wssyncmldm/db/file/XDB;->xdbNVMSyncDmAgentInfoInit(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_8

    .line 1510
    :cond_55
    const/16 v0, 0x62

    if-ne p0, v0, :cond_8

    .line 1512
    invoke-static {p1}, Lcom/wssyncmldm/db/file/XDBNoti;->xdbNotiInitNVM(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_8
.end method

.method private static xdbNVMSyncDMAccXNodeInit(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "SyncDMAccXNode"

    .prologue
    .line 1438
    move-object v0, p0

    check-cast v0, Lcom/wssyncmldm/db/file/XDBAccXListNode;

    .line 1439
    .local v0, stSyncDMAccXNode:Lcom/wssyncmldm/db/file/XDBAccXListNode;
    return-object v0
.end method

.method private static xdbNVMSyncDMResyncModeInit(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "SyncDMResyncMode"

    .prologue
    .line 1444
    move-object v0, p0

    check-cast v0, Lcom/wssyncmldm/db/file/XDBResyncModeInfo;

    .line 1450
    .local v0, bResyncMode:Lcom/wssyncmldm/db/file/XDBResyncModeInfo;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/wssyncmldm/db/file/XDBResyncModeInfo;->nNoceResyncMode:Z

    .line 1451
    return-object v0
.end method

.method private static xdbNVMSyncDmAgentInfoInit(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "NVMDmAgentInfo"

    .prologue
    .line 1456
    move-object v0, p0

    check-cast v0, Lcom/wssyncmldm/db/file/XDBAgentInfo;

    .line 1458
    .local v0, DmAgentInfo:Lcom/wssyncmldm/db/file/XDBAgentInfo;
    if-nez v0, :cond_b

    .line 1460
    new-instance v0, Lcom/wssyncmldm/db/file/XDBAgentInfo;

    .end local v0           #DmAgentInfo:Lcom/wssyncmldm/db/file/XDBAgentInfo;
    invoke-direct {v0}, Lcom/wssyncmldm/db/file/XDBAgentInfo;-><init>()V

    .line 1467
    .restart local v0       #DmAgentInfo:Lcom/wssyncmldm/db/file/XDBAgentInfo;
    :goto_a
    return-object v0

    .line 1464
    :cond_b
    const/4 v1, 0x0

    iput v1, v0, Lcom/wssyncmldm/db/file/XDBAgentInfo;->m_nAgentType:I

    goto :goto_a
.end method

.method public static xdbNotiDbRead(I)Ljava/lang/Object;
    .registers 2
    .parameter "nType"

    .prologue
    .line 327
    packed-switch p0, :pswitch_data_34

    .line 345
    const-string v0, "Wrong Type"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 348
    const/4 v0, 0x0

    :goto_9
    return-object v0

    .line 330
    :pswitch_a
    sget-object v0, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLNotiInfo:Lcom/wssyncmldm/db/file/XDBNotiInfo;

    goto :goto_9

    .line 333
    :pswitch_f
    sget-object v0, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLNotiInfo:Lcom/wssyncmldm/db/file/XDBNotiInfo;

    iget v0, v0, Lcom/wssyncmldm/db/file/XDBNotiInfo;->appId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_9

    .line 336
    :pswitch_1a
    sget-object v0, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLNotiInfo:Lcom/wssyncmldm/db/file/XDBNotiInfo;

    iget v0, v0, Lcom/wssyncmldm/db/file/XDBNotiInfo;->uiMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_9

    .line 339
    :pswitch_25
    sget-object v0, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLNotiInfo:Lcom/wssyncmldm/db/file/XDBNotiInfo;

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBNotiInfo;->m_szSessionId:Ljava/lang/String;

    goto :goto_9

    .line 342
    :pswitch_2c
    sget-object v0, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLNotiInfo:Lcom/wssyncmldm/db/file/XDBNotiInfo;

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBNotiInfo;->m_szServerId:Ljava/lang/String;

    goto :goto_9

    .line 327
    nop

    :pswitch_data_34
    .packed-switch 0x226
        :pswitch_a
        :pswitch_f
        :pswitch_1a
        :pswitch_25
        :pswitch_2c
    .end packed-switch
.end method

.method public static xdbNotiDbWrite(ILjava/lang/Object;)V
    .registers 4
    .parameter "nType"
    .parameter "Input"

    .prologue
    .line 353
    packed-switch p0, :pswitch_data_4e

    .line 376
    const-string v0, "Wrong Type"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 379
    .end local p1
    :goto_8
    return-void

    .line 356
    .restart local p1
    :pswitch_9
    sget-object v0, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    check-cast p1, Lcom/wssyncmldm/db/file/XDBNotiInfo;

    .end local p1
    check-cast p1, Lcom/wssyncmldm/db/file/XDBNotiInfo;

    iput-object p1, v0, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLNotiInfo:Lcom/wssyncmldm/db/file/XDBNotiInfo;

    goto :goto_8

    .line 360
    .restart local p1
    :pswitch_12
    sget-object v0, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLNotiInfo:Lcom/wssyncmldm/db/file/XDBNotiInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/wssyncmldm/db/file/XDBNotiInfo;->appId:I

    goto :goto_8

    .line 364
    :pswitch_25
    sget-object v0, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLNotiInfo:Lcom/wssyncmldm/db/file/XDBNotiInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/wssyncmldm/db/file/XDBNotiInfo;->uiMode:I

    goto :goto_8

    .line 368
    :pswitch_38
    sget-object v0, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLNotiInfo:Lcom/wssyncmldm/db/file/XDBNotiInfo;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wssyncmldm/db/file/XDBNotiInfo;->m_szSessionId:Ljava/lang/String;

    goto :goto_8

    .line 372
    :pswitch_43
    sget-object v0, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLNotiInfo:Lcom/wssyncmldm/db/file/XDBNotiInfo;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wssyncmldm/db/file/XDBNotiInfo;->m_szServerId:Ljava/lang/String;

    goto :goto_8

    .line 353
    :pswitch_data_4e
    .packed-switch 0x226
        :pswitch_9
        :pswitch_12
        :pswitch_25
        :pswitch_38
        :pswitch_43
    .end packed-switch
.end method

.method public static xdbOffsetReadFile(III[B)Z
    .registers 8
    .parameter "FileID"
    .parameter "nOffset"
    .parameter "nSize"
    .parameter "pData"

    .prologue
    .line 2320
    const/4 v2, 0x0

    .line 2321
    .local v2, szFileName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2324
    .local v0, bRet:Z
    :try_start_2
    invoke-static {p0}, Lcom/wssyncmldm/db/file/XDB;->xdbFileGetNameFromCallerID(I)Ljava/lang/String;

    move-result-object v2

    .line 2325
    sget-object v3, Lcom/wssyncmldm/db/file/XDB;->dbadapter:Lcom/wssyncmldm/db/file/XDBAdapter;

    invoke-virtual {v3, v2, p3, p1, p2}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbFileReadOffset(Ljava/lang/String;[BII)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_d

    move-result v0

    .line 2331
    :goto_c
    return v0

    .line 2327
    :catch_d
    move-exception v1

    .line 2329
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static xdbRead(I)Ljava/lang/Object;
    .registers 10
    .parameter "nType"

    .prologue
    const/16 v8, 0x51

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 472
    if-ltz p0, :cond_1e

    const/16 v2, 0x17

    if-ge p0, v2, :cond_1e

    .line 474
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    invoke-static {v8}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbSqlRead(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    iput-object v2, v4, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    .line 475
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    if-nez v2, :cond_174

    move-object v2, v3

    .line 786
    :goto_1d
    return-object v2

    .line 479
    :cond_1e
    const/16 v2, 0x48

    if-ne p0, v2, :cond_3a

    .line 481
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    const/16 v2, 0x80

    invoke-static {v2}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbSqlRead(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iput-object v2, v4, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    .line 482
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    if-nez v2, :cond_174

    move-object v2, v3

    .line 483
    goto :goto_1d

    .line 485
    :cond_3a
    const/16 v2, 0x32

    if-lt p0, v2, :cond_79

    const/16 v2, 0x4b

    if-ge p0, v2, :cond_79

    .line 487
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    invoke-static {v8}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbSqlRead(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    iput-object v2, v4, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    .line 488
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    if-nez v2, :cond_54

    move-object v2, v3

    .line 489
    goto :goto_1d

    .line 490
    :cond_54
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    iget v1, v2, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->Profileindex:I

    .line 491
    .local v1, rowid:I
    const/4 v0, 0x0

    .line 492
    .local v0, FileID:I
    packed-switch v1, :pswitch_data_528

    .line 506
    :goto_5e
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    invoke-static {v0}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbSqlRead(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssyncmldm/db/file/XDBProfileInfo;

    iput-object v2, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    .line 508
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    if-nez v2, :cond_174

    move-object v2, v3

    .line 509
    goto :goto_1d

    .line 495
    :pswitch_70
    const/16 v0, 0x52

    .line 496
    goto :goto_5e

    .line 498
    :pswitch_73
    const/16 v0, 0x53

    .line 499
    goto :goto_5e

    .line 501
    :pswitch_76
    const/16 v0, 0x54

    .line 502
    goto :goto_5e

    .line 512
    .end local v0           #FileID:I
    .end local v1           #rowid:I
    :cond_79
    const/16 v2, 0x64

    if-lt p0, v2, :cond_95

    const/16 v2, 0x69

    if-ge p0, v2, :cond_95

    .line 514
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    const/16 v2, 0x83

    invoke-static {v2}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbSqlRead(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssyncmldm/db/file/XDBAccXListNode;

    iput-object v2, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLAccXNode:Lcom/wssyncmldm/db/file/XDBAccXListNode;

    .line 515
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLAccXNode:Lcom/wssyncmldm/db/file/XDBAccXListNode;

    if-nez v2, :cond_174

    move-object v2, v3

    .line 516
    goto :goto_1d

    .line 519
    :cond_95
    const/16 v2, 0x96

    if-lt p0, v2, :cond_b2

    const/16 v2, 0x97

    if-ge p0, v2, :cond_b2

    .line 521
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    const/16 v2, 0x60

    invoke-static {v2}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbSqlRead(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssyncmldm/db/file/XDBResyncModeInfo;

    iput-object v2, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLResyncMode:Lcom/wssyncmldm/db/file/XDBResyncModeInfo;

    .line 522
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLResyncMode:Lcom/wssyncmldm/db/file/XDBResyncModeInfo;

    if-nez v2, :cond_174

    move-object v2, v3

    .line 523
    goto/16 :goto_1d

    .line 526
    :cond_b2
    const/16 v2, 0xc8

    if-lt p0, v2, :cond_cf

    const/16 v2, 0xe4

    if-ge p0, v2, :cond_cf

    .line 528
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    const/16 v2, 0x57

    invoke-static {v2}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbSqlRead(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssyncmldm/db/file/XDBFumoInfo;

    iput-object v2, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    .line 529
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    if-nez v2, :cond_174

    move-object v2, v3

    .line 530
    goto/16 :goto_1d

    .line 532
    :cond_cf
    const/16 v2, 0xfa

    if-lt p0, v2, :cond_ec

    const/16 v2, 0x103

    if-ge p0, v2, :cond_ec

    .line 534
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    const/16 v2, 0x58

    invoke-static {v2}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbSqlRead(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;

    iput-object v2, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPostPone:Lcom/wssyncmldm/db/file/XDBPostPoneInfo;

    .line 535
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPostPone:Lcom/wssyncmldm/db/file/XDBPostPoneInfo;

    if-nez v2, :cond_174

    move-object v2, v3

    .line 536
    goto/16 :goto_1d

    .line 538
    :cond_ec
    const/16 v2, 0x78

    if-lt p0, v2, :cond_109

    const/16 v2, 0x79

    if-ge p0, v2, :cond_109

    .line 540
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    const/16 v2, 0x59

    invoke-static {v2}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbSqlRead(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssyncmldm/db/file/XDBSimInfo;

    iput-object v2, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSYNCMLSimInfo:Lcom/wssyncmldm/db/file/XDBSimInfo;

    .line 541
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSYNCMLSimInfo:Lcom/wssyncmldm/db/file/XDBSimInfo;

    if-nez v2, :cond_174

    move-object v2, v3

    .line 542
    goto/16 :goto_1d

    .line 544
    :cond_109
    const/16 v2, 0x82

    if-lt p0, v2, :cond_126

    const/16 v2, 0x8a

    if-ge p0, v2, :cond_126

    .line 546
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    const/16 v2, 0x5a

    invoke-static {v2}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbSqlRead(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssyncmldm/db/file/XDBPollingInfo;

    iput-object v2, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPollingInfo:Lcom/wssyncmldm/db/file/XDBPollingInfo;

    .line 547
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPollingInfo:Lcom/wssyncmldm/db/file/XDBPollingInfo;

    if-nez v2, :cond_174

    move-object v2, v3

    .line 548
    goto/16 :goto_1d

    .line 550
    :cond_126
    const/16 v2, 0x6e

    if-lt p0, v2, :cond_149

    const/16 v2, 0x70

    if-ge p0, v2, :cond_149

    .line 552
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    const/16 v2, 0x61

    invoke-static {v2}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbSqlRead(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssyncmldm/db/file/XDBAgentInfo;

    iput-object v2, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDmAgentInfo:Lcom/wssyncmldm/db/file/XDBAgentInfo;

    .line 553
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDmAgentInfo:Lcom/wssyncmldm/db/file/XDBAgentInfo;

    if-nez v2, :cond_143

    move-object v2, v3

    .line 554
    goto/16 :goto_1d

    .line 556
    :cond_143
    invoke-static {p0}, Lcom/wssyncmldm/db/file/XDB;->xdbAgentInfoDbRead(I)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1d

    .line 559
    :cond_149
    const/16 v2, 0x226

    if-lt p0, v2, :cond_16c

    const/16 v2, 0x22b

    if-ge p0, v2, :cond_16c

    .line 561
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    const/16 v2, 0x62

    invoke-static {v2}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbSqlRead(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssyncmldm/db/file/XDBNotiInfo;

    iput-object v2, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLNotiInfo:Lcom/wssyncmldm/db/file/XDBNotiInfo;

    .line 562
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLNotiInfo:Lcom/wssyncmldm/db/file/XDBNotiInfo;

    if-nez v2, :cond_166

    move-object v2, v3

    .line 563
    goto/16 :goto_1d

    .line 565
    :cond_166
    invoke-static {p0}, Lcom/wssyncmldm/db/file/XDB;->xdbNotiDbRead(I)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1d

    .line 569
    :cond_16c
    const-string v2, "----wrong file id----"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move-object v2, v3

    .line 570
    goto/16 :goto_1d

    .line 573
    :cond_174
    sparse-switch p0, :sswitch_data_532

    :sswitch_177
    move-object v2, v3

    .line 786
    goto/16 :goto_1d

    .line 576
    :sswitch_17a
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    iget v2, v2, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->MagicNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_1d

    .line 578
    :sswitch_186
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    iget v2, v2, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->nProxyIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_1d

    .line 580
    :sswitch_192
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    iget v2, v2, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->Profileindex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_1d

    .line 582
    :sswitch_19e
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->ProfileName:[Ljava/lang/String;

    aget-object v2, v2, v5

    goto/16 :goto_1d

    .line 584
    :sswitch_1a8
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->ProfileName:[Ljava/lang/String;

    aget-object v2, v2, v6

    goto/16 :goto_1d

    .line 586
    :sswitch_1b2
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->ProfileName:[Ljava/lang/String;

    aget-object v2, v2, v7

    goto/16 :goto_1d

    .line 592
    :sswitch_1bc
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    goto/16 :goto_1d

    .line 594
    :sswitch_1c2
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->m_szNetworkConnName:Ljava/lang/String;

    goto/16 :goto_1d

    .line 596
    :sswitch_1ca
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->m_szSessionID:Ljava/lang/String;

    goto/16 :goto_1d

    .line 598
    :sswitch_1d2
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    iget-wide v2, v2, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->nDestoryNotiTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto/16 :goto_1d

    .line 600
    :sswitch_1de
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    iget v2, v2, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->nNotiEvent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_1d

    .line 602
    :sswitch_1ea
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->NotiResumeState:Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;

    goto/16 :goto_1d

    .line 605
    :sswitch_1f2
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    iget v2, v2, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->nNotiReSyncMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_1d

    .line 607
    :sswitch_1fe
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->tUicResultKeep:Lcom/wssyncmldm/db/file/XDBUICResultKeepInfo;

    goto/16 :goto_1d

    .line 609
    :sswitch_206
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->tUicResultKeep:Lcom/wssyncmldm/db/file/XDBUICResultKeepInfo;

    iget v2, v2, Lcom/wssyncmldm/db/file/XDBUICResultKeepInfo;->eStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_1d

    .line 611
    :sswitch_214
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    iget-boolean v2, v2, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->bSkipDevDiscovery:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_1d

    .line 613
    :sswitch_220
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    iget-boolean v2, v2, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->bWifiOnly:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_1d

    .line 615
    :sswitch_22c
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    iget-boolean v2, v2, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->bAutoUpdate:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_1d

    .line 617
    :sswitch_238
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    iget-boolean v2, v2, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->bPushMessage:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_1d

    .line 619
    :sswitch_244
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    iget v2, v2, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->nDDFParserNodeIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_1d

    .line 621
    :sswitch_250
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    iget v2, v2, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->nSaveDeltaFileIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_1d

    .line 623
    :sswitch_25c
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    goto/16 :goto_1d

    .line 625
    :sswitch_262
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    iget v2, v2, Lcom/wssyncmldm/db/file/XDBProfileInfo;->MagicNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_1d

    .line 627
    :sswitch_26e
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Protocol:Ljava/lang/String;

    goto/16 :goto_1d

    .line 629
    :sswitch_276
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    iget v2, v2, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ObexType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_1d

    .line 631
    :sswitch_282
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBProfileInfo;->UserName:Ljava/lang/String;

    goto/16 :goto_1d

    .line 633
    :sswitch_28a
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Password:Ljava/lang/String;

    goto/16 :goto_1d

    .line 635
    :sswitch_292
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    iget v2, v2, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPort:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_1d

    .line 637
    :sswitch_29e
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerIP:Ljava/lang/String;

    goto/16 :goto_1d

    .line 639
    :sswitch_2a6
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Path:Ljava/lang/String;

    goto/16 :goto_1d

    .line 642
    :sswitch_2ae
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBProfileInfo;->AppID:Ljava/lang/String;

    goto/16 :goto_1d

    .line 645
    :sswitch_2b6
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBProfileInfo;->AuthLevel:Ljava/lang/String;

    goto/16 :goto_1d

    .line 648
    :sswitch_2be
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerAuthLevel:Ljava/lang/String;

    goto/16 :goto_1d

    .line 651
    :sswitch_2c6
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBProfileInfo;->PrefConRef:Ljava/lang/String;

    goto/16 :goto_1d

    .line 653
    :sswitch_2ce
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerID:Ljava/lang/String;

    goto/16 :goto_1d

    .line 655
    :sswitch_2d6
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPwd:Ljava/lang/String;

    goto/16 :goto_1d

    .line 657
    :sswitch_2de
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ClientNonce:Ljava/lang/String;

    goto/16 :goto_1d

    .line 659
    :sswitch_2e6
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerNonce:Ljava/lang/String;

    goto/16 :goto_1d

    .line 661
    :sswitch_2ee
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl:Ljava/lang/String;

    goto/16 :goto_1d

    .line 663
    :sswitch_2f6
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    iget v2, v2, Lcom/wssyncmldm/db/file/XDBProfileInfo;->AuthType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_1d

    .line 665
    :sswitch_302
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    iget v2, v2, Lcom/wssyncmldm/db/file/XDBProfileInfo;->nServerAuthType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_1d

    .line 667
    :sswitch_30e
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    iget v2, v2, Lcom/wssyncmldm/db/file/XDBProfileInfo;->nNetworkConnIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_1d

    .line 669
    :sswitch_31a
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ProfileName:Ljava/lang/String;

    goto/16 :goto_1d

    .line 671
    :sswitch_322
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    goto/16 :goto_1d

    .line 673
    :sswitch_32a
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConBackup:Lcom/wssyncmldm/db/file/XDBNetConProfileBackup;

    goto/16 :goto_1d

    .line 675
    :sswitch_332
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    iget-boolean v2, v2, Lcom/wssyncmldm/db/file/XDBProfileInfo;->bChangedProtocol:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_1d

    .line 678
    :sswitch_33e
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLAccXNode:Lcom/wssyncmldm/db/file/XDBAccXListNode;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBAccXListNode;->stAccXNodeList:[Lcom/wssyncmldm/db/file/XDBAccXNodeInfo;

    aget-object v2, v2, v5

    goto/16 :goto_1d

    .line 681
    :sswitch_348
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLAccXNode:Lcom/wssyncmldm/db/file/XDBAccXListNode;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBAccXListNode;->stAccXNodeList:[Lcom/wssyncmldm/db/file/XDBAccXNodeInfo;

    aget-object v2, v2, v6

    goto/16 :goto_1d

    .line 684
    :sswitch_352
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLAccXNode:Lcom/wssyncmldm/db/file/XDBAccXListNode;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBAccXListNode;->stAccXNodeList:[Lcom/wssyncmldm/db/file/XDBAccXNodeInfo;

    aget-object v2, v2, v7

    goto/16 :goto_1d

    .line 690
    :sswitch_35c
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLResyncMode:Lcom/wssyncmldm/db/file/XDBResyncModeInfo;

    iget-boolean v2, v2, Lcom/wssyncmldm/db/file/XDBResyncModeInfo;->nNoceResyncMode:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_1d

    .line 692
    :sswitch_368
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    goto/16 :goto_1d

    .line 694
    :sswitch_36e
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szProtocol:Ljava/lang/String;

    goto/16 :goto_1d

    .line 696
    :sswitch_376
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    iget v2, v2, Lcom/wssyncmldm/db/file/XDBFumoInfo;->ObexType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_1d

    .line 698
    :sswitch_382
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBFumoInfo;->ServerUrl:Ljava/lang/String;

    goto/16 :goto_1d

    .line 700
    :sswitch_38a
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBFumoInfo;->ServerIP:Ljava/lang/String;

    goto/16 :goto_1d

    .line 702
    :sswitch_392
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    iget v2, v2, Lcom/wssyncmldm/db/file/XDBFumoInfo;->ServerPort:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_1d

    .line 704
    :sswitch_39e
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szObjectDownloadProtocol:Ljava/lang/String;

    goto/16 :goto_1d

    .line 706
    :sswitch_3a6
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szObjectDownloadUrl:Ljava/lang/String;

    goto/16 :goto_1d

    .line 708
    :sswitch_3ae
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szObjectDownloadIP:Ljava/lang/String;

    goto/16 :goto_1d

    .line 710
    :sswitch_3b6
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    iget v2, v2, Lcom/wssyncmldm/db/file/XDBFumoInfo;->nObjectDownloadPort:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_1d

    .line 712
    :sswitch_3c2
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szStatusNotifyProtocol:Ljava/lang/String;

    goto/16 :goto_1d

    .line 714
    :sswitch_3ca
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szStatusNotifyUrl:Ljava/lang/String;

    goto/16 :goto_1d

    .line 716
    :sswitch_3d2
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szStatusNotifyIP:Ljava/lang/String;

    goto/16 :goto_1d

    .line 718
    :sswitch_3da
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    iget v2, v2, Lcom/wssyncmldm/db/file/XDBFumoInfo;->nStatusNotifyPort:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_1d

    .line 720
    :sswitch_3e6
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    iget v2, v2, Lcom/wssyncmldm/db/file/XDBFumoInfo;->nObjectSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_1d

    .line 722
    :sswitch_3f2
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    iget v2, v2, Lcom/wssyncmldm/db/file/XDBFumoInfo;->nFFSWriteSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_1d

    .line 724
    :sswitch_3fe
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBFumoInfo;->ResultCode:Ljava/lang/String;

    goto/16 :goto_1d

    .line 726
    :sswitch_406
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBFumoInfo;->Correlator:Ljava/lang/String;

    goto/16 :goto_1d

    .line 728
    :sswitch_40e
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szStatusNodeName:Ljava/lang/String;

    goto/16 :goto_1d

    .line 730
    :sswitch_416
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    iget v2, v2, Lcom/wssyncmldm/db/file/XDBFumoInfo;->nStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_1d

    .line 732
    :sswitch_422
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    iget v2, v2, Lcom/wssyncmldm/db/file/XDBFumoInfo;->nUpdateMechanism:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_1d

    .line 734
    :sswitch_42e
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    iget-boolean v2, v2, Lcom/wssyncmldm/db/file/XDBFumoInfo;->nDownloadMode:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_1d

    .line 736
    :sswitch_43a
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    iget-boolean v2, v2, Lcom/wssyncmldm/db/file/XDBFumoInfo;->bUpdateWait:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_1d

    .line 738
    :sswitch_446
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    iget v2, v2, Lcom/wssyncmldm/db/file/XDBFumoInfo;->nInitiatedType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_1d

    .line 740
    :sswitch_452
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBFumoInfo;->szDescription:Ljava/lang/String;

    goto/16 :goto_1d

    .line 742
    :sswitch_45a
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szReportURI:Ljava/lang/String;

    goto/16 :goto_1d

    .line 744
    :sswitch_462
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szContentType:Ljava/lang/String;

    goto/16 :goto_1d

    .line 746
    :sswitch_46a
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szAcceptType:Ljava/lang/String;

    goto/16 :goto_1d

    .line 748
    :sswitch_472
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPostPone:Lcom/wssyncmldm/db/file/XDBPostPoneInfo;

    iget v2, v2, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->nPostPoneCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_1d

    .line 750
    :sswitch_47e
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPostPone:Lcom/wssyncmldm/db/file/XDBPostPoneInfo;

    iget v2, v2, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->nPostPoneDownload:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_1d

    .line 752
    :sswitch_48a
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPostPone:Lcom/wssyncmldm/db/file/XDBPostPoneInfo;

    iget-wide v2, v2, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->tCurrentTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto/16 :goto_1d

    .line 754
    :sswitch_496
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPostPone:Lcom/wssyncmldm/db/file/XDBPostPoneInfo;

    iget-wide v2, v2, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->tEndTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto/16 :goto_1d

    .line 756
    :sswitch_4a2
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPostPone:Lcom/wssyncmldm/db/file/XDBPostPoneInfo;

    iget-boolean v2, v2, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->nAfterDownLoadBatteryStatus:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_1d

    .line 758
    :sswitch_4ae
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPostPone:Lcom/wssyncmldm/db/file/XDBPostPoneInfo;

    iget-wide v2, v2, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->nPostPoneTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto/16 :goto_1d

    .line 760
    :sswitch_4ba
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPostPone:Lcom/wssyncmldm/db/file/XDBPostPoneInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->CurrentVersion:Ljava/lang/String;

    goto/16 :goto_1d

    .line 762
    :sswitch_4c2
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPostPone:Lcom/wssyncmldm/db/file/XDBPostPoneInfo;

    iget-boolean v2, v2, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->bAutoInstall:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_1d

    .line 764
    :sswitch_4ce
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPostPone:Lcom/wssyncmldm/db/file/XDBPostPoneInfo;

    goto/16 :goto_1d

    .line 766
    :sswitch_4d4
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSYNCMLSimInfo:Lcom/wssyncmldm/db/file/XDBSimInfo;

    goto/16 :goto_1d

    .line 768
    :sswitch_4da
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPollingInfo:Lcom/wssyncmldm/db/file/XDBPollingInfo;

    goto/16 :goto_1d

    .line 770
    :sswitch_4e0
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPollingInfo:Lcom/wssyncmldm/db/file/XDBPollingInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBPollingInfo;->m_szOrgVersionUrl:Ljava/lang/String;

    goto/16 :goto_1d

    .line 772
    :sswitch_4e8
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPollingInfo:Lcom/wssyncmldm/db/file/XDBPollingInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBPollingInfo;->m_szVersionUrl:Ljava/lang/String;

    goto/16 :goto_1d

    .line 774
    :sswitch_4f0
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPollingInfo:Lcom/wssyncmldm/db/file/XDBPollingInfo;

    iget v2, v2, Lcom/wssyncmldm/db/file/XDBPollingInfo;->nPeriod:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_1d

    .line 776
    :sswitch_4fc
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPollingInfo:Lcom/wssyncmldm/db/file/XDBPollingInfo;

    iget v2, v2, Lcom/wssyncmldm/db/file/XDBPollingInfo;->nTime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_1d

    .line 778
    :sswitch_508
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPollingInfo:Lcom/wssyncmldm/db/file/XDBPollingInfo;

    iget v2, v2, Lcom/wssyncmldm/db/file/XDBPollingInfo;->nRange:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_1d

    .line 780
    :sswitch_514
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPollingInfo:Lcom/wssyncmldm/db/file/XDBPollingInfo;

    iget-boolean v2, v2, Lcom/wssyncmldm/db/file/XDBPollingInfo;->bDmCycle:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_1d

    .line 782
    :sswitch_520
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPollingInfo:Lcom/wssyncmldm/db/file/XDBPollingInfo;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBPollingInfo;->m_szPeriodUnit:Ljava/lang/String;

    goto/16 :goto_1d

    .line 492
    :pswitch_data_528
    .packed-switch 0x0
        :pswitch_70
        :pswitch_73
        :pswitch_76
    .end packed-switch

    .line 573
    :sswitch_data_532
    .sparse-switch
        0x0 -> :sswitch_17a
        0x1 -> :sswitch_186
        0x2 -> :sswitch_192
        0x3 -> :sswitch_19e
        0x4 -> :sswitch_1a8
        0x5 -> :sswitch_1b2
        0x6 -> :sswitch_177
        0x7 -> :sswitch_177
        0x8 -> :sswitch_1bc
        0x9 -> :sswitch_1c2
        0xa -> :sswitch_1ca
        0xb -> :sswitch_1d2
        0xc -> :sswitch_1de
        0xd -> :sswitch_1ea
        0xe -> :sswitch_1f2
        0xf -> :sswitch_1fe
        0x10 -> :sswitch_206
        0x11 -> :sswitch_214
        0x12 -> :sswitch_220
        0x13 -> :sswitch_22c
        0x14 -> :sswitch_238
        0x15 -> :sswitch_244
        0x16 -> :sswitch_250
        0x32 -> :sswitch_25c
        0x33 -> :sswitch_262
        0x34 -> :sswitch_26e
        0x35 -> :sswitch_276
        0x36 -> :sswitch_282
        0x37 -> :sswitch_28a
        0x38 -> :sswitch_292
        0x39 -> :sswitch_29e
        0x3a -> :sswitch_2a6
        0x3b -> :sswitch_2ae
        0x3c -> :sswitch_2b6
        0x3d -> :sswitch_2be
        0x3e -> :sswitch_2c6
        0x3f -> :sswitch_2ce
        0x40 -> :sswitch_2d6
        0x41 -> :sswitch_2de
        0x42 -> :sswitch_2e6
        0x43 -> :sswitch_2ee
        0x44 -> :sswitch_2f6
        0x45 -> :sswitch_302
        0x46 -> :sswitch_30e
        0x47 -> :sswitch_31a
        0x48 -> :sswitch_322
        0x49 -> :sswitch_32a
        0x4a -> :sswitch_332
        0x64 -> :sswitch_33e
        0x65 -> :sswitch_348
        0x66 -> :sswitch_352
        0x67 -> :sswitch_177
        0x68 -> :sswitch_177
        0x78 -> :sswitch_4d4
        0x82 -> :sswitch_4da
        0x83 -> :sswitch_4e0
        0x84 -> :sswitch_4e8
        0x85 -> :sswitch_4f0
        0x86 -> :sswitch_4fc
        0x87 -> :sswitch_508
        0x88 -> :sswitch_514
        0x89 -> :sswitch_520
        0x96 -> :sswitch_35c
        0xc8 -> :sswitch_368
        0xc9 -> :sswitch_36e
        0xca -> :sswitch_376
        0xcb -> :sswitch_382
        0xcc -> :sswitch_38a
        0xcd -> :sswitch_392
        0xce -> :sswitch_39e
        0xcf -> :sswitch_3a6
        0xd0 -> :sswitch_3ae
        0xd1 -> :sswitch_3b6
        0xd2 -> :sswitch_3c2
        0xd3 -> :sswitch_3ca
        0xd4 -> :sswitch_3d2
        0xd5 -> :sswitch_3da
        0xd6 -> :sswitch_3e6
        0xd7 -> :sswitch_3f2
        0xd8 -> :sswitch_3fe
        0xd9 -> :sswitch_406
        0xda -> :sswitch_40e
        0xdb -> :sswitch_416
        0xdc -> :sswitch_422
        0xdd -> :sswitch_42e
        0xde -> :sswitch_45a
        0xdf -> :sswitch_462
        0xe0 -> :sswitch_43a
        0xe1 -> :sswitch_46a
        0xe2 -> :sswitch_446
        0xe3 -> :sswitch_452
        0xfa -> :sswitch_472
        0xfb -> :sswitch_48a
        0xfc -> :sswitch_496
        0xfd -> :sswitch_4a2
        0xfe -> :sswitch_4ae
        0xff -> :sswitch_47e
        0x100 -> :sswitch_4ba
        0x101 -> :sswitch_4c2
        0x102 -> :sswitch_4ce
    .end sparse-switch
.end method

.method public static xdbRead(II)Ljava/lang/Object;
    .registers 7
    .parameter "nType"
    .parameter "rowId"

    .prologue
    const/4 v3, 0x0

    .line 791
    const/4 v1, 0x0

    .line 793
    .local v1, rtnObj:Ljava/lang/Object;
    sparse-switch p0, :sswitch_data_50

    .line 827
    const-string v2, "Not Support file id----"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 830
    .end local v1           #rtnObj:Ljava/lang/Object;
    :goto_a
    return-object v1

    .line 796
    .restart local v1       #rtnObj:Ljava/lang/Object;
    :sswitch_b
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    const/16 v2, 0x51

    invoke-static {v2}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbSqlRead(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    iput-object v2, v4, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    .line 797
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    if-nez v2, :cond_1f

    move-object v1, v3

    .line 798
    goto :goto_a

    .line 800
    :cond_1f
    const/4 v0, 0x0

    .line 801
    .local v0, FileID:I
    packed-switch p1, :pswitch_data_5a

    .line 815
    :goto_23
    sget-object v3, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    invoke-static {v0}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbSqlRead(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssyncmldm/db/file/XDBProfileInfo;

    iput-object v2, v3, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    goto :goto_a

    .line 804
    :pswitch_2e
    const/16 v0, 0x52

    .line 805
    goto :goto_23

    .line 807
    :pswitch_31
    const/16 v0, 0x53

    .line 808
    goto :goto_23

    .line 810
    :pswitch_34
    const/16 v0, 0x54

    .line 811
    goto :goto_23

    .line 819
    .end local v0           #FileID:I
    :sswitch_37
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    const/16 v2, 0x62

    invoke-static {v2, p1}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbSqlRead(II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssyncmldm/db/file/XDBNotiInfo;

    iput-object v2, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLNotiInfo:Lcom/wssyncmldm/db/file/XDBNotiInfo;

    .line 820
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLNotiInfo:Lcom/wssyncmldm/db/file/XDBNotiInfo;

    if-nez v2, :cond_4b

    move-object v1, v3

    .line 821
    goto :goto_a

    .line 823
    :cond_4b
    invoke-static {p0}, Lcom/wssyncmldm/db/file/XDB;->xdbNotiDbRead(I)Ljava/lang/Object;

    move-result-object v1

    .line 824
    goto :goto_a

    .line 793
    :sswitch_data_50
    .sparse-switch
        0x32 -> :sswitch_b
        0x226 -> :sswitch_37
    .end sparse-switch

    .line 801
    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_31
        :pswitch_34
    .end packed-switch
.end method

.method public static xdbReadFile(III)Ljava/lang/Object;
    .registers 7
    .parameter "FileID"
    .parameter "nOffset"
    .parameter "nSize"

    .prologue
    .line 2336
    const/4 v2, 0x0

    .line 2337
    .local v2, szFileName:Ljava/lang/String;
    new-array v0, p2, [B

    .line 2340
    .local v0, Input:[B
    :try_start_3
    invoke-static {p0}, Lcom/wssyncmldm/db/file/XDB;->xdbFileGetNameFromCallerID(I)Ljava/lang/String;

    move-result-object v2

    .line 2341
    sget-object v3, Lcom/wssyncmldm/db/file/XDB;->dbadapter:Lcom/wssyncmldm/db/file/XDBAdapter;

    invoke-virtual {v3, v2, v0, p1, p2}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbFileRead(Ljava/lang/String;[BII)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_d

    .line 2347
    :goto_c
    return-object v0

    .line 2343
    :catch_d
    move-exception v1

    .line 2345
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static xdbReadFile(III[B)Z
    .registers 8
    .parameter "FileID"
    .parameter "nOffset"
    .parameter "nSize"
    .parameter "pData"

    .prologue
    .line 2303
    const/4 v2, 0x0

    .line 2304
    .local v2, szFileName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2308
    .local v0, bRet:Z
    :try_start_2
    invoke-static {p0}, Lcom/wssyncmldm/db/file/XDB;->xdbFileGetNameFromCallerID(I)Ljava/lang/String;

    move-result-object v2

    .line 2309
    sget-object v3, Lcom/wssyncmldm/db/file/XDB;->dbadapter:Lcom/wssyncmldm/db/file/XDBAdapter;

    invoke-virtual {v3, v2, p3, p1, p2}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbFileRead(Ljava/lang/String;[BII)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_d

    move-result v0

    .line 2315
    :goto_c
    return v0

    .line 2311
    :catch_d
    move-exception v1

    .line 2313
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static xdbReadListInfo(I)Ljava/lang/Object;
    .registers 5
    .parameter "nType"

    .prologue
    .line 263
    const/4 v1, 0x0

    .line 265
    .local v1, outPut:Ljava/lang/Object;
    packed-switch p0, :pswitch_data_42

    .line 286
    .end local v1           #outPut:Ljava/lang/Object;
    :goto_4
    return-object v1

    .line 268
    .restart local v1       #outPut:Ljava/lang/Object;
    :pswitch_5
    sget-object v3, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    const/16 v2, 0x51

    invoke-static {v2}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbSqlRead(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    iput-object v2, v3, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    .line 269
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v1, v2, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    goto :goto_4

    .line 272
    :pswitch_16
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->NetProfileClass:Lcom/wssyncmldm/db/file/XDBNetworkProfileList;

    const-string v3, "NetWork Info"

    iput-object v3, v2, Lcom/wssyncmldm/db/file/XDBNetworkProfileList;->m_szConRefName:Ljava/lang/String;

    .line 273
    sget-object v3, Lcom/wssyncmldm/db/file/XDB;->NetProfileClass:Lcom/wssyncmldm/db/file/XDBNetworkProfileList;

    const/16 v2, 0x80

    invoke-static {v2}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbSqlRead(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iput-object v2, v3, Lcom/wssyncmldm/db/file/XDBNetworkProfileList;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    .line 274
    sget-object v1, Lcom/wssyncmldm/db/file/XDB;->NetProfileClass:Lcom/wssyncmldm/db/file/XDBNetworkProfileList;

    goto :goto_4

    .line 277
    :pswitch_2b
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2c
    const/4 v2, 0x3

    if-ge v0, v2, :cond_3e

    .line 279
    sget-object v3, Lcom/wssyncmldm/db/file/XDB;->ProfileInfoClass:[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    add-int/lit8 v2, v0, 0x52

    invoke-static {v2}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbSqlRead(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssyncmldm/db/file/XDBProfileInfo;

    aput-object v2, v3, v0

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 281
    :cond_3e
    sget-object v1, Lcom/wssyncmldm/db/file/XDB;->ProfileInfoClass:[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    goto :goto_4

    .line 265
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_5
        :pswitch_16
        :pswitch_2b
    .end packed-switch
.end method

.method public static xdbSetActiveProfileIndexByServerID(Ljava/lang/String;)I
    .registers 8
    .parameter "szInputServerId"

    .prologue
    .line 4246
    const/4 v4, 0x0

    .line 4247
    .local v4, szServerId:Ljava/lang/String;
    const/4 v2, 0x0

    .line 4249
    .local v2, nProfileIdx:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "serverId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 4251
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetProflieIdx()I

    move-result v2

    .line 4253
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 4255
    const-string v5, "ServerID is NULL"

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move v3, v2

    .line 4280
    .end local v2           #nProfileIdx:I
    .local v3, nProfileIdx:I
    :goto_28
    return v3

    .line 4259
    .end local v3           #nProfileIdx:I
    .restart local v2       #nProfileIdx:I
    :cond_29
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetServerID()Ljava/lang/String;

    move-result-object v4

    .line 4260
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    move v3, v2

    .line 4262
    .end local v2           #nProfileIdx:I
    .restart local v3       #nProfileIdx:I
    goto :goto_28

    .line 4265
    .end local v3           #nProfileIdx:I
    .restart local v2       #nProfileIdx:I
    :cond_35
    const/4 v1, 0x0

    .local v1, i:I
    :goto_36
    const/4 v5, 0x3

    if-ge v1, v5, :cond_4f

    .line 4267
    add-int/lit8 v5, v1, 0x52

    invoke-static {v5}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbSqlRead(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;

    .line 4269
    .local v0, dmInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;
    if-eqz v0, :cond_51

    .line 4271
    iget-object v5, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerID:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 4273
    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetProfileIndex(I)V

    .line 4274
    move v2, v1

    .end local v0           #dmInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;
    :cond_4f
    move v3, v2

    .line 4280
    .end local v2           #nProfileIdx:I
    .restart local v3       #nProfileIdx:I
    goto :goto_28

    .line 4265
    .end local v3           #nProfileIdx:I
    .restart local v0       #dmInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;
    .restart local v2       #nProfileIdx:I
    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_36
.end method

.method public static xdbSetAuthType(I)V
    .registers 4
    .parameter "authType"

    .prologue
    .line 2470
    const/16 v1, 0x44

    :try_start_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_a

    .line 2476
    :goto_9
    return-void

    .line 2472
    :catch_a
    move-exception v0

    .line 2474
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static xdbSetAutoUpdateFlag(Z)Z
    .registers 2
    .parameter "check"

    .prologue
    .line 3474
    const-string v0, "SOFTWARE_UPDATE_AUTO_UPDATE"

    invoke-static {v0, p0}, Lcom/wssyncmldm/db/file/XDB;->xdbSetSettingContentProviderDB(Ljava/lang/String;Z)V

    .line 3475
    const/4 v0, 0x1

    return v0
.end method

.method public static xdbSetBackUpServerUrl()V
    .registers 2

    .prologue
    .line 4439
    const-string v1, ""

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 4441
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetProfileInfo()Lcom/wssyncmldm/db/file/XDBProfileInfo;

    move-result-object v0

    .line 4442
    .local v0, pNvInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;
    if-nez v0, :cond_11

    .line 4444
    const-string v1, "pNvInfo is NULL"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 4452
    :goto_10
    return-void

    .line 4447
    :cond_11
    iget-object v1, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl_Org:Ljava/lang/String;

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetServerUrl(Ljava/lang/String;)V

    .line 4448
    iget-object v1, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerIP_Org:Ljava/lang/String;

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetServerAddress(Ljava/lang/String;)V

    .line 4449
    iget v1, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPort_Org:I

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetServerPort(I)V

    .line 4450
    iget-object v1, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Protocol_Org:Ljava/lang/String;

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetServerProtocol(Ljava/lang/String;)V

    .line 4451
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetChangedProtocol(Z)V

    goto :goto_10
.end method

.method public static xdbSetChangedProtocol(Z)V
    .registers 4
    .parameter "bChanged"

    .prologue
    .line 2492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xdbSetChangedProtocol : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 2496
    const/16 v1, 0x4a

    :try_start_18
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1f} :catch_20

    .line 2502
    :goto_1f
    return-void

    .line 2498
    :catch_20
    move-exception v0

    .line 2500
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public static xdbSetClientNonce(Ljava/lang/String;)V
    .registers 3
    .parameter "szNonce"

    .prologue
    .line 2853
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2866
    :goto_6
    return-void

    .line 2860
    :cond_7
    const/16 v1, 0x41

    :try_start_9
    invoke-static {v1, p0}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_6

    .line 2862
    :catch_d
    move-exception v0

    .line 2864
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public static xdbSetConBack(Lcom/wssyncmldm/db/file/XDBNetConProfileBackup;)V
    .registers 3
    .parameter "ptConBack"

    .prologue
    .line 3231
    const/16 v1, 0x49

    :try_start_2
    invoke-static {v1, p0}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 3237
    :goto_5
    return-void

    .line 3233
    :catch_6
    move-exception v0

    .line 3235
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public static xdbSetConRef(Lcom/wssyncmldm/db/file/XDBInfoConRef;)V
    .registers 3
    .parameter "ptConRef"

    .prologue
    .line 3205
    const/16 v1, 0x48

    :try_start_2
    invoke-static {v1, p0}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 3211
    :goto_5
    return-void

    .line 3207
    :catch_6
    move-exception v0

    .line 3209
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public static xdbSetDDFParserNodeIndex(I)V
    .registers 4
    .parameter "nIndex"

    .prologue
    .line 4719
    const/16 v1, 0x15

    :try_start_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_a

    .line 4725
    :goto_9
    return-void

    .line 4721
    :catch_a
    move-exception v0

    .line 4723
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static xdbSetDMXNodeInfo(ILjava/lang/Object;)V
    .registers 4
    .parameter "nIndex"
    .parameter "ptAccXNodeInfo"

    .prologue
    .line 2604
    :try_start_0
    invoke-static {p0}, Lcom/wssyncmldm/db/file/XDB;->xdb_E2P_XDM_ACCXNODE_INFO(I)I

    move-result v1

    invoke-static {v1, p1}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 2610
    :goto_7
    return-void

    .line 2606
    :catch_8
    move-exception v0

    .line 2608
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public static xdbSetDeltaFileSaveIndex(I)V
    .registers 4
    .parameter "nIndex"

    .prologue
    .line 3584
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xdbSetDeltaFileSaveIndex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 3587
    const/16 v1, 0x16

    :try_start_18
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1f} :catch_20

    .line 3593
    :goto_1f
    return-void

    .line 3589
    :catch_20
    move-exception v0

    .line 3591
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public static xdbSetDevDiscovery(Z)V
    .registers 4
    .parameter "bChecked"

    .prologue
    .line 4236
    const/16 v1, 0x11

    :try_start_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_a

    .line 4242
    :goto_9
    return-void

    .line 4238
    :catch_a
    move-exception v0

    .line 4240
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static xdbSetDmAgentType(I)V
    .registers 4
    .parameter "nAgentType"

    .prologue
    .line 4821
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AgentType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 4824
    const/16 v1, 0x6f

    :try_start_18
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1f} :catch_20

    .line 4830
    :goto_1f
    return-void

    .line 4826
    :catch_20
    move-exception v0

    .line 4828
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public static xdbSetDownloadPostponeStatus(I)V
    .registers 4
    .parameter "nStatus"

    .prologue
    .line 4188
    const/16 v1, 0xff

    :try_start_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_20

    .line 4194
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Download Postpone status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 4195
    return-void

    .line 4190
    :catch_20
    move-exception v0

    .line 4192
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static xdbSetFUMOCorrelator(Ljava/lang/String;)V
    .registers 3
    .parameter "szCorrelator"

    .prologue
    .line 3400
    const/16 v1, 0xd9

    :try_start_2
    invoke-static {v1, p0}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 3406
    :goto_5
    return-void

    .line 3402
    :catch_6
    move-exception v0

    .line 3404
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public static xdbSetFUMODDAcceptType(Ljava/lang/String;)V
    .registers 3
    .parameter "szAccept"

    .prologue
    .line 3626
    const/16 v1, 0xe1

    :try_start_2
    invoke-static {v1, p0}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 3632
    :goto_5
    return-void

    .line 3628
    :catch_6
    move-exception v0

    .line 3630
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public static xdbSetFUMODDContentType(Ljava/lang/String;)V
    .registers 3
    .parameter "szContent"

    .prologue
    .line 3599
    const/16 v1, 0xdf

    :try_start_2
    invoke-static {v1, p0}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 3605
    :goto_5
    return-void

    .line 3601
    :catch_6
    move-exception v0

    .line 3603
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public static xdbSetFUMODescription(Ljava/lang/String;)V
    .registers 3
    .parameter "szDescription"

    .prologue
    .line 3719
    const/16 v1, 0xe3

    :try_start_2
    invoke-static {v1, p0}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 3725
    :goto_5
    return-void

    .line 3721
    :catch_6
    move-exception v0

    .line 3723
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public static xdbSetFUMODownloadMode(Ljava/lang/Boolean;)V
    .registers 4
    .parameter "nDownloadMode"

    .prologue
    .line 3692
    const/16 v1, 0xdd

    :try_start_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_a

    .line 3698
    :goto_9
    return-void

    .line 3694
    :catch_a
    move-exception v0

    .line 3696
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static xdbSetFUMOInitiatedType(I)V
    .registers 4
    .parameter "nInitType"

    .prologue
    .line 4780
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initiated Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 4783
    const/16 v1, 0xe2

    :try_start_18
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1f} :catch_20

    .line 4789
    :goto_1f
    return-void

    .line 4785
    :catch_20
    move-exception v0

    .line 4787
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public static xdbSetFUMOResultCode(Ljava/lang/String;)V
    .registers 3
    .parameter "szResultCode"

    .prologue
    .line 3779
    const/16 v1, 0xd8

    :try_start_2
    invoke-static {v1, p0}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 3785
    :goto_5
    return-void

    .line 3781
    :catch_6
    move-exception v0

    .line 3783
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public static xdbSetFUMOServerUrl(Ljava/lang/String;)Z
    .registers 13
    .parameter "szURL"

    .prologue
    .line 3803
    const/16 v10, 0x100

    new-array v1, v10, [C

    .line 3805
    .local v1, aServerAddr:[C
    const/4 v3, 0x0

    .line 3806
    .local v3, aTempServerAddr:[C
    const/16 v10, 0x10

    new-array v0, v10, [C

    .line 3807
    .local v0, aProtocol:[C
    const/4 v10, 0x6

    new-array v2, v10, [C

    .line 3809
    .local v2, aTempPort:[C
    const/4 v7, 0x0

    .line 3810
    .local v7, nPort:I
    const/4 v8, 0x0

    .line 3813
    .local v8, ret:Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "xdbSetFUMOServerUrl pURL: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 3817
    :try_start_24
    invoke-static {p0}, Lcom/wssyncmldm/tp/XTPHttpUtil;->xtpURLParser(Ljava/lang/String;)Lcom/wssyncmldm/db/file/XDBUrlInfo;

    move-result-object v6

    .line 3818
    .local v6, getParser:Lcom/wssyncmldm/db/file/XDBUrlInfo;
    if-nez v6, :cond_2b

    .line 3875
    .end local v6           #getParser:Lcom/wssyncmldm/db/file/XDBUrlInfo;
    .end local v8           #ret:Z
    :cond_2a
    :goto_2a
    return v8

    .line 3824
    .restart local v6       #getParser:Lcom/wssyncmldm/db/file/XDBUrlInfo;
    .restart local v8       #ret:Z
    :cond_2b
    iget v7, v6, Lcom/wssyncmldm/db/file/XDBUrlInfo;->nPort:I

    .line 3825
    iget-object p0, v6, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pURL:Ljava/lang/String;

    .line 3826
    iget-object v10, v6, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pAddress:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 3827
    iget-object v10, v6, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pProtocol:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 3828
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "nPort = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] aServerAddr = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] aProtocol = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 3830
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "aProtocol = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pProtocol:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "pURL = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] aServerAddr = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pAddress:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] nPort = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Lcom/wssyncmldm/db/file/XDBUrlInfo;->nPort:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 3833
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 3835
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    new-array v9, v10, [C

    .line 3836
    .local v9, szurl:[C
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    .line 3837
    invoke-static {v9}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 3839
    invoke-static {v3, v9, v2}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbDoDMBootStrapURI([C[C[C)[C

    move-result-object v3

    .line 3841
    if-eqz v3, :cond_2a

    .line 3844
    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/wssyncmldm/tp/XTPHttpUtil;->xtpURLParser(Ljava/lang/String;)Lcom/wssyncmldm/db/file/XDBUrlInfo;

    move-result-object v6

    .line 3846
    iget-object v10, v6, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pAddress:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v10

    if-nez v10, :cond_fa

    .line 3849
    const-string v10, "Parsing Error"

    invoke-static {v10}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_ed} :catch_ef

    goto/16 :goto_2a

    .line 3872
    .end local v6           #getParser:Lcom/wssyncmldm/db/file/XDBUrlInfo;
    .end local v9           #szurl:[C
    :catch_ef
    move-exception v5

    .line 3874
    .local v5, ex:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 3875
    const/4 v8, 0x0

    goto/16 :goto_2a

    .line 3853
    .end local v5           #ex:Ljava/lang/Exception;
    .restart local v6       #getParser:Lcom/wssyncmldm/db/file/XDBUrlInfo;
    .restart local v9       #szurl:[C
    :cond_fa
    :try_start_fa
    iget v7, v6, Lcom/wssyncmldm/db/file/XDBUrlInfo;->nPort:I

    .line 3854
    iget-object p0, v6, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pURL:Ljava/lang/String;

    .line 3855
    iget-object v10, v6, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pProtocol:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 3856
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "aProtocol = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pProtocol:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "pURL = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] aServerAddr = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pAddress:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] nPort = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Lcom/wssyncmldm/db/file/XDBUrlInfo;->nPort:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_14a} :catch_ef

    .line 3860
    const/16 v10, 0xc9

    :try_start_14c
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V

    .line 3861
    const/16 v10, 0xcb

    invoke-static {v10, p0}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V

    .line 3862
    const/16 v10, 0xcc

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V

    .line 3863
    const/16 v10, 0xcd

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_16a
    .catch Ljava/lang/Exception; {:try_start_14c .. :try_end_16a} :catch_16d

    .line 3870
    :goto_16a
    const/4 v8, 0x1

    goto/16 :goto_2a

    .line 3865
    :catch_16d
    move-exception v4

    .line 3867
    .local v4, e:Ljava/lang/Exception;
    :try_start_16e
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_175
    .catch Ljava/lang/Exception; {:try_start_16e .. :try_end_175} :catch_ef

    goto :goto_16a
.end method

.method public static xdbSetFUMOStatus(I)V
    .registers 5
    .parameter "nstatus"

    .prologue
    .line 3351
    sget v1, Lcom/wssyncmldm/db/file/XDB;->gFumoStatus:I

    .line 3352
    .local v1, nBuckupStatus:I
    sput p0, Lcom/wssyncmldm/db/file/XDB;->gFumoStatus:I

    .line 3354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xdbSetFUMOStatus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 3357
    const/16 v2, 0xdb

    :try_start_1c
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_23} :catch_24

    .line 3366
    :goto_23
    return-void

    .line 3359
    :catch_24
    move-exception v0

    .line 3361
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 3363
    sput v1, Lcom/wssyncmldm/db/file/XDB;->gFumoStatus:I

    .line 3364
    const-string v2, "xdbSetFUMOStatus db write was failed"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_23
.end method

.method public static xdbSetFUMOStatusNode(Ljava/lang/String;)V
    .registers 3
    .parameter "szStatus"

    .prologue
    .line 3372
    const/16 v1, 0xda

    :try_start_2
    invoke-static {v1, p0}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 3378
    :goto_5
    return-void

    .line 3374
    :catch_6
    move-exception v0

    .line 3376
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public static xdbSetFUMOUpdateMechanism(I)V
    .registers 4
    .parameter "status"

    .prologue
    .line 3680
    const/16 v1, 0xdc

    :try_start_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_a

    .line 3686
    :goto_9
    return-void

    .line 3682
    :catch_a
    move-exception v0

    .line 3684
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static xdbSetFUMOUpdateReportURI(Ljava/lang/String;)V
    .registers 3
    .parameter "szReportURI"

    .prologue
    .line 3884
    const/16 v1, 0xde

    :try_start_2
    invoke-static {v1, p0}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 3890
    :goto_5
    return-void

    .line 3886
    :catch_6
    move-exception v0

    .line 3888
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public static xdbSetFotaBearerStatus(I)V
    .registers 4
    .parameter "Status"

    .prologue
    .line 3512
    :try_start_0
    invoke-static {}, Lcom/wssyncmldm/XDMApplication;->xdmGetContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "SMLDM_BEARER"

    invoke-static {v1, v2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 3518
    :goto_d
    return-void

    .line 3514
    :catch_e
    move-exception v0

    .line 3516
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_d
.end method

.method public static xdbSetFotaStartStatus()V
    .registers 4

    .prologue
    .line 3524
    :try_start_0
    invoke-static {}, Lcom/wssyncmldm/XDMApplication;->xdmGetContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "SMLDM_FOTA_START"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 3530
    .local v0, e:Ljava/lang/Exception;
    :goto_e
    return-void

    .line 3526
    .end local v0           #e:Ljava/lang/Exception;
    :catch_f
    move-exception v0

    .line 3528
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public static xdbSetInDMCycle(Z)V
    .registers 4
    .parameter "bCycle"

    .prologue
    .line 4557
    const/16 v1, 0x88

    :try_start_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V

    .line 4558
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_11

    .line 4564
    :goto_10
    return-void

    .line 4560
    :catch_11
    move-exception v0

    .line 4562
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_10
.end method

.method public static xdbSetNetworkIdx(I)V
    .registers 4
    .parameter "nIdx"

    .prologue
    .line 3255
    const/16 v1, 0x46

    :try_start_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_a

    .line 3261
    :goto_9
    return-void

    .line 3257
    :catch_a
    move-exception v0

    .line 3259
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static xdbSetNetworkName(Ljava/lang/String;)V
    .registers 3
    .parameter "szName"

    .prologue
    .line 3243
    const/16 v1, 0x9

    :try_start_2
    invoke-static {v1, p0}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 3249
    :goto_5
    return-void

    .line 3245
    :catch_6
    move-exception v0

    .line 3247
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public static xdbSetNetworkProflieName(Ljava/lang/String;)V
    .registers 3
    .parameter "szProflieName"

    .prologue
    .line 2646
    const/16 v1, 0x9

    :try_start_2
    invoke-static {v1, p0}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 2652
    :goto_5
    return-void

    .line 2648
    :catch_6
    move-exception v0

    .line 2650
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public static xdbSetNonceResync(I)V
    .registers 4
    .parameter "bResyncMode"

    .prologue
    .line 2634
    const/16 v1, 0x96

    :try_start_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_a

    .line 2640
    :goto_9
    return-void

    .line 2636
    :catch_a
    move-exception v0

    .line 2638
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static xdbSetNotiEvent(I)V
    .registers 4
    .parameter "nEvent"

    .prologue
    .line 3163
    const/16 v1, 0xc

    :try_start_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_a

    .line 3169
    :goto_9
    return-void

    .line 3165
    :catch_a
    move-exception v0

    .line 3167
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static xdbSetNotiReSyncMode(I)Ljava/lang/Boolean;
    .registers 4
    .parameter "nMode"

    .prologue
    .line 4399
    const/16 v1, 0xe

    :try_start_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_f

    .line 4405
    :goto_9
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 4401
    :catch_f
    move-exception v0

    .line 4403
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static xdbSetNotiReSyncMode(Z)V
    .registers 4
    .parameter "nMode"

    .prologue
    .line 4412
    const/16 v1, 0xe

    :try_start_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_a

    .line 4418
    :goto_9
    return-void

    .line 4414
    :catch_a
    move-exception v0

    .line 4416
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static xdbSetNotiSessionID(ILjava/lang/String;)V
    .registers 4
    .parameter "appId"
    .parameter "szSessionID"

    .prologue
    .line 2790
    packed-switch p0, :pswitch_data_1e

    .line 2808
    const-string v1, "Not Support Application"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 2811
    :goto_8
    return-void

    .line 2795
    :pswitch_9
    const/16 v1, 0xa

    :try_start_b
    invoke-static {v1, p1}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_8

    .line 2797
    :catch_f
    move-exception v0

    .line 2799
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_8

    .line 2804
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_18
    const-string v1, "Not Support Application"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_8

    .line 2790
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_9
        :pswitch_18
    .end packed-switch
.end method

.method public static xdbSetObjectFUMO(Ljava/lang/Object;)V
    .registers 4
    .parameter "ptObj"

    .prologue
    .line 4054
    move-object v1, p0

    check-cast v1, Lcom/wssyncmldm/db/file/XDBFumoInfo;

    .line 4058
    .local v1, ptObjFUMO:Lcom/wssyncmldm/db/file/XDBFumoInfo;
    const/16 v2, 0xc8

    :try_start_5
    invoke-static {v2, v1}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_9

    .line 4064
    :goto_8
    return-void

    .line 4060
    :catch_9
    move-exception v0

    .line 4062
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public static xdbSetPollingInfo(Lcom/wssyncmldm/db/file/XDBPollingInfo;)V
    .registers 3
    .parameter "pollingInfo"

    .prologue
    .line 4504
    const/16 v1, 0x82

    :try_start_2
    invoke-static {v1, p0}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 4510
    :goto_5
    return-void

    .line 4506
    :catch_6
    move-exception v0

    .line 4508
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public static xdbSetPollingOrgVersionUrl(Ljava/lang/String;)V
    .registers 3
    .parameter "szUrl"

    .prologue
    .line 4530
    const/16 v1, 0x83

    :try_start_2
    invoke-static {v1, p0}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V

    .line 4531
    invoke-static {p0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_9

    .line 4537
    :goto_8
    return-void

    .line 4533
    :catch_9
    move-exception v0

    .line 4535
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public static xdbSetPollingPeriod(I)V
    .registers 4
    .parameter "nPeriod"

    .prologue
    .line 4611
    const/16 v1, 0x85

    :try_start_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V

    .line 4612
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_11

    .line 4618
    :goto_10
    return-void

    .line 4614
    :catch_11
    move-exception v0

    .line 4616
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_10
.end method

.method public static xdbSetPollingPeriodUnit(Ljava/lang/String;)V
    .registers 3
    .parameter "szPeriodUnit"

    .prologue
    .line 4692
    const/16 v1, 0x89

    :try_start_2
    invoke-static {v1, p0}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V

    .line 4693
    invoke-static {p0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_9

    .line 4699
    :goto_8
    return-void

    .line 4695
    :catch_9
    move-exception v0

    .line 4697
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public static xdbSetPollingRange(I)V
    .registers 4
    .parameter "nRange"

    .prologue
    .line 4665
    const/16 v1, 0x87

    :try_start_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V

    .line 4666
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_11

    .line 4672
    :goto_10
    return-void

    .line 4668
    :catch_11
    move-exception v0

    .line 4670
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_10
.end method

.method public static xdbSetPollingTime(I)V
    .registers 4
    .parameter "nTime"

    .prologue
    .line 4638
    const/16 v1, 0x86

    :try_start_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V

    .line 4639
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_11

    .line 4645
    :goto_10
    return-void

    .line 4641
    :catch_11
    move-exception v0

    .line 4643
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_10
.end method

.method public static xdbSetPollingVersionUrl(Ljava/lang/String;)V
    .registers 3
    .parameter "szUrl"

    .prologue
    .line 4584
    const/16 v1, 0x84

    :try_start_2
    invoke-static {v1, p0}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V

    .line 4585
    invoke-static {p0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_9

    .line 4591
    :goto_8
    return-void

    .line 4587
    :catch_9
    move-exception v0

    .line 4589
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public static xdbSetPostPoneCurrentVersion(Ljava/lang/Object;)V
    .registers 3
    .parameter "CurrentVersion"

    .prologue
    .line 4116
    const/16 v1, 0x100

    :try_start_2
    invoke-static {v1, p0}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 4122
    :goto_5
    return-void

    .line 4118
    :catch_6
    move-exception v0

    .line 4120
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public static xdbSetPostPoneTime(Ljava/lang/Object;)V
    .registers 4
    .parameter "ptPostPone"

    .prologue
    .line 4082
    move-object v1, p0

    check-cast v1, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;

    .line 4086
    .local v1, ptObjPostUpdate:Lcom/wssyncmldm/db/file/XDBPostPoneInfo;
    const/16 v2, 0x102

    :try_start_5
    invoke-static {v2, v1}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_9

    .line 4092
    :goto_8
    return-void

    .line 4088
    :catch_9
    move-exception v0

    .line 4090
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public static xdbSetPostponeAutoinstall(Z)V
    .registers 4
    .parameter "nCount"

    .prologue
    .line 4155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Autoinstall status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 4158
    const/16 v1, 0x101

    :try_start_18
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1f} :catch_20

    .line 4164
    :goto_1f
    return-void

    .line 4160
    :catch_20
    move-exception v0

    .line 4162
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public static xdbSetPostponeCount(I)V
    .registers 4
    .parameter "nCount"

    .prologue
    .line 4128
    const/16 v1, 0xfa

    :try_start_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_a

    .line 4134
    :goto_9
    return-void

    .line 4130
    :catch_a
    move-exception v0

    .line 4132
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static xdbSetProfileIndex(I)V
    .registers 6
    .parameter "idx"

    .prologue
    .line 2430
    const/4 v1, 0x2

    :try_start_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_9

    .line 2436
    :goto_8
    return-void

    .line 2432
    :catch_9
    move-exception v0

    .line 2434
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "unable to write index\n%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public static xdbSetProfileInfo(Lcom/wssyncmldm/db/file/XDBProfileInfo;)Z
    .registers 4
    .parameter "ptProfileInfo"

    .prologue
    .line 2534
    const/4 v1, 0x0

    .line 2537
    .local v1, nRet:Z
    const/16 v2, 0x32

    :try_start_3
    invoke-static {v2, p0}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    .line 2543
    :goto_6
    return v1

    .line 2539
    :catch_7
    move-exception v0

    .line 2541
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public static xdbSetProfileInfo(Lcom/wssyncmldm/db/file/XDBProfileInfo;I)Z
    .registers 5
    .parameter "ptProfileInfo"
    .parameter "RowId"

    .prologue
    .line 2548
    const/4 v1, 0x0

    .line 2551
    .local v1, nRet:Z
    const/16 v2, 0x32

    :try_start_3
    invoke-static {v2, p1, p0}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(IILjava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    .line 2557
    :goto_6
    return v1

    .line 2553
    :catch_7
    move-exception v0

    .line 2555
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public static xdbSetProfileName(ILjava/lang/String;)V
    .registers 4
    .parameter "nIdx"
    .parameter "szProflieName"

    .prologue
    .line 2578
    :try_start_0
    invoke-static {p0}, Lcom/wssyncmldm/db/file/XDB;->xdb_E2P_XDM_PROFILENAME(I)I

    move-result v1

    invoke-static {v1, p1}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 2584
    :goto_7
    return-void

    .line 2580
    :catch_8
    move-exception v0

    .line 2582
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public static xdbSetProflieList(Ljava/lang/Object;)V
    .registers 3
    .parameter "ptProflieList"

    .prologue
    .line 2671
    const/16 v1, 0x8

    :try_start_2
    invoke-static {v1, p0}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 2677
    :goto_5
    return-void

    .line 2673
    :catch_6
    move-exception v0

    .line 2675
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public static xdbSetPushMessageFlag(Z)Z
    .registers 2
    .parameter "bcheck"

    .prologue
    .line 3487
    const-string v0, "SOFTWARE_UPDATE_PUSH_MESSAGE"

    invoke-static {v0, p0}, Lcom/wssyncmldm/db/file/XDB;->xdbSetSettingContentProviderDB(Ljava/lang/String;Z)V

    .line 3488
    const/4 v0, 0x1

    return v0
.end method

.method public static xdbSetServerAddress(Ljava/lang/String;)V
    .registers 3
    .parameter "szAddress"

    .prologue
    .line 2712
    const/16 v1, 0x39

    :try_start_2
    invoke-static {v1, p0}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 2718
    :goto_5
    return-void

    .line 2714
    :catch_6
    move-exception v0

    .line 2716
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public static xdbSetServerAuthType(I)V
    .registers 4
    .parameter "authType"

    .prologue
    .line 2482
    const/16 v1, 0x45

    :try_start_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_a

    .line 2488
    :goto_9
    return-void

    .line 2484
    :catch_a
    move-exception v0

    .line 2486
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static xdbSetServerNonce(Ljava/lang/String;)V
    .registers 3
    .parameter "szNonce"

    .prologue
    .line 2843
    const/16 v1, 0x42

    :try_start_2
    invoke-static {v1, p0}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 2849
    :goto_5
    return-void

    .line 2845
    :catch_6
    move-exception v0

    .line 2847
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public static xdbSetServerPort(I)V
    .registers 4
    .parameter "nPort"

    .prologue
    .line 2724
    const/16 v1, 0x38

    :try_start_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_a

    .line 2730
    :goto_9
    return-void

    .line 2726
    :catch_a
    move-exception v0

    .line 2728
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static xdbSetServerProtocol(Ljava/lang/String;)V
    .registers 3
    .parameter "szProtocol"

    .prologue
    .line 2736
    const/16 v1, 0x34

    :try_start_2
    invoke-static {v1, p0}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 2742
    :goto_5
    return-void

    .line 2738
    :catch_6
    move-exception v0

    .line 2740
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public static xdbSetServerUrl(Ljava/lang/String;)V
    .registers 3
    .parameter "szServerUrl"

    .prologue
    .line 2700
    const/16 v1, 0x43

    :try_start_2
    invoke-static {v1, p0}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 2706
    :goto_5
    return-void

    .line 2702
    :catch_6
    move-exception v0

    .line 2704
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public static xdbSetSessionSaveStatus(IIII)Z
    .registers 10
    .parameter "appId"
    .parameter "nState"
    .parameter "nNotiUiEvent"
    .parameter "nNotiRetryCount"

    .prologue
    .line 4317
    new-instance v3, Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;

    invoke-direct {v3}, Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;-><init>()V

    .line 4318
    .local v3, pSessionSave:Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;
    const/4 v0, 0x1

    .line 4319
    .local v0, bResult:Z
    const-string v4, ""

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 4320
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nSessionSaveState ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], nNotiUiEvent ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], nNotiRetrycount ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 4322
    iput p1, v3, Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;->nSessionSaveState:I

    .line 4323
    iput p2, v3, Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;->nNotiUiEvent:I

    .line 4324
    iput p3, v3, Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;->nNotiRetryCount:I

    .line 4328
    packed-switch p0, :pswitch_data_94

    .line 4345
    const/16 v4, 0xd

    :try_start_52
    invoke-static {v4, v3}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_8b

    .line 4359
    :goto_55
    :pswitch_55
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "return value :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 4360
    return v0

    .line 4333
    :pswitch_70
    const/16 v4, 0xd

    :try_start_72
    invoke-static {v4, v3}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_76

    goto :goto_55

    .line 4335
    :catch_76
    move-exception v1

    .line 4337
    .local v1, e:Ljava/lang/Exception;
    :try_start_77
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7e} :catch_7f

    goto :goto_55

    .line 4354
    :catch_7f
    move-exception v4

    move-object v2, v1

    .end local v1           #e:Ljava/lang/Exception;
    .local v2, e:Ljava/lang/Exception;
    move-object v1, v4

    .line 4356
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 4357
    const/4 v0, 0x0

    goto :goto_55

    .line 4347
    .end local v1           #e:Ljava/lang/Exception;
    :catch_8b
    move-exception v1

    .line 4349
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_8c
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_93} :catch_7f

    goto :goto_55

    .line 4328
    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_70
        :pswitch_55
    .end packed-switch
.end method

.method public static xdbSetSettingContentProviderDB(Ljava/lang/String;Z)V
    .registers 5
    .parameter "szUrl"
    .parameter "bCheck"

    .prologue
    .line 4865
    if-eqz p1, :cond_f

    const/4 v1, 0x1

    .line 4868
    .local v1, nCheck:I
    :goto_3
    :try_start_3
    invoke-static {}, Lcom/wssyncmldm/XDMApplication;->xdmGetContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_11

    .line 4874
    :goto_e
    return-void

    .line 4865
    .end local v1           #nCheck:I
    :cond_f
    const/4 v1, 0x0

    goto :goto_3

    .line 4870
    .restart local v1       #nCheck:I
    :catch_11
    move-exception v0

    .line 4872
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public static xdbSetSimIMSI(Lcom/wssyncmldm/db/file/XDBSimInfo;)V
    .registers 3
    .parameter "pIMSI"

    .prologue
    .line 4470
    if-nez p0, :cond_8

    .line 4472
    const-string v1, "pIMSI is NULL"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 4484
    :goto_7
    return-void

    .line 4478
    :cond_8
    const/16 v1, 0x78

    :try_start_a
    invoke-static {v1, p0}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_7

    .line 4480
    :catch_e
    move-exception v0

    .line 4482
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public static xdbSetSyncMLNVMUser(Lcom/wssyncmldm/db/file/XDBFileNVMParam;)Lcom/wssyncmldm/db/file/XDBFileNVMParam;
    .registers 3
    .parameter "pfileparam"

    .prologue
    .line 1304
    iget v0, p0, Lcom/wssyncmldm/db/file/XDBFileNVMParam;->AreaCode:I

    const/16 v1, 0x51

    if-ne v0, v1, :cond_d

    .line 1306
    sget-object v0, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBFileNVMParam;->pNVMUser:Ljava/lang/Object;

    .line 1351
    :goto_c
    return-object p0

    .line 1308
    :cond_d
    iget v0, p0, Lcom/wssyncmldm/db/file/XDBFileNVMParam;->AreaCode:I

    const/16 v1, 0x52

    if-lt v0, v1, :cond_20

    iget v0, p0, Lcom/wssyncmldm/db/file/XDBFileNVMParam;->AreaCode:I

    const/16 v1, 0x56

    if-gt v0, v1, :cond_20

    .line 1310
    sget-object v0, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBFileNVMParam;->pNVMUser:Ljava/lang/Object;

    goto :goto_c

    .line 1312
    :cond_20
    iget v0, p0, Lcom/wssyncmldm/db/file/XDBFileNVMParam;->AreaCode:I

    const/16 v1, 0x57

    if-ne v0, v1, :cond_2d

    .line 1314
    sget-object v0, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBFileNVMParam;->pNVMUser:Ljava/lang/Object;

    goto :goto_c

    .line 1316
    :cond_2d
    iget v0, p0, Lcom/wssyncmldm/db/file/XDBFileNVMParam;->AreaCode:I

    const/16 v1, 0x58

    if-ne v0, v1, :cond_3a

    .line 1318
    sget-object v0, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPostPone:Lcom/wssyncmldm/db/file/XDBPostPoneInfo;

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBFileNVMParam;->pNVMUser:Ljava/lang/Object;

    goto :goto_c

    .line 1320
    :cond_3a
    iget v0, p0, Lcom/wssyncmldm/db/file/XDBFileNVMParam;->AreaCode:I

    const/16 v1, 0x59

    if-ne v0, v1, :cond_47

    .line 1322
    sget-object v0, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSYNCMLSimInfo:Lcom/wssyncmldm/db/file/XDBSimInfo;

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBFileNVMParam;->pNVMUser:Ljava/lang/Object;

    goto :goto_c

    .line 1324
    :cond_47
    iget v0, p0, Lcom/wssyncmldm/db/file/XDBFileNVMParam;->AreaCode:I

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_54

    .line 1326
    sget-object v0, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPollingInfo:Lcom/wssyncmldm/db/file/XDBPollingInfo;

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBFileNVMParam;->pNVMUser:Ljava/lang/Object;

    goto :goto_c

    .line 1328
    :cond_54
    iget v0, p0, Lcom/wssyncmldm/db/file/XDBFileNVMParam;->AreaCode:I

    const/16 v1, 0x83

    if-ne v0, v1, :cond_61

    .line 1331
    sget-object v0, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLAccXNode:Lcom/wssyncmldm/db/file/XDBAccXListNode;

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBFileNVMParam;->pNVMUser:Ljava/lang/Object;

    goto :goto_c

    .line 1333
    :cond_61
    iget v0, p0, Lcom/wssyncmldm/db/file/XDBFileNVMParam;->AreaCode:I

    const/16 v1, 0x60

    if-ne v0, v1, :cond_6e

    .line 1336
    sget-object v0, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLResyncMode:Lcom/wssyncmldm/db/file/XDBResyncModeInfo;

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBFileNVMParam;->pNVMUser:Ljava/lang/Object;

    goto :goto_c

    .line 1338
    :cond_6e
    iget v0, p0, Lcom/wssyncmldm/db/file/XDBFileNVMParam;->AreaCode:I

    const/16 v1, 0x61

    if-ne v0, v1, :cond_7b

    .line 1340
    sget-object v0, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDmAgentInfo:Lcom/wssyncmldm/db/file/XDBAgentInfo;

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBFileNVMParam;->pNVMUser:Ljava/lang/Object;

    goto :goto_c

    .line 1342
    :cond_7b
    iget v0, p0, Lcom/wssyncmldm/db/file/XDBFileNVMParam;->AreaCode:I

    const/16 v1, 0x62

    if-ne v0, v1, :cond_88

    .line 1344
    sget-object v0, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLNotiInfo:Lcom/wssyncmldm/db/file/XDBNotiInfo;

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBFileNVMParam;->pNVMUser:Ljava/lang/Object;

    goto :goto_c

    .line 1348
    :cond_88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not Support Area Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/wssyncmldm/db/file/XDBFileNVMParam;->AreaCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto/16 :goto_c
.end method

.method public static xdbSetUpdateWait(Ljava/lang/Boolean;)V
    .registers 4
    .parameter "bUpdateWait"

    .prologue
    .line 3747
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bUpdateWait "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 3750
    const/16 v1, 0xe0

    :try_start_1c
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_23} :catch_24

    .line 3756
    :goto_23
    return-void

    .line 3752
    :catch_24
    move-exception v0

    .line 3754
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_23
.end method

.method public static xdbSetWifiOnlyFlag(Z)Z
    .registers 2
    .parameter "check"

    .prologue
    .line 3461
    const-string v0, "SOFTWARE_UPDATE_WIFI_ONLY"

    invoke-static {v0, p0}, Lcom/wssyncmldm/db/file/XDB;->xdbSetSettingContentProviderDB(Ljava/lang/String;Z)V

    .line 3462
    const/4 v0, 0x1

    return v0
.end method

.method public static xdbSetWriteObjectSizeFUMO(I)V
    .registers 7
    .parameter "nSize"

    .prologue
    .line 3992
    const/4 v1, 0x0

    .line 3993
    .local v1, f:Ljava/io/RandomAccessFile;
    new-instance v3, Ljava/io/File;

    const-string v4, "data/data/com.wssyncmldm/2355.cfg"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3996
    .local v3, file:Ljava/io/File;
    :try_start_8
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_3a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_23

    .line 3997
    .end local v1           #f:Ljava/io/RandomAccessFile;
    .local v2, f:Ljava/io/RandomAccessFile;
    :try_start_f
    invoke-virtual {v2, p0}, Ljava/io/RandomAccessFile;->writeInt(I)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_4a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_4d

    .line 4007
    if-eqz v2, :cond_17

    .line 4009
    :try_start_14
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_19

    :cond_17
    move-object v1, v2

    .line 4017
    .end local v2           #f:Ljava/io/RandomAccessFile;
    .restart local v1       #f:Ljava/io/RandomAccessFile;
    :cond_18
    :goto_18
    return-void

    .line 4012
    .end local v1           #f:Ljava/io/RandomAccessFile;
    .restart local v2       #f:Ljava/io/RandomAccessFile;
    :catch_19
    move-exception v0

    .line 4014
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move-object v1, v2

    .line 4016
    .end local v2           #f:Ljava/io/RandomAccessFile;
    .restart local v1       #f:Ljava/io/RandomAccessFile;
    goto :goto_18

    .line 3999
    .end local v0           #e:Ljava/io/IOException;
    :catch_23
    move-exception v0

    .line 4001
    .local v0, e:Ljava/lang/Exception;
    :goto_24
    :try_start_24
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_3a

    .line 4007
    if-eqz v1, :cond_18

    .line 4009
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_18

    .line 4012
    :catch_31
    move-exception v0

    .line 4014
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_18

    .line 4005
    .end local v0           #e:Ljava/io/IOException;
    :catchall_3a
    move-exception v4

    .line 4007
    :goto_3b
    if-eqz v1, :cond_40

    .line 4009
    :try_start_3d
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    .line 4015
    :cond_40
    :goto_40
    throw v4

    .line 4012
    :catch_41
    move-exception v0

    .line 4014
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_40

    .line 4005
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #f:Ljava/io/RandomAccessFile;
    .restart local v2       #f:Ljava/io/RandomAccessFile;
    :catchall_4a
    move-exception v4

    move-object v1, v2

    .end local v2           #f:Ljava/io/RandomAccessFile;
    .restart local v1       #f:Ljava/io/RandomAccessFile;
    goto :goto_3b

    .line 3999
    .end local v1           #f:Ljava/io/RandomAccessFile;
    .restart local v2       #f:Ljava/io/RandomAccessFile;
    :catch_4d
    move-exception v0

    move-object v1, v2

    .end local v2           #f:Ljava/io/RandomAccessFile;
    .restart local v1       #f:Ljava/io/RandomAccessFile;
    goto :goto_24
.end method

.method private static xdbSyncMLFileParmInit([Lcom/wssyncmldm/db/file/XDBFileNVMParam;I)[Lcom/wssyncmldm/db/file/XDBFileNVMParam;
    .registers 7
    .parameter "xdmSyncMLFileParam2"
    .parameter "MaxIndex"

    .prologue
    const/4 v4, 0x0

    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, Areacodeindex:[I
    new-array v0, p1, [I

    .line 160
    sget-object v2, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_DM_PROFILE:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    invoke-virtual {v2}, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->Value()I

    move-result v2

    const/16 v3, 0x51

    aput v3, v0, v2

    .line 161
    sget-object v2, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_DM_INFO:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    invoke-virtual {v2}, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->Value()I

    move-result v2

    const/16 v3, 0x52

    aput v3, v0, v2

    .line 162
    sget-object v2, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_FUMO_INFO:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    invoke-virtual {v2}, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->Value()I

    move-result v2

    const/16 v3, 0x57

    aput v3, v0, v2

    .line 163
    sget-object v2, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_FUMO_POSTPONE:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    invoke-virtual {v2}, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->Value()I

    move-result v2

    const/16 v3, 0x58

    aput v3, v0, v2

    .line 164
    sget-object v2, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_IMSI_INFO:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    invoke-virtual {v2}, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->Value()I

    move-result v2

    const/16 v3, 0x59

    aput v3, v0, v2

    .line 165
    sget-object v2, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_POLLING_INFO:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    invoke-virtual {v2}, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->Value()I

    move-result v2

    const/16 v3, 0x5a

    aput v3, v0, v2

    .line 169
    sget-object v2, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_DM_ACC_X_NODE:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    invoke-virtual {v2}, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->Value()I

    move-result v2

    const/16 v3, 0x83

    aput v3, v0, v2

    .line 170
    sget-object v2, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_NOTI_RESYNC_MODE:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    invoke-virtual {v2}, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->Value()I

    move-result v2

    const/16 v3, 0x60

    aput v3, v0, v2

    .line 173
    sget-object v2, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_DM_AGENT_INFO:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    invoke-virtual {v2}, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->Value()I

    move-result v2

    const/16 v3, 0x61

    aput v3, v0, v2

    .line 175
    sget-object v2, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->NVM_NOTI_INFO:Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;

    invoke-virtual {v2}, Lcom/wssyncmldm/db/file/XDB$XDMNVMParameter;->Value()I

    move-result v2

    const/16 v3, 0x62

    aput v3, v0, v2

    .line 177
    const/4 v1, 0x0

    .local v1, i:I
    :goto_69
    if-ge v1, p1, :cond_87

    .line 179
    new-instance v2, Lcom/wssyncmldm/db/file/XDBFileNVMParam;

    invoke-direct {v2}, Lcom/wssyncmldm/db/file/XDBFileNVMParam;-><init>()V

    aput-object v2, p0, v1

    .line 180
    aget-object v2, p0, v1

    aget v3, v0, v1

    iput v3, v2, Lcom/wssyncmldm/db/file/XDBFileNVMParam;->AreaCode:I

    .line 181
    aget-object v2, p0, v1

    iput v4, v2, Lcom/wssyncmldm/db/file/XDBFileNVMParam;->pExtFileID:I

    .line 182
    aget-object v2, p0, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/wssyncmldm/db/file/XDBFileNVMParam;->pNVMUser:Ljava/lang/Object;

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    .line 185
    :cond_87
    return-object p0
.end method

.method public static xdbWrite(IILjava/lang/Object;)V
    .registers 6
    .parameter "nType"
    .parameter "rowId"
    .parameter "oInput"

    .prologue
    .line 1259
    if-nez p2, :cond_8

    .line 1261
    const-string v1, "oInput is null"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1300
    .end local p2
    :goto_7
    return-void

    .line 1265
    .restart local p2
    :cond_8
    sget-object v1, Lcom/wssyncmldm/db/file/XDB;->dbadapter:Lcom/wssyncmldm/db/file/XDBAdapter;

    if-nez v1, :cond_13

    .line 1266
    new-instance v1, Lcom/wssyncmldm/db/file/XDBAdapter;

    invoke-direct {v1}, Lcom/wssyncmldm/db/file/XDBAdapter;-><init>()V

    sput-object v1, Lcom/wssyncmldm/db/file/XDB;->dbadapter:Lcom/wssyncmldm/db/file/XDBAdapter;

    .line 1268
    :cond_13
    sparse-switch p0, :sswitch_data_44

    .line 1297
    const-string v1, "Not Support file id----"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_7

    .line 1271
    :sswitch_1c
    sget-object v1, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    check-cast p2, Lcom/wssyncmldm/db/file/XDBProfileInfo;

    .end local p2
    iput-object p2, v1, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    .line 1272
    const/4 v0, 0x0

    .line 1274
    .local v0, SqlID:I
    packed-switch p1, :pswitch_data_4e

    .line 1288
    :goto_26
    sget-object v1, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v1, v1, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    invoke-static {v0, v1}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbSqlUpdate(ILjava/lang/Object;)V

    goto :goto_7

    .line 1277
    :pswitch_2e
    const/16 v0, 0x52

    .line 1278
    goto :goto_26

    .line 1280
    :pswitch_31
    const/16 v0, 0x53

    .line 1281
    goto :goto_26

    .line 1283
    :pswitch_34
    const/16 v0, 0x54

    .line 1284
    goto :goto_26

    .line 1292
    .end local v0           #SqlID:I
    .restart local p2
    :sswitch_37
    invoke-static {p0, p2}, Lcom/wssyncmldm/db/file/XDB;->xdbNotiDbWrite(ILjava/lang/Object;)V

    .line 1293
    const/16 v1, 0x62

    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLNotiInfo:Lcom/wssyncmldm/db/file/XDBNotiInfo;

    invoke-static {v1, p1, v2}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbSqlUpdate(IILjava/lang/Object;)Z

    goto :goto_7

    .line 1268
    :sswitch_data_44
    .sparse-switch
        0x32 -> :sswitch_1c
        0x226 -> :sswitch_37
    .end sparse-switch

    .line 1274
    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_31
        :pswitch_34
    .end packed-switch
.end method

.method public static xdbWrite(ILjava/lang/Object;)V
    .registers 12
    .parameter "nType"
    .parameter "oInput"

    .prologue
    const/16 v9, 0x51

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 835
    if-nez p1, :cond_d

    .line 837
    const-string v4, "oInput is null"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1255
    :cond_c
    :goto_c
    return-void

    .line 841
    :cond_d
    sparse-switch p0, :sswitch_data_76c

    .line 1151
    :goto_10
    :sswitch_10
    new-instance v1, Lcom/wssyncmldm/db/file/XDBFileNVMParam;

    invoke-direct {v1}, Lcom/wssyncmldm/db/file/XDBFileNVMParam;-><init>()V

    .line 1152
    .local v1, pfileparam:Lcom/wssyncmldm/db/file/XDBFileNVMParam;
    const-string v3, ""

    .line 1154
    .local v3, szFileName:Ljava/lang/String;
    if-ltz p0, :cond_5eb

    const/16 v4, 0x17

    if-ge p0, v4, :cond_5eb

    .line 1156
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    invoke-static {v9, v4}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbSqlUpdate(ILjava/lang/Object;)V

    goto :goto_c

    .line 844
    .end local v1           #pfileparam:Lcom/wssyncmldm/db/file/XDBFileNVMParam;
    .end local v3           #szFileName:Ljava/lang/String;
    :sswitch_25
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->MagicNumber:I

    goto :goto_10

    .line 847
    :sswitch_38
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->nProxyIndex:I

    goto :goto_10

    .line 850
    :sswitch_4b
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->Profileindex:I

    goto :goto_10

    .line 853
    :sswitch_5e
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->ProfileName:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    goto :goto_10

    .line 856
    :sswitch_6b
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->ProfileName:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    goto :goto_10

    .line 859
    :sswitch_78
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->ProfileName:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    goto :goto_10

    .line 866
    :sswitch_85
    sget-object v5, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    move-object v4, p1

    check-cast v4, Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    iput-object v4, v5, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    goto :goto_10

    .line 869
    :sswitch_8d
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->m_szNetworkConnName:Ljava/lang/String;

    goto/16 :goto_10

    .line 872
    :sswitch_99
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->m_szSessionID:Ljava/lang/String;

    goto/16 :goto_10

    .line 875
    :sswitch_a5
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->nDestoryNotiTime:J

    goto/16 :goto_10

    .line 878
    :sswitch_b9
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->nNotiEvent:I

    goto/16 :goto_10

    .line 881
    :sswitch_cd
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v5, v4, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    move-object v4, p1

    check-cast v4, Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;

    iput-object v4, v5, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->NotiResumeState:Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;

    goto/16 :goto_10

    .line 885
    :sswitch_d8
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->nNotiReSyncMode:I

    goto/16 :goto_10

    .line 888
    :sswitch_ec
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v5, v4, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    move-object v4, p1

    check-cast v4, Lcom/wssyncmldm/db/file/XDBUICResultKeepInfo;

    iput-object v4, v5, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->tUicResultKeep:Lcom/wssyncmldm/db/file/XDBUICResultKeepInfo;

    goto/16 :goto_10

    .line 891
    :sswitch_f7
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->tUicResultKeep:Lcom/wssyncmldm/db/file/XDBUICResultKeepInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/wssyncmldm/db/file/XDBUICResultKeepInfo;->eStatus:I

    goto/16 :goto_10

    .line 894
    :sswitch_10d
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v4, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->bSkipDevDiscovery:Z

    goto/16 :goto_10

    .line 897
    :sswitch_121
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v4, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->bWifiOnly:Z

    goto/16 :goto_10

    .line 900
    :sswitch_135
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v4, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->bAutoUpdate:Z

    goto/16 :goto_10

    .line 903
    :sswitch_149
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v4, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->bPushMessage:Z

    goto/16 :goto_10

    .line 906
    :sswitch_15d
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->nDDFParserNodeIndex:I

    goto/16 :goto_10

    .line 909
    :sswitch_171
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->nSaveDeltaFileIndex:I

    goto/16 :goto_10

    .line 912
    :sswitch_185
    sget-object v5, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    move-object v4, p1

    check-cast v4, Lcom/wssyncmldm/db/file/XDBProfileInfo;

    iput-object v4, v5, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    goto/16 :goto_10

    .line 915
    :sswitch_18e
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/wssyncmldm/db/file/XDBProfileInfo;->MagicNumber:I

    goto/16 :goto_10

    .line 918
    :sswitch_1a2
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Protocol:Ljava/lang/String;

    goto/16 :goto_10

    .line 921
    :sswitch_1ae
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ObexType:I

    goto/16 :goto_10

    .line 924
    :sswitch_1c2
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/wssyncmldm/db/file/XDBProfileInfo;->UserName:Ljava/lang/String;

    goto/16 :goto_10

    .line 927
    :sswitch_1ce
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Password:Ljava/lang/String;

    goto/16 :goto_10

    .line 930
    :sswitch_1da
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPort:I

    goto/16 :goto_10

    .line 933
    :sswitch_1ee
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerIP:Ljava/lang/String;

    goto/16 :goto_10

    .line 936
    :sswitch_1fa
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Path:Ljava/lang/String;

    goto/16 :goto_10

    .line 940
    :sswitch_206
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/wssyncmldm/db/file/XDBProfileInfo;->AppID:Ljava/lang/String;

    goto/16 :goto_10

    .line 943
    :sswitch_212
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/wssyncmldm/db/file/XDBProfileInfo;->AuthLevel:Ljava/lang/String;

    goto/16 :goto_10

    .line 946
    :sswitch_21e
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerAuthLevel:Ljava/lang/String;

    goto/16 :goto_10

    .line 949
    :sswitch_22a
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/wssyncmldm/db/file/XDBProfileInfo;->PrefConRef:Ljava/lang/String;

    goto/16 :goto_10

    .line 952
    :sswitch_236
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerID:Ljava/lang/String;

    goto/16 :goto_10

    .line 955
    :sswitch_242
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPwd:Ljava/lang/String;

    goto/16 :goto_10

    .line 958
    :sswitch_24e
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ClientNonce:Ljava/lang/String;

    goto/16 :goto_10

    .line 961
    :sswitch_25a
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerNonce:Ljava/lang/String;

    goto/16 :goto_10

    .line 964
    :sswitch_266
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl:Ljava/lang/String;

    goto/16 :goto_10

    .line 967
    :sswitch_272
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/wssyncmldm/db/file/XDBProfileInfo;->AuthType:I

    goto/16 :goto_10

    .line 970
    :sswitch_286
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/wssyncmldm/db/file/XDBProfileInfo;->nServerAuthType:I

    goto/16 :goto_10

    .line 973
    :sswitch_29a
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/wssyncmldm/db/file/XDBProfileInfo;->nNetworkConnIndex:I

    goto/16 :goto_10

    .line 976
    :sswitch_2ae
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ProfileName:Ljava/lang/String;

    goto/16 :goto_10

    .line 979
    :sswitch_2ba
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v5, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    move-object v4, p1

    check-cast v4, Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iput-object v4, v5, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    goto/16 :goto_10

    .line 982
    :sswitch_2c5
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v5, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    move-object v4, p1

    check-cast v4, Lcom/wssyncmldm/db/file/XDBNetConProfileBackup;

    iput-object v4, v5, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConBackup:Lcom/wssyncmldm/db/file/XDBNetConProfileBackup;

    goto/16 :goto_10

    .line 985
    :sswitch_2d0
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v4, Lcom/wssyncmldm/db/file/XDBProfileInfo;->bChangedProtocol:Z

    goto/16 :goto_10

    .line 990
    :sswitch_2e4
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLAccXNode:Lcom/wssyncmldm/db/file/XDBAccXListNode;

    iget-object v5, v4, Lcom/wssyncmldm/db/file/XDBAccXListNode;->stAccXNodeList:[Lcom/wssyncmldm/db/file/XDBAccXNodeInfo;

    move-object v4, p1

    check-cast v4, Lcom/wssyncmldm/db/file/XDBAccXNodeInfo;

    aput-object v4, v5, v7

    goto/16 :goto_10

    .line 994
    :sswitch_2f1
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLAccXNode:Lcom/wssyncmldm/db/file/XDBAccXListNode;

    iget-object v5, v4, Lcom/wssyncmldm/db/file/XDBAccXListNode;->stAccXNodeList:[Lcom/wssyncmldm/db/file/XDBAccXNodeInfo;

    move-object v4, p1

    check-cast v4, Lcom/wssyncmldm/db/file/XDBAccXNodeInfo;

    aput-object v4, v5, v6

    goto/16 :goto_10

    .line 998
    :sswitch_2fe
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLAccXNode:Lcom/wssyncmldm/db/file/XDBAccXListNode;

    iget-object v5, v4, Lcom/wssyncmldm/db/file/XDBAccXListNode;->stAccXNodeList:[Lcom/wssyncmldm/db/file/XDBAccXNodeInfo;

    move-object v4, p1

    check-cast v4, Lcom/wssyncmldm/db/file/XDBAccXNodeInfo;

    aput-object v4, v5, v8

    goto/16 :goto_10

    .line 1005
    :sswitch_30b
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLResyncMode:Lcom/wssyncmldm/db/file/XDBResyncModeInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v4, Lcom/wssyncmldm/db/file/XDBResyncModeInfo;->nNoceResyncMode:Z

    goto/16 :goto_10

    .line 1009
    :sswitch_31f
    sget-object v5, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    move-object v4, p1

    check-cast v4, Lcom/wssyncmldm/db/file/XDBFumoInfo;

    iput-object v4, v5, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    goto/16 :goto_10

    .line 1012
    :sswitch_328
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szProtocol:Ljava/lang/String;

    goto/16 :goto_10

    .line 1015
    :sswitch_334
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/wssyncmldm/db/file/XDBFumoInfo;->ObexType:I

    goto/16 :goto_10

    .line 1018
    :sswitch_348
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/wssyncmldm/db/file/XDBFumoInfo;->ServerUrl:Ljava/lang/String;

    goto/16 :goto_10

    .line 1021
    :sswitch_354
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/wssyncmldm/db/file/XDBFumoInfo;->ServerIP:Ljava/lang/String;

    goto/16 :goto_10

    .line 1024
    :sswitch_360
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/wssyncmldm/db/file/XDBFumoInfo;->ServerPort:I

    goto/16 :goto_10

    .line 1027
    :sswitch_374
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szObjectDownloadProtocol:Ljava/lang/String;

    goto/16 :goto_10

    .line 1030
    :sswitch_380
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szObjectDownloadUrl:Ljava/lang/String;

    goto/16 :goto_10

    .line 1033
    :sswitch_38c
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szObjectDownloadIP:Ljava/lang/String;

    goto/16 :goto_10

    .line 1036
    :sswitch_398
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/wssyncmldm/db/file/XDBFumoInfo;->nObjectDownloadPort:I

    goto/16 :goto_10

    .line 1039
    :sswitch_3ac
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szStatusNotifyProtocol:Ljava/lang/String;

    goto/16 :goto_10

    .line 1042
    :sswitch_3b8
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szStatusNotifyUrl:Ljava/lang/String;

    goto/16 :goto_10

    .line 1045
    :sswitch_3c4
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szStatusNotifyIP:Ljava/lang/String;

    goto/16 :goto_10

    .line 1048
    :sswitch_3d0
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/wssyncmldm/db/file/XDBFumoInfo;->nStatusNotifyPort:I

    goto/16 :goto_10

    .line 1051
    :sswitch_3e4
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/wssyncmldm/db/file/XDBFumoInfo;->nObjectSize:I

    goto/16 :goto_10

    .line 1054
    :sswitch_3f8
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/wssyncmldm/db/file/XDBFumoInfo;->nFFSWriteSize:I

    goto/16 :goto_10

    .line 1057
    :sswitch_40c
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/wssyncmldm/db/file/XDBFumoInfo;->ResultCode:Ljava/lang/String;

    goto/16 :goto_10

    .line 1060
    :sswitch_418
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/wssyncmldm/db/file/XDBFumoInfo;->Correlator:Ljava/lang/String;

    goto/16 :goto_10

    .line 1063
    :sswitch_424
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szStatusNodeName:Ljava/lang/String;

    goto/16 :goto_10

    .line 1066
    :sswitch_430
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/wssyncmldm/db/file/XDBFumoInfo;->nStatus:I

    goto/16 :goto_10

    .line 1069
    :sswitch_444
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/wssyncmldm/db/file/XDBFumoInfo;->nUpdateMechanism:I

    goto/16 :goto_10

    .line 1072
    :sswitch_458
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v4, Lcom/wssyncmldm/db/file/XDBFumoInfo;->nDownloadMode:Z

    goto/16 :goto_10

    .line 1076
    :sswitch_46c
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v4, Lcom/wssyncmldm/db/file/XDBFumoInfo;->bUpdateWait:Z

    goto/16 :goto_10

    .line 1079
    :sswitch_480
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/wssyncmldm/db/file/XDBFumoInfo;->nInitiatedType:I

    goto/16 :goto_10

    .line 1082
    :sswitch_494
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/wssyncmldm/db/file/XDBFumoInfo;->szDescription:Ljava/lang/String;

    goto/16 :goto_10

    .line 1085
    :sswitch_4a0
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szReportURI:Ljava/lang/String;

    goto/16 :goto_10

    .line 1088
    :sswitch_4ac
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szContentType:Ljava/lang/String;

    goto/16 :goto_10

    .line 1091
    :sswitch_4b8
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szAcceptType:Ljava/lang/String;

    goto/16 :goto_10

    .line 1094
    :sswitch_4c4
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPostPone:Lcom/wssyncmldm/db/file/XDBPostPoneInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->nPostPoneCount:I

    goto/16 :goto_10

    .line 1097
    :sswitch_4d8
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPostPone:Lcom/wssyncmldm/db/file/XDBPostPoneInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->nPostPoneDownload:I

    goto/16 :goto_10

    .line 1100
    :sswitch_4ec
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPostPone:Lcom/wssyncmldm/db/file/XDBPostPoneInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->tCurrentTime:J

    goto/16 :goto_10

    .line 1103
    :sswitch_500
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPostPone:Lcom/wssyncmldm/db/file/XDBPostPoneInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->tEndTime:J

    goto/16 :goto_10

    .line 1106
    :sswitch_514
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPostPone:Lcom/wssyncmldm/db/file/XDBPostPoneInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v4, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->nAfterDownLoadBatteryStatus:Z

    goto/16 :goto_10

    .line 1109
    :sswitch_528
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPostPone:Lcom/wssyncmldm/db/file/XDBPostPoneInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->nPostPoneTime:J

    goto/16 :goto_10

    .line 1112
    :sswitch_53c
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPostPone:Lcom/wssyncmldm/db/file/XDBPostPoneInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->CurrentVersion:Ljava/lang/String;

    goto/16 :goto_10

    .line 1115
    :sswitch_548
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPostPone:Lcom/wssyncmldm/db/file/XDBPostPoneInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v4, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->bAutoInstall:Z

    goto/16 :goto_10

    .line 1118
    :sswitch_55c
    sget-object v5, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    move-object v4, p1

    check-cast v4, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;

    iput-object v4, v5, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPostPone:Lcom/wssyncmldm/db/file/XDBPostPoneInfo;

    goto/16 :goto_10

    .line 1121
    :sswitch_565
    sget-object v5, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    move-object v4, p1

    check-cast v4, Lcom/wssyncmldm/db/file/XDBSimInfo;

    iput-object v4, v5, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSYNCMLSimInfo:Lcom/wssyncmldm/db/file/XDBSimInfo;

    goto/16 :goto_10

    .line 1124
    :sswitch_56e
    sget-object v5, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    move-object v4, p1

    check-cast v4, Lcom/wssyncmldm/db/file/XDBPollingInfo;

    iput-object v4, v5, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPollingInfo:Lcom/wssyncmldm/db/file/XDBPollingInfo;

    goto/16 :goto_10

    .line 1127
    :sswitch_577
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPollingInfo:Lcom/wssyncmldm/db/file/XDBPollingInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/wssyncmldm/db/file/XDBPollingInfo;->m_szOrgVersionUrl:Ljava/lang/String;

    goto/16 :goto_10

    .line 1130
    :sswitch_583
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPollingInfo:Lcom/wssyncmldm/db/file/XDBPollingInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/wssyncmldm/db/file/XDBPollingInfo;->m_szVersionUrl:Ljava/lang/String;

    goto/16 :goto_10

    .line 1133
    :sswitch_58f
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPollingInfo:Lcom/wssyncmldm/db/file/XDBPollingInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/wssyncmldm/db/file/XDBPollingInfo;->nPeriod:I

    goto/16 :goto_10

    .line 1136
    :sswitch_5a3
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPollingInfo:Lcom/wssyncmldm/db/file/XDBPollingInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/wssyncmldm/db/file/XDBPollingInfo;->nTime:I

    goto/16 :goto_10

    .line 1139
    :sswitch_5b7
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPollingInfo:Lcom/wssyncmldm/db/file/XDBPollingInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/wssyncmldm/db/file/XDBPollingInfo;->nRange:I

    goto/16 :goto_10

    .line 1142
    :sswitch_5cb
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPollingInfo:Lcom/wssyncmldm/db/file/XDBPollingInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v4, Lcom/wssyncmldm/db/file/XDBPollingInfo;->bDmCycle:Z

    goto/16 :goto_10

    .line 1145
    :sswitch_5df
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPollingInfo:Lcom/wssyncmldm/db/file/XDBPollingInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/wssyncmldm/db/file/XDBPollingInfo;->m_szPeriodUnit:Ljava/lang/String;

    goto/16 :goto_10

    .line 1158
    .restart local v1       #pfileparam:Lcom/wssyncmldm/db/file/XDBFileNVMParam;
    .restart local v3       #szFileName:Ljava/lang/String;
    :cond_5eb
    const/16 v4, 0x48

    if-ne p0, v4, :cond_67f

    .line 1160
    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbExistsNetworkRow(J)Z

    move-result v4

    if-eqz v4, :cond_674

    .line 1162
    const/16 v4, 0x80

    sget-object v5, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    invoke-static {v4, v5}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbSqlUpdate(ILjava/lang/Object;)V

    .line 1164
    invoke-static {}, Lcom/wssyncmldm/ui/XUINetProfileActivity;->getUpdateState()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1166
    sget-object v4, Lcom/wssyncmldm/ui/XUIMainActivity;->g_UiNetInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;

    sget-object v5, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBInfoConRef;->NAP:Lcom/wssyncmldm/db/file/XDBConRefNAP;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBConRefNAP;->Addr:Ljava/lang/String;

    iput-object v5, v4, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->szAccountName:Ljava/lang/String;

    .line 1167
    sget-object v4, Lcom/wssyncmldm/ui/XUIMainActivity;->g_UiNetInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;

    iget-object v4, v4, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    sget-object v5, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBInfoConRef;->NAP:Lcom/wssyncmldm/db/file/XDBConRefNAP;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBConRefNAP;->NetworkProfileName:Ljava/lang/String;

    iput-object v5, v4, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->m_szApn:Ljava/lang/String;

    .line 1168
    sget-object v4, Lcom/wssyncmldm/ui/XUIMainActivity;->g_UiNetInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;

    iget-object v4, v4, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    sget-object v5, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBInfoConRef;->PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBConRefPX;->Addr:Ljava/lang/String;

    iput-object v5, v4, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->m_szPrimaryProxyAddr:Ljava/lang/String;

    .line 1169
    sget-object v4, Lcom/wssyncmldm/ui/XUIMainActivity;->g_UiNetInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;

    iget-object v4, v4, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    sget-object v5, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBInfoConRef;->PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

    iget v5, v5, Lcom/wssyncmldm/db/file/XDBConRefPX;->nPortNbr:I

    iput v5, v4, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->nPrimary_proxy_port:I

    .line 1170
    sget-object v4, Lcom/wssyncmldm/ui/XUIMainActivity;->g_UiNetInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;

    iget-object v4, v4, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->authInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;

    sget-object v5, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBInfoConRef;->NAP:Lcom/wssyncmldm/db/file/XDBConRefNAP;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBConRefNAP;->Auth:Lcom/wssyncmldm/db/file/XDBConRefAuth;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBConRefAuth;->PAP_ID:Ljava/lang/String;

    iput-object v5, v4, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;->szId:Ljava/lang/String;

    .line 1171
    sget-object v4, Lcom/wssyncmldm/ui/XUIMainActivity;->g_UiNetInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;

    iget-object v4, v4, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->authInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;

    sget-object v5, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBInfoConRef;->NAP:Lcom/wssyncmldm/db/file/XDBConRefNAP;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBConRefNAP;->Auth:Lcom/wssyncmldm/db/file/XDBConRefAuth;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBConRefAuth;->PAP_Secret:Ljava/lang/String;

    iput-object v5, v4, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;->szPasswd:Ljava/lang/String;

    .line 1172
    sget-object v4, Lcom/wssyncmldm/ui/XUIMainActivity;->g_UiNetInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;

    invoke-static {v4}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpNetSaveProfile(Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;)I

    .line 1173
    invoke-static {v7}, Lcom/wssyncmldm/ui/XUINetProfileActivity;->setUpdateState(I)V

    goto/16 :goto_c

    .line 1178
    :cond_674
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    invoke-static {v4}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbInsertNetworkRow(Lcom/wssyncmldm/db/file/XDBInfoConRef;)V

    goto/16 :goto_c

    .line 1182
    :cond_67f
    const/16 v4, 0x32

    if-lt p0, v4, :cond_6c5

    const/16 v4, 0x4b

    if-ge p0, v4, :cond_6c5

    .line 1184
    const/4 v0, 0x0

    .line 1185
    .local v0, SqlID:I
    const/4 v2, 0x0

    .line 1187
    .local v2, row:I
    invoke-static {}, Lcom/wssyncmldm/ui/XUIProfileActivity;->xuiGetRowState()Z

    move-result v4

    if-eqz v4, :cond_69f

    .line 1189
    invoke-static {}, Lcom/wssyncmldm/ui/XUIProfileActivity;->xuiGetRow()I

    move-result v2

    .line 1203
    :goto_693
    packed-switch v2, :pswitch_data_8fe

    .line 1217
    :goto_696
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    invoke-static {v0, v4}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbSqlUpdate(ILjava/lang/Object;)V

    goto/16 :goto_c

    .line 1193
    :cond_69f
    sget-object v5, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    invoke-static {v9}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbSqlRead(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    iput-object v4, v5, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    .line 1194
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    if-eqz v4, :cond_6b6

    .line 1196
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    iget v2, v4, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->Profileindex:I

    goto :goto_693

    .line 1200
    :cond_6b6
    const-string v4, "XDMNvmClass.tProfileList is null"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_693

    .line 1206
    :pswitch_6bc
    const/16 v0, 0x52

    .line 1207
    goto :goto_696

    .line 1209
    :pswitch_6bf
    const/16 v0, 0x53

    .line 1210
    goto :goto_696

    .line 1212
    :pswitch_6c2
    const/16 v0, 0x54

    .line 1213
    goto :goto_696

    .line 1219
    .end local v0           #SqlID:I
    .end local v2           #row:I
    :cond_6c5
    const/16 v4, 0x64

    if-lt p0, v4, :cond_6e0

    const/16 v4, 0x69

    if-ge p0, v4, :cond_6e0

    .line 1221
    const/16 v4, 0x83

    iput v4, v1, Lcom/wssyncmldm/db/file/XDBFileNVMParam;->AreaCode:I

    .line 1222
    iget v4, v1, Lcom/wssyncmldm/db/file/XDBFileNVMParam;->AreaCode:I

    invoke-static {v4}, Lcom/wssyncmldm/db/file/XDB;->xdbFileGetNameFromCallerID(I)Ljava/lang/String;

    move-result-object v3

    .line 1223
    sget-object v4, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLAccXNode:Lcom/wssyncmldm/db/file/XDBAccXListNode;

    invoke-static {v3, v4}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbFileWrite(Ljava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 1225
    :cond_6e0
    const/16 v4, 0x96

    if-lt p0, v4, :cond_6f3

    const/16 v4, 0x97

    if-ge p0, v4, :cond_6f3

    .line 1227
    const/16 v4, 0x60

    sget-object v5, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLResyncMode:Lcom/wssyncmldm/db/file/XDBResyncModeInfo;

    invoke-static {v4, v5}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbSqlUpdate(ILjava/lang/Object;)V

    goto/16 :goto_c

    .line 1229
    :cond_6f3
    const/16 v4, 0xc8

    if-lt p0, v4, :cond_706

    const/16 v4, 0xe4

    if-ge p0, v4, :cond_706

    .line 1231
    const/16 v4, 0x57

    sget-object v5, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    invoke-static {v4, v5}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbSqlUpdate(ILjava/lang/Object;)V

    goto/16 :goto_c

    .line 1233
    :cond_706
    const/16 v4, 0xfa

    if-lt p0, v4, :cond_719

    const/16 v4, 0x103

    if-ge p0, v4, :cond_719

    .line 1235
    const/16 v4, 0x58

    sget-object v5, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPostPone:Lcom/wssyncmldm/db/file/XDBPostPoneInfo;

    invoke-static {v4, v5}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbSqlUpdate(ILjava/lang/Object;)V

    goto/16 :goto_c

    .line 1237
    :cond_719
    const/16 v4, 0x78

    if-lt p0, v4, :cond_72c

    const/16 v4, 0x79

    if-ge p0, v4, :cond_72c

    .line 1239
    const/16 v4, 0x59

    sget-object v5, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSYNCMLSimInfo:Lcom/wssyncmldm/db/file/XDBSimInfo;

    invoke-static {v4, v5}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbSqlUpdate(ILjava/lang/Object;)V

    goto/16 :goto_c

    .line 1241
    :cond_72c
    const/16 v4, 0x82

    if-lt p0, v4, :cond_73f

    const/16 v4, 0x8a

    if-ge p0, v4, :cond_73f

    .line 1243
    const/16 v4, 0x5a

    sget-object v5, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPollingInfo:Lcom/wssyncmldm/db/file/XDBPollingInfo;

    invoke-static {v4, v5}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbSqlUpdate(ILjava/lang/Object;)V

    goto/16 :goto_c

    .line 1245
    :cond_73f
    const/16 v4, 0x6e

    if-lt p0, v4, :cond_755

    const/16 v4, 0x70

    if-ge p0, v4, :cond_755

    .line 1247
    invoke-static {p0, p1}, Lcom/wssyncmldm/db/file/XDB;->xdbAgentInfoDbWrite(ILjava/lang/Object;)V

    .line 1248
    const/16 v4, 0x61

    sget-object v5, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDmAgentInfo:Lcom/wssyncmldm/db/file/XDBAgentInfo;

    invoke-static {v4, v5}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbSqlUpdate(ILjava/lang/Object;)V

    goto/16 :goto_c

    .line 1250
    :cond_755
    const/16 v4, 0x226

    if-lt p0, v4, :cond_c

    const/16 v4, 0x22b

    if-ge p0, v4, :cond_c

    .line 1252
    invoke-static {p0, p1}, Lcom/wssyncmldm/db/file/XDB;->xdbNotiDbWrite(ILjava/lang/Object;)V

    .line 1253
    const/16 v4, 0x62

    sget-object v5, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLNotiInfo:Lcom/wssyncmldm/db/file/XDBNotiInfo;

    invoke-static {v4, v5}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbSqlUpdate(ILjava/lang/Object;)V

    goto/16 :goto_c

    .line 841
    nop

    :sswitch_data_76c
    .sparse-switch
        0x0 -> :sswitch_25
        0x1 -> :sswitch_38
        0x2 -> :sswitch_4b
        0x3 -> :sswitch_5e
        0x4 -> :sswitch_6b
        0x5 -> :sswitch_78
        0x6 -> :sswitch_10
        0x7 -> :sswitch_10
        0x8 -> :sswitch_85
        0x9 -> :sswitch_8d
        0xa -> :sswitch_99
        0xb -> :sswitch_a5
        0xc -> :sswitch_b9
        0xd -> :sswitch_cd
        0xe -> :sswitch_d8
        0xf -> :sswitch_ec
        0x10 -> :sswitch_f7
        0x11 -> :sswitch_10d
        0x12 -> :sswitch_121
        0x13 -> :sswitch_135
        0x14 -> :sswitch_149
        0x15 -> :sswitch_15d
        0x16 -> :sswitch_171
        0x32 -> :sswitch_185
        0x33 -> :sswitch_18e
        0x34 -> :sswitch_1a2
        0x35 -> :sswitch_1ae
        0x36 -> :sswitch_1c2
        0x37 -> :sswitch_1ce
        0x38 -> :sswitch_1da
        0x39 -> :sswitch_1ee
        0x3a -> :sswitch_1fa
        0x3b -> :sswitch_206
        0x3c -> :sswitch_212
        0x3d -> :sswitch_21e
        0x3e -> :sswitch_22a
        0x3f -> :sswitch_236
        0x40 -> :sswitch_242
        0x41 -> :sswitch_24e
        0x42 -> :sswitch_25a
        0x43 -> :sswitch_266
        0x44 -> :sswitch_272
        0x45 -> :sswitch_286
        0x46 -> :sswitch_29a
        0x47 -> :sswitch_2ae
        0x48 -> :sswitch_2ba
        0x49 -> :sswitch_2c5
        0x4a -> :sswitch_2d0
        0x64 -> :sswitch_2e4
        0x65 -> :sswitch_2f1
        0x66 -> :sswitch_2fe
        0x67 -> :sswitch_10
        0x68 -> :sswitch_10
        0x78 -> :sswitch_565
        0x82 -> :sswitch_56e
        0x83 -> :sswitch_577
        0x84 -> :sswitch_583
        0x85 -> :sswitch_58f
        0x86 -> :sswitch_5a3
        0x87 -> :sswitch_5b7
        0x88 -> :sswitch_5cb
        0x89 -> :sswitch_5df
        0x96 -> :sswitch_30b
        0xc8 -> :sswitch_31f
        0xc9 -> :sswitch_328
        0xca -> :sswitch_334
        0xcb -> :sswitch_348
        0xcc -> :sswitch_354
        0xcd -> :sswitch_360
        0xce -> :sswitch_374
        0xcf -> :sswitch_380
        0xd0 -> :sswitch_38c
        0xd1 -> :sswitch_398
        0xd2 -> :sswitch_3ac
        0xd3 -> :sswitch_3b8
        0xd4 -> :sswitch_3c4
        0xd5 -> :sswitch_3d0
        0xd6 -> :sswitch_3e4
        0xd7 -> :sswitch_3f8
        0xd8 -> :sswitch_40c
        0xd9 -> :sswitch_418
        0xda -> :sswitch_424
        0xdb -> :sswitch_430
        0xdc -> :sswitch_444
        0xdd -> :sswitch_458
        0xde -> :sswitch_4a0
        0xdf -> :sswitch_4ac
        0xe0 -> :sswitch_46c
        0xe1 -> :sswitch_4b8
        0xe2 -> :sswitch_480
        0xe3 -> :sswitch_494
        0xfa -> :sswitch_4c4
        0xfb -> :sswitch_4ec
        0xfc -> :sswitch_500
        0xfd -> :sswitch_514
        0xfe -> :sswitch_528
        0xff -> :sswitch_4d8
        0x100 -> :sswitch_53c
        0x101 -> :sswitch_548
        0x102 -> :sswitch_55c
    .end sparse-switch

    .line 1203
    :pswitch_data_8fe
    .packed-switch 0x0
        :pswitch_6bc
        :pswitch_6bf
        :pswitch_6c2
    .end packed-switch
.end method

.method public static xdbWriteFile(IILjava/lang/Object;)Z
    .registers 5
    .parameter "FileID"
    .parameter "nSize"
    .parameter "pData"

    .prologue
    .line 2352
    const/4 v1, 0x0

    .line 2353
    .local v1, szFileName:Ljava/lang/String;
    const/4 v0, 0x1

    .line 2355
    .local v0, bRet:Z
    invoke-static {p0}, Lcom/wssyncmldm/db/file/XDB;->xdbFileGetNameFromCallerID(I)Ljava/lang/String;

    move-result-object v1

    .line 2357
    invoke-static {v1, p1, p2}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbFileWrite(Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v0

    .line 2358
    return v0
.end method

.method public static xdb_E2P_XDM_ACCXNODE_INFO(I)I
    .registers 2
    .parameter "i"

    .prologue
    .line 246
    const/4 v0, 0x0

    .line 247
    .local v0, ret:I
    packed-switch p0, :pswitch_data_e

    .line 258
    .end local v0           #ret:I
    :goto_4
    return v0

    .line 250
    .restart local v0       #ret:I
    :pswitch_5
    const/16 v0, 0x64

    goto :goto_4

    .line 252
    :pswitch_8
    const/16 v0, 0x65

    goto :goto_4

    .line 254
    :pswitch_b
    const/16 v0, 0x66

    goto :goto_4

    .line 247
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public static xdb_E2P_XDM_PROFILENAME(I)I
    .registers 2
    .parameter "i"

    .prologue
    .line 228
    const/4 v0, 0x0

    .line 230
    .local v0, ret:I
    packed-switch p0, :pswitch_data_c

    .line 241
    .end local v0           #ret:I
    :goto_4
    return v0

    .line 233
    .restart local v0       #ret:I
    :pswitch_5
    const/4 v0, 0x3

    goto :goto_4

    .line 235
    :pswitch_7
    const/4 v0, 0x4

    goto :goto_4

    .line 237
    :pswitch_9
    const/4 v0, 0x5

    goto :goto_4

    .line 230
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public xdbGetXDMFileParamFileID(I)Lcom/wssyncmldm/db/file/XDBFileParam;
    .registers 5
    .parameter "FileID"

    .prologue
    .line 2364
    sget-object v2, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->FileMax:Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;

    invoke-virtual {v2}, Lcom/wssyncmldm/db/file/XDB$XDMFileParameter;->Index()I

    move-result v0

    .line 2365
    .local v0, IndexLen:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_19

    .line 2367
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMFileParam:[Lcom/wssyncmldm/db/file/XDBFileParam;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/wssyncmldm/db/file/XDBFileParam;->FileID:I

    if-ne v2, p1, :cond_16

    .line 2369
    sget-object v2, Lcom/wssyncmldm/db/file/XDB;->XDMFileParam:[Lcom/wssyncmldm/db/file/XDBFileParam;

    aget-object v2, v2, v1

    .line 2373
    :goto_15
    return-object v2

    .line 2365
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2373
    :cond_19
    const/4 v2, 0x0

    goto :goto_15
.end method
