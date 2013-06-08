.class public Lcom/wssyncmldm/agent/XDMHandleCmd;
.super Ljava/lang/Object;
.source "XDMHandleCmd.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XDMInterface;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static xdmAgentDataStDeleteAlert(Ljava/lang/Object;)V
    .registers 4
    .parameter "obj"

    .prologue
    const/4 v2, 0x0

    .line 1452
    move-object v0, p0

    check-cast v0, Lcom/wssyncmldm/eng/parser/XDMParserAlert;

    .line 1453
    .local v0, alert:Lcom/wssyncmldm/eng/parser/XDMParserAlert;
    if-nez v0, :cond_7

    .line 1472
    :goto_6
    return-void

    .line 1457
    :cond_7
    const/4 v1, 0x0

    iput v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->cmdid:I

    .line 1459
    iput-object v2, v0, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->m_szCorrelator:Ljava/lang/String;

    .line 1461
    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    if-eqz v1, :cond_15

    .line 1463
    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDeleteCred(Ljava/lang/Object;)V

    .line 1465
    :cond_15
    iput-object v2, v0, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->m_szData:Ljava/lang/String;

    .line 1467
    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    if-eqz v1, :cond_20

    .line 1469
    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDeleteItemlist(Ljava/lang/Object;)V

    .line 1471
    :cond_20
    const/4 v0, 0x0

    .line 1472
    goto :goto_6
.end method

.method public static xdmAgentDataStDeleteCred(Ljava/lang/Object;)V
    .registers 3
    .parameter "obj"

    .prologue
    .line 1412
    move-object v0, p0

    check-cast v0, Lcom/wssyncmldm/eng/parser/XDMParserCred;

    .line 1413
    .local v0, cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;
    if-nez v0, :cond_6

    .line 1424
    :goto_5
    return-void

    .line 1417
    :cond_6
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserCred;->m_szData:Ljava/lang/String;

    .line 1419
    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserCred;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v1, :cond_12

    .line 1421
    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserCred;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDeleteMeta(Ljava/lang/Object;)V

    .line 1423
    :cond_12
    const/4 v0, 0x0

    .line 1424
    goto :goto_5
.end method

.method public static xdmAgentDataStDeleteElelist(Ljava/lang/Object;)V
    .registers 5
    .parameter "obj"

    .prologue
    .line 1432
    move-object v1, p0

    check-cast v1, Lcom/wssyncmldm/eng/core/XDMList;

    .line 1435
    .local v1, h:Lcom/wssyncmldm/eng/core/XDMList;
    move-object v0, v1

    .line 1436
    .local v0, curr:Lcom/wssyncmldm/eng/core/XDMList;
    :goto_4
    if-eqz v0, :cond_e

    .line 1438
    move-object v2, v0

    .line 1439
    .local v2, tmp:Lcom/wssyncmldm/eng/core/XDMList;
    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 1441
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/wssyncmldm/eng/core/XDMList;->item:Ljava/lang/Object;

    .line 1442
    const/4 v2, 0x0

    goto :goto_4

    .line 1444
    .end local v2           #tmp:Lcom/wssyncmldm/eng/core/XDMList;
    :cond_e
    return-void
.end method

.method public static xdmAgentDataStDeleteItem(Ljava/lang/Object;)V
    .registers 4
    .parameter "obj"

    .prologue
    const/4 v2, 0x0

    .line 1343
    move-object v0, p0

    check-cast v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    .line 1344
    .local v0, item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    if-nez v0, :cond_7

    .line 1364
    :goto_6
    return-void

    .line 1349
    :cond_7
    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    if-eqz v1, :cond_10

    .line 1351
    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDeletePcdata(Ljava/lang/Object;)V

    .line 1354
    :cond_10
    iput-object v2, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szSource:Ljava/lang/String;

    .line 1355
    iput-object v2, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    .line 1357
    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v1, :cond_1d

    .line 1359
    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDeleteMeta(Ljava/lang/Object;)V

    .line 1362
    :cond_1d
    const/4 v0, 0x0

    .line 1364
    goto :goto_6
.end method

.method public static xdmAgentDataStDeleteItemlist(Ljava/lang/Object;)V
    .registers 5
    .parameter "obj"

    .prologue
    .line 1321
    move-object v1, p0

    check-cast v1, Lcom/wssyncmldm/eng/core/XDMList;

    .line 1322
    .local v1, header:Lcom/wssyncmldm/eng/core/XDMList;
    move-object v0, v1

    .line 1325
    .local v0, curr:Lcom/wssyncmldm/eng/core/XDMList;
    :goto_4
    if-eqz v0, :cond_10

    .line 1327
    move-object v2, v0

    .line 1328
    .local v2, tmp:Lcom/wssyncmldm/eng/core/XDMList;
    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 1330
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMList;->item:Ljava/lang/Object;

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDeleteItem(Ljava/lang/Object;)V

    .line 1331
    const/4 v2, 0x0

    goto :goto_4

    .line 1334
    .end local v2           #tmp:Lcom/wssyncmldm/eng/core/XDMList;
    :cond_10
    const/4 v1, 0x0

    .line 1335
    return-void
.end method

.method public static xdmAgentDataStDeleteMeta(Ljava/lang/Object;)V
    .registers 5
    .parameter "obj"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1254
    move-object v0, p0

    check-cast v0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 1255
    .local v0, meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;
    if-nez v0, :cond_8

    .line 1278
    :goto_7
    return-void

    .line 1259
    :cond_8
    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->anchor:Lcom/wssyncmldm/eng/parser/XDMParserAnchor;

    if-eqz v1, :cond_11

    .line 1261
    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->anchor:Lcom/wssyncmldm/eng/parser/XDMParserAnchor;

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDeleteMetinfAnchor(Ljava/lang/Object;)V

    .line 1263
    :cond_11
    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->mem:Lcom/wssyncmldm/eng/parser/XDMParserMem;

    if-eqz v1, :cond_1a

    .line 1265
    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->mem:Lcom/wssyncmldm/eng/parser/XDMParserMem;

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDeleteMetinfMem(Ljava/lang/Object;)V

    .line 1268
    :cond_1a
    iput-object v2, v0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szEmi:Ljava/lang/String;

    .line 1269
    iput-object v2, v0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    .line 1270
    iput-object v2, v0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szMark:Ljava/lang/String;

    .line 1271
    iput v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->maxmsgsize:I

    .line 1272
    iput v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->maxobjsize:I

    .line 1273
    iput-object v2, v0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szNextNonce:Ljava/lang/String;

    .line 1274
    iput v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->size:I

    .line 1275
    iput-object v2, v0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    .line 1276
    iput-object v2, v0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szVersion:Ljava/lang/String;

    .line 1277
    const/4 v0, 0x0

    .line 1278
    goto :goto_7
.end method

.method public static xdmAgentDataStDeleteMetinfAnchor(Ljava/lang/Object;)V
    .registers 3
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 1286
    move-object v0, p0

    check-cast v0, Lcom/wssyncmldm/eng/parser/XDMParserAnchor;

    .line 1287
    .local v0, anchor:Lcom/wssyncmldm/eng/parser/XDMParserAnchor;
    if-nez v0, :cond_7

    .line 1295
    :goto_6
    return-void

    .line 1292
    :cond_7
    iput-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserAnchor;->m_szLast:Ljava/lang/String;

    .line 1293
    iput-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserAnchor;->m_szNext:Ljava/lang/String;

    .line 1294
    const/4 v0, 0x0

    .line 1295
    goto :goto_6
.end method

.method public static xdmAgentDataStDeleteMetinfMem(Ljava/lang/Object;)V
    .registers 3
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 1303
    move-object v0, p0

    check-cast v0, Lcom/wssyncmldm/eng/parser/XDMParserMem;

    .line 1304
    .local v0, mem:Lcom/wssyncmldm/eng/parser/XDMParserMem;
    if-nez v0, :cond_7

    .line 1313
    :goto_6
    return-void

    .line 1309
    :cond_7
    iput v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserMem;->free:I

    .line 1310
    iput v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserMem;->freeid:I

    .line 1311
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserMem;->m_szShared:Ljava/lang/String;

    .line 1312
    const/4 v0, 0x0

    .line 1313
    goto :goto_6
.end method

.method public static xdmAgentDataStDeletePcdata(Ljava/lang/Object;)V
    .registers 3
    .parameter "obj"

    .prologue
    .line 1372
    move-object v0, p0

    check-cast v0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    .line 1373
    .local v0, pcdata:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;
    if-nez v0, :cond_6

    .line 1385
    :goto_5
    return-void

    .line 1378
    :cond_6
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    .line 1379
    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->anchor:Lcom/wssyncmldm/eng/parser/XDMParserAnchor;

    if-eqz v1, :cond_12

    .line 1381
    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->anchor:Lcom/wssyncmldm/eng/parser/XDMParserAnchor;

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDeleteMetinfAnchor(Ljava/lang/Object;)V

    .line 1384
    :cond_12
    const/4 v0, 0x0

    .line 1385
    goto :goto_5
.end method

.method public static xdmAgentDataStDeleteReplace(Ljava/lang/Object;)V
    .registers 3
    .parameter "obj"

    .prologue
    .line 1480
    move-object v0, p0

    check-cast v0, Lcom/wssyncmldm/eng/parser/XDMParserReplace;

    .line 1481
    .local v0, rep:Lcom/wssyncmldm/eng/parser/XDMParserReplace;
    if-nez v0, :cond_6

    .line 1500
    :goto_5
    return-void

    .line 1486
    :cond_6
    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    if-eqz v1, :cond_f

    .line 1488
    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDeleteCred(Ljava/lang/Object;)V

    .line 1490
    :cond_f
    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    if-eqz v1, :cond_18

    .line 1492
    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDeleteItemlist(Ljava/lang/Object;)V

    .line 1494
    :cond_18
    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v1, :cond_21

    .line 1496
    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDeleteMeta(Ljava/lang/Object;)V

    .line 1498
    :cond_21
    const/4 v1, 0x0

    iput v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    .line 1499
    const/4 v0, 0x0

    .line 1500
    goto :goto_5
.end method

.method public static xdmAgentDataStDeleteResults(Ljava/lang/Object;)V
    .registers 4
    .parameter "obj"

    .prologue
    const/4 v2, 0x0

    .line 1531
    move-object v0, p0

    check-cast v0, Lcom/wssyncmldm/eng/parser/XDMParserResults;

    .line 1532
    .local v0, results:Lcom/wssyncmldm/eng/parser/XDMParserResults;
    if-nez v0, :cond_7

    .line 1553
    :goto_6
    return-void

    .line 1537
    :cond_7
    const/4 v1, 0x0

    iput v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserResults;->cmdid:I

    .line 1538
    iput-object v2, v0, Lcom/wssyncmldm/eng/parser/XDMParserResults;->m_szMsgRef:Ljava/lang/String;

    .line 1539
    iput-object v2, v0, Lcom/wssyncmldm/eng/parser/XDMParserResults;->m_szCmdRef:Ljava/lang/String;

    .line 1541
    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserResults;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v1, :cond_17

    .line 1543
    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserResults;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDeleteMeta(Ljava/lang/Object;)V

    .line 1545
    :cond_17
    iput-object v2, v0, Lcom/wssyncmldm/eng/parser/XDMParserResults;->m_szTargetRef:Ljava/lang/String;

    .line 1546
    iput-object v2, v0, Lcom/wssyncmldm/eng/parser/XDMParserResults;->m_szSourceRef:Ljava/lang/String;

    .line 1548
    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserResults;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    if-eqz v1, :cond_24

    .line 1550
    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserResults;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDeleteItemlist(Ljava/lang/Object;)V

    .line 1552
    :cond_24
    const/4 v0, 0x0

    .line 1553
    goto :goto_6
.end method

.method public static xdmAgentDataStDeleteStatus(Ljava/lang/Object;)V
    .registers 4
    .parameter "obj"

    .prologue
    const/4 v2, 0x0

    .line 1212
    move-object v0, p0

    check-cast v0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    .line 1213
    .local v0, status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    if-nez v0, :cond_7

    .line 1246
    :goto_6
    return-void

    .line 1218
    :cond_7
    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v1, :cond_10

    .line 1220
    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDeleteMeta(Ljava/lang/Object;)V

    .line 1222
    :cond_10
    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    if-eqz v1, :cond_19

    .line 1224
    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDeleteItemlist(Ljava/lang/Object;)V

    .line 1226
    :cond_19
    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    if-eqz v1, :cond_22

    .line 1228
    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDeleteCred(Ljava/lang/Object;)V

    .line 1230
    :cond_22
    iput-object v2, v0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szCmd:Ljava/lang/String;

    .line 1231
    const/4 v1, 0x0

    iput v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->cmdid:I

    .line 1232
    iput-object v2, v0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szCmdRef:Ljava/lang/String;

    .line 1233
    iput-object v2, v0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    .line 1234
    iput-object v2, v0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szMsgRef:Ljava/lang/String;

    .line 1236
    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->sourceref:Lcom/wssyncmldm/eng/core/XDMList;

    if-eqz v1, :cond_36

    .line 1238
    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->sourceref:Lcom/wssyncmldm/eng/core/XDMList;

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDeleteElelist(Ljava/lang/Object;)V

    .line 1240
    :cond_36
    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->targetref:Lcom/wssyncmldm/eng/core/XDMList;

    if-eqz v1, :cond_3f

    .line 1242
    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->targetref:Lcom/wssyncmldm/eng/core/XDMList;

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDeleteElelist(Ljava/lang/Object;)V

    .line 1244
    :cond_3f
    const/4 v0, 0x0

    .line 1246
    goto :goto_6
.end method

.method public static xdmAgentDataStDeleteTarget(Ljava/lang/Object;)V
    .registers 3
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 1393
    move-object v0, p0

    check-cast v0, Lcom/wssyncmldm/eng/parser/XDMParserTarget;

    .line 1395
    .local v0, pTarget:Lcom/wssyncmldm/eng/parser/XDMParserTarget;
    if-nez v0, :cond_7

    .line 1404
    :goto_6
    return-void

    .line 1400
    :cond_7
    iput-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserTarget;->m_szLocURI:Ljava/lang/String;

    .line 1401
    iput-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserTarget;->m_szLocName:Ljava/lang/String;

    .line 1403
    const/4 v0, 0x0

    .line 1404
    goto :goto_6
.end method

.method public static xdmAgentDataStDuplAlert(Lcom/wssyncmldm/eng/parser/XDMParserAlert;Lcom/wssyncmldm/eng/parser/XDMParserAlert;)V
    .registers 4
    .parameter "dest"
    .parameter "src"

    .prologue
    .line 686
    if-nez p1, :cond_3

    .line 712
    :cond_2
    :goto_2
    return-void

    .line 691
    :cond_3
    iget v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->cmdid:I

    if-lez v0, :cond_b

    .line 693
    iget v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->cmdid:I

    iput v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->cmdid:I

    .line 695
    :cond_b
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->m_szCorrelator:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 697
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->m_szCorrelator:Ljava/lang/String;

    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->m_szCorrelator:Ljava/lang/String;

    .line 699
    :cond_17
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    if-eqz v0, :cond_29

    .line 701
    new-instance v0, Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/parser/XDMParserCred;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    .line 702
    iget-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-static {v0, v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplCred(Lcom/wssyncmldm/eng/parser/XDMParserCred;Lcom/wssyncmldm/eng/parser/XDMParserCred;)V

    .line 704
    :cond_29
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->m_szData:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 706
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->m_szData:Ljava/lang/String;

    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->m_szData:Ljava/lang/String;

    .line 708
    :cond_35
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    if-eqz v0, :cond_2

    .line 710
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplItemlist(Lcom/wssyncmldm/eng/core/XDMList;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v0

    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    goto :goto_2
.end method

.method public static xdmAgentDataStDuplCred(Lcom/wssyncmldm/eng/parser/XDMParserCred;Lcom/wssyncmldm/eng/parser/XDMParserCred;)V
    .registers 4
    .parameter "dest"
    .parameter "src"

    .prologue
    .line 867
    if-nez p1, :cond_3

    .line 880
    :cond_2
    :goto_2
    return-void

    .line 871
    :cond_3
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserCred;->m_szData:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 873
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserCred;->m_szData:Ljava/lang/String;

    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserCred;->m_szData:Ljava/lang/String;

    .line 875
    :cond_f
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserCred;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v0, :cond_2

    .line 877
    new-instance v0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserCred;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 878
    iget-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserCred;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserCred;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-static {v0, v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplMeta(Lcom/wssyncmldm/eng/parser/XDMParserMeta;Lcom/wssyncmldm/eng/parser/XDMParserMeta;)V

    goto :goto_2
.end method

.method public static xdmAgentDataStDuplItem(Lcom/wssyncmldm/eng/parser/XDMParserItem;Lcom/wssyncmldm/eng/parser/XDMParserItem;)V
    .registers 4
    .parameter "dest"
    .parameter "src"

    .prologue
    .line 977
    if-nez p1, :cond_3

    .line 1002
    :goto_2
    return-void

    .line 982
    :cond_3
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 984
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    .line 986
    :cond_f
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szSource:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 988
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szSource:Ljava/lang/String;

    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szSource:Ljava/lang/String;

    .line 990
    :cond_1b
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v0, :cond_2d

    .line 992
    new-instance v0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 993
    iget-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-static {v0, v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplMeta(Lcom/wssyncmldm/eng/parser/XDMParserMeta;Lcom/wssyncmldm/eng/parser/XDMParserMeta;)V

    .line 995
    :cond_2d
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    if-eqz v0, :cond_3f

    .line 997
    new-instance v0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    .line 998
    iget-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    invoke-static {v0, v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplPcdata(Lcom/wssyncmldm/eng/parser/XDMParserPcdata;Lcom/wssyncmldm/eng/parser/XDMParserPcdata;)V

    .line 1000
    :cond_3f
    iget v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserItem;->moredata:I

    iput v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->moredata:I

    goto :goto_2
.end method

.method public static xdmAgentDataStDuplItemlist(Lcom/wssyncmldm/eng/core/XDMList;)Lcom/wssyncmldm/eng/core/XDMList;
    .registers 8
    .parameter "src"

    .prologue
    .line 949
    move-object v0, p0

    .line 952
    .local v0, curr:Lcom/wssyncmldm/eng/core/XDMList;
    const/4 v1, 0x0

    .local v1, head:Lcom/wssyncmldm/eng/core/XDMList;
    const/4 v3, 0x0

    .line 954
    .local v3, tail:Lcom/wssyncmldm/eng/core/XDMList;
    :goto_3
    if-eqz v0, :cond_22

    .line 956
    move-object v4, v0

    .line 957
    .local v4, tmp:Lcom/wssyncmldm/eng/core/XDMList;
    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 959
    new-instance v2, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    invoke-direct {v2}, Lcom/wssyncmldm/eng/parser/XDMParserItem;-><init>()V

    .local v2, item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    move-object v5, v2

    .line 960
    check-cast v5, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    iget-object v6, v4, Lcom/wssyncmldm/eng/core/XDMList;->item:Ljava/lang/Object;

    check-cast v6, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    invoke-static {v5, v6}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplItem(Lcom/wssyncmldm/eng/parser/XDMParserItem;Lcom/wssyncmldm/eng/parser/XDMParserItem;)V

    .line 961
    if-nez v1, :cond_1e

    .line 962
    invoke-static {v1, v3, v2}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListAppend(Lcom/wssyncmldm/eng/core/XDMList;Lcom/wssyncmldm/eng/core/XDMList;Ljava/lang/Object;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v1

    goto :goto_3

    .line 964
    :cond_1e
    invoke-static {v1, v3, v2}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListAppend(Lcom/wssyncmldm/eng/core/XDMList;Lcom/wssyncmldm/eng/core/XDMList;Ljava/lang/Object;)Lcom/wssyncmldm/eng/core/XDMList;

    goto :goto_3

    .line 967
    .end local v2           #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    .end local v4           #tmp:Lcom/wssyncmldm/eng/core/XDMList;
    :cond_22
    return-object v1
.end method

.method public static xdmAgentDataStDuplMeta(Lcom/wssyncmldm/eng/parser/XDMParserMeta;Lcom/wssyncmldm/eng/parser/XDMParserMeta;)V
    .registers 4
    .parameter "dest"
    .parameter "src"

    .prologue
    .line 889
    if-nez p1, :cond_3

    .line 940
    :cond_2
    :goto_2
    return-void

    .line 894
    :cond_3
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 896
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    .line 898
    :cond_f
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 900
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    .line 902
    :cond_1b
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szMark:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 904
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szMark:Ljava/lang/String;

    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szMark:Ljava/lang/String;

    .line 906
    :cond_27
    iget v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->size:I

    if-lez v0, :cond_2f

    .line 908
    iget v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->size:I

    iput v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->size:I

    .line 910
    :cond_2f
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szNextNonce:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 912
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szNextNonce:Ljava/lang/String;

    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szNextNonce:Ljava/lang/String;

    .line 914
    :cond_3b
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 916
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szVersion:Ljava/lang/String;

    .line 918
    :cond_47
    iget v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->maxmsgsize:I

    if-lez v0, :cond_4f

    .line 920
    iget v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->maxmsgsize:I

    iput v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->maxmsgsize:I

    .line 922
    :cond_4f
    iget v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->maxobjsize:I

    if-lez v0, :cond_57

    .line 924
    iget v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->maxobjsize:I

    iput v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->maxobjsize:I

    .line 926
    :cond_57
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->mem:Lcom/wssyncmldm/eng/parser/XDMParserMem;

    if-eqz v0, :cond_69

    .line 928
    new-instance v0, Lcom/wssyncmldm/eng/parser/XDMParserMem;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/parser/XDMParserMem;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->mem:Lcom/wssyncmldm/eng/parser/XDMParserMem;

    .line 929
    iget-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->mem:Lcom/wssyncmldm/eng/parser/XDMParserMem;

    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->mem:Lcom/wssyncmldm/eng/parser/XDMParserMem;

    invoke-static {v0, v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplMetinfMem(Lcom/wssyncmldm/eng/parser/XDMParserMem;Lcom/wssyncmldm/eng/parser/XDMParserMem;)V

    .line 931
    :cond_69
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szEmi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_75

    .line 933
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szEmi:Ljava/lang/String;

    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szEmi:Ljava/lang/String;

    .line 935
    :cond_75
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->anchor:Lcom/wssyncmldm/eng/parser/XDMParserAnchor;

    if-eqz v0, :cond_2

    .line 937
    new-instance v0, Lcom/wssyncmldm/eng/parser/XDMParserAnchor;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/parser/XDMParserAnchor;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->anchor:Lcom/wssyncmldm/eng/parser/XDMParserAnchor;

    .line 938
    iget-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->anchor:Lcom/wssyncmldm/eng/parser/XDMParserAnchor;

    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->anchor:Lcom/wssyncmldm/eng/parser/XDMParserAnchor;

    invoke-static {v0, v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplMetinfAnchor(Lcom/wssyncmldm/eng/parser/XDMParserAnchor;Lcom/wssyncmldm/eng/parser/XDMParserAnchor;)V

    goto/16 :goto_2
.end method

.method public static xdmAgentDataStDuplMetinfAnchor(Lcom/wssyncmldm/eng/parser/XDMParserAnchor;Lcom/wssyncmldm/eng/parser/XDMParserAnchor;)V
    .registers 3
    .parameter "dest"
    .parameter "src"

    .prologue
    .line 1071
    if-nez p1, :cond_3

    .line 1084
    :cond_2
    :goto_2
    return-void

    .line 1076
    :cond_3
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserAnchor;->m_szLast:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1078
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserAnchor;->m_szLast:Ljava/lang/String;

    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserAnchor;->m_szLast:Ljava/lang/String;

    .line 1080
    :cond_f
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserAnchor;->m_szNext:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1082
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserAnchor;->m_szNext:Ljava/lang/String;

    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserAnchor;->m_szNext:Ljava/lang/String;

    goto :goto_2
.end method

.method public static xdmAgentDataStDuplMetinfMem(Lcom/wssyncmldm/eng/parser/XDMParserMem;Lcom/wssyncmldm/eng/parser/XDMParserMem;)V
    .registers 3
    .parameter "dest"
    .parameter "src"

    .prologue
    .line 1046
    if-nez p1, :cond_3

    .line 1062
    :cond_2
    :goto_2
    return-void

    .line 1050
    :cond_3
    iget v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserMem;->free:I

    if-lez v0, :cond_b

    .line 1052
    iget v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserMem;->free:I

    iput v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserMem;->free:I

    .line 1054
    :cond_b
    iget v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserMem;->freeid:I

    if-lez v0, :cond_13

    .line 1056
    iget v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserMem;->freeid:I

    iput v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserMem;->freeid:I

    .line 1058
    :cond_13
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserMem;->m_szShared:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1060
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserMem;->m_szShared:Ljava/lang/String;

    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserMem;->m_szShared:Ljava/lang/String;

    goto :goto_2
.end method

.method public static xdmAgentDataStDuplPcdata(Lcom/wssyncmldm/eng/parser/XDMParserPcdata;Lcom/wssyncmldm/eng/parser/XDMParserPcdata;)V
    .registers 5
    .parameter "dest"
    .parameter "src"

    .prologue
    .line 1011
    if-nez p1, :cond_3

    .line 1037
    :cond_2
    :goto_2
    return-void

    .line 1016
    :cond_3
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->type:I

    iput v1, p0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->type:I

    .line 1017
    iget v1, p0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->type:I

    if-nez v1, :cond_26

    .line 1019
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    iput-object v1, p0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    .line 1020
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->size:I

    iput v1, p0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->size:I

    .line 1032
    :cond_13
    :goto_13
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->anchor:Lcom/wssyncmldm/eng/parser/XDMParserAnchor;

    if-eqz v1, :cond_2

    .line 1034
    new-instance v1, Lcom/wssyncmldm/eng/parser/XDMParserAnchor;

    invoke-direct {v1}, Lcom/wssyncmldm/eng/parser/XDMParserAnchor;-><init>()V

    iput-object v1, p0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->anchor:Lcom/wssyncmldm/eng/parser/XDMParserAnchor;

    .line 1035
    iget-object v1, p0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->anchor:Lcom/wssyncmldm/eng/parser/XDMParserAnchor;

    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->anchor:Lcom/wssyncmldm/eng/parser/XDMParserAnchor;

    invoke-static {v1, v2}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplMetinfAnchor(Lcom/wssyncmldm/eng/parser/XDMParserAnchor;Lcom/wssyncmldm/eng/parser/XDMParserAnchor;)V

    goto :goto_2

    .line 1024
    :cond_26
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    if-eqz v1, :cond_13

    .line 1026
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->size:I

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    .line 1027
    const/4 v0, 0x0

    .local v0, i:I
    :goto_31
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->size:I

    if-ge v0, v1, :cond_40

    .line 1028
    iget-object v1, p0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    aget-char v2, v2, v0

    aput-char v2, v1, v0

    .line 1027
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 1029
    :cond_40
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->size:I

    iput v1, p0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->size:I

    goto :goto_13
.end method

.method public static xdmAgentDataStDuplResults(Lcom/wssyncmldm/eng/parser/XDMParserResults;Lcom/wssyncmldm/eng/parser/XDMParserResults;)V
    .registers 4
    .parameter "dest"
    .parameter "src"

    .prologue
    .line 1588
    if-nez p1, :cond_3

    .line 1622
    :cond_2
    :goto_2
    return-void

    .line 1593
    :cond_3
    iget v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserResults;->cmdid:I

    if-lez v0, :cond_b

    .line 1595
    iget v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserResults;->cmdid:I

    iput v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserResults;->cmdid:I

    .line 1597
    :cond_b
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserResults;->m_szMsgRef:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1599
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserResults;->m_szMsgRef:Ljava/lang/String;

    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserResults;->m_szMsgRef:Ljava/lang/String;

    .line 1601
    :cond_17
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserResults;->m_szCmdRef:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 1603
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserResults;->m_szCmdRef:Ljava/lang/String;

    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserResults;->m_szCmdRef:Ljava/lang/String;

    .line 1605
    :cond_23
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserResults;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v0, :cond_35

    .line 1607
    new-instance v0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserResults;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 1608
    iget-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserResults;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserResults;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-static {v0, v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplMeta(Lcom/wssyncmldm/eng/parser/XDMParserMeta;Lcom/wssyncmldm/eng/parser/XDMParserMeta;)V

    .line 1610
    :cond_35
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserResults;->m_szTargetRef:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 1612
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserResults;->m_szTargetRef:Ljava/lang/String;

    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserResults;->m_szTargetRef:Ljava/lang/String;

    .line 1614
    :cond_41
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserResults;->m_szSourceRef:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 1616
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserResults;->m_szSourceRef:Ljava/lang/String;

    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserResults;->m_szSourceRef:Ljava/lang/String;

    .line 1618
    :cond_4d
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserResults;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    if-eqz v0, :cond_2

    .line 1620
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserResults;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplItemlist(Lcom/wssyncmldm/eng/core/XDMList;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v0

    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserResults;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    goto :goto_2
.end method

.method public static xdmAgentDataStGetString(Lcom/wssyncmldm/eng/parser/XDMParserPcdata;)Ljava/lang/String;
    .registers 4
    .parameter "pcdata"

    .prologue
    const/4 v1, 0x0

    .line 1562
    const-string v0, ""

    .line 1564
    .local v0, szData:Ljava/lang/String;
    if-nez p0, :cond_6

    .line 1578
    :cond_5
    :goto_5
    return-object v1

    .line 1568
    :cond_6
    iget v2, p0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->type:I

    if-nez v2, :cond_5

    .line 1573
    iget-object v2, p0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    if-eqz v2, :cond_5

    .line 1576
    iget-object v1, p0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1578
    goto :goto_5
.end method

.method public static xdmAgentDataStString2Pcdata([C)Lcom/wssyncmldm/eng/parser/XDMParserPcdata;
    .registers 5
    .parameter "str"

    .prologue
    .line 1510
    new-instance v1, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    invoke-direct {v1}, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;-><init>()V

    .line 1512
    .local v1, o:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;
    if-nez v1, :cond_9

    .line 1514
    const/4 v1, 0x0

    .line 1522
    .end local v1           #o:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;
    :cond_8
    return-object v1

    .line 1517
    .restart local v1       #o:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;
    :cond_9
    const/4 v2, 0x0

    iput v2, v1, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->type:I

    .line 1518
    array-length v2, p0

    iput v2, v1, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->size:I

    .line 1519
    array-length v2, p0

    new-array v2, v2, [C

    iput-object v2, v1, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    .line 1520
    const/4 v0, 0x0

    .local v0, i:I
    :goto_15
    array-length v2, p0

    if-ge v0, v2, :cond_8

    .line 1521
    iget-object v2, v1, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    aget-char v3, p0, v0

    aput-char v3, v2, v0

    .line 1520
    add-int/lit8 v0, v0, 0x1

    goto :goto_15
.end method


# virtual methods
.method public xdmAgentDataStDeleteSequence(Ljava/lang/Object;)V
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1169
    move-object v1, p1

    check-cast v1, Lcom/wssyncmldm/eng/parser/XDMParserSequence;

    .line 1170
    .local v1, sequence:Lcom/wssyncmldm/eng/parser/XDMParserSequence;
    const/4 v0, 0x0

    .line 1172
    .local v0, cmd:Lcom/wssyncmldm/agent/XDMAgent;
    if-nez v1, :cond_9

    .line 1204
    :goto_8
    return-void

    .line 1175
    :cond_9
    iput v4, v1, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->cmdid:I

    .line 1176
    iget-object v2, v1, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v2, :cond_3d

    .line 1178
    iget-object v2, v1, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iput-object v3, v2, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->anchor:Lcom/wssyncmldm/eng/parser/XDMParserAnchor;

    .line 1179
    iget-object v2, v1, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iput-object v3, v2, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szEmi:Ljava/lang/String;

    .line 1180
    iget-object v2, v1, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iput-object v3, v2, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    .line 1181
    iget-object v2, v1, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iput-object v3, v2, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szMark:Ljava/lang/String;

    .line 1182
    iget-object v2, v1, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iput v4, v2, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->maxmsgsize:I

    .line 1183
    iget-object v2, v1, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iput v4, v2, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->maxobjsize:I

    .line 1184
    iget-object v2, v1, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iput-object v3, v2, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->mem:Lcom/wssyncmldm/eng/parser/XDMParserMem;

    .line 1185
    iget-object v2, v1, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iput-object v3, v2, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szNextNonce:Ljava/lang/String;

    .line 1186
    iget-object v2, v1, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iput v4, v2, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->size:I

    .line 1187
    iget-object v2, v1, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iput-object v3, v2, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    .line 1188
    iget-object v2, v1, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iput-object v3, v2, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szVersion:Ljava/lang/String;

    .line 1189
    iput-object v3, v1, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 1192
    :cond_3d
    iget-object v2, v1, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->itemlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    if-eqz v2, :cond_5e

    .line 1194
    iget-object v2, v1, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->itemlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v2, v4}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListSetCurrentObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;I)V

    .line 1195
    iget-object v2, v1, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->itemlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v2}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListGetNextObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cmd:Lcom/wssyncmldm/agent/XDMAgent;
    check-cast v0, Lcom/wssyncmldm/agent/XDMAgent;

    .line 1197
    .restart local v0       #cmd:Lcom/wssyncmldm/agent/XDMAgent;
    :goto_4e
    if-eqz v0, :cond_5e

    .line 1199
    iget-object v2, v1, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->itemlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v2}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListRemoveObjAtFirst(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    .line 1200
    iget-object v2, v1, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->itemlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v2}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListGetNextObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cmd:Lcom/wssyncmldm/agent/XDMAgent;
    check-cast v0, Lcom/wssyncmldm/agent/XDMAgent;

    .restart local v0       #cmd:Lcom/wssyncmldm/agent/XDMAgent;
    goto :goto_4e

    .line 1203
    :cond_5e
    const/4 v1, 0x0

    .line 1204
    goto :goto_8
.end method

.method public xdmAgentDataStDuplAdd(Lcom/wssyncmldm/eng/parser/XDMParserAdd;Lcom/wssyncmldm/eng/parser/XDMParserAdd;)V
    .registers 5
    .parameter "dest"
    .parameter "src"

    .prologue
    .line 721
    if-nez p2, :cond_3

    .line 744
    :cond_2
    :goto_2
    return-void

    .line 726
    :cond_3
    iget v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    if-lez v0, :cond_b

    .line 728
    iget v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    iput v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    .line 730
    :cond_b
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    if-eqz v0, :cond_1d

    .line 732
    new-instance v0, Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/parser/XDMParserCred;-><init>()V

    iput-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    .line 733
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    iget-object v1, p2, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-static {v0, v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplCred(Lcom/wssyncmldm/eng/parser/XDMParserCred;Lcom/wssyncmldm/eng/parser/XDMParserCred;)V

    .line 735
    :cond_1d
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v0, :cond_2f

    .line 737
    new-instance v0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;-><init>()V

    iput-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 738
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v1, p2, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-static {v0, v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplMeta(Lcom/wssyncmldm/eng/parser/XDMParserMeta;Lcom/wssyncmldm/eng/parser/XDMParserMeta;)V

    .line 740
    :cond_2f
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    if-eqz v0, :cond_2

    .line 742
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplItemlist(Lcom/wssyncmldm/eng/core/XDMList;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v0

    iput-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    goto :goto_2
.end method

.method public xdmAgentDataStDuplAtomic(Lcom/wssyncmldm/eng/parser/XDMParserAtomic;Lcom/wssyncmldm/eng/parser/XDMParserAtomic;)V
    .registers 6
    .parameter "dest"
    .parameter "src"

    .prologue
    .line 1093
    const/4 v0, 0x0

    .line 1094
    .local v0, cmd:Lcom/wssyncmldm/agent/XDMAgent;
    if-nez p2, :cond_4

    .line 1122
    :cond_3
    :goto_3
    return-void

    .line 1099
    :cond_4
    iget v1, p2, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->cmdid:I

    if-lez v1, :cond_c

    .line 1101
    iget v1, p2, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->cmdid:I

    iput v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->cmdid:I

    .line 1103
    :cond_c
    iget-object v1, p2, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v1, :cond_1e

    .line 1105
    new-instance v1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-direct {v1}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;-><init>()V

    iput-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 1106
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v2, p2, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-static {v1, v2}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplMeta(Lcom/wssyncmldm/eng/parser/XDMParserMeta;Lcom/wssyncmldm/eng/parser/XDMParserMeta;)V

    .line 1108
    :cond_1e
    iget-object v1, p2, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->itemlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    if-eqz v1, :cond_40

    .line 1110
    iget-object v1, p2, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->itemlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListSetCurrentObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;I)V

    .line 1111
    iget-object v1, p2, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->itemlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v1}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListGetNextObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cmd:Lcom/wssyncmldm/agent/XDMAgent;
    check-cast v0, Lcom/wssyncmldm/agent/XDMAgent;

    .line 1112
    .restart local v0       #cmd:Lcom/wssyncmldm/agent/XDMAgent;
    :goto_30
    if-eqz v0, :cond_3

    .line 1114
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->itemlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-virtual {p0, v1, v0}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 1115
    iget-object v1, p2, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->itemlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v1}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListGetNextObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cmd:Lcom/wssyncmldm/agent/XDMAgent;
    check-cast v0, Lcom/wssyncmldm/agent/XDMAgent;

    .restart local v0       #cmd:Lcom/wssyncmldm/agent/XDMAgent;
    goto :goto_30

    .line 1120
    :cond_40
    invoke-static {}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListCreateLinkedList()Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-result-object v1

    iput-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->itemlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    goto :goto_3
.end method

.method public xdmAgentDataStDuplCopy(Lcom/wssyncmldm/eng/parser/XDMParserCopy;Lcom/wssyncmldm/eng/parser/XDMParserCopy;)V
    .registers 5
    .parameter "dest"
    .parameter "src"

    .prologue
    .line 785
    if-nez p2, :cond_3

    .line 808
    :cond_2
    :goto_2
    return-void

    .line 790
    :cond_3
    iget v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->cmdid:I

    if-lez v0, :cond_b

    .line 792
    iget v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->cmdid:I

    iput v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->cmdid:I

    .line 794
    :cond_b
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    if-eqz v0, :cond_1d

    .line 796
    new-instance v0, Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/parser/XDMParserCred;-><init>()V

    iput-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    .line 797
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    iget-object v1, p2, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-static {v0, v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplCred(Lcom/wssyncmldm/eng/parser/XDMParserCred;Lcom/wssyncmldm/eng/parser/XDMParserCred;)V

    .line 799
    :cond_1d
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v0, :cond_2f

    .line 801
    new-instance v0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;-><init>()V

    iput-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 802
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v1, p2, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-static {v0, v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplMeta(Lcom/wssyncmldm/eng/parser/XDMParserMeta;Lcom/wssyncmldm/eng/parser/XDMParserMeta;)V

    .line 804
    :cond_2f
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    if-eqz v0, :cond_2

    .line 806
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplItemlist(Lcom/wssyncmldm/eng/core/XDMList;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v0

    iput-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    goto :goto_2
.end method

.method public xdmAgentDataStDuplDelete(Lcom/wssyncmldm/eng/parser/XDMParserDelete;Lcom/wssyncmldm/eng/parser/XDMParserDelete;)V
    .registers 5
    .parameter "dest"
    .parameter "src"

    .prologue
    .line 817
    if-nez p2, :cond_3

    .line 840
    :cond_2
    :goto_2
    return-void

    .line 822
    :cond_3
    iget v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->cmdid:I

    if-lez v0, :cond_b

    .line 824
    iget v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->cmdid:I

    iput v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->cmdid:I

    .line 826
    :cond_b
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    if-eqz v0, :cond_1d

    .line 828
    new-instance v0, Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/parser/XDMParserCred;-><init>()V

    iput-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    .line 829
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    iget-object v1, p2, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-static {v0, v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplCred(Lcom/wssyncmldm/eng/parser/XDMParserCred;Lcom/wssyncmldm/eng/parser/XDMParserCred;)V

    .line 831
    :cond_1d
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v0, :cond_2f

    .line 833
    new-instance v0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;-><init>()V

    iput-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 834
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v1, p2, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-static {v0, v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplMeta(Lcom/wssyncmldm/eng/parser/XDMParserMeta;Lcom/wssyncmldm/eng/parser/XDMParserMeta;)V

    .line 836
    :cond_2f
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    if-eqz v0, :cond_2

    .line 838
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplItemlist(Lcom/wssyncmldm/eng/core/XDMList;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v0

    iput-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    goto :goto_2
.end method

.method public xdmAgentDataStDuplElelist(Lcom/wssyncmldm/eng/core/XDMList;)Lcom/wssyncmldm/eng/core/XDMList;
    .registers 4
    .parameter "src"

    .prologue
    .line 849
    move-object v0, p1

    .line 850
    .local v0, curr:Lcom/wssyncmldm/eng/core/XDMList;
    const/4 v1, 0x0

    .line 852
    .local v1, head:Lcom/wssyncmldm/eng/core/XDMList;
    :goto_2
    if-eqz v0, :cond_7

    .line 854
    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    goto :goto_2

    .line 857
    :cond_7
    return-object v1
.end method

.method public xdmAgentDataStDuplExec(Lcom/wssyncmldm/eng/parser/XDMParserExec;Lcom/wssyncmldm/eng/parser/XDMParserExec;)V
    .registers 5
    .parameter "dest"
    .parameter "src"

    .prologue
    .line 656
    if-nez p2, :cond_3

    .line 677
    :cond_2
    :goto_2
    return-void

    .line 660
    :cond_3
    iget v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserExec;->cmdid:I

    if-lez v0, :cond_b

    .line 662
    iget v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserExec;->cmdid:I

    iput v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserExec;->cmdid:I

    .line 664
    :cond_b
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserExec;->m_szCorrelator:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 666
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserExec;->m_szCorrelator:Ljava/lang/String;

    iput-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserExec;->m_szCorrelator:Ljava/lang/String;

    .line 668
    :cond_17
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserExec;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v0, :cond_29

    .line 670
    new-instance v0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;-><init>()V

    iput-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserExec;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 671
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserExec;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v1, p2, Lcom/wssyncmldm/eng/parser/XDMParserExec;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-static {v0, v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplMeta(Lcom/wssyncmldm/eng/parser/XDMParserMeta;Lcom/wssyncmldm/eng/parser/XDMParserMeta;)V

    .line 673
    :cond_29
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserExec;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    if-eqz v0, :cond_2

    .line 675
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserExec;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplItemlist(Lcom/wssyncmldm/eng/core/XDMList;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v0

    iput-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserExec;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    goto :goto_2
.end method

.method public xdmAgentDataStDuplGet(Lcom/wssyncmldm/eng/parser/XDMParserGet;Lcom/wssyncmldm/eng/parser/XDMParserGet;)V
    .registers 5
    .parameter "dest"
    .parameter "src"

    .prologue
    .line 620
    if-nez p2, :cond_3

    .line 647
    :cond_2
    :goto_2
    return-void

    .line 625
    :cond_3
    iget v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    if-lez v0, :cond_b

    .line 627
    iget v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    iput v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    .line 629
    :cond_b
    iget v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserGet;->lang:I

    if-lez v0, :cond_13

    .line 631
    iget v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserGet;->lang:I

    iput v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserGet;->lang:I

    .line 633
    :cond_13
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    if-eqz v0, :cond_25

    .line 635
    new-instance v0, Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/parser/XDMParserCred;-><init>()V

    iput-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    .line 636
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    iget-object v1, p2, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-static {v0, v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplCred(Lcom/wssyncmldm/eng/parser/XDMParserCred;Lcom/wssyncmldm/eng/parser/XDMParserCred;)V

    .line 638
    :cond_25
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserGet;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v0, :cond_37

    .line 640
    new-instance v0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;-><init>()V

    iput-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserGet;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 641
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserGet;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v1, p2, Lcom/wssyncmldm/eng/parser/XDMParserGet;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-static {v0, v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplMeta(Lcom/wssyncmldm/eng/parser/XDMParserMeta;Lcom/wssyncmldm/eng/parser/XDMParserMeta;)V

    .line 643
    :cond_37
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserGet;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    if-eqz v0, :cond_2

    .line 645
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserGet;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplItemlist(Lcom/wssyncmldm/eng/core/XDMList;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v0

    iput-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserGet;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    goto :goto_2
.end method

.method public xdmAgentDataStDuplReplace(Lcom/wssyncmldm/eng/parser/XDMParserReplace;Lcom/wssyncmldm/eng/parser/XDMParserReplace;)V
    .registers 5
    .parameter "dest"
    .parameter "src"

    .prologue
    .line 753
    if-nez p2, :cond_3

    .line 776
    :cond_2
    :goto_2
    return-void

    .line 758
    :cond_3
    iget v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    if-lez v0, :cond_b

    .line 760
    iget v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    iput v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    .line 762
    :cond_b
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    if-eqz v0, :cond_1d

    .line 764
    new-instance v0, Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/parser/XDMParserCred;-><init>()V

    iput-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    .line 765
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    iget-object v1, p2, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-static {v0, v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplCred(Lcom/wssyncmldm/eng/parser/XDMParserCred;Lcom/wssyncmldm/eng/parser/XDMParserCred;)V

    .line 767
    :cond_1d
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v0, :cond_2f

    .line 769
    new-instance v0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;-><init>()V

    iput-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 770
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v1, p2, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-static {v0, v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplMeta(Lcom/wssyncmldm/eng/parser/XDMParserMeta;Lcom/wssyncmldm/eng/parser/XDMParserMeta;)V

    .line 772
    :cond_2f
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    if-eqz v0, :cond_2

    .line 774
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplItemlist(Lcom/wssyncmldm/eng/core/XDMList;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v0

    iput-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    goto :goto_2
.end method

.method public xdmAgentDataStDuplSequence(Lcom/wssyncmldm/eng/parser/XDMParserSequence;Lcom/wssyncmldm/eng/parser/XDMParserSequence;)V
    .registers 6
    .parameter "dest"
    .parameter "src"

    .prologue
    .line 1131
    const/4 v0, 0x0

    .line 1133
    .local v0, cmd:Lcom/wssyncmldm/agent/XDMAgent;
    if-nez p2, :cond_4

    .line 1161
    :cond_3
    :goto_3
    return-void

    .line 1138
    :cond_4
    iget v1, p2, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->cmdid:I

    if-lez v1, :cond_c

    .line 1140
    iget v1, p2, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->cmdid:I

    iput v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->cmdid:I

    .line 1142
    :cond_c
    iget-object v1, p2, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v1, :cond_1e

    .line 1144
    new-instance v1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-direct {v1}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;-><init>()V

    iput-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 1145
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v2, p2, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-static {v1, v2}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplMeta(Lcom/wssyncmldm/eng/parser/XDMParserMeta;Lcom/wssyncmldm/eng/parser/XDMParserMeta;)V

    .line 1147
    :cond_1e
    iget-object v1, p2, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->itemlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    if-eqz v1, :cond_40

    .line 1149
    iget-object v1, p2, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->itemlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListSetCurrentObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;I)V

    .line 1150
    iget-object v1, p2, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->itemlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v1}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListGetNextObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cmd:Lcom/wssyncmldm/agent/XDMAgent;
    check-cast v0, Lcom/wssyncmldm/agent/XDMAgent;

    .line 1151
    .restart local v0       #cmd:Lcom/wssyncmldm/agent/XDMAgent;
    :goto_30
    if-eqz v0, :cond_3

    .line 1153
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->itemlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-virtual {p0, v1, v0}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 1154
    iget-object v1, p2, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->itemlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v1}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListGetNextObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cmd:Lcom/wssyncmldm/agent/XDMAgent;
    check-cast v0, Lcom/wssyncmldm/agent/XDMAgent;

    .restart local v0       #cmd:Lcom/wssyncmldm/agent/XDMAgent;
    goto :goto_30

    .line 1159
    :cond_40
    invoke-static {}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListCreateLinkedList()Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-result-object v1

    iput-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->itemlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    goto :goto_3
.end method

.method public xdmAgentDataStDuplStatus(Lcom/wssyncmldm/eng/parser/XDMParserStatus;Lcom/wssyncmldm/eng/parser/XDMParserStatus;)V
    .registers 5
    .parameter "dest"
    .parameter "src"

    .prologue
    .line 565
    if-nez p2, :cond_3

    .line 611
    :cond_2
    :goto_2
    return-void

    .line 569
    :cond_3
    iget v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->cmdid:I

    if-lez v0, :cond_b

    .line 571
    iget v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->cmdid:I

    iput v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->cmdid:I

    .line 573
    :cond_b
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szMsgRef:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 575
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szMsgRef:Ljava/lang/String;

    iput-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szMsgRef:Ljava/lang/String;

    .line 577
    :cond_17
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szCmdRef:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 579
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szCmdRef:Ljava/lang/String;

    iput-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szCmdRef:Ljava/lang/String;

    .line 581
    :cond_23
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szCmd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 583
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szCmd:Ljava/lang/String;

    iput-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szCmd:Ljava/lang/String;

    .line 585
    :cond_2f
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->targetref:Lcom/wssyncmldm/eng/core/XDMList;

    if-eqz v0, :cond_37

    .line 587
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->targetref:Lcom/wssyncmldm/eng/core/XDMList;

    iput-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->targetref:Lcom/wssyncmldm/eng/core/XDMList;

    .line 589
    :cond_37
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->sourceref:Lcom/wssyncmldm/eng/core/XDMList;

    if-eqz v0, :cond_3f

    .line 591
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->sourceref:Lcom/wssyncmldm/eng/core/XDMList;

    iput-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->sourceref:Lcom/wssyncmldm/eng/core/XDMList;

    .line 593
    :cond_3f
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    if-eqz v0, :cond_51

    .line 595
    new-instance v0, Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/parser/XDMParserCred;-><init>()V

    iput-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    .line 596
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    iget-object v1, p2, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-static {v0, v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplCred(Lcom/wssyncmldm/eng/parser/XDMParserCred;Lcom/wssyncmldm/eng/parser/XDMParserCred;)V

    .line 598
    :cond_51
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v0, :cond_63

    .line 600
    new-instance v0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;-><init>()V

    iput-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 601
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v1, p2, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-static {v0, v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplMeta(Lcom/wssyncmldm/eng/parser/XDMParserMeta;Lcom/wssyncmldm/eng/parser/XDMParserMeta;)V

    .line 603
    :cond_63
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6f

    .line 605
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    iput-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    .line 607
    :cond_6f
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    if-eqz v0, :cond_2

    .line 609
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplItemlist(Lcom/wssyncmldm/eng/core/XDMList;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v0

    iput-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    goto :goto_2
.end method

.method public xdmAgentDataStDuplSyncHeader(Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;)V
    .registers 5
    .parameter "dest"
    .parameter "src"

    .prologue
    .line 514
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szVerdtd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 516
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szVerdtd:Ljava/lang/String;

    iput-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szVerdtd:Ljava/lang/String;

    .line 518
    :cond_c
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szVerproto:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 520
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szVerproto:Ljava/lang/String;

    iput-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szVerproto:Ljava/lang/String;

    .line 522
    :cond_18
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szSessionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 524
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szSessionId:Ljava/lang/String;

    iput-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szSessionId:Ljava/lang/String;

    .line 526
    :cond_24
    iget v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->msgid:I

    if-lez v0, :cond_2c

    .line 528
    iget v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->msgid:I

    iput v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->msgid:I

    .line 530
    :cond_2c
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szTarget:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 532
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szTarget:Ljava/lang/String;

    iput-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szTarget:Ljava/lang/String;

    .line 534
    :cond_38
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szSource:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 536
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szSource:Ljava/lang/String;

    iput-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szSource:Ljava/lang/String;

    .line 538
    :cond_44
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szLocname:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 540
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szLocname:Ljava/lang/String;

    iput-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szLocname:Ljava/lang/String;

    .line 542
    :cond_50
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szRespUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 544
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szRespUri:Ljava/lang/String;

    iput-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szRespUri:Ljava/lang/String;

    .line 546
    :cond_5c
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    if-eqz v0, :cond_6e

    .line 548
    new-instance v0, Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/parser/XDMParserCred;-><init>()V

    iput-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    .line 549
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    iget-object v1, p2, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-static {v0, v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplCred(Lcom/wssyncmldm/eng/parser/XDMParserCred;Lcom/wssyncmldm/eng/parser/XDMParserCred;)V

    .line 551
    :cond_6e
    iget-object v0, p2, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v0, :cond_80

    .line 553
    new-instance v0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;-><init>()V

    iput-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 554
    iget-object v0, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v1, p2, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-static {v0, v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplMeta(Lcom/wssyncmldm/eng/parser/XDMParserMeta;Lcom/wssyncmldm/eng/parser/XDMParserMeta;)V

    .line 556
    :cond_80
    return-void
.end method

.method public xdmAgentHdlCmdAdd(Ljava/lang/Object;Lcom/wssyncmldm/eng/parser/XDMParserAdd;)V
    .registers 6
    .parameter "userdata"
    .parameter "addCmd"

    .prologue
    .line 167
    move-object v1, p1

    check-cast v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 170
    .local v1, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    new-instance v0, Lcom/wssyncmldm/agent/XDMAgent;

    invoke-direct {v0}, Lcom/wssyncmldm/agent/XDMAgent;-><init>()V

    .line 171
    .local v0, agent:Lcom/wssyncmldm/agent/XDMAgent;
    new-instance v2, Lcom/wssyncmldm/eng/parser/XDMParserAdd;

    invoke-direct {v2}, Lcom/wssyncmldm/eng/parser/XDMParserAdd;-><init>()V

    iput-object v2, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_AddCmd:Lcom/wssyncmldm/eng/parser/XDMParserAdd;

    .line 172
    iget-object v2, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_AddCmd:Lcom/wssyncmldm/eng/parser/XDMParserAdd;

    invoke-virtual {p0, v2, p2}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplAdd(Lcom/wssyncmldm/eng/parser/XDMParserAdd;Lcom/wssyncmldm/eng/parser/XDMParserAdd;)V

    .line 174
    const-string v2, "Add"

    iput-object v2, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    .line 175
    iget-boolean v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->inAtomicCmd:Z

    if-nez v2, :cond_20

    iget-boolean v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->inSequenceCmd:Z

    if-eqz v2, :cond_26

    .line 177
    :cond_20
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->list:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-virtual {p0, v0, v2}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentHdlCmdAddSelectedAgent(Lcom/wssyncmldm/agent/XDMAgent;Lcom/wssyncmldm/eng/core/XDMLinkedList;)V

    .line 183
    :goto_25
    return-void

    .line 181
    :cond_26
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->list:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-virtual {p0, v2, v0}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    goto :goto_25
.end method

.method public xdmAgentHdlCmdAddSelectedAgent(Lcom/wssyncmldm/agent/XDMAgent;Lcom/wssyncmldm/eng/core/XDMLinkedList;)V
    .registers 6
    .parameter "agent"
    .parameter "curlocate"

    .prologue
    .line 354
    const/4 v0, 0x0

    .line 356
    .local v0, cmdagent:Lcom/wssyncmldm/agent/XDMAgent;
    iget v1, p2, Lcom/wssyncmldm/eng/core/XDMLinkedList;->count:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p2, v1}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListGetObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cmdagent:Lcom/wssyncmldm/agent/XDMAgent;
    check-cast v0, Lcom/wssyncmldm/agent/XDMAgent;

    .line 357
    .restart local v0       #cmdagent:Lcom/wssyncmldm/agent/XDMAgent;
    if-eqz v0, :cond_8f

    .line 359
    iget-boolean v1, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_bInProgresscmd:Z

    if-eqz v1, :cond_59

    .line 361
    iget-object v1, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_Atomic:Lcom/wssyncmldm/eng/parser/XDMParserAtomic;

    if-eqz v1, :cond_33

    .line 363
    iget-object v1, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_Atomic:Lcom/wssyncmldm/eng/parser/XDMParserAtomic;

    iget-object v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->itemlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    if-eqz v1, :cond_23

    .line 365
    iget-object v1, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_Atomic:Lcom/wssyncmldm/eng/parser/XDMParserAtomic;

    iget-object v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->itemlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-virtual {p0, p1, v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentHdlCmdAddSelectedAgent(Lcom/wssyncmldm/agent/XDMAgent;Lcom/wssyncmldm/eng/core/XDMLinkedList;)V

    .line 422
    :goto_22
    return-void

    .line 369
    :cond_23
    iget-object v1, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_Atomic:Lcom/wssyncmldm/eng/parser/XDMParserAtomic;

    invoke-static {}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListCreateLinkedList()Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-result-object v2

    iput-object v2, v1, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->itemlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    .line 370
    iget-object v1, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_Atomic:Lcom/wssyncmldm/eng/parser/XDMParserAtomic;

    iget-object v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->itemlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-virtual {p0, p1, v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentHdlCmdAddSelectedAgent(Lcom/wssyncmldm/agent/XDMAgent;Lcom/wssyncmldm/eng/core/XDMLinkedList;)V

    goto :goto_22

    .line 373
    :cond_33
    iget-object v1, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_Sequence:Lcom/wssyncmldm/eng/parser/XDMParserSequence;

    if-eqz v1, :cond_55

    .line 375
    iget-object v1, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_Sequence:Lcom/wssyncmldm/eng/parser/XDMParserSequence;

    iget-object v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->itemlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    if-eqz v1, :cond_45

    .line 377
    iget-object v1, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_Sequence:Lcom/wssyncmldm/eng/parser/XDMParserSequence;

    iget-object v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->itemlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-virtual {p0, p1, v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentHdlCmdAddSelectedAgent(Lcom/wssyncmldm/agent/XDMAgent;Lcom/wssyncmldm/eng/core/XDMLinkedList;)V

    goto :goto_22

    .line 381
    :cond_45
    iget-object v1, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_Sequence:Lcom/wssyncmldm/eng/parser/XDMParserSequence;

    invoke-static {}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListCreateLinkedList()Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-result-object v2

    iput-object v2, v1, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->itemlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    .line 382
    iget-object v1, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_Sequence:Lcom/wssyncmldm/eng/parser/XDMParserSequence;

    iget-object v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->itemlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-virtual {p0, p1, v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentHdlCmdAddSelectedAgent(Lcom/wssyncmldm/agent/XDMAgent;Lcom/wssyncmldm/eng/core/XDMLinkedList;)V

    goto :goto_22

    .line 387
    :cond_55
    invoke-virtual {p0, p2, p1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    goto :goto_22

    .line 393
    :cond_59
    const-string v1, "Atomic_Start"

    iget-object v2, p1, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_6d

    const-string v1, "Sequence_Start"

    iget-object v2, p1, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_70

    .line 395
    :cond_6d
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_bInProgresscmd:Z

    .line 397
    :cond_70
    iget-object v1, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_Atomic:Lcom/wssyncmldm/eng/parser/XDMParserAtomic;

    if-eqz v1, :cond_7e

    .line 399
    iget-object v1, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_Atomic:Lcom/wssyncmldm/eng/parser/XDMParserAtomic;

    iget-object p2, v1, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->itemlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    .line 406
    :cond_78
    :goto_78
    if-eqz p2, :cond_87

    .line 408
    invoke-virtual {p0, p2, p1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    goto :goto_22

    .line 401
    :cond_7e
    iget-object v1, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_Sequence:Lcom/wssyncmldm/eng/parser/XDMParserSequence;

    if-eqz v1, :cond_78

    .line 403
    iget-object v1, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_Sequence:Lcom/wssyncmldm/eng/parser/XDMParserSequence;

    iget-object p2, v1, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->itemlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    goto :goto_78

    .line 412
    :cond_87
    invoke-static {}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListCreateLinkedList()Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-result-object p2

    .line 413
    invoke-virtual {p0, p2, p1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    goto :goto_22

    .line 419
    :cond_8f
    invoke-static {}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListCreateLinkedList()Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-result-object p2

    .line 420
    invoke-virtual {p0, p2, p1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    goto :goto_22
.end method

.method public xdmAgentHdlCmdAlert(Ljava/lang/Object;Lcom/wssyncmldm/eng/parser/XDMParserAlert;)V
    .registers 6
    .parameter "userdata"
    .parameter "alert"

    .prologue
    .line 142
    move-object v1, p1

    check-cast v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 145
    .local v1, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    new-instance v0, Lcom/wssyncmldm/agent/XDMAgent;

    invoke-direct {v0}, Lcom/wssyncmldm/agent/XDMAgent;-><init>()V

    .line 146
    .local v0, agent:Lcom/wssyncmldm/agent/XDMAgent;
    new-instance v2, Lcom/wssyncmldm/eng/parser/XDMParserAlert;

    invoke-direct {v2}, Lcom/wssyncmldm/eng/parser/XDMParserAlert;-><init>()V

    iput-object v2, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_Alert:Lcom/wssyncmldm/eng/parser/XDMParserAlert;

    .line 147
    iget-object v2, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_Alert:Lcom/wssyncmldm/eng/parser/XDMParserAlert;

    invoke-static {v2, p2}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplAlert(Lcom/wssyncmldm/eng/parser/XDMParserAlert;Lcom/wssyncmldm/eng/parser/XDMParserAlert;)V

    .line 149
    const-string v2, "Alert"

    iput-object v2, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    .line 150
    iget-boolean v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->inAtomicCmd:Z

    if-nez v2, :cond_20

    iget-boolean v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->inSequenceCmd:Z

    if-eqz v2, :cond_26

    .line 152
    :cond_20
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->list:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-virtual {p0, v0, v2}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentHdlCmdAddSelectedAgent(Lcom/wssyncmldm/agent/XDMAgent;Lcom/wssyncmldm/eng/core/XDMLinkedList;)V

    .line 158
    :goto_25
    return-void

    .line 156
    :cond_26
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->list:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-virtual {p0, v2, v0}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    goto :goto_25
.end method

.method public xdmAgentHdlCmdAtomicEnd(Ljava/lang/Object;)V
    .registers 6
    .parameter "userdata"

    .prologue
    const/4 v3, 0x0

    .line 295
    move-object v1, p1

    check-cast v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 296
    .local v1, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    const/4 v0, 0x0

    .line 297
    .local v0, locateagent:Lcom/wssyncmldm/agent/XDMAgent;
    iget-boolean v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->inAtomicCmd:Z

    if-nez v2, :cond_d

    iget-boolean v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->inSequenceCmd:Z

    if-eqz v2, :cond_18

    .line 299
    :cond_d
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->list:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-virtual {p0, v0, v2}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentHdlCmdLocateSelectedAgent(Lcom/wssyncmldm/agent/XDMAgent;Lcom/wssyncmldm/eng/core/XDMLinkedList;)V

    .line 300
    if-eqz v0, :cond_19

    .line 302
    throw v0

    if-eqz v2, :cond_18

    .line 304
    throw v0

    .line 312
    :cond_18
    :goto_18
    return-void

    .line 309
    :cond_19
    iput-boolean v3, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->inAtomicCmd:Z

    goto :goto_18
.end method

.method public xdmAgentHdlCmdAtomicStart(Ljava/lang/Object;Lcom/wssyncmldm/eng/parser/XDMParserAtomic;)V
    .registers 6
    .parameter "userdata"
    .parameter "atomic"

    .prologue
    .line 268
    move-object v1, p1

    check-cast v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 271
    .local v1, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    new-instance v0, Lcom/wssyncmldm/agent/XDMAgent;

    invoke-direct {v0}, Lcom/wssyncmldm/agent/XDMAgent;-><init>()V

    .line 272
    .local v0, agent:Lcom/wssyncmldm/agent/XDMAgent;
    new-instance v2, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;

    invoke-direct {v2}, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;-><init>()V

    iput-object v2, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_Atomic:Lcom/wssyncmldm/eng/parser/XDMParserAtomic;

    .line 273
    iget-object v2, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_Atomic:Lcom/wssyncmldm/eng/parser/XDMParserAtomic;

    invoke-virtual {p0, v2, p2}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplAtomic(Lcom/wssyncmldm/eng/parser/XDMParserAtomic;Lcom/wssyncmldm/eng/parser/XDMParserAtomic;)V

    .line 274
    new-instance v2, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;

    invoke-direct {v2}, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;-><init>()V

    iput-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->atomic:Lcom/wssyncmldm/eng/parser/XDMParserAtomic;

    .line 275
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->atomic:Lcom/wssyncmldm/eng/parser/XDMParserAtomic;

    invoke-virtual {p0, v2, p2}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplAtomic(Lcom/wssyncmldm/eng/parser/XDMParserAtomic;Lcom/wssyncmldm/eng/parser/XDMParserAtomic;)V

    .line 277
    const-string v2, "Atomic_Start"

    iput-object v2, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    .line 278
    iget-boolean v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->inAtomicCmd:Z

    if-nez v2, :cond_2c

    iget-boolean v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->inSequenceCmd:Z

    if-eqz v2, :cond_32

    .line 280
    :cond_2c
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->list:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-virtual {p0, v0, v2}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentHdlCmdAddSelectedAgent(Lcom/wssyncmldm/agent/XDMAgent;Lcom/wssyncmldm/eng/core/XDMLinkedList;)V

    .line 287
    :goto_31
    return-void

    .line 284
    :cond_32
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->inAtomicCmd:Z

    .line 285
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->list:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-virtual {p0, v2, v0}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    goto :goto_31
.end method

.method public xdmAgentHdlCmdCopy(Ljava/lang/Object;Lcom/wssyncmldm/eng/parser/XDMParserCopy;)V
    .registers 6
    .parameter "userdata"
    .parameter "copyCmd"

    .prologue
    .line 217
    move-object v1, p1

    check-cast v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 220
    .local v1, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    new-instance v0, Lcom/wssyncmldm/agent/XDMAgent;

    invoke-direct {v0}, Lcom/wssyncmldm/agent/XDMAgent;-><init>()V

    .line 221
    .local v0, agent:Lcom/wssyncmldm/agent/XDMAgent;
    new-instance v2, Lcom/wssyncmldm/eng/parser/XDMParserCopy;

    invoke-direct {v2}, Lcom/wssyncmldm/eng/parser/XDMParserCopy;-><init>()V

    iput-object v2, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_CopyCmd:Lcom/wssyncmldm/eng/parser/XDMParserCopy;

    .line 223
    iget-object v2, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_CopyCmd:Lcom/wssyncmldm/eng/parser/XDMParserCopy;

    invoke-virtual {p0, v2, p2}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplCopy(Lcom/wssyncmldm/eng/parser/XDMParserCopy;Lcom/wssyncmldm/eng/parser/XDMParserCopy;)V

    .line 225
    const-string v2, "Copy"

    iput-object v2, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    .line 226
    iget-boolean v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->inAtomicCmd:Z

    if-nez v2, :cond_20

    iget-boolean v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->inSequenceCmd:Z

    if-eqz v2, :cond_26

    .line 228
    :cond_20
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->list:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-virtual {p0, v0, v2}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentHdlCmdAddSelectedAgent(Lcom/wssyncmldm/agent/XDMAgent;Lcom/wssyncmldm/eng/core/XDMLinkedList;)V

    .line 234
    :goto_25
    return-void

    .line 232
    :cond_26
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->list:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-virtual {p0, v2, v0}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    goto :goto_25
.end method

.method public xdmAgentHdlCmdDelete(Ljava/lang/Object;Lcom/wssyncmldm/eng/parser/XDMParserDelete;)V
    .registers 6
    .parameter "userdata"
    .parameter "deleteCmd"

    .prologue
    .line 243
    move-object v1, p1

    check-cast v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 246
    .local v1, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    new-instance v0, Lcom/wssyncmldm/agent/XDMAgent;

    invoke-direct {v0}, Lcom/wssyncmldm/agent/XDMAgent;-><init>()V

    .line 247
    .local v0, agent:Lcom/wssyncmldm/agent/XDMAgent;
    new-instance v2, Lcom/wssyncmldm/eng/parser/XDMParserDelete;

    invoke-direct {v2}, Lcom/wssyncmldm/eng/parser/XDMParserDelete;-><init>()V

    iput-object v2, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_DeleteCmd:Lcom/wssyncmldm/eng/parser/XDMParserDelete;

    .line 248
    iget-object v2, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_DeleteCmd:Lcom/wssyncmldm/eng/parser/XDMParserDelete;

    invoke-virtual {p0, v2, p2}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplDelete(Lcom/wssyncmldm/eng/parser/XDMParserDelete;Lcom/wssyncmldm/eng/parser/XDMParserDelete;)V

    .line 250
    const-string v2, "Delete"

    iput-object v2, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    .line 251
    iget-boolean v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->inAtomicCmd:Z

    if-nez v2, :cond_20

    iget-boolean v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->inSequenceCmd:Z

    if-eqz v2, :cond_26

    .line 253
    :cond_20
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->list:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-virtual {p0, v0, v2}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentHdlCmdAddSelectedAgent(Lcom/wssyncmldm/agent/XDMAgent;Lcom/wssyncmldm/eng/core/XDMLinkedList;)V

    .line 259
    :goto_25
    return-void

    .line 257
    :cond_26
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->list:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-virtual {p0, v2, v0}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    goto :goto_25
.end method

.method public xdmAgentHdlCmdExec(Ljava/lang/Object;Lcom/wssyncmldm/eng/parser/XDMParserExec;)V
    .registers 6
    .parameter "userdata"
    .parameter "exec"

    .prologue
    .line 116
    move-object v1, p1

    check-cast v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 119
    .local v1, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    new-instance v0, Lcom/wssyncmldm/agent/XDMAgent;

    invoke-direct {v0}, Lcom/wssyncmldm/agent/XDMAgent;-><init>()V

    .line 120
    .local v0, agent:Lcom/wssyncmldm/agent/XDMAgent;
    new-instance v2, Lcom/wssyncmldm/eng/parser/XDMParserExec;

    invoke-direct {v2}, Lcom/wssyncmldm/eng/parser/XDMParserExec;-><init>()V

    iput-object v2, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_Exec:Lcom/wssyncmldm/eng/parser/XDMParserExec;

    .line 122
    iget-object v2, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_Exec:Lcom/wssyncmldm/eng/parser/XDMParserExec;

    invoke-virtual {p0, v2, p2}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplExec(Lcom/wssyncmldm/eng/parser/XDMParserExec;Lcom/wssyncmldm/eng/parser/XDMParserExec;)V

    .line 124
    const-string v2, "Exec"

    iput-object v2, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    .line 125
    iget-boolean v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->inAtomicCmd:Z

    if-nez v2, :cond_20

    iget-boolean v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->inSequenceCmd:Z

    if-eqz v2, :cond_26

    .line 127
    :cond_20
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->list:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-virtual {p0, v0, v2}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentHdlCmdAddSelectedAgent(Lcom/wssyncmldm/agent/XDMAgent;Lcom/wssyncmldm/eng/core/XDMLinkedList;)V

    .line 133
    :goto_25
    return-void

    .line 131
    :cond_26
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->list:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-virtual {p0, v2, v0}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    goto :goto_25
.end method

.method public xdmAgentHdlCmdGet(Ljava/lang/Object;Lcom/wssyncmldm/eng/parser/XDMParserGet;)V
    .registers 6
    .parameter "userdata"
    .parameter "get"

    .prologue
    .line 91
    move-object v1, p1

    check-cast v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 94
    .local v1, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    new-instance v0, Lcom/wssyncmldm/agent/XDMAgent;

    invoke-direct {v0}, Lcom/wssyncmldm/agent/XDMAgent;-><init>()V

    .line 95
    .local v0, agent:Lcom/wssyncmldm/agent/XDMAgent;
    new-instance v2, Lcom/wssyncmldm/eng/parser/XDMParserGet;

    invoke-direct {v2}, Lcom/wssyncmldm/eng/parser/XDMParserGet;-><init>()V

    iput-object v2, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_Get:Lcom/wssyncmldm/eng/parser/XDMParserGet;

    .line 96
    iget-object v2, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_Get:Lcom/wssyncmldm/eng/parser/XDMParserGet;

    invoke-virtual {p0, v2, p2}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplGet(Lcom/wssyncmldm/eng/parser/XDMParserGet;Lcom/wssyncmldm/eng/parser/XDMParserGet;)V

    .line 98
    const-string v2, "Get"

    iput-object v2, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    .line 99
    iget-boolean v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->inAtomicCmd:Z

    if-nez v2, :cond_20

    iget-boolean v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->inSequenceCmd:Z

    if-eqz v2, :cond_26

    .line 101
    :cond_20
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->list:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-virtual {p0, v0, v2}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentHdlCmdAddSelectedAgent(Lcom/wssyncmldm/agent/XDMAgent;Lcom/wssyncmldm/eng/core/XDMLinkedList;)V

    .line 107
    :goto_25
    return-void

    .line 105
    :cond_26
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->list:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-virtual {p0, v2, v0}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    goto :goto_25
.end method

.method public xdmAgentHdlCmdLocateSelectedAgent(Lcom/wssyncmldm/agent/XDMAgent;Lcom/wssyncmldm/eng/core/XDMLinkedList;)V
    .registers 5
    .parameter "agent"
    .parameter "curlocate"

    .prologue
    .line 431
    const/4 v0, 0x0

    .line 433
    .local v0, cmdagent:Lcom/wssyncmldm/agent/XDMAgent;
    iget v1, p2, Lcom/wssyncmldm/eng/core/XDMLinkedList;->count:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p2, v1}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListGetObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cmdagent:Lcom/wssyncmldm/agent/XDMAgent;
    check-cast v0, Lcom/wssyncmldm/agent/XDMAgent;

    .line 434
    .restart local v0       #cmdagent:Lcom/wssyncmldm/agent/XDMAgent;
    if-eqz v0, :cond_1d

    .line 436
    iget-boolean v1, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_bInProgresscmd:Z

    if-eqz v1, :cond_2a

    .line 438
    move-object p1, v0

    .line 439
    iget-object v1, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_Atomic:Lcom/wssyncmldm/eng/parser/XDMParserAtomic;

    if-eqz v1, :cond_1e

    .line 441
    iget-object v1, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_Atomic:Lcom/wssyncmldm/eng/parser/XDMParserAtomic;

    iget-object v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->itemlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-virtual {p0, p1, v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentHdlCmdLocateSelectedAgent(Lcom/wssyncmldm/agent/XDMAgent;Lcom/wssyncmldm/eng/core/XDMLinkedList;)V

    .line 456
    :cond_1d
    :goto_1d
    return-void

    .line 443
    :cond_1e
    iget-object v1, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_Sequence:Lcom/wssyncmldm/eng/parser/XDMParserSequence;

    if-eqz v1, :cond_1d

    .line 445
    iget-object v1, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_Sequence:Lcom/wssyncmldm/eng/parser/XDMParserSequence;

    iget-object v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->itemlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-virtual {p0, p1, v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentHdlCmdLocateSelectedAgent(Lcom/wssyncmldm/agent/XDMAgent;Lcom/wssyncmldm/eng/core/XDMLinkedList;)V

    goto :goto_1d

    .line 450
    :cond_2a
    if-eqz p1, :cond_1d

    .line 452
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/wssyncmldm/agent/XDMAgent;->m_bInProgresscmd:Z

    goto :goto_1d
.end method

.method public xdmAgentHdlCmdReplace(Ljava/lang/Object;Lcom/wssyncmldm/eng/parser/XDMParserReplace;)V
    .registers 6
    .parameter "userdata"
    .parameter "replaceCmd"

    .prologue
    .line 192
    move-object v1, p1

    check-cast v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 195
    .local v1, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    new-instance v0, Lcom/wssyncmldm/agent/XDMAgent;

    invoke-direct {v0}, Lcom/wssyncmldm/agent/XDMAgent;-><init>()V

    .line 196
    .local v0, agent:Lcom/wssyncmldm/agent/XDMAgent;
    new-instance v2, Lcom/wssyncmldm/eng/parser/XDMParserReplace;

    invoke-direct {v2}, Lcom/wssyncmldm/eng/parser/XDMParserReplace;-><init>()V

    iput-object v2, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_ReplaceCmd:Lcom/wssyncmldm/eng/parser/XDMParserReplace;

    .line 197
    iget-object v2, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_ReplaceCmd:Lcom/wssyncmldm/eng/parser/XDMParserReplace;

    invoke-virtual {p0, v2, p2}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplReplace(Lcom/wssyncmldm/eng/parser/XDMParserReplace;Lcom/wssyncmldm/eng/parser/XDMParserReplace;)V

    .line 199
    const-string v2, "Replace"

    iput-object v2, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    .line 200
    iget-boolean v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->inAtomicCmd:Z

    if-nez v2, :cond_20

    iget-boolean v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->inSequenceCmd:Z

    if-eqz v2, :cond_26

    .line 202
    :cond_20
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->list:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-virtual {p0, v0, v2}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentHdlCmdAddSelectedAgent(Lcom/wssyncmldm/agent/XDMAgent;Lcom/wssyncmldm/eng/core/XDMLinkedList;)V

    .line 208
    :goto_25
    return-void

    .line 206
    :cond_26
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->list:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-virtual {p0, v2, v0}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    goto :goto_25
.end method

.method public xdmAgentHdlCmdSequenceEnd(Ljava/lang/Object;)V
    .registers 6
    .parameter "userdata"

    .prologue
    const/4 v3, 0x0

    .line 464
    move-object v1, p1

    check-cast v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 465
    .local v1, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    const/4 v0, 0x0

    .line 467
    .local v0, locateagent:Lcom/wssyncmldm/agent/XDMAgent;
    iget-boolean v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->inSequenceCmd:Z

    if-nez v2, :cond_d

    iget-boolean v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->inAtomicCmd:Z

    if-eqz v2, :cond_18

    .line 469
    :cond_d
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->list:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-virtual {p0, v0, v2}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentHdlCmdLocateSelectedAgent(Lcom/wssyncmldm/agent/XDMAgent;Lcom/wssyncmldm/eng/core/XDMLinkedList;)V

    .line 470
    if-eqz v0, :cond_19

    .line 472
    throw v0

    if-eqz v2, :cond_18

    .line 474
    throw v0

    .line 482
    :cond_18
    :goto_18
    return-void

    .line 479
    :cond_19
    iput-boolean v3, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->inSequenceCmd:Z

    goto :goto_18
.end method

.method public xdmAgentHdlCmdSequenceStart(Ljava/lang/Object;Lcom/wssyncmldm/eng/parser/XDMParserSequence;)V
    .registers 6
    .parameter "userdata"
    .parameter "sequence"

    .prologue
    .line 321
    move-object v1, p1

    check-cast v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 324
    .local v1, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    new-instance v0, Lcom/wssyncmldm/agent/XDMAgent;

    invoke-direct {v0}, Lcom/wssyncmldm/agent/XDMAgent;-><init>()V

    .line 325
    .local v0, agent:Lcom/wssyncmldm/agent/XDMAgent;
    new-instance v2, Lcom/wssyncmldm/eng/parser/XDMParserSequence;

    invoke-direct {v2}, Lcom/wssyncmldm/eng/parser/XDMParserSequence;-><init>()V

    iput-object v2, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_Sequence:Lcom/wssyncmldm/eng/parser/XDMParserSequence;

    .line 326
    iget-object v2, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_Sequence:Lcom/wssyncmldm/eng/parser/XDMParserSequence;

    invoke-virtual {p0, v2, p2}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplSequence(Lcom/wssyncmldm/eng/parser/XDMParserSequence;Lcom/wssyncmldm/eng/parser/XDMParserSequence;)V

    .line 327
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->sequence:Lcom/wssyncmldm/eng/parser/XDMParserSequence;

    if-eqz v2, :cond_1d

    .line 329
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->sequence:Lcom/wssyncmldm/eng/parser/XDMParserSequence;

    invoke-virtual {p0, v2}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDeleteSequence(Ljava/lang/Object;)V

    .line 331
    :cond_1d
    new-instance v2, Lcom/wssyncmldm/eng/parser/XDMParserSequence;

    invoke-direct {v2}, Lcom/wssyncmldm/eng/parser/XDMParserSequence;-><init>()V

    iput-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->sequence:Lcom/wssyncmldm/eng/parser/XDMParserSequence;

    .line 332
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->sequence:Lcom/wssyncmldm/eng/parser/XDMParserSequence;

    invoke-virtual {p0, v2, p2}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplSequence(Lcom/wssyncmldm/eng/parser/XDMParserSequence;Lcom/wssyncmldm/eng/parser/XDMParserSequence;)V

    .line 334
    const-string v2, "Sequence_Start"

    iput-object v2, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    .line 336
    iget-boolean v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->inAtomicCmd:Z

    if-nez v2, :cond_35

    iget-boolean v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->inSequenceCmd:Z

    if-eqz v2, :cond_3b

    .line 338
    :cond_35
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->list:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-virtual {p0, v0, v2}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentHdlCmdAddSelectedAgent(Lcom/wssyncmldm/agent/XDMAgent;Lcom/wssyncmldm/eng/core/XDMLinkedList;)V

    .line 345
    :goto_3a
    return-void

    .line 342
    :cond_3b
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->inSequenceCmd:Z

    .line 343
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->list:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-virtual {p0, v2, v0}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    goto :goto_3a
.end method

.method public xdmAgentHdlCmdStatus(Ljava/lang/Object;Lcom/wssyncmldm/eng/parser/XDMParserStatus;)V
    .registers 6
    .parameter "userdata"
    .parameter "status"

    .prologue
    .line 64
    move-object v1, p1

    check-cast v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 67
    .local v1, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    new-instance v0, Lcom/wssyncmldm/agent/XDMAgent;

    invoke-direct {v0}, Lcom/wssyncmldm/agent/XDMAgent;-><init>()V

    .line 68
    .local v0, agent:Lcom/wssyncmldm/agent/XDMAgent;
    new-instance v2, Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    invoke-direct {v2}, Lcom/wssyncmldm/eng/parser/XDMParserStatus;-><init>()V

    iput-object v2, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_Status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    .line 69
    iget-object v2, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_Status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    invoke-virtual {p0, v2, p2}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplStatus(Lcom/wssyncmldm/eng/parser/XDMParserStatus;Lcom/wssyncmldm/eng/parser/XDMParserStatus;)V

    .line 71
    const-string v2, "Status"

    iput-object v2, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    .line 73
    iget-boolean v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->inAtomicCmd:Z

    if-nez v2, :cond_20

    iget-boolean v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->inSequenceCmd:Z

    if-eqz v2, :cond_26

    .line 75
    :cond_20
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->list:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-virtual {p0, v0, v2}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentHdlCmdAddSelectedAgent(Lcom/wssyncmldm/agent/XDMAgent;Lcom/wssyncmldm/eng/core/XDMLinkedList;)V

    .line 82
    :goto_25
    return-void

    .line 79
    :cond_26
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->list:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-virtual {p0, v2, v0}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    goto :goto_25
.end method

.method public xdmAgentHdlCmdSyncHdr(Ljava/lang/Object;Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;)V
    .registers 6
    .parameter "userdata"
    .parameter "header"

    .prologue
    .line 39
    move-object v1, p1

    check-cast v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 42
    .local v1, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    new-instance v0, Lcom/wssyncmldm/agent/XDMAgent;

    invoke-direct {v0}, Lcom/wssyncmldm/agent/XDMAgent;-><init>()V

    .line 43
    .local v0, agent:Lcom/wssyncmldm/agent/XDMAgent;
    new-instance v2, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;

    invoke-direct {v2}, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;-><init>()V

    iput-object v2, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_Header:Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;

    .line 44
    iget-object v2, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_Header:Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;

    invoke-virtual {p0, v2, p2}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplSyncHeader(Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;)V

    .line 46
    const-string v2, "SyncHdr"

    iput-object v2, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    .line 47
    iget-boolean v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->inAtomicCmd:Z

    if-nez v2, :cond_20

    iget-boolean v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->inSequenceCmd:Z

    if-eqz v2, :cond_26

    .line 49
    :cond_20
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->list:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-virtual {p0, v0, v2}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentHdlCmdAddSelectedAgent(Lcom/wssyncmldm/agent/XDMAgent;Lcom/wssyncmldm/eng/core/XDMLinkedList;)V

    .line 55
    :goto_25
    return-void

    .line 53
    :cond_26
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->list:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-virtual {p0, v2, v0}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    goto :goto_25
.end method

.method public xdmAgentListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V
    .registers 6
    .parameter "list"
    .parameter "obj"

    .prologue
    .line 491
    iget-object v1, p1, Lcom/wssyncmldm/eng/core/XDMLinkedList;->top:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 492
    .local v1, top:Lcom/wssyncmldm/eng/core/XDMNode;
    new-instance v0, Lcom/wssyncmldm/eng/core/XDMNode;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/core/XDMNode;-><init>()V

    .line 494
    .local v0, node:Lcom/wssyncmldm/eng/core/XDMNode;
    invoke-static {v0, p2}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListBindObjectToNode(Lcom/wssyncmldm/eng/core/XDMNode;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    if-eqz v0, :cond_1e

    .line 498
    iput-object v1, v0, Lcom/wssyncmldm/eng/core/XDMNode;->next:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 499
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMNode;->previous:Lcom/wssyncmldm/eng/core/XDMNode;

    iput-object v2, v0, Lcom/wssyncmldm/eng/core/XDMNode;->previous:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 500
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMNode;->previous:Lcom/wssyncmldm/eng/core/XDMNode;

    iput-object v0, v2, Lcom/wssyncmldm/eng/core/XDMNode;->next:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 501
    iput-object v0, v1, Lcom/wssyncmldm/eng/core/XDMNode;->previous:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 503
    iget v2, p1, Lcom/wssyncmldm/eng/core/XDMLinkedList;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/wssyncmldm/eng/core/XDMLinkedList;->count:I

    .line 505
    :cond_1e
    return-void
.end method
