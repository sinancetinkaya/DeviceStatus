.class public Lcom/sec/factory/support/Support$CommandFilter;
.super Ljava/lang/Object;
.source "Support.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/support/Support;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommandFilter"
.end annotation


# static fields
.field static filteredCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 940
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/factory/support/Support$CommandFilter;->filteredCommands:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFilteredCommands()[Ljava/lang/String;
    .registers 17

    .prologue
    .line 943
    const/4 v10, 0x0

    .line 944
    .local v10, para:Ljava/lang/String;
    const/4 v3, 0x0

    .line 945
    .local v3, count:Ljava/lang/String;
    const/4 v11, 0x0

    .line 946
    .local v11, parent_Enable:Z
    const/4 v12, 0x0

    .line 948
    .local v12, parent_name:Ljava/lang/String;
    sget-object v13, Lcom/sec/factory/support/Support$CommandFilter;->filteredCommands:Ljava/util/ArrayList;

    if-eqz v13, :cond_1f

    .line 949
    sget-object v13, Lcom/sec/factory/support/Support$CommandFilter;->filteredCommands:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_1d

    .line 950
    sget-object v13, Lcom/sec/factory/support/Support$CommandFilter;->filteredCommands:Ljava/util/ArrayList;

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    .line 993
    :goto_1c
    return-object v13

    .line 952
    :cond_1d
    const/4 v13, 0x0

    goto :goto_1c

    .line 956
    :cond_1f
    :try_start_1f
    invoke-static {}, Lcom/sec/factory/support/XMLDataStorage;->instance()Lcom/sec/factory/support/XMLDataStorage;

    move-result-object v13

    const-string v14, "CommandFilter"

    invoke-virtual {v13, v14}, Lcom/sec/factory/support/XMLDataStorage;->getChildElementSet(Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v8

    .line 957
    .local v8, items:[Lorg/w3c/dom/Element;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    sput-object v13, Lcom/sec/factory/support/Support$CommandFilter;->filteredCommands:Ljava/util/ArrayList;

    .line 958
    move-object v0, v8

    .local v0, arr$:[Lorg/w3c/dom/Element;
    array-length v9, v0

    .local v9, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_33
    if-ge v6, v9, :cond_ef

    aget-object v7, v0, v6

    .line 960
    .local v7, item:Lorg/w3c/dom/Element;
    const-string v13, "enable"

    invoke-interface {v7, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 961
    const-string v13, "id"

    invoke-interface {v7, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 962
    if-eqz v11, :cond_e1

    .line 963
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "item-group"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e1

    .line 964
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 965
    .local v2, childNodes:Lorg/w3c/dom/NodeList;
    if-eqz v8, :cond_e1

    .line 966
    const/4 v5, 0x0

    .local v5, i:I
    :goto_5c
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-ge v5, v13, :cond_e1

    .line 967
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 968
    .local v1, child:Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_dd

    .line 969
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v13

    const-string v14, "para"

    invoke-interface {v13, v14}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    .line 971
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v13

    const-string v14, "count"

    invoke-interface {v13, v14}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 973
    sget-object v13, Lcom/sec/factory/support/Support$CommandFilter;->filteredCommands:Ljava/util/ArrayList;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 975
    const-string v13, "Support"

    const-string v14, "CommandFilter"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "filtername-"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_dd} :catch_e5

    .line 966
    :cond_dd
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5c

    .line 958
    .end local v1           #child:Lorg/w3c/dom/Node;
    .end local v2           #childNodes:Lorg/w3c/dom/NodeList;
    .end local v5           #i:I
    :cond_e1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_33

    .line 983
    .end local v0           #arr$:[Lorg/w3c/dom/Element;
    .end local v6           #i$:I
    .end local v7           #item:Lorg/w3c/dom/Element;
    .end local v8           #items:[Lorg/w3c/dom/Element;
    .end local v9           #len$:I
    :catch_e5
    move-exception v4

    .line 984
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 985
    const/4 v13, 0x0

    sput-object v13, Lcom/sec/factory/support/Support$CommandFilter;->filteredCommands:Ljava/util/ArrayList;

    .line 986
    const/4 v13, 0x0

    goto/16 :goto_1c

    .line 989
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v0       #arr$:[Lorg/w3c/dom/Element;
    .restart local v6       #i$:I
    .restart local v8       #items:[Lorg/w3c/dom/Element;
    .restart local v9       #len$:I
    :cond_ef
    sget-object v13, Lcom/sec/factory/support/Support$CommandFilter;->filteredCommands:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_fa

    .line 990
    const/4 v13, 0x0

    goto/16 :goto_1c

    .line 993
    :cond_fa
    sget-object v13, Lcom/sec/factory/support/Support$CommandFilter;->filteredCommands:Ljava/util/ArrayList;

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    goto/16 :goto_1c
.end method
