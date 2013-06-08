.class public Lcom/wssyncmldm/eng/parser/XDMDDFParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XDMDDFParser.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XDMDefInterface;
.implements Lcom/wssyncmldm/interfaces/XDMInterface;
.implements Lcom/wssyncmldm/eng/core/XDMXml;
.implements Lcom/wssyncmldm/eng/core/XDMWbxml;


# static fields
.field public static CurXmlTree:Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;

.field public static XmlTree:Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;

.field public static bNodeChangeMode:Z

.field public static gTndsData:Lcom/wssyncmldm/eng/parser/XDMTndsData;

.field public static gTndsWbxmlHeaderInfo:[C

.field public static g_om:Lcom/wssyncmldm/eng/core/XDMOmTree;

.field public static g_szDmManagementObjectIdPath:[Ljava/lang/String;

.field public static g_szDmManagementObjectIdType:[Ljava/lang/String;

.field public static g_szDmXmlOmaTags:[Ljava/lang/String;

.field public static g_szDmXmlTagString:[Ljava/lang/String;

.field public static g_szNewAccPath:Ljava/lang/String;

.field public static g_szTndsTokenStr:[Ljava/lang/String;

.field public static gstTagManage:Lcom/wssyncmldm/eng/parser/XDMTndsTagManage;


# instance fields
.field public gTagCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/16 v3, 0x2f

    .line 102
    const/16 v0, 0x3d

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 103
    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 104
    const-string v2, ""

    aput-object v2, v0, v1

    .line 105
    const-string v1, ""

    aput-object v1, v0, v4

    .line 106
    const-string v1, ""

    aput-object v1, v0, v5

    .line 107
    const-string v1, ""

    aput-object v1, v0, v6

    .line 108
    const-string v1, "AccessType"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    .line 109
    const-string v2, "ACL"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 110
    const-string v2, "Add"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 111
    const-string v2, "b64"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 112
    const-string v2, "bin"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 113
    const-string v2, "bool"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 114
    const-string v2, "chr"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 115
    const-string v2, "CaseSense"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 116
    const-string v2, "CIS"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 117
    const-string v2, "Copy"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 118
    const-string v2, "CS"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 119
    const-string v2, "data"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 120
    const-string v2, "DDFName"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 121
    const-string v2, "DefaultValue"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 122
    const-string v2, "Delete"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 123
    const-string v2, "Description"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 124
    const-string v2, "DFFormat"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 125
    const-string v2, "DFProperties"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 126
    const-string v2, "DFTitle"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 127
    const-string v2, "DFType"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 128
    const-string v2, "Dynamic"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 129
    const-string v2, "Exec"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 130
    const-string v2, "float"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 131
    const-string v2, "Format"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 132
    const-string v2, "Get"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 133
    const-string v2, "int"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 134
    const-string v2, "Man"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 135
    const-string v2, "MgmtTree"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 136
    const-string v2, "MIME"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 137
    const-string v2, "Mod"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    .line 138
    const-string v2, "Name"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 139
    const-string v2, "Node"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    .line 140
    const-string v2, "node"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    .line 141
    const-string v2, "NodeName"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    .line 142
    const-string v2, "null"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    .line 143
    const-string v2, "Occurrence"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    .line 144
    const-string v2, "One"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    .line 145
    const-string v2, "OneOrMore"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    .line 146
    const-string v2, "OneOrN"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    .line 147
    const-string v2, "Path"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    .line 148
    const-string v2, "Permanent"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    .line 149
    const-string v2, "Replace"

    aput-object v2, v0, v1

    .line 150
    const-string v1, "RTProperties"

    aput-object v1, v0, v3

    const/16 v1, 0x30

    .line 151
    const-string v2, "Scope"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    .line 152
    const-string v2, "Size"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    .line 153
    const-string v2, "time"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    .line 154
    const-string v2, "Title"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    .line 155
    const-string v2, "TStamp"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    .line 156
    const-string v2, "Type"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    .line 157
    const-string v2, "Value"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    .line 158
    const-string v2, "VerDTD"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    .line 159
    const-string v2, "VerNo"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    .line 160
    const-string v2, "xml"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    .line 161
    const-string v2, "ZeroOrMore"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    .line 162
    const-string v2, "ZeroOrN"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    .line 163
    const-string v2, "ZeroOrOne"

    aput-object v2, v0, v1

    .line 102
    sput-object v0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_szDmXmlOmaTags:[Ljava/lang/String;

    .line 165
    const/16 v0, 0x2a

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 166
    const-string v2, "<MgmtTree>"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 167
    const-string v2, "</MgmtTree>\n"

    aput-object v2, v0, v1

    .line 168
    const-string v1, "<VerDTD>"

    aput-object v1, v0, v4

    .line 169
    const-string v1, "</VerDTD>\n"

    aput-object v1, v0, v5

    .line 170
    const-string v1, "<Node>"

    aput-object v1, v0, v6

    .line 171
    const-string v1, "</Node>\n"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    .line 172
    const-string v2, "<NodeName>"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 173
    const-string v2, "</NodeName>\n"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 174
    const-string v2, "<Path>"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 175
    const-string v2, "</Path>\n"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 176
    const-string v2, "<Value>"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 177
    const-string v2, "</Value>\n"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 178
    const-string v2, "<RTProperties>"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 179
    const-string v2, "</RTProperties>\n"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 180
    const-string v2, "<ACL>"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 181
    const-string v2, "</ACL>\n"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 182
    const-string v2, "<Format>"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 183
    const-string v2, "</Format>\n"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 184
    const-string v2, "<Type>"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 185
    const-string v2, "</Type>\n"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 186
    const-string v2, "<Add>"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 187
    const-string v2, "</Add>"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 188
    const-string v2, "<Get>"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 189
    const-string v2, "</Get>"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 190
    const-string v2, "<Replace>"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 191
    const-string v2, "</Replace>"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 192
    const-string v2, "<Delete>"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 193
    const-string v2, "</Delete>"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 194
    const-string v2, "<Exec>"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 195
    const-string v2, "</Exec>"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 196
    const-string v2, "<AccessType>"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 197
    const-string v2, "</AccessType>\n"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 198
    const-string v2, "<![CDATA["

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 199
    const-string v2, "]]>"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 200
    const-string v2, "<SyncML>"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    .line 201
    const-string v2, "</SyncML>\n"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 202
    const-string v2, "<ResultCode>"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    .line 203
    const-string v2, "</ResultCode>"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    .line 204
    const-string v2, "<Identifier>"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    .line 205
    const-string v2, "</Identifier>"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    .line 206
    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x29

    .line 207
    const-string v2, ""

    aput-object v2, v0, v1

    .line 165
    sput-object v0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_szDmXmlTagString:[Ljava/lang/String;

    .line 209
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x1

    .line 211
    const-string v2, "./SyncML/DMAcc"

    aput-object v2, v0, v1

    .line 212
    const-string v1, "./SyncML/DMAcc"

    aput-object v1, v0, v4

    .line 213
    const-string v1, "./SyncML/DMAcc"

    aput-object v1, v0, v5

    .line 214
    const-string v1, "./SyncML/DMAcc"

    aput-object v1, v0, v6

    .line 215
    const-string v1, "./SyncML/DMAcc"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    .line 216
    const-string v2, "./SyncML/DMAcc"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 217
    const-string v2, "./SyncML/DMAcc"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 218
    const-string v2, "./DevInfo"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 219
    const-string v2, "./DevDetail"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 220
    const-string v2, "./Inbox"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 221
    const-string v2, "./FUMO"

    aput-object v2, v0, v1

    .line 209
    sput-object v0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_szDmManagementObjectIdPath:[Ljava/lang/String;

    .line 224
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x1

    .line 226
    const-string v2, "org.openmobilealliance/1.0/w1"

    aput-object v2, v0, v1

    .line 227
    const-string v1, "org.openmobilealliance/1.0/w2"

    aput-object v1, v0, v4

    .line 228
    const-string v1, "org.openmobilealliance/1.0/w3"

    aput-object v1, v0, v5

    .line 229
    const-string v1, "org.openmobilealliance/1.0/w4"

    aput-object v1, v0, v6

    .line 230
    const-string v1, "org.openmobilealliance/1.0/w5"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    .line 231
    const-string v2, "org.openmobilealliance/1.0/w6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 232
    const-string v2, "org.openmobilealliance/1.0/w7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 233
    const-string v2, "org.openmobilealliance.dm/1.0/DevInfo"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 234
    const-string v2, "org.openmobilealliance.dm/1.0/DevDetail"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 235
    const-string v2, "org.openmobilealliance.dm/1.0/Inbox"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 236
    const-string v2, "org.openmobilealliance/1.0/FirmwareUpdateManagementObject"

    aput-object v2, v0, v1

    .line 224
    sput-object v0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_szDmManagementObjectIdType:[Ljava/lang/String;

    .line 239
    const/16 v0, 0x38

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 240
    const-string v2, "AccessType"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 241
    const-string v2, "ACL"

    aput-object v2, v0, v1

    .line 242
    const-string v1, "Add"

    aput-object v1, v0, v4

    .line 243
    const-string v1, "b64"

    aput-object v1, v0, v5

    .line 244
    const-string v1, "bin"

    aput-object v1, v0, v6

    .line 245
    const-string v1, "bool"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    .line 246
    const-string v2, "chr"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 247
    const-string v2, "CaseSense"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 248
    const-string v2, "CIS"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 249
    const-string v2, "Copy"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 250
    const-string v2, "CS"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 251
    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 252
    const-string v2, "DDFName"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 253
    const-string v2, "DefaultValue"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 254
    const-string v2, "Delete"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 255
    const-string v2, "Description"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 256
    const-string v2, "DFFormat"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 257
    const-string v2, "DFProperties"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 258
    const-string v2, "DFTitle"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 259
    const-string v2, "DFType"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 260
    const-string v2, "Dynamic"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 261
    const-string v2, "Exec"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 262
    const-string v2, "float"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 263
    const-string v2, "Format"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 264
    const-string v2, "Get"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 265
    const-string v2, "int"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 266
    const-string v2, "Man"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 267
    const-string v2, "MgmtTree"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 268
    const-string v2, "MIME"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 269
    const-string v2, "Mod"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 270
    const-string v2, "Name"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 271
    const-string v2, "Node"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 272
    const-string v2, "node"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 273
    const-string v2, "NodeName"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 274
    const-string v2, "null"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    .line 275
    const-string v2, "Occurrence"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 276
    const-string v2, "One"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    .line 277
    const-string v2, "OneOrMore"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    .line 278
    const-string v2, "OneOrN"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    .line 279
    const-string v2, "Path"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    .line 280
    const-string v2, "Permanent"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    .line 281
    const-string v2, "Replace"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    .line 282
    const-string v2, "RTProperties"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    .line 283
    const-string v2, "Scope"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    .line 284
    const-string v2, "Size"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    .line 285
    const-string v2, "time"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    .line 286
    const-string v2, "Title"

    aput-object v2, v0, v1

    .line 287
    const-string v1, "TStamp"

    aput-object v1, v0, v3

    const/16 v1, 0x30

    .line 288
    const-string v2, "Type"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    .line 289
    const-string v2, "Value"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    .line 290
    const-string v2, "VerDTD"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    .line 291
    const-string v2, "VerNo"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    .line 292
    const-string v2, "xml"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    .line 293
    const-string v2, "ZerOrMore"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    .line 294
    const-string v2, "ZeroOrN"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    .line 295
    const-string v2, "ZeroOrOne"

    aput-object v2, v0, v1

    .line 239
    sput-object v0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_szTndsTokenStr:[Ljava/lang/String;

    .line 297
    const/16 v0, 0x1f

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 298
    aput-char v4, v0, v1

    .line 301
    const/16 v1, 0x6a

    aput-char v1, v0, v5

    .line 302
    const/16 v1, 0x1a

    aput-char v1, v0, v6

    .line 303
    const/16 v1, 0x2d

    aput-char v1, v0, v7

    const/4 v1, 0x6

    .line 304
    aput-char v3, v0, v1

    const/4 v1, 0x7

    .line 305
    aput-char v3, v0, v1

    const/16 v1, 0x8

    .line 306
    const/16 v2, 0x4f

    aput-char v2, v0, v1

    const/16 v1, 0x9

    .line 307
    const/16 v2, 0x4d

    aput-char v2, v0, v1

    const/16 v1, 0xa

    .line 308
    const/16 v2, 0x41

    aput-char v2, v0, v1

    const/16 v1, 0xb

    .line 309
    aput-char v3, v0, v1

    const/16 v1, 0xc

    .line 310
    aput-char v3, v0, v1

    const/16 v1, 0xd

    .line 311
    const/16 v2, 0x44

    aput-char v2, v0, v1

    const/16 v1, 0xe

    .line 312
    const/16 v2, 0x54

    aput-char v2, v0, v1

    const/16 v1, 0xf

    .line 313
    const/16 v2, 0x44

    aput-char v2, v0, v1

    const/16 v1, 0x10

    .line 314
    const/16 v2, 0x2d

    aput-char v2, v0, v1

    const/16 v1, 0x11

    .line 315
    const/16 v2, 0x44

    aput-char v2, v0, v1

    const/16 v1, 0x12

    .line 316
    const/16 v2, 0x4d

    aput-char v2, v0, v1

    const/16 v1, 0x13

    .line 317
    const/16 v2, 0x2d

    aput-char v2, v0, v1

    const/16 v1, 0x14

    .line 318
    const/16 v2, 0x44

    aput-char v2, v0, v1

    const/16 v1, 0x15

    .line 319
    const/16 v2, 0x44

    aput-char v2, v0, v1

    const/16 v1, 0x16

    .line 320
    const/16 v2, 0x46

    aput-char v2, v0, v1

    const/16 v1, 0x17

    .line 321
    const/16 v2, 0x20

    aput-char v2, v0, v1

    const/16 v1, 0x18

    .line 322
    const/16 v2, 0x31

    aput-char v2, v0, v1

    const/16 v1, 0x19

    .line 323
    const/16 v2, 0x2e

    aput-char v2, v0, v1

    const/16 v1, 0x1a

    .line 324
    const/16 v2, 0x32

    aput-char v2, v0, v1

    const/16 v1, 0x1b

    .line 325
    aput-char v3, v0, v1

    const/16 v1, 0x1c

    .line 326
    aput-char v3, v0, v1

    const/16 v1, 0x1d

    .line 327
    const/16 v2, 0x45

    aput-char v2, v0, v1

    const/16 v1, 0x1e

    .line 328
    const/16 v2, 0x4e

    aput-char v2, v0, v1

    .line 297
    sput-object v0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->gTndsWbxmlHeaderInfo:[C

    .line 79
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 95
    sput-boolean v1, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->bNodeChangeMode:Z

    .line 96
    new-instance v0, Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;-><init>()V

    sput-object v0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->CurXmlTree:Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;

    .line 97
    iput v1, p0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->gTagCode:I

    .line 98
    new-instance v0, Lcom/wssyncmldm/eng/core/XDMOmTree;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/core/XDMOmTree;-><init>()V

    sput-object v0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    .line 99
    const/4 v0, 0x0

    sput-object v0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_szNewAccPath:Ljava/lang/String;

    .line 100
    return-void
.end method

.method private static OMSETPATH(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V
    .registers 10
    .parameter "g_om"
    .parameter "szPath"
    .parameter "aclValue"
    .parameter "scope"

    .prologue
    const/4 v2, 0x0

    .line 333
    invoke-static {p0, p1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v0

    if-nez v0, :cond_13

    .line 335
    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmWrite(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;IILjava/lang/Object;I)I

    .line 336
    invoke-static {p0, p1, p2, p3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentMakeDefaultAcl(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 338
    :cond_13
    return-void
.end method

.method public static xdmAgentVerifyNewAccount(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "omt"
    .parameter "szPath"
    .parameter "szAccName"

    .prologue
    .line 1034
    const-string v2, ""

    .line 1035
    .local v2, szTmpAccPath:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1036
    .local v1, node:Lcom/wssyncmldm/eng/core/XDMVnode;
    const/4 v0, 0x0

    .line 1038
    .local v0, bRet:Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2c

    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1040
    move-object v2, p1

    .line 1041
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1042
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 1043
    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1045
    :cond_23
    invoke-static {p0, v2}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v1

    .line 1046
    if-nez v1, :cond_2d

    .line 1048
    sput-object v2, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_szNewAccPath:Ljava/lang/String;

    .line 1049
    const/4 v0, 0x1

    .line 1059
    :cond_2c
    :goto_2c
    return v0

    .line 1053
    :cond_2d
    const/4 v3, 0x0

    sput-object v3, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_szNewAccPath:Ljava/lang/String;

    .line 1054
    const/4 v2, 0x0

    .line 1055
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method public static xdmConvertFinish()V
    .registers 1

    .prologue
    .line 2770
    const/4 v0, 0x0

    sput-object v0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->gTndsData:Lcom/wssyncmldm/eng/parser/XDMTndsData;

    .line 2771
    return-void
.end method

.method public static xdmDDFAllocConvertWbxmlData()Z
    .registers 2

    .prologue
    .line 2289
    const/4 v0, 0x0

    .line 2291
    .local v0, szWbxmlBuf:Ljava/lang/String;
    const-string v0, ""

    .line 2292
    invoke-static {v0}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSCheckMem(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 2294
    const-string v1, "# ERROR # xdmDDFAllocConvertWbxmlData Alloc Error !!! ###"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 2295
    const/4 v1, 0x0

    .line 2300
    :goto_f
    return v1

    .line 2298
    :cond_10
    invoke-static {v0}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlData(Ljava/lang/String;)V

    .line 2299
    invoke-static {v0}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlDataStart(Ljava/lang/String;)V

    .line 2300
    const/4 v1, 0x1

    goto :goto_f
.end method

.method public static xdmDDFCheckInbox(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "szType"

    .prologue
    .line 973
    const/4 v1, 0x0

    .line 974
    .local v1, szId:Ljava/lang/String;
    const/4 v0, 0x0

    .line 975
    .local v0, i:I
    const/4 v3, 0x0

    .line 976
    .local v3, szPath:Ljava/lang/String;
    const/4 v2, 0x0

    .line 978
    .local v2, szOut:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 980
    const/4 v4, 0x0

    .line 1008
    :goto_b
    return-object v4

    .line 983
    :cond_c
    const/4 v0, 0x1

    :goto_d
    const/16 v4, 0xc

    if-lt v0, v4, :cond_13

    :goto_11
    move-object v4, v2

    .line 1008
    goto :goto_b

    .line 985
    :cond_13
    invoke-static {v0}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFGetMOType(I)Ljava/lang/String;

    move-result-object v1

    .line 986
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 983
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 991
    :cond_20
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 993
    invoke-static {v0}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFGetMOPath(I)Ljava/lang/String;

    move-result-object v3

    .line 994
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_33

    .line 996
    const/4 v2, 0x0

    .line 997
    move-object v2, v3

    .line 998
    goto :goto_11

    .line 1002
    :cond_33
    const/4 v2, 0x0

    .line 1003
    goto :goto_11
.end method

.method public static xdmDDFConvertAddTndsCodePage()V
    .registers 6

    .prologue
    const/4 v5, 0x0

    .line 2725
    const/4 v2, 0x0

    .line 2727
    .local v2, szWbxmlData:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2730
    .local v0, nTmp:C
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlSize()I

    move-result v1

    .line 2731
    .local v1, nWbxmlSize:I
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlData()Ljava/lang/String;

    move-result-object v2

    .line 2733
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 2735
    .local v3, tmpWbxml:[B
    add-int/lit8 v1, v1, -0x1

    .line 2736
    aget-byte v4, v3, v1

    int-to-char v0, v4

    .line 2738
    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2740
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2741
    add-int/lit8 v1, v1, 0x1

    .line 2743
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2744
    add-int/lit8 v1, v1, 0x1

    .line 2746
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2747
    add-int/lit8 v1, v1, 0x1

    .line 2749
    invoke-static {v1}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlSize(I)V

    .line 2750
    invoke-static {v2}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlData(Ljava/lang/String;)V

    .line 2751
    return-void
.end method

.method public static xdmDDFConvertAddWbxmlHeader()V
    .registers 6

    .prologue
    const/16 v5, 0x1f

    .line 2305
    const/4 v2, 0x0

    .line 2307
    .local v2, szWbxmlData:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2308
    .local v0, nIndex:I
    new-array v3, v5, [C

    .line 2310
    .local v3, tmpWbxml:[C
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlSize()I

    move-result v1

    .line 2312
    .local v1, nWbxmlSize:I
    :goto_a
    if-lt v0, v5, :cond_18

    .line 2318
    move v1, v0

    .line 2319
    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    .line 2322
    invoke-static {v1}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlSize(I)V

    .line 2323
    invoke-static {v2}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlData(Ljava/lang/String;)V

    .line 2324
    return-void

    .line 2314
    :cond_18
    sget-object v4, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->gTndsWbxmlHeaderInfo:[C

    aget-char v4, v4, v0

    aput-char v4, v3, v0

    .line 2315
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method public static xdmDDFConvertCheckElement(C)V
    .registers 3
    .parameter "cHex"

    .prologue
    .line 2483
    int-to-byte v0, p0

    packed-switch v0, :pswitch_data_2a

    .line 2527
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "# ERROR # What? [value : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]!!! ###"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 2530
    :goto_1c
    :pswitch_1c
    return-void

    .line 2503
    :pswitch_1d
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFProcessConvertStringData()V

    goto :goto_1c

    .line 2513
    :pswitch_21
    invoke-static {p0}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFProcessConvertHexData(C)V

    goto :goto_1c

    .line 2517
    :pswitch_25
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFConvertAddTndsCodePage()V

    goto :goto_1c

    .line 2483
    nop

    :pswitch_data_2a
    .packed-switch 0x45
        :pswitch_21
        :pswitch_1d
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_21
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_1d
        :pswitch_1d
        :pswitch_4
        :pswitch_1d
        :pswitch_21
        :pswitch_4
        :pswitch_1d
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_21
        :pswitch_4
        :pswitch_4
        :pswitch_1d
        :pswitch_25
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1c
        :pswitch_4
        :pswitch_1d
        :pswitch_4
        :pswitch_21
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_1d
        :pswitch_1c
        :pswitch_4
        :pswitch_1c
        :pswitch_21
        :pswitch_1d
        :pswitch_4
        :pswitch_1d
        :pswitch_1d
        :pswitch_1c
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
    .end packed-switch
.end method

.method public static xdmDDFConvertCheckTag()V
    .registers 3

    .prologue
    .line 2328
    const/4 v0, 0x0

    .line 2330
    .local v0, szXmlData:Ljava/lang/String;
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLData()Ljava/lang/String;

    move-result-object v0

    .line 2331
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2333
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_17

    .line 2336
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFConvertXmlCloseTag()V

    .line 2343
    :goto_16
    return-void

    .line 2341
    :cond_17
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFConvertXml2Wbxml()V

    goto :goto_16
.end method

.method public static xdmDDFConvertGetXMLTag(I)Ljava/lang/String;
    .registers 2
    .parameter "nIndex"

    .prologue
    .line 2478
    sget-object v0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_szTndsTokenStr:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static xdmDDFConvertSkip1Byte()V
    .registers 3

    .prologue
    .line 2755
    const/4 v1, 0x0

    .line 2758
    .local v1, szXmlData:Ljava/lang/String;
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLData()Ljava/lang/String;

    move-result-object v1

    .line 2759
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLSize()I

    move-result v0

    .line 2761
    .local v0, nXmlSize:I
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2762
    add-int/lit8 v0, v0, -0x1

    .line 2764
    invoke-static {v0}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLSize(I)V

    .line 2765
    invoke-static {v1}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLData(Ljava/lang/String;)V

    .line 2766
    return-void
.end method

.method public static xdmDDFConvertString2WbxmlHex(Ljava/lang/String;)C
    .registers 7
    .parameter "szString"

    .prologue
    const/4 v5, 0x0

    .line 2450
    const/4 v0, 0x0

    .line 2451
    .local v0, nIndex:I
    const/4 v1, 0x0

    .line 2454
    .local v1, nStringLen:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2456
    :goto_7
    const/16 v3, 0x38

    if-ne v0, v3, :cond_1c

    .line 2467
    const-string v3, "SyncML"

    const-string v4, "SyncML"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v5, v3, v5, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 2469
    const/16 v3, 0x6d

    .line 2473
    :goto_1b
    return v3

    .line 2458
    :cond_1c
    invoke-static {v0}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFConvertGetXMLTag(I)Ljava/lang/String;

    move-result-object v2

    .line 2460
    .local v2, szXmlTag:Ljava/lang/String;
    invoke-virtual {p0, v5, v2, v5, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 2462
    add-int/lit8 v3, v0, 0x5

    add-int/lit8 v3, v3, 0x40

    int-to-char v3, v3

    goto :goto_1b

    .line 2464
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2472
    .end local v2           #szXmlTag:Ljava/lang/String;
    :cond_2f
    const-string v3, "# ERROR # Not Found String !!! ###"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 2473
    const v3, 0xffff

    goto :goto_1b
.end method

.method public static xdmDDFConvertXml2Wbxml()V
    .registers 12

    .prologue
    const/16 v11, 0x3e

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2390
    const/4 v6, 0x0

    .line 2392
    .local v6, szWbxmlData:Ljava/lang/String;
    const/4 v7, 0x0

    .line 2396
    .local v7, szXmlData:Ljava/lang/String;
    const/4 v2, 0x0

    .line 2397
    .local v2, nTagLen:I
    const-string v5, ""

    .line 2399
    .local v5, szTag:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2402
    .local v0, cHexValue:C
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlSize()I

    move-result v3

    .line 2403
    .local v3, nWbxmlSize:I
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlData()Ljava/lang/String;

    move-result-object v6

    .line 2404
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLData()Ljava/lang/String;

    move-result-object v7

    .line 2405
    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2406
    .local v1, nTag:C
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLSize()I

    move-result v4

    .line 2408
    .local v4, nXmlSize:I
    const/16 v8, 0x3c

    if-ne v1, v8, :cond_2e

    .line 2410
    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 2411
    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2413
    :goto_2a
    if-ne v1, v11, :cond_57

    .line 2421
    add-int/lit8 v2, v2, 0x1

    .line 2424
    :cond_2e
    if-ne v1, v11, :cond_52

    .line 2426
    add-int/lit8 v2, v2, 0x1

    .line 2427
    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 2429
    invoke-static {v5}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFConvertString2WbxmlHex(Ljava/lang/String;)C

    move-result v0

    .line 2432
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2433
    add-int/lit8 v3, v3, 0x1

    .line 2435
    invoke-static {v3}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlSize(I)V

    .line 2436
    invoke-static {v6}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlData(Ljava/lang/String;)V

    .line 2439
    sub-int v8, v4, v2

    invoke-static {v8}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLSize(I)V

    .line 2440
    invoke-static {v7}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLData(Ljava/lang/String;)V

    .line 2443
    :cond_52
    const/4 v5, 0x0

    .line 2445
    invoke-static {v0}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFConvertCheckElement(C)V

    .line 2446
    return-void

    .line 2415
    :cond_57
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2416
    add-int/lit8 v2, v2, 0x1

    .line 2417
    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 2418
    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_2a
.end method

.method public static xdmDDFConvertXmlCloseTag()V
    .registers 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2347
    const/4 v3, 0x0

    .line 2349
    .local v3, szWbxmlData:Ljava/lang/String;
    const/4 v4, 0x0

    .line 2356
    .local v4, szXmlData:Ljava/lang/String;
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlSize()I

    move-result v1

    .line 2357
    .local v1, nWbxmlSize:I
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlData()Ljava/lang/String;

    move-result-object v3

    .line 2358
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLData()Ljava/lang/String;

    move-result-object v4

    .line 2359
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLSize()I

    move-result v2

    .line 2361
    .local v2, nXmlSize:I
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 2362
    add-int/lit8 v2, v2, -0x2

    .line 2364
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2366
    .local v0, nTag:C
    :goto_1f
    const/16 v5, 0x3e

    if-ne v0, v5, :cond_40

    .line 2373
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 2374
    add-int/lit8 v2, v2, -0x1

    .line 2377
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2378
    add-int/lit8 v1, v1, 0x1

    .line 2380
    invoke-static {v1}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlSize(I)V

    .line 2381
    invoke-static {v3}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlData(Ljava/lang/String;)V

    .line 2384
    invoke-static {v2}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLSize(I)V

    .line 2385
    invoke-static {v4}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLData(Ljava/lang/String;)V

    .line 2386
    return-void

    .line 2368
    :cond_40
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 2369
    add-int/lit8 v2, v2, -0x1

    .line 2370
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1f
.end method

.method public static xdmDDFCreateNode(Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;Ljava/lang/String;)Z
    .registers 9
    .parameter "pTree"
    .parameter "szPath"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 1303
    if-nez p0, :cond_5

    .line 1358
    :cond_4
    :goto_4
    return v3

    .line 1307
    :cond_5
    const/4 v0, 0x0

    .line 1308
    .local v0, XmlElement:Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;
    iget-object v1, p0, Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;->childlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    .line 1310
    .local v1, childlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;
    const/4 v4, 0x0

    .line 1313
    .local v4, szPathTemp:Ljava/lang/String;
    if-nez v1, :cond_d

    move v3, v5

    .line 1315
    goto :goto_4

    .line 1318
    :cond_d
    invoke-static {v1, v3}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListSetCurrentObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;I)V

    .line 1320
    :goto_10
    if-nez p0, :cond_14

    move v3, v5

    .line 1358
    goto :goto_4

    .line 1322
    :cond_14
    invoke-static {v1}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListGetNextObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;

    .line 1324
    .restart local p0
    if-nez p0, :cond_1e

    move v3, v5

    .line 1326
    goto :goto_4

    .line 1329
    :cond_1e
    iget-object v0, p0, Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;->object:Ljava/lang/Object;

    .end local v0           #XmlElement:Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;
    check-cast v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;

    .line 1331
    .restart local v0       #XmlElement:Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;
    iget-object v6, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szTag:Ljava/lang/String;

    invoke-static {v6}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFXmlTagCode(Ljava/lang/String;)I

    move-result v2

    .line 1332
    .local v2, nTagCode:I
    packed-switch v2, :pswitch_data_5a

    .line 1352
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1353
    sget-object v6, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_szDmXmlOmaTags:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_10

    .line 1335
    :pswitch_3a
    iput-object p1, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    .line 1336
    invoke-static {v0}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFCreateNodeToOM(Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;)Z

    move-result v3

    .line 1337
    .local v3, ret:Z
    if-eqz v3, :cond_4

    .line 1342
    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1343
    iget-object v6, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1344
    invoke-static {p0, p1}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFCreateNode(Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;Ljava/lang/String;)Z

    .line 1347
    const/16 v6, 0x2f

    invoke-static {p1, v6}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibStrrchr(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v4

    .line 1348
    move-object p1, v4

    .line 1349
    goto :goto_10

    .line 1332
    nop

    :pswitch_data_5a
    .packed-switch 0x24
        :pswitch_3a
    .end packed-switch
.end method

.method public static xdmDDFCreateNodeToOM(Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;)Z
    .registers 16
    .parameter "element"

    .prologue
    const/16 v12, 0xc

    const/4 v10, 0x1

    const/4 v0, 0x0

    .line 1114
    iget v6, p0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->scope:I

    .line 1115
    .local v6, scope:I
    iget v7, p0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->format:I

    .line 1116
    .local v7, format:I
    iget v5, p0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->acl:I

    .line 1117
    .local v5, aclValue:I
    iget-object v2, p0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szData:Ljava/lang/String;

    .line 1118
    .local v2, szData:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1119
    .local v3, nLen:I
    const-string v1, ""

    .line 1120
    .local v1, szNodeName:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1121
    .local v8, bRet:Z
    const-string v9, ""

    .line 1123
    .local v9, szTmpBuf:Ljava/lang/String;
    iget-object v4, p0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1125
    const-string v4, "Not exist nodename."

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1214
    :goto_1f
    return v0

    .line 1131
    :cond_20
    iget-object v4, p0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    const-string v11, "."

    invoke-static {v4, v11}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibStrstr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 1133
    const/4 v8, 0x0

    .line 1140
    :goto_2f
    if-nez v8, :cond_4a

    .line 1142
    iget-object v4, p0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8d

    .line 1144
    const-string v4, "."

    invoke-virtual {v9, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1145
    iget-object v4, p0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1146
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    .line 1148
    iput-object v9, p0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    .line 1157
    :cond_4a
    :goto_4a
    iget-object v4, p0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    iget-object v11, p0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szName:Ljava/lang/String;

    invoke-static {v4, v11, v10}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetXNodePath(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1159
    iget-object v4, p0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szName:Ljava/lang/String;

    const-string v11, "AAuthData"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 1161
    const/4 v7, 0x1

    .line 1165
    :cond_5c
    iget-object v1, p0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    .line 1166
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1167
    iget-object v4, p0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1169
    if-nez v5, :cond_6e

    .line 1171
    const/16 v5, 0x1b

    .line 1174
    :cond_6e
    if-nez v6, :cond_71

    .line 1176
    const/4 v6, 0x2

    .line 1179
    :cond_71
    if-ne v7, v12, :cond_74

    .line 1181
    const/4 v7, 0x6

    .line 1184
    :cond_74
    const/4 v4, 0x6

    if-eq v7, v4, :cond_7c

    const/4 v4, 0x7

    if-eq v7, v4, :cond_7c

    if-ne v7, v12, :cond_92

    .line 1186
    :cond_7c
    sget-object v0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    iget-object v4, p0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szType:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFSetOMTree(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    .line 1187
    sget-object v0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    invoke-static {v0, v1, v5, v6}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->OMSETPATH(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 1212
    :goto_88
    const/4 v1, 0x0

    move v0, v10

    .line 1214
    goto :goto_1f

    .line 1137
    :cond_8b
    const/4 v8, 0x1

    goto :goto_2f

    .line 1152
    :cond_8d
    const-string v4, "."

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    goto :goto_4a

    .line 1191
    :cond_92
    const/4 v4, 0x2

    if-ne v7, v4, :cond_c5

    .line 1193
    const/4 v3, 0x0

    .line 1204
    :goto_96
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ltz v4, :cond_a7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v11, v4

    const-wide/16 v13, 0x100

    cmp-long v4, v11, v13

    if-ltz v4, :cond_d4

    .line 1206
    :cond_a7
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v10, "Size["

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "]. Fatal ERROR."

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 1197
    :cond_c5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_cf

    .line 1199
    const-string v2, "null"

    .line 1200
    iput-object v2, p0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szData:Ljava/lang/String;

    .line 1202
    :cond_cf
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_96

    .line 1209
    :cond_d4
    sget-object v0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    iget-object v4, p0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szType:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFSetOMTree(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    goto :goto_88
.end method

.method private xdmDDFCreateSyncMLNode()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 731
    const/4 v0, 0x0

    .line 733
    .local v0, ret:Z
    new-instance v2, Lcom/wssyncmldm/eng/parser/XDM_XMLStream;

    invoke-direct {v2}, Lcom/wssyncmldm/eng/parser/XDM_XMLStream;-><init>()V

    .line 734
    .local v2, xmlstream:Lcom/wssyncmldm/eng/parser/XDM_XMLStream;
    new-instance v3, Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;

    invoke-direct {v3}, Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;-><init>()V

    .line 736
    .local v3, xmltree:Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;
    invoke-direct {p0, v5}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFGetFileId(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/wssyncmldm/eng/parser/XDM_XMLStream;->m_szData:Ljava/lang/String;

    .line 737
    invoke-direct {p0, v5}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFGetFileSize(I)I

    move-result v4

    iput v4, v2, Lcom/wssyncmldm/eng/parser/XDM_XMLStream;->size:I

    .line 739
    invoke-static {v2, v3}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFParsing(Lcom/wssyncmldm/eng/parser/XDM_XMLStream;Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;)I

    move-result v4

    if-eqz v4, :cond_25

    .line 741
    const-string v4, "Parsing Fail"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move v1, v0

    .line 755
    .end local v0           #ret:Z
    .local v1, ret:I
    :goto_24
    return v1

    .line 745
    .end local v1           #ret:I
    .restart local v0       #ret:Z
    :cond_25
    invoke-static {v3}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFXmlTagParsing(Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;)Z

    move-result v0

    .line 747
    if-nez v0, :cond_2d

    move v1, v0

    .line 749
    .restart local v1       #ret:I
    goto :goto_24

    .line 752
    .end local v1           #ret:I
    :cond_2d
    const/4 v0, 0x1

    .line 753
    const-string v4, "Success."

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    move v1, v0

    .line 755
    .restart local v1       #ret:I
    goto :goto_24
.end method

.method public static xdmDDFCreateTNDSNode(Ljava/lang/String;ILcom/wssyncmldm/eng/core/XDMOmTree;)I
    .registers 11
    .parameter "szData"
    .parameter "nLen"
    .parameter "omt"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 1392
    const/4 v0, 0x0

    .line 1393
    .local v0, ret:Z
    const/4 v2, 0x0

    .line 1395
    .local v2, totalSize:I
    new-instance v3, Lcom/wssyncmldm/eng/parser/XDM_XMLStream;

    invoke-direct {v3}, Lcom/wssyncmldm/eng/parser/XDM_XMLStream;-><init>()V

    .line 1396
    .local v3, xmlstream:Lcom/wssyncmldm/eng/parser/XDM_XMLStream;
    new-instance v4, Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;

    invoke-direct {v4}, Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;-><init>()V

    .line 1398
    .local v4, xmltree:Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;
    invoke-static {p0}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFParseCDATA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1400
    .local v1, szTmpData:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2e

    .line 1402
    invoke-static {p0}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFParseCDATA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/wssyncmldm/eng/parser/XDM_XMLStream;->m_szData:Ljava/lang/String;

    .line 1403
    iput v2, v3, Lcom/wssyncmldm/eng/parser/XDM_XMLStream;->size:I

    .line 1411
    :goto_20
    invoke-static {v3, v4}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFParsing(Lcom/wssyncmldm/eng/parser/XDM_XMLStream;Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;)I

    move-result v6

    if-eqz v6, :cond_33

    .line 1413
    const-string v6, "Parsing Fail."

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1414
    sput-object v7, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    .line 1441
    :goto_2d
    return v5

    .line 1407
    :cond_2e
    iput-object p0, v3, Lcom/wssyncmldm/eng/parser/XDM_XMLStream;->m_szData:Ljava/lang/String;

    .line 1408
    iput p1, v3, Lcom/wssyncmldm/eng/parser/XDM_XMLStream;->size:I

    goto :goto_20

    .line 1418
    :cond_33
    if-nez p2, :cond_3d

    .line 1420
    const-string v6, "OM is NULL."

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1421
    sput-object v7, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    goto :goto_2d

    .line 1425
    :cond_3d
    sput-object p2, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    .line 1427
    sget-object v4, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->XmlTree:Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;

    .line 1429
    invoke-static {v4}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFXmlTagParsing(Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;)Z

    move-result v0

    .line 1431
    if-nez v0, :cond_4f

    .line 1433
    const-string v6, "Create Node Fail. Check the xml file."

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1434
    sput-object v7, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    goto :goto_2d

    .line 1438
    :cond_4f
    const/4 v0, 0x1

    .line 1439
    const-string v5, "Success."

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1441
    const/4 v5, 0x1

    goto :goto_2d
.end method

.method public static xdmDDFCreateTNDSNodeFromFile(ILcom/wssyncmldm/eng/core/XDMOmTree;)I
    .registers 8
    .parameter "nFileID"
    .parameter "omt"

    .prologue
    const/4 v5, 0x0

    .line 1365
    const/4 v3, 0x0

    .line 1366
    .local v3, ret:I
    const/4 v2, 0x0

    .line 1367
    .local v2, r:Z
    const/4 v0, 0x0

    .line 1368
    .local v0, nLen:I
    const/4 v1, 0x0

    check-cast v1, [B

    .line 1369
    .local v1, pData:[B
    const/4 v4, 0x0

    .line 1371
    .local v4, szData:Ljava/lang/String;
    invoke-static {p0}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFileSize(I)I

    move-result v0

    .line 1372
    if-gtz v0, :cond_f

    .line 1386
    :cond_e
    :goto_e
    return v5

    .line 1376
    :cond_f
    new-array v1, v0, [B

    .line 1377
    invoke-static {p0, v5, v0, v1}, Lcom/wssyncmldm/db/file/XDB;->xdbReadFile(III[B)Z

    move-result v2

    .line 1379
    if-eqz v2, :cond_e

    .line 1383
    new-instance v4, Ljava/lang/String;

    .end local v4           #szData:Ljava/lang/String;
    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    .line 1384
    .restart local v4       #szData:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5, p1}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFCreateTNDSNode(Ljava/lang/String;ILcom/wssyncmldm/eng/core/XDMOmTree;)I

    move-result v3

    move v5, v3

    .line 1386
    goto :goto_e
.end method

.method private xdmDDFGetFileId(I)Ljava/lang/String;
    .registers 12
    .parameter "Fileid"

    .prologue
    .line 760
    const-string v7, ""

    .line 761
    .local v7, szInputfilename:Ljava/lang/String;
    const-string v5, ""

    .line 763
    .local v5, szDdfBuf:Ljava/lang/String;
    packed-switch p1, :pswitch_data_60

    .line 802
    :cond_7
    :goto_7
    return-object v5

    .line 766
    :pswitch_8
    const-string v7, "data/data/com.wssyncmldm.ddf/SYNCML_DM_DDF.xml"

    .line 768
    const/4 v2, 0x0

    .line 771
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_b
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_49
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_32

    .line 772
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_10
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v8

    new-array v0, v8, [B

    .line 773
    .local v0, buf:[B
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 774
    .local v4, ret:I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_23

    .line 775
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_59
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_22} :catch_5c

    .end local v5           #szDdfBuf:Ljava/lang/String;
    .local v6, szDdfBuf:Ljava/lang/String;
    move-object v5, v6

    .line 785
    .end local v6           #szDdfBuf:Ljava/lang/String;
    .restart local v5       #szDdfBuf:Ljava/lang/String;
    :cond_23
    if-eqz v3, :cond_7

    .line 787
    :try_start_25
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_7

    .line 790
    :catch_29
    move-exception v1

    .line 792
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_7

    .line 777
    .end local v0           #buf:[B
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v4           #ret:I
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_32
    move-exception v1

    .line 779
    .local v1, e:Ljava/lang/Exception;
    :goto_33
    :try_start_33
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_49

    .line 785
    if-eqz v2, :cond_7

    .line 787
    :try_start_3c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_7

    .line 790
    :catch_40
    move-exception v1

    .line 792
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_7

    .line 782
    .end local v1           #e:Ljava/io/IOException;
    :catchall_49
    move-exception v8

    .line 785
    :goto_4a
    if-eqz v2, :cond_4f

    .line 787
    :try_start_4c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    .line 794
    :cond_4f
    :goto_4f
    throw v8

    .line 790
    :catch_50
    move-exception v1

    .line 792
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_4f

    .line 782
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catchall_59
    move-exception v8

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_4a

    .line 777
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_5c
    move-exception v1

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_33

    .line 763
    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch
.end method

.method private xdmDDFGetFileSize(I)I
    .registers 9
    .parameter "Fileid"

    .prologue
    .line 808
    const/4 v3, 0x0

    .line 810
    .local v3, nLen:I
    packed-switch p1, :pswitch_data_4e

    .line 844
    :cond_4
    :goto_4
    return v3

    .line 813
    :pswitch_5
    const-string v4, "data/data/com.wssyncmldm.ddf/SYNCML_DM_DDF.xml"

    .line 814
    .local v4, szInputfilename:Ljava/lang/String;
    const/4 v1, 0x0

    .line 817
    .local v1, fis:Ljava/io/FileInputStream;
    :try_start_8
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_37
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_20

    .line 818
    .end local v1           #fis:Ljava/io/FileInputStream;
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_47
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_4a

    move-result v3

    .line 828
    if-eqz v2, :cond_4

    .line 830
    :try_start_13
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_17

    goto :goto_4

    .line 833
    :catch_17
    move-exception v0

    .line 835
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_4

    .line 820
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :catch_20
    move-exception v0

    .line 822
    .local v0, e:Ljava/lang/Exception;
    :goto_21
    :try_start_21
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_37

    .line 828
    if-eqz v1, :cond_4

    .line 830
    :try_start_2a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_4

    .line 833
    :catch_2e
    move-exception v0

    .line 835
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_4

    .line 825
    .end local v0           #e:Ljava/io/IOException;
    :catchall_37
    move-exception v5

    .line 828
    :goto_38
    if-eqz v1, :cond_3d

    .line 830
    :try_start_3a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3e

    .line 837
    :cond_3d
    :goto_3d
    throw v5

    .line 833
    :catch_3e
    move-exception v0

    .line 835
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_3d

    .line 825
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catchall_47
    move-exception v5

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_38

    .line 820
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_4a
    move-exception v0

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_21

    .line 810
    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method public static xdmDDFGetMOPath(I)Ljava/lang/String;
    .registers 3
    .parameter "nId"

    .prologue
    .line 1013
    if-lez p0, :cond_6

    const/16 v0, 0xc

    if-lt p0, v0, :cond_20

    .line 1015
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "wrong nId. ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1016
    const/4 v0, 0x0

    .line 1018
    :goto_1f
    return-object v0

    :cond_20
    sget-object v0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_szDmManagementObjectIdPath:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_1f
.end method

.method public static xdmDDFGetMOType(I)Ljava/lang/String;
    .registers 3
    .parameter "nId"

    .prologue
    .line 1023
    if-lez p0, :cond_6

    const/16 v0, 0xc

    if-lt p0, v0, :cond_20

    .line 1025
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "wrong nId. ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1026
    const/4 v0, 0x0

    .line 1029
    :goto_1f
    return-object v0

    :cond_20
    sget-object v0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_szDmManagementObjectIdType:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_1f
.end method

.method public static xdmDDFInitConvert(Ljava/lang/String;I)V
    .registers 3
    .parameter "szInData"
    .parameter "nInSize"

    .prologue
    .line 2279
    new-instance v0, Lcom/wssyncmldm/eng/parser/XDMTndsData;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/parser/XDMTndsData;-><init>()V

    sput-object v0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->gTndsData:Lcom/wssyncmldm/eng/parser/XDMTndsData;

    .line 2281
    invoke-static {p1}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLSize(I)V

    .line 2282
    invoke-static {p0}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLData(Ljava/lang/String;)V

    .line 2283
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFAllocConvertWbxmlData()Z

    .line 2284
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFConvertAddWbxmlHeader()V

    .line 2285
    return-void
.end method

.method public static xdmDDFParseCDATA(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "szData"

    .prologue
    const/4 v6, 0x0

    .line 1446
    const-string v3, ""

    .line 1447
    .local v3, szRet:Ljava/lang/String;
    const-string v4, ""

    .line 1448
    .local v4, szStart:Ljava/lang/String;
    const-string v1, ""

    .line 1449
    .local v1, szEnd:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1450
    .local v0, cDataLen:I
    sget-object v7, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_szDmXmlTagString:[Ljava/lang/String;

    const/16 v8, 0x21

    aget-object v2, v7, v8

    .line 1451
    .local v2, szEndStr:Ljava/lang/String;
    sget-object v7, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_szDmXmlTagString:[Ljava/lang/String;

    const/16 v8, 0x20

    aget-object v5, v7, v8

    .line 1453
    .local v5, szStartStr:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 1480
    :cond_1a
    :goto_1a
    return-object v6

    .line 1458
    :cond_1b
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {p0, v5, v7}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibStrncmp(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_1a

    .line 1463
    invoke-static {p0, v2}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibStrstr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1465
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1a

    .line 1470
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1471
    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1473
    if-lez v0, :cond_1a

    .line 1478
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    .line 1480
    goto :goto_1a
.end method

.method public static xdmDDFParsing(Lcom/wssyncmldm/eng/parser/XDM_XMLStream;Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;)I
    .registers 7
    .parameter "stream"
    .parameter "xmltree"

    .prologue
    .line 705
    const/4 v2, 0x0

    .line 707
    .local v2, wRC:I
    if-eqz p0, :cond_d

    iget-object v4, p0, Lcom/wssyncmldm/eng/parser/XDM_XMLStream;->m_szData:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    if-nez p1, :cond_11

    .line 709
    :cond_d
    const/16 v2, 0xbb9

    move v3, v2

    .line 724
    .end local v2           #wRC:I
    .local v3, wRC:I
    :goto_10
    return v3

    .line 713
    .end local v3           #wRC:I
    .restart local v2       #wRC:I
    :cond_11
    sput-object p1, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->CurXmlTree:Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;

    .line 715
    new-instance v0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;-><init>()V

    .line 716
    .local v0, handler:Lcom/wssyncmldm/eng/parser/XDMDDFParser;
    new-instance v1, Lcom/wssyncmldm/eng/parser/XDMXMLParse;

    iget-object v4, p0, Lcom/wssyncmldm/eng/parser/XDM_XMLStream;->m_szData:Ljava/lang/String;

    invoke-direct {v1, v0, v4}, Lcom/wssyncmldm/eng/parser/XDMXMLParse;-><init>(Lorg/xml/sax/helpers/DefaultHandler;Ljava/lang/String;)V

    .line 718
    .local v1, parser:Lcom/wssyncmldm/eng/parser/XDMXMLParse;
    if-nez v1, :cond_28

    .line 720
    const-string v4, "ERROR"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 721
    const/16 v2, 0xbba

    :cond_28
    move v3, v2

    .line 724
    .end local v2           #wRC:I
    .restart local v3       #wRC:I
    goto :goto_10
.end method

.method public static xdmDDFPrintNodePropert(Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;)V
    .registers 6
    .parameter "element"

    .prologue
    const-wide/16 v3, 0x400

    .line 1064
    const-string v0, ""

    .line 1066
    .local v0, szPrintData:Ljava/lang/String;
    iget-object v1, p0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 1068
    iget-object v1, p0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1071
    :cond_12
    iget-object v1, p0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 1073
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    int-to-long v1, v1

    cmp-long v1, v3, v1

    if-gtz v1, :cond_31

    .line 1075
    const-string v1, "Buffer Overflow. Increase the space. for element->name."

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1076
    const/4 v0, 0x0

    .line 1110
    :goto_30
    return-void

    .line 1079
    :cond_31
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1080
    iget-object v1, p0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1083
    :cond_3d
    iget-object v1, p0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_68

    .line 1085
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szData:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    int-to-long v1, v1

    cmp-long v1, v3, v1

    if-gtz v1, :cond_5c

    .line 1087
    const-string v1, "Buffer Overflow. Increase the space. for element->data."

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1088
    const/4 v0, 0x0

    .line 1089
    goto :goto_30

    .line 1091
    :cond_5c
    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1092
    iget-object v1, p0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1095
    :cond_68
    iget-object v1, p0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_93

    .line 1097
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    int-to-long v1, v1

    cmp-long v1, v3, v1

    if-gtz v1, :cond_87

    .line 1099
    const-string v1, "Buffer Overflow. Increase the space. element->type."

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1100
    const/4 v0, 0x0

    .line 1101
    goto :goto_30

    .line 1103
    :cond_87
    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1104
    iget-object v1, p0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1106
    :cond_93
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d5

    .line 1107
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[DDF]["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->acl:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->format:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->scope:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 1109
    :cond_d5
    const/4 v0, 0x0

    .line 1110
    goto/16 :goto_30
.end method

.method public static xdmDDFProcessConvertAccessTypeElement()V
    .registers 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2674
    const/4 v4, 0x0

    .line 2676
    .local v4, szWbxmlData:Ljava/lang/String;
    const/4 v5, 0x0

    .line 2680
    .local v5, szXmlData:Ljava/lang/String;
    const-string v3, ""

    .line 2683
    .local v3, szData:Ljava/lang/String;
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlSize()I

    move-result v1

    .line 2684
    .local v1, nWbxmlSize:I
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlData()Ljava/lang/String;

    move-result-object v4

    .line 2685
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLData()Ljava/lang/String;

    move-result-object v5

    .line 2686
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2687
    .local v0, nChar:C
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLSize()I

    move-result v2

    .line 2689
    .local v2, nXmlSize:I
    const/16 v6, 0x3c

    if-ne v0, v6, :cond_33

    .line 2691
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 2692
    add-int/lit8 v2, v2, -0x1

    .line 2693
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2694
    :goto_28
    const/16 v6, 0x2f

    if-ne v0, v6, :cond_53

    .line 2702
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 2703
    add-int/lit8 v2, v2, -0x2

    .line 2706
    :cond_33
    const/4 v0, 0x0

    .line 2707
    invoke-static {v3}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFConvertString2WbxmlHex(Ljava/lang/String;)C

    move-result v0

    .line 2708
    add-int/lit8 v6, v0, -0x40

    int-to-char v0, v6

    .line 2711
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2712
    add-int/lit8 v1, v1, 0x1

    .line 2713
    invoke-static {v1}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlSize(I)V

    .line 2714
    invoke-static {v4}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlData(Ljava/lang/String;)V

    .line 2717
    invoke-static {v2}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLSize(I)V

    .line 2718
    invoke-static {v5}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLData(Ljava/lang/String;)V

    .line 2720
    const/4 v3, 0x0

    .line 2721
    return-void

    .line 2696
    :cond_53
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2697
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 2698
    add-int/lit8 v2, v2, -0x1

    .line 2700
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_28
.end method

.method public static xdmDDFProcessConvertFormatElement()V
    .registers 10

    .prologue
    const/16 v9, 0x3c

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2599
    const/4 v4, 0x0

    .line 2601
    .local v4, szWbxmlData:Ljava/lang/String;
    const/4 v5, 0x0

    .line 2605
    .local v5, szXmlData:Ljava/lang/String;
    const-string v3, ""

    .line 2608
    .local v3, szData:Ljava/lang/String;
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlSize()I

    move-result v1

    .line 2609
    .local v1, nWbxmlSize:I
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlData()Ljava/lang/String;

    move-result-object v4

    .line 2610
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLData()Ljava/lang/String;

    move-result-object v5

    .line 2611
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2612
    .local v0, nChar:C
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLSize()I

    move-result v2

    .line 2614
    .local v2, nXmlSize:I
    if-ne v0, v9, :cond_74

    .line 2616
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 2617
    add-int/lit8 v2, v2, -0x1

    .line 2618
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2619
    :cond_28
    :goto_28
    const/16 v6, 0x2f

    if-ne v0, v6, :cond_53

    .line 2635
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 2636
    add-int/lit8 v2, v2, -0x2

    .line 2655
    :cond_33
    const/4 v0, 0x0

    .line 2656
    invoke-static {v3}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFConvertString2WbxmlHex(Ljava/lang/String;)C

    move-result v0

    .line 2657
    add-int/lit8 v6, v0, -0x40

    int-to-char v0, v6

    .line 2660
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2661
    add-int/lit8 v1, v1, 0x1

    .line 2662
    invoke-static {v1}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlSize(I)V

    .line 2663
    invoke-static {v4}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlData(Ljava/lang/String;)V

    .line 2666
    invoke-static {v2}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLSize(I)V

    .line 2667
    invoke-static {v5}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLData(Ljava/lang/String;)V

    .line 2669
    const/4 v3, 0x0

    .line 2670
    return-void

    .line 2621
    :cond_53
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2623
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 2624
    add-int/lit8 v2, v2, -0x1

    .line 2626
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2627
    const/16 v6, 0x20

    if-ne v0, v6, :cond_28

    .line 2629
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 2630
    add-int/lit8 v2, v2, -0x1

    .line 2632
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_28

    .line 2638
    :cond_74
    if-eq v0, v9, :cond_33

    .line 2640
    :goto_76
    if-eq v0, v9, :cond_33

    .line 2642
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2644
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 2645
    add-int/lit8 v2, v2, -0x1

    .line 2647
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_76
.end method

.method public static xdmDDFProcessConvertHexData(C)V
    .registers 1
    .parameter "cHex"

    .prologue
    .line 2578
    sparse-switch p0, :sswitch_data_c

    .line 2595
    :goto_3
    return-void

    .line 2582
    :sswitch_4
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFProcessConvertFormatElement()V

    goto :goto_3

    .line 2586
    :sswitch_8
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFProcessConvertAccessTypeElement()V

    goto :goto_3

    .line 2578
    :sswitch_data_c
    .sparse-switch
        0x45 -> :sswitch_8
        0x55 -> :sswitch_4
        0x5c -> :sswitch_4
    .end sparse-switch
.end method

.method public static xdmDDFProcessConvertStringData()V
    .registers 8

    .prologue
    const/4 v7, 0x0

    .line 2534
    const/4 v4, 0x0

    .line 2536
    .local v4, szWbxmlData:Ljava/lang/String;
    const/4 v5, 0x0

    .line 2540
    .local v5, szXmlData:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2543
    .local v1, nStringLen:I
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlSize()I

    move-result v2

    .line 2544
    .local v2, nWbxmlSize:I
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlData()Ljava/lang/String;

    move-result-object v4

    .line 2545
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLData()Ljava/lang/String;

    move-result-object v5

    .line 2546
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2547
    .local v0, nChar:C
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLSize()I

    move-result v3

    .line 2550
    .local v3, nXmlSize:I
    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2551
    add-int/lit8 v2, v2, 0x1

    .line 2554
    :goto_23
    const/16 v6, 0x3c

    if-ne v0, v6, :cond_40

    .line 2564
    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2565
    add-int/lit8 v2, v2, 0x1

    .line 2568
    invoke-static {v2}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlSize(I)V

    .line 2569
    invoke-static {v4}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlData(Ljava/lang/String;)V

    .line 2572
    sub-int v6, v3, v1

    invoke-static {v6}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLSize(I)V

    .line 2573
    invoke-static {v5}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLData(Ljava/lang/String;)V

    .line 2574
    return-void

    .line 2556
    :cond_40
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2557
    add-int/lit8 v2, v2, 0x1

    .line 2558
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 2559
    add-int/lit8 v1, v1, 0x1

    .line 2560
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_23
.end method

.method public static xdmDDFSetOMTree(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V
    .registers 15
    .parameter "omt"
    .parameter "szPath"
    .parameter "szData"
    .parameter "nLen"
    .parameter "szMime"
    .parameter "aclValue"
    .parameter "scope"
    .parameter "format"

    .prologue
    const/4 v1, 0x3

    .line 1219
    const/4 v6, 0x0

    .line 1221
    .local v6, node:Lcom/wssyncmldm/eng/core/XDMVnode;
    invoke-static {p0, p1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v6

    .line 1223
    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetSyncMode(I)Z

    .line 1225
    if-eqz v6, :cond_11

    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentGetSyncMode()I

    move-result v0

    if-ne v0, v1, :cond_1d

    :cond_11
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p7

    .line 1227
    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFSetOMTreeProperty(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 1228
    invoke-static {p0, p1, p5, p6}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentMakeDefaultAcl(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 1231
    :cond_1d
    sget-boolean v0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->bNodeChangeMode:Z

    if-eqz v0, :cond_32

    .line 1233
    const-string v0, "bNodeChangeMode Change Node."

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p7

    .line 1234
    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFSetOMTreeProperty(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 1235
    invoke-static {p0, p1, p5, p6}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentMakeDefaultAcl(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 1237
    :cond_32
    return-void
.end method

.method public static xdmDDFSetOMTreeProperty(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 20
    .parameter "omt"
    .parameter "szPath"
    .parameter "szData"
    .parameter "nLen"
    .parameter "szMime"
    .parameter "format"

    .prologue
    .line 1244
    const/16 v1, 0x100

    new-array v13, v1, [C

    .line 1245
    .local v13, tmpbuf:[C
    const/4 v7, 0x0

    .line 1247
    .local v7, index:I
    invoke-static {p1, v13}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmMakeParentPath(Ljava/lang/String;[C)V

    .line 1249
    const-string v12, ""

    .line 1251
    .local v12, szTmp:Ljava/lang/String;
    :goto_a
    aget-char v1, v13, v7

    if-nez v1, :cond_5c

    .line 1257
    invoke-static {p0, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v11

    .line 1259
    .local v11, node:Lcom/wssyncmldm/eng/core/XDMVnode;
    if-nez v11, :cond_1a

    .line 1261
    const/16 v1, 0x1b

    const/4 v2, 0x1

    invoke-static {p0, v12, v1, v2}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmProcessCmdImplicitAdd(Ljava/lang/Object;Ljava/lang/String;II)Z

    .line 1264
    :cond_1a
    const/4 v1, 0x6

    move/from16 v0, p5

    if-eq v0, v1, :cond_2a

    const/4 v1, 0x7

    move/from16 v0, p5

    if-eq v0, v1, :cond_2a

    const/16 v1, 0xc

    move/from16 v0, p5

    if-ne v0, v1, :cond_69

    .line 1266
    :cond_2a
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, ""

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmWrite(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;IILjava/lang/Object;I)I

    .line 1277
    :cond_34
    :goto_34
    invoke-static {p0, p1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v11

    .line 1278
    if-eqz v11, :cond_5b

    .line 1280
    iget-object v1, v11, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    if-eqz v1, :cond_43

    .line 1282
    iget-object v1, v11, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    invoke-static {v1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmVfsDeleteMimeList(Lcom/wssyncmldm/eng/core/XDMOmList;)V

    .line 1285
    :cond_43
    new-instance v8, Lcom/wssyncmldm/eng/core/XDMOmList;

    invoke-direct {v8}, Lcom/wssyncmldm/eng/core/XDMOmList;-><init>()V

    .line 1287
    .local v8, list:Lcom/wssyncmldm/eng/core/XDMOmList;
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_96

    .line 1289
    move-object/from16 v0, p4

    iput-object v0, v8, Lcom/wssyncmldm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    .line 1295
    :goto_52
    const/4 v1, 0x0

    iput-object v1, v8, Lcom/wssyncmldm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    .line 1296
    iput-object v8, v11, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    .line 1297
    move/from16 v0, p5

    iput v0, v11, Lcom/wssyncmldm/eng/core/XDMVnode;->format:I

    .line 1299
    .end local v8           #list:Lcom/wssyncmldm/eng/core/XDMOmList;
    :cond_5b
    return-void

    .line 1253
    .end local v11           #node:Lcom/wssyncmldm/eng/core/XDMVnode;
    :cond_5c
    aget-char v1, v13, v7

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1254
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 1270
    .restart local v11       #node:Lcom/wssyncmldm/eng/core/XDMVnode;
    :cond_69
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p3

    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmWrite(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;IILjava/lang/Object;I)I

    move-result v1

    int-to-long v9, v1

    .line 1271
    .local v9, nSize:J
    const-wide/16 v1, 0x0

    cmp-long v1, v9, v1

    if-gtz v1, :cond_34

    .line 1273
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Size["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_34

    .line 1293
    .end local v9           #nSize:J
    .restart local v8       #list:Lcom/wssyncmldm/eng/core/XDMOmList;
    :cond_96
    const-string v1, "text/plain"

    iput-object v1, v8, Lcom/wssyncmldm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    goto :goto_52
.end method

.method public static xdmDDFTNDSAllocXMLData()Z
    .registers 2

    .prologue
    .line 1617
    const-string v0, ""

    .line 1619
    .local v0, szXMLBuf:Ljava/lang/String;
    invoke-static {v0}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSCheckMem(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1621
    const-string v1, "# ERROR #  Alloc Error !!! ###"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1622
    const/4 v1, 0x0

    .line 1627
    :goto_e
    return v1

    .line 1625
    :cond_f
    invoke-static {v0}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLData(Ljava/lang/String;)V

    .line 1627
    const/4 v1, 0x1

    goto :goto_e
.end method

.method public static xdmDDFTNDSAppendNameSpace()V
    .registers 4

    .prologue
    .line 1641
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLData()Ljava/lang/String;

    move-result-object v2

    .line 1642
    .local v2, szXmlData:Ljava/lang/String;
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLSize()I

    move-result v1

    .line 1644
    .local v1, nXmlSize:I
    const-string v3, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1645
    const-string v3, "<SyncML xmlns=\'syncml:dmddf1.2\'>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1647
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1649
    .local v0, nTmpLen:I
    invoke-static {v2}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLData(Ljava/lang/String;)V

    .line 1650
    add-int v3, v1, v0

    invoke-static {v3}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLSize(I)V

    .line 1651
    return-void
.end method

.method public static xdmDDFTNDSAppendSyncMLCloseTag()V
    .registers 4

    .prologue
    .line 2213
    const/4 v2, 0x0

    .line 2217
    .local v2, szXmlData:Ljava/lang/String;
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLData()Ljava/lang/String;

    move-result-object v2

    .line 2218
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLSize()I

    move-result v1

    .line 2220
    .local v1, nXmlSize:I
    const-string v3, "</SyncML>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2222
    const-string v3, "</SyncML>"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 2224
    .local v0, nTmpLen:I
    invoke-static {v2}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLData(Ljava/lang/String;)V

    .line 2225
    add-int v3, v1, v0

    invoke-static {v3}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLSize(I)V

    .line 2226
    return-void
.end method

.method public static xdmDDFTNDSCheckMem(Ljava/lang/Object;)Z
    .registers 2
    .parameter "ptr"

    .prologue
    .line 1632
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static xdmDDFTNDSGetTagString(I)Ljava/lang/String;
    .registers 3
    .parameter "eTokenIndex"

    .prologue
    .line 1877
    const/4 v0, 0x0

    .line 1879
    .local v0, nIndex:I
    const/16 v1, 0x7d

    if-ge p0, v1, :cond_c

    .line 1881
    add-int/lit8 v0, p0, -0x45

    .line 1882
    sget-object v1, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_szTndsTokenStr:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 1891
    :goto_b
    return-object v1

    .line 1884
    :cond_c
    const/16 v1, 0x88

    if-ne p0, v1, :cond_13

    .line 1886
    const-string v1, "SyncML"

    goto :goto_b

    .line 1891
    :cond_13
    const-string v1, "NULL"

    goto :goto_b
.end method

.method public static xdmDDFTNDSGetWbxmlData()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1592
    sget-object v0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->gTndsData:Lcom/wssyncmldm/eng/parser/XDMTndsData;

    iget-object v0, v0, Lcom/wssyncmldm/eng/parser/XDMTndsData;->m_szWbxmlData:Ljava/lang/String;

    return-object v0
.end method

.method public static xdmDDFTNDSGetWbxmlDataStart()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1612
    sget-object v0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->gTndsData:Lcom/wssyncmldm/eng/parser/XDMTndsData;

    iget-object v0, v0, Lcom/wssyncmldm/eng/parser/XDMTndsData;->m_szWbxmlDataStart:Ljava/lang/String;

    return-object v0
.end method

.method public static xdmDDFTNDSGetWbxmlSize()I
    .registers 1

    .prologue
    .line 1587
    sget-object v0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->gTndsData:Lcom/wssyncmldm/eng/parser/XDMTndsData;

    iget v0, v0, Lcom/wssyncmldm/eng/parser/XDMTndsData;->nWbxmlDataSize:I

    return v0
.end method

.method public static xdmDDFTNDSGetXMLData()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1602
    sget-object v0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->gTndsData:Lcom/wssyncmldm/eng/parser/XDMTndsData;

    iget-object v0, v0, Lcom/wssyncmldm/eng/parser/XDMTndsData;->m_szXMLData:Ljava/lang/String;

    return-object v0
.end method

.method public static xdmDDFTNDSGetXMLDataStart()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1607
    sget-object v0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->gTndsData:Lcom/wssyncmldm/eng/parser/XDMTndsData;

    iget-object v0, v0, Lcom/wssyncmldm/eng/parser/XDMTndsData;->m_szXMLDataStart:Ljava/lang/String;

    return-object v0
.end method

.method public static xdmDDFTNDSGetXMLSize()I
    .registers 1

    .prologue
    .line 1597
    sget-object v0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->gTndsData:Lcom/wssyncmldm/eng/parser/XDMTndsData;

    iget v0, v0, Lcom/wssyncmldm/eng/parser/XDMTndsData;->nXMLDataSize:I

    return v0
.end method

.method public static xdmDDFTNDSInitParse(Ljava/lang/String;I)V
    .registers 3
    .parameter "szInData"
    .parameter "nInSize"

    .prologue
    .line 1543
    new-instance v0, Lcom/wssyncmldm/eng/parser/XDMTndsData;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/parser/XDMTndsData;-><init>()V

    sput-object v0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->gTndsData:Lcom/wssyncmldm/eng/parser/XDMTndsData;

    .line 1545
    invoke-static {p1}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlSize(I)V

    .line 1546
    invoke-static {p0}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlData(Ljava/lang/String;)V

    .line 1547
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSAllocXMLData()Z

    .line 1549
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSAppendNameSpace()V

    .line 1551
    new-instance v0, Lcom/wssyncmldm/eng/parser/XDMTndsTagManage;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/parser/XDMTndsTagManage;-><init>()V

    sput-object v0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->gstTagManage:Lcom/wssyncmldm/eng/parser/XDMTndsTagManage;

    .line 1553
    return-void
.end method

.method public static xdmDDFTNDSMakeCloseTagString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2138
    const/4 v0, 0x0

    .line 2139
    .local v0, eCloseTokenIndex:I
    const-string v1, ""

    .line 2141
    .local v1, szCloseTagName:Ljava/lang/String;
    invoke-static {v1}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSCheckMem(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 2143
    const-string v2, "# ERROR # Alloc Error !!! ###"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 2144
    const/4 v2, 0x0

    .line 2153
    :goto_f
    return-object v2

    .line 2147
    :cond_10
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSManagePopTag()I

    move-result v0

    .line 2149
    const-string v1, "</"

    .line 2150
    invoke-static {v0}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetTagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2151
    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 2153
    goto :goto_f
.end method

.method public static xdmDDFTNDSMakeOpenTagString(I)Ljava/lang/String;
    .registers 3
    .parameter "eTokenIndex"

    .prologue
    .line 1860
    const-string v0, ""

    .line 1862
    .local v0, szOpenTagName:Ljava/lang/String;
    invoke-static {v0}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSCheckMem(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1864
    const-string v1, "# ERROR # Alloc Error !!! ###"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1865
    const/4 v1, 0x0

    .line 1872
    :goto_e
    return-object v1

    .line 1868
    :cond_f
    const-string v0, "<"

    .line 1869
    invoke-static {p0}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetTagString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1870
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1872
    goto :goto_e
.end method

.method public static xdmDDFTNDSManagePopTag()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 2158
    const/4 v0, 0x0

    .line 2160
    .local v0, eCloseTagID:I
    sget-object v2, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->gstTagManage:Lcom/wssyncmldm/eng/parser/XDMTndsTagManage;

    iget v2, v2, Lcom/wssyncmldm/eng/parser/XDMTndsTagManage;->nTagSP:I

    if-nez v2, :cond_f

    .line 2162
    const-string v2, "# ERROR # TagSP EMPTY !!! ###"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move v0, v1

    .line 2170
    :goto_e
    return v0

    .line 2166
    :cond_f
    sget-object v2, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->gstTagManage:Lcom/wssyncmldm/eng/parser/XDMTndsTagManage;

    iget v3, v2, Lcom/wssyncmldm/eng/parser/XDMTndsTagManage;->nTagSP:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/wssyncmldm/eng/parser/XDMTndsTagManage;->nTagSP:I

    .line 2167
    sget-object v2, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->gstTagManage:Lcom/wssyncmldm/eng/parser/XDMTndsTagManage;

    iget-object v2, v2, Lcom/wssyncmldm/eng/parser/XDMTndsTagManage;->eTagID:[I

    sget-object v3, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->gstTagManage:Lcom/wssyncmldm/eng/parser/XDMTndsTagManage;

    iget v3, v3, Lcom/wssyncmldm/eng/parser/XDMTndsTagManage;->nTagSP:I

    aget v0, v2, v3

    .line 2168
    sget-object v2, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->gstTagManage:Lcom/wssyncmldm/eng/parser/XDMTndsTagManage;

    iget-object v2, v2, Lcom/wssyncmldm/eng/parser/XDMTndsTagManage;->eTagID:[I

    sget-object v3, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->gstTagManage:Lcom/wssyncmldm/eng/parser/XDMTndsTagManage;

    iget v3, v3, Lcom/wssyncmldm/eng/parser/XDMTndsTagManage;->nTagSP:I

    aput v1, v2, v3

    goto :goto_e
.end method

.method public static xdmDDFTNDSManagePushTag(I)Z
    .registers 3
    .parameter "eTokenIndex"

    .prologue
    .line 1740
    sget-object v0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->gstTagManage:Lcom/wssyncmldm/eng/parser/XDMTndsTagManage;

    iget v0, v0, Lcom/wssyncmldm/eng/parser/XDMTndsTagManage;->nTagSP:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_f

    .line 1742
    const-string v0, "# ERROR # TagSP FULL !!! ###"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1743
    const/4 v0, 0x0

    .line 1749
    :goto_e
    return v0

    .line 1746
    :cond_f
    sget-object v0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->gstTagManage:Lcom/wssyncmldm/eng/parser/XDMTndsTagManage;

    iget-object v0, v0, Lcom/wssyncmldm/eng/parser/XDMTndsTagManage;->eTagID:[I

    sget-object v1, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->gstTagManage:Lcom/wssyncmldm/eng/parser/XDMTndsTagManage;

    iget v1, v1, Lcom/wssyncmldm/eng/parser/XDMTndsTagManage;->nTagSP:I

    aput p0, v0, v1

    .line 1747
    sget-object v0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->gstTagManage:Lcom/wssyncmldm/eng/parser/XDMTndsTagManage;

    iget v1, v0, Lcom/wssyncmldm/eng/parser/XDMTndsTagManage;->nTagSP:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/wssyncmldm/eng/parser/XDMTndsTagManage;->nTagSP:I

    .line 1749
    const/4 v0, 0x1

    goto :goto_e
.end method

.method public static xdmDDFTNDSParsingACLTag()V
    .registers 0

    .prologue
    .line 1816
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingOpenTag()V

    .line 1817
    return-void
.end method

.method public static xdmDDFTNDSParsingAccessTypeChildElement()V
    .registers 8

    .prologue
    .line 1965
    const/4 v6, 0x0

    .line 1967
    .local v6, szWbxmlData:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1972
    .local v4, pXmlData:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1975
    .local v5, szTypeBuf:Ljava/lang/String;
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlSize()I

    move-result v2

    .line 1976
    .local v2, nWbxmlSize:I
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlData()Ljava/lang/String;

    move-result-object v6

    .line 1977
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1978
    .local v0, nTag:I
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLData()Ljava/lang/String;

    move-result-object v4

    .line 1979
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLSize()I

    move-result v3

    .line 1981
    .local v3, nXmlSize:I
    add-int/lit8 v0, v0, -0x40

    .line 1983
    sparse-switch v0, :sswitch_data_48

    .line 2011
    :goto_1d
    return-void

    .line 1991
    :sswitch_1e
    const-string v5, "<"

    .line 1992
    invoke-static {v0}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetTagString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1993
    const-string v7, "/>"

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2001
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 2003
    .local v1, nTagLen:I
    add-int v7, v3, v1

    invoke-static {v7}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLSize(I)V

    .line 2004
    invoke-static {v4}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLData(Ljava/lang/String;)V

    .line 2007
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 2008
    add-int/lit8 v2, v2, -0x1

    .line 2009
    invoke-static {v2}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlSize(I)V

    .line 2010
    invoke-static {v6}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlData(Ljava/lang/String;)V

    goto :goto_1d

    .line 1983
    :sswitch_data_48
    .sparse-switch
        0x47 -> :sswitch_1e
        0x4e -> :sswitch_1e
        0x53 -> :sswitch_1e
        0x5a -> :sswitch_1e
        0x5d -> :sswitch_1e
        0x6e -> :sswitch_1e
    .end sparse-switch
.end method

.method public static xdmDDFTNDSParsingAccessTypeTag()V
    .registers 0

    .prologue
    .line 1805
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingOpenTag()V

    .line 1806
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingAccessTypeChildElement()V

    .line 1807
    return-void
.end method

.method public static xdmDDFTNDSParsingCloseTag()V
    .registers 7

    .prologue
    .line 2104
    const/4 v4, 0x0

    .line 2106
    .local v4, szWbxmlData:Ljava/lang/String;
    const/4 v5, 0x0

    .line 2109
    .local v5, szXmlData:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2110
    .local v0, nTagLen:I
    const/4 v3, 0x0

    .line 2113
    .local v3, szTag:Ljava/lang/String;
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlSize()I

    move-result v1

    .line 2114
    .local v1, nWbxmlSize:I
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlData()Ljava/lang/String;

    move-result-object v4

    .line 2115
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLData()Ljava/lang/String;

    move-result-object v5

    .line 2116
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLSize()I

    move-result v2

    .line 2119
    .local v2, nXmlSize:I
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSMakeCloseTagString()Ljava/lang/String;

    move-result-object v3

    .line 2120
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_26

    .line 2122
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 2124
    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2126
    :cond_26
    add-int v6, v2, v0

    invoke-static {v6}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLSize(I)V

    .line 2127
    invoke-static {v5}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLData(Ljava/lang/String;)V

    .line 2130
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 2131
    add-int/lit8 v1, v1, -0x1

    .line 2132
    invoke-static {v1}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlSize(I)V

    .line 2133
    invoke-static {v4}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlData(Ljava/lang/String;)V

    .line 2134
    return-void
.end method

.method public static xdmDDFTNDSParsingCodePage()Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 1655
    const/4 v1, 0x0

    .line 1656
    .local v1, nWbxmlSize:I
    const/4 v0, 0x0

    .line 1657
    .local v0, index:I
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlData()Ljava/lang/String;

    move-result-object v2

    .line 1660
    .local v2, szWbxmlData:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1661
    add-int/lit8 v1, v1, 0x1

    .line 1663
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_21

    .line 1667
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eqz v4, :cond_21

    .line 1673
    const-string v3, "### ERROR ### TNDS Tag Right ###"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1674
    const/4 v3, 0x0

    .line 1682
    :goto_20
    return v3

    .line 1677
    :cond_21
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1678
    add-int/lit8 v1, v1, 0x1

    .line 1680
    invoke-static {v2}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlData(Ljava/lang/String;)V

    .line 1681
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlSize()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-static {v4}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlSize(I)V

    goto :goto_20
.end method

.method public static xdmDDFTNDSParsingDDFNameTag()V
    .registers 0

    .prologue
    .line 1790
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingOpenTag()V

    .line 1791
    return-void
.end method

.method public static xdmDDFTNDSParsingFormatChildElement()V
    .registers 9

    .prologue
    .line 1897
    const/4 v5, 0x0

    .line 1899
    .local v5, szWbxmlData:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1904
    .local v6, szXmlData:Ljava/lang/String;
    const-string v4, ""

    .line 1907
    .local v4, szTypeBuf:Ljava/lang/String;
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlSize()I

    move-result v2

    .line 1908
    .local v2, nWbxmlSize:I
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlData()Ljava/lang/String;

    move-result-object v5

    .line 1909
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1910
    .local v0, nTag:I
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLData()Ljava/lang/String;

    move-result-object v6

    .line 1911
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLSize()I

    move-result v3

    .line 1913
    .local v3, nXmlSize:I
    add-int/lit8 v0, v0, 0x40

    .line 1915
    sparse-switch v0, :sswitch_data_66

    .line 1946
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "#ERROR!!!#  child tag vlaue is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  ###"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1951
    :goto_36
    :sswitch_36
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 1952
    .local v1, nTagLen:I
    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1953
    add-int v7, v3, v1

    invoke-static {v7}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLSize(I)V

    .line 1954
    invoke-static {v6}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLData(Ljava/lang/String;)V

    .line 1957
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1958
    add-int/lit8 v2, v2, -0x1

    .line 1959
    invoke-static {v2}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlSize(I)V

    .line 1960
    invoke-static {v5}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlData(Ljava/lang/String;)V

    .line 1961
    return-void

    .line 1935
    .end local v1           #nTagLen:I
    :sswitch_54
    const-string v4, "<"

    .line 1936
    invoke-static {v0}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetTagString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1937
    const-string v7, "/>"

    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1938
    goto :goto_36

    .line 1915
    nop

    :sswitch_data_66
    .sparse-switch
        0x48 -> :sswitch_54
        0x49 -> :sswitch_54
        0x4a -> :sswitch_54
        0x4b -> :sswitch_54
        0x50 -> :sswitch_54
        0x5b -> :sswitch_54
        0x5e -> :sswitch_54
        0x65 -> :sswitch_54
        0x67 -> :sswitch_54
        0x69 -> :sswitch_54
        0x6a -> :sswitch_54
        0x6b -> :sswitch_36
        0x72 -> :sswitch_54
        0x79 -> :sswitch_54
        0x7a -> :sswitch_54
        0x7b -> :sswitch_36
        0x7c -> :sswitch_54
    .end sparse-switch
.end method

.method public static xdmDDFTNDSParsingFormatTag()V
    .registers 0

    .prologue
    .line 1779
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingOpenTag()V

    .line 1780
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingFormatChildElement()V

    .line 1781
    return-void
.end method

.method public static xdmDDFTNDSParsingMIMETag()V
    .registers 0

    .prologue
    .line 1800
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingOpenTag()V

    .line 1801
    return-void
.end method

.method public static xdmDDFTNDSParsingMgmtTreeTag()V
    .registers 0

    .prologue
    .line 1754
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingOpenTag()V

    .line 1755
    return-void
.end method

.method public static xdmDDFTNDSParsingNodeNameTag()V
    .registers 0

    .prologue
    .line 1769
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingOpenTag()V

    .line 1770
    return-void
.end method

.method public static xdmDDFTNDSParsingNodeTag()V
    .registers 0

    .prologue
    .line 1764
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingOpenTag()V

    .line 1765
    return-void
.end method

.method public static xdmDDFTNDSParsingOpenTag()V
    .registers 8

    .prologue
    .line 1821
    const/4 v5, 0x0

    .line 1823
    .local v5, szWbxmlData:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1826
    .local v6, szXmlData:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1827
    .local v1, nTagLen:I
    const/4 v4, 0x0

    .line 1831
    .local v4, szTag:Ljava/lang/String;
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlSize()I

    move-result v2

    .line 1832
    .local v2, nWbxmlSize:I
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlData()Ljava/lang/String;

    move-result-object v5

    .line 1833
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1834
    .local v0, nTag:I
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLData()Ljava/lang/String;

    move-result-object v6

    .line 1835
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLSize()I

    move-result v3

    .line 1838
    .local v3, nXmlSize:I
    invoke-static {v0}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSManagePushTag(I)Z

    .line 1839
    invoke-static {v0}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSMakeOpenTagString(I)Ljava/lang/String;

    move-result-object v4

    .line 1840
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2e

    .line 1842
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 1844
    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1846
    :cond_2e
    add-int v7, v3, v1

    invoke-static {v7}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLSize(I)V

    .line 1847
    invoke-static {v6}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLData(Ljava/lang/String;)V

    .line 1850
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1851
    add-int/lit8 v2, v2, -0x1

    .line 1852
    invoke-static {v2}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlSize(I)V

    .line 1853
    invoke-static {v5}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlData(Ljava/lang/String;)V

    .line 1855
    const/4 v4, 0x0

    .line 1856
    return-void
.end method

.method public static xdmDDFTNDSParsingPathTag()V
    .registers 0

    .prologue
    .line 1811
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingOpenTag()V

    .line 1812
    return-void
.end method

.method public static xdmDDFTNDSParsingRTPropertiesTag()V
    .registers 0

    .prologue
    .line 1774
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingOpenTag()V

    .line 1775
    return-void
.end method

.method public static xdmDDFTNDSParsingSyncMLTag()V
    .registers 4

    .prologue
    .line 1718
    const/4 v2, 0x0

    .line 1723
    .local v2, szWbxmlData:Ljava/lang/String;
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlSize()I

    move-result v1

    .line 1724
    .local v1, nWbxmlSize:I
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlData()Ljava/lang/String;

    move-result-object v2

    .line 1726
    const/16 v0, 0x88

    .line 1729
    .local v0, nTag:I
    invoke-static {v0}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSManagePushTag(I)Z

    .line 1732
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1733
    add-int/lit8 v1, v1, -0x1

    .line 1734
    invoke-static {v1}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlSize(I)V

    .line 1735
    invoke-static {v2}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlData(Ljava/lang/String;)V

    .line 1736
    return-void
.end method

.method public static xdmDDFTNDSParsingTypeTag()V
    .registers 0

    .prologue
    .line 1785
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingOpenTag()V

    .line 1786
    return-void
.end method

.method public static xdmDDFTNDSParsingValueTag()V
    .registers 0

    .prologue
    .line 1795
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingOpenTag()V

    .line 1796
    return-void
.end method

.method public static xdmDDFTNDSParsingVerdtdTag()V
    .registers 0

    .prologue
    .line 1759
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingOpenTag()V

    .line 1760
    return-void
.end method

.method public static xdmDDFTNDSParsingWbxmlHeader()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    .line 1687
    const/4 v1, 0x0

    .line 1688
    .local v1, nWbxmlHeaderSize:I
    const/4 v0, 0x0

    .line 1689
    .local v0, nStringTableSize:I
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlData()Ljava/lang/String;

    move-result-object v2

    .line 1692
    .local v2, szWbxmlHeaderData:Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1693
    add-int/lit8 v1, v1, 0x1

    .line 1696
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1697
    add-int/lit8 v1, v1, 0x2

    .line 1700
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1701
    add-int/lit8 v1, v1, 0x1

    .line 1704
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1705
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1706
    add-int/lit8 v1, v1, 0x1

    .line 1709
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1710
    add-int/lit8 v1, v0, 0x5

    .line 1712
    invoke-static {v2}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlData(Ljava/lang/String;)V

    .line 1713
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlSize()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v3}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlSize(I)V

    .line 1714
    return-void
.end method

.method public static xdmDDFTNDSProcessStringData()V
    .registers 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2175
    const/4 v5, 0x0

    .line 2177
    .local v5, szWbxmlData:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2178
    .local v6, szXmlData:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 2182
    .local v4, pBufXmlData:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 2184
    .local v0, nDataLen:I
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlSize()I

    move-result v2

    .line 2185
    .local v2, nWbxmlSize:I
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlData()Ljava/lang/String;

    move-result-object v5

    .line 2186
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLData()Ljava/lang/String;

    move-result-object v6

    .line 2187
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2188
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLSize()I

    move-result v3

    .line 2190
    .local v3, nXmlSize:I
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 2191
    add-int/lit8 v0, v0, 0x1

    .line 2192
    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2194
    .local v1, nTag:I
    :goto_27
    if-nez v1, :cond_45

    .line 2202
    add-int v7, v3, v0

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLSize(I)V

    .line 2203
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLData(Ljava/lang/String;)V

    .line 2205
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 2206
    add-int/lit8 v7, v0, 0x1

    sub-int/2addr v2, v7

    .line 2207
    invoke-static {v2}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlSize(I)V

    .line 2208
    invoke-static {v5}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlData(Ljava/lang/String;)V

    .line 2209
    return-void

    .line 2196
    :cond_45
    int-to-char v7, v1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2197
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 2198
    add-int/lit8 v0, v0, 0x1

    .line 2199
    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_27
.end method

.method public static xdmDDFTNDSSetWbxmlData(Ljava/lang/String;)V
    .registers 2
    .parameter "szData"

    .prologue
    .line 1562
    sget-object v0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->gTndsData:Lcom/wssyncmldm/eng/parser/XDMTndsData;

    iput-object p0, v0, Lcom/wssyncmldm/eng/parser/XDMTndsData;->m_szWbxmlData:Ljava/lang/String;

    .line 1563
    return-void
.end method

.method public static xdmDDFTNDSSetWbxmlDataStart(Ljava/lang/String;)V
    .registers 2
    .parameter "szData"

    .prologue
    .line 1582
    sget-object v0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->gTndsData:Lcom/wssyncmldm/eng/parser/XDMTndsData;

    iput-object p0, v0, Lcom/wssyncmldm/eng/parser/XDMTndsData;->m_szWbxmlDataStart:Ljava/lang/String;

    .line 1583
    return-void
.end method

.method public static xdmDDFTNDSSetWbxmlSize(I)V
    .registers 2
    .parameter "nSize"

    .prologue
    .line 1557
    sget-object v0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->gTndsData:Lcom/wssyncmldm/eng/parser/XDMTndsData;

    iput p0, v0, Lcom/wssyncmldm/eng/parser/XDMTndsData;->nWbxmlDataSize:I

    .line 1558
    return-void
.end method

.method public static xdmDDFTNDSSetXMLData(Ljava/lang/String;)V
    .registers 2
    .parameter "szData"

    .prologue
    .line 1572
    sget-object v0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->gTndsData:Lcom/wssyncmldm/eng/parser/XDMTndsData;

    iput-object p0, v0, Lcom/wssyncmldm/eng/parser/XDMTndsData;->m_szXMLData:Ljava/lang/String;

    .line 1573
    return-void
.end method

.method public static xdmDDFTNDSSetXMLDataStart(Ljava/lang/String;)V
    .registers 2
    .parameter "szData"

    .prologue
    .line 1577
    sget-object v0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->gTndsData:Lcom/wssyncmldm/eng/parser/XDMTndsData;

    iput-object p0, v0, Lcom/wssyncmldm/eng/parser/XDMTndsData;->m_szXMLDataStart:Ljava/lang/String;

    .line 1578
    return-void
.end method

.method public static xdmDDFTNDSSetXMLSize(I)V
    .registers 2
    .parameter "nSize"

    .prologue
    .line 1567
    sget-object v0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->gTndsData:Lcom/wssyncmldm/eng/parser/XDMTndsData;

    iput p0, v0, Lcom/wssyncmldm/eng/parser/XDMTndsData;->nXMLDataSize:I

    .line 1568
    return-void
.end method

.method public static xdmDDFTNDSUderMgmtTreeTagParse()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2016
    const/4 v1, 0x0

    .line 2019
    .local v1, szData:Ljava/lang/String;
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlSize()I

    move-result v0

    .line 2020
    .local v0, nSize:I
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlData()Ljava/lang/String;

    move-result-object v1

    .line 2023
    :goto_a
    if-eqz v0, :cond_12

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2099
    :cond_12
    const/4 v3, 0x1

    :goto_13
    return v3

    .line 2025
    :cond_14
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 2027
    .local v2, wbxmlData:[B
    aget-byte v4, v2, v3

    sparse-switch v4, :sswitch_data_70

    .line 2090
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 2091
    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_13

    .line 2030
    :sswitch_28
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingCloseTag()V

    .line 2095
    :goto_2b
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlSize()I

    move-result v0

    .line 2096
    if-eqz v0, :cond_6e

    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlData()Ljava/lang/String;

    move-result-object v1

    :goto_35
    goto :goto_a

    .line 2034
    :sswitch_36
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSProcessStringData()V

    goto :goto_2b

    .line 2038
    :sswitch_3a
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingNodeTag()V

    goto :goto_2b

    .line 2042
    :sswitch_3e
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingNodeNameTag()V

    goto :goto_2b

    .line 2046
    :sswitch_42
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingRTPropertiesTag()V

    goto :goto_2b

    .line 2050
    :sswitch_46
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingFormatTag()V

    goto :goto_2b

    .line 2054
    :sswitch_4a
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingTypeTag()V

    goto :goto_2b

    .line 2058
    :sswitch_4e
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingDDFNameTag()V

    goto :goto_2b

    .line 2062
    :sswitch_52
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingValueTag()V

    goto :goto_2b

    .line 2066
    :sswitch_56
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingMIMETag()V

    goto :goto_2b

    .line 2070
    :sswitch_5a
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingAccessTypeTag()V

    goto :goto_2b

    .line 2074
    :sswitch_5e
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingPathTag()V

    goto :goto_2b

    .line 2078
    :sswitch_62
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingACLTag()V

    goto :goto_2b

    .line 2082
    :sswitch_66
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingVerdtdTag()V

    goto :goto_2b

    .line 2086
    :sswitch_6a
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingCodePage()Z

    goto :goto_2b

    .line 2096
    :cond_6e
    const/4 v1, 0x0

    goto :goto_35

    .line 2027
    :sswitch_data_70
    .sparse-switch
        0x0 -> :sswitch_6a
        0x1 -> :sswitch_28
        0x3 -> :sswitch_36
        0x45 -> :sswitch_5a
        0x46 -> :sswitch_62
        0x51 -> :sswitch_4e
        0x5c -> :sswitch_46
        0x61 -> :sswitch_56
        0x64 -> :sswitch_3a
        0x66 -> :sswitch_3e
        0x6c -> :sswitch_5e
        0x6f -> :sswitch_42
        0x75 -> :sswitch_4a
        0x76 -> :sswitch_52
        0x77 -> :sswitch_66
    .end sparse-switch
.end method

.method public static xdmDDFXmlTagCode(Ljava/lang/String;)I
    .registers 3
    .parameter "szName"

    .prologue
    .line 692
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_szDmXmlOmaTags:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_8

    .line 700
    const/4 v0, 0x0

    .end local v0           #i:I
    :cond_7
    return v0

    .line 694
    .restart local v0       #i:I
    :cond_8
    sget-object v1, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_szDmXmlOmaTags:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 692
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static xdmDDFXmlTagParsing(Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;)Z
    .registers 10
    .parameter "pTree"

    .prologue
    .line 850
    if-nez p0, :cond_4

    .line 852
    const/4 v3, 0x0

    .line 968
    :cond_3
    :goto_3
    return v3

    .line 854
    :cond_4
    const/4 v0, 0x0

    .line 855
    .local v0, XmlElement:Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;
    iget-object v1, p0, Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;->childlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    .line 857
    .local v1, childlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;
    const/4 v3, 0x1

    .line 858
    .local v3, ret:Z
    const-string v4, ""

    .line 859
    .local v4, szPath:Ljava/lang/String;
    const-string v5, ""

    .line 861
    .local v5, szPathTemp:Ljava/lang/String;
    :goto_c
    if-eqz p0, :cond_3

    .line 863
    iget-object v0, p0, Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;->object:Ljava/lang/Object;

    .end local v0           #XmlElement:Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;
    check-cast v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;

    .line 865
    .restart local v0       #XmlElement:Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;
    iget-object v6, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szTag:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_24

    .line 867
    const-string v6, "Tag:"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 868
    iget-object v6, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szTag:Ljava/lang/String;

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 871
    :cond_24
    iget-object v6, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_36

    .line 873
    const-string v6, "Name:"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 874
    iget-object v6, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szName:Ljava/lang/String;

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 877
    :cond_36
    iget-object v6, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_48

    .line 879
    const-string v6, "Path:"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 880
    iget-object v6, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 883
    :cond_48
    iget-object v6, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szData:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5a

    .line 885
    const-string v6, "Data:"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 886
    iget-object v6, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szData:Ljava/lang/String;

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 889
    :cond_5a
    iget-object v6, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szTag:Ljava/lang/String;

    invoke-static {v6}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFXmlTagCode(Ljava/lang/String;)I

    move-result v2

    .line 891
    .local v2, nTagCode:I
    iget-object v6, p0, Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;->parent:Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;

    if-nez v6, :cond_85

    .line 893
    const/4 v4, 0x0

    .line 895
    iget-object v6, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a7

    .line 897
    iget-object v4, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    .line 904
    :goto_6f
    iget-object v6, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szType:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_85

    .line 906
    iget-object v6, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szType:Ljava/lang/String;

    invoke-static {v6}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFCheckInbox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 907
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_85

    .line 909
    iput-object v4, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    .line 916
    :cond_85
    sget-object v6, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    iget-object v7, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    iget-object v8, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szName:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmAgentVerifyNewAccount(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;Ljava/lang/String;)Z

    .line 918
    sparse-switch v2, :sswitch_data_fc

    .line 960
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 961
    sget-object v6, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_szDmXmlOmaTags:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 964
    :cond_9f
    :goto_9f
    :sswitch_9f
    invoke-static {v1}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListGetNextObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;

    .restart local p0
    goto/16 :goto_c

    .line 901
    :cond_a7
    const-string v6, "Path is NULL."

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_6f

    .line 921
    :sswitch_ad
    invoke-static {v0}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFPrintNodePropert(Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;)V

    .line 922
    invoke-static {v0}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFCreateNodeToOM(Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;)Z

    move-result v3

    .line 924
    if-nez v3, :cond_b9

    .line 926
    const/4 v4, 0x0

    .line 927
    goto/16 :goto_3

    .line 931
    :cond_b9
    iget-object v6, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d7

    iget-object v6, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d7

    iget-object v6, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    const-string v7, "./"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d7

    .line 933
    const-string v4, "/"

    .line 936
    :cond_d7
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9f

    .line 938
    iget-object v6, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_eb

    .line 940
    iget-object v6, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 942
    :cond_eb
    invoke-static {p0, v4}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFCreateNode(Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;Ljava/lang/String;)Z

    .line 944
    const/16 v6, 0x2f

    invoke-static {v4, v6}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibStrrchr(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v5

    .line 946
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9f

    .line 948
    move-object v4, v5

    .line 951
    goto :goto_9f

    .line 918
    :sswitch_data_fc
    .sparse-switch
        0x1f -> :sswitch_9f
        0x20 -> :sswitch_9f
        0x22 -> :sswitch_9f
        0x24 -> :sswitch_ad
        0x37 -> :sswitch_9f
    .end sparse-switch
.end method

.method public static xdmTndsParseFinish()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 2775
    sput-object v0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->gTndsData:Lcom/wssyncmldm/eng/parser/XDMTndsData;

    .line 2776
    sput-object v0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->gstTagManage:Lcom/wssyncmldm/eng/parser/XDMTndsTagManage;

    .line 2777
    return-void
.end method

.method public static xdmTndsWbxmlParse(Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .parameter "szInData"
    .parameter "nInSize"

    .prologue
    const/4 v5, 0x0

    .line 1486
    const-string v2, ""

    .line 1488
    .local v2, szData:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1489
    .local v0, bSyncMLTag:Z
    const-string v3, ""

    .line 1491
    .local v3, szOutData:Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSInitParse(Ljava/lang/String;I)V

    .line 1493
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlSize()I

    move-result v1

    .line 1494
    .local v1, nSize:I
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlData()Ljava/lang/String;

    move-result-object v2

    .line 1497
    :goto_11
    if-eqz v1, :cond_19

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 1531
    :cond_19
    if-nez v0, :cond_1e

    .line 1533
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSAppendSyncMLCloseTag()V

    .line 1536
    :cond_1e
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLData()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    .line 1538
    :goto_23
    return-object v5

    .line 1499
    :cond_24
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 1501
    .local v4, wbxmlData:[B
    const/4 v6, 0x0

    aget-byte v6, v4, v6

    sparse-switch v6, :sswitch_data_5e

    .line 1522
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1523
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_23

    .line 1504
    :sswitch_3d
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingCodePage()Z

    .line 1527
    :goto_40
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlSize()I

    move-result v1

    .line 1528
    if-eqz v1, :cond_5b

    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlData()Ljava/lang/String;

    move-result-object v2

    :goto_4a
    goto :goto_11

    .line 1508
    :sswitch_4b
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingWbxmlHeader()V

    goto :goto_40

    .line 1512
    :sswitch_4f
    const/4 v0, 0x1

    .line 1513
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingSyncMLTag()V

    goto :goto_40

    .line 1517
    :sswitch_54
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingMgmtTreeTag()V

    .line 1518
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSUderMgmtTreeTagParse()Z

    goto :goto_40

    :cond_5b
    move-object v2, v5

    .line 1528
    goto :goto_4a

    .line 1501
    nop

    :sswitch_data_5e
    .sparse-switch
        0x0 -> :sswitch_3d
        0x2 -> :sswitch_4b
        0x60 -> :sswitch_54
        0x6d -> :sswitch_4f
    .end sparse-switch
.end method

.method public static xdmTndsXml2WbxmlConvert(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .parameter "szInData"
    .parameter "nInSize"

    .prologue
    const/4 v5, 0x0

    .line 2231
    const/4 v1, 0x0

    .line 2232
    .local v1, nXmlSize:I
    const-string v3, ""

    .line 2233
    .local v3, szXmlData:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2234
    .local v0, nChar:C
    const-string v2, ""

    .line 2236
    .local v2, szOutData:Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFInitConvert(Ljava/lang/String;I)V

    .line 2238
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLSize()I

    move-result v1

    .line 2239
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLData()Ljava/lang/String;

    move-result-object v3

    .line 2241
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    aget-char v0, v4, v5

    .line 2244
    :cond_18
    :goto_18
    if-nez v1, :cond_20

    .line 2273
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlData()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 2274
    :goto_1f
    return-object v4

    .line 2246
    :cond_20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sparse-switch v4, :sswitch_data_50

    .line 2261
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 2262
    const/4 v4, 0x0

    goto :goto_1f

    .line 2249
    :sswitch_34
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFConvertCheckTag()V

    .line 2265
    :goto_37
    :sswitch_37
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLSize()I

    move-result v1

    .line 2266
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLData()Ljava/lang/String;

    move-result-object v3

    .line 2267
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_18

    .line 2269
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    aget-char v0, v4, v5

    goto :goto_18

    .line 2255
    :sswitch_4c
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFConvertSkip1Byte()V

    goto :goto_37

    .line 2246
    :sswitch_data_50
    .sparse-switch
        0x0 -> :sswitch_4c
        0x2 -> :sswitch_37
        0x3 -> :sswitch_4c
        0xa -> :sswitch_4c
        0x3c -> :sswitch_34
    .end sparse-switch
.end method


# virtual methods
.method public characters([CII)V
    .registers 11
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    const/4 v6, 0x0

    .line 532
    new-instance v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;-><init>()V

    .line 534
    .local v0, XmlElement:Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "characters =     "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5, v6, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 536
    sget-object v4, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->CurXmlTree:Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;

    if-nez v4, :cond_26

    .line 686
    :cond_25
    :goto_25
    return-void

    .line 541
    :cond_26
    sget-object v4, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->CurXmlTree:Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;

    iget-object v0, v4, Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;->object:Ljava/lang/Object;

    .end local v0           #XmlElement:Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;
    check-cast v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;

    .line 543
    .restart local v0       #XmlElement:Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;
    if-eqz v0, :cond_25

    .line 548
    iget v4, p0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->gTagCode:I

    sparse-switch v4, :sswitch_data_152

    goto :goto_25

    .line 595
    :sswitch_34
    iget-object v2, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szDDFName:Ljava/lang/String;

    .line 597
    .local v2, szData:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b6

    .line 599
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 600
    .local v1, old_len:I
    const-string v3, ""

    .line 602
    .local v3, szTemp:Ljava/lang/String;
    invoke-virtual {v2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 603
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 605
    move-object v2, v3

    .line 613
    .end local v1           #old_len:I
    .end local v3           #szTemp:Ljava/lang/String;
    :goto_54
    iput-object v2, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szDDFName:Ljava/lang/String;

    goto :goto_25

    .line 551
    .end local v2           #szData:Ljava/lang/String;
    :sswitch_57
    iget-object v2, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szName:Ljava/lang/String;

    .line 553
    .restart local v2       #szData:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7a

    .line 555
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 556
    .restart local v1       #old_len:I
    const-string v3, ""

    .line 558
    .restart local v3       #szTemp:Ljava/lang/String;
    invoke-virtual {v2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 559
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 561
    move-object v2, v3

    .line 569
    .end local v1           #old_len:I
    .end local v3           #szTemp:Ljava/lang/String;
    :goto_77
    iput-object v2, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szName:Ljava/lang/String;

    goto :goto_25

    .line 565
    :cond_7a
    const-string v2, ""

    .line 566
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v6, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_77

    .line 573
    .end local v2           #szData:Ljava/lang/String;
    :sswitch_86
    iget-object v2, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    .line 575
    .restart local v2       #szData:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_aa

    .line 577
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 578
    .restart local v1       #old_len:I
    const-string v3, ""

    .line 580
    .restart local v3       #szTemp:Ljava/lang/String;
    invoke-virtual {v2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 581
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 583
    move-object v2, v3

    .line 591
    .end local v1           #old_len:I
    .end local v3           #szTemp:Ljava/lang/String;
    :goto_a6
    iput-object v2, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    goto/16 :goto_25

    .line 587
    :cond_aa
    const-string v2, ""

    .line 588
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v6, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_a6

    .line 609
    :cond_b6
    const-string v2, ""

    .line 610
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v6, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_54

    .line 617
    .end local v2           #szData:Ljava/lang/String;
    :sswitch_c2
    iget-object v2, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szMIME:Ljava/lang/String;

    .line 619
    .restart local v2       #szData:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e6

    .line 621
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 622
    .restart local v1       #old_len:I
    const-string v3, ""

    .line 624
    .restart local v3       #szTemp:Ljava/lang/String;
    invoke-virtual {v2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 625
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 627
    move-object v2, v3

    .line 635
    .end local v1           #old_len:I
    .end local v3           #szTemp:Ljava/lang/String;
    :goto_e2
    iput-object v2, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szMIME:Ljava/lang/String;

    goto/16 :goto_25

    .line 631
    :cond_e6
    const-string v2, ""

    .line 632
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v6, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_e2

    .line 639
    .end local v2           #szData:Ljava/lang/String;
    :sswitch_f2
    iget-object v2, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szType:Ljava/lang/String;

    .line 641
    .restart local v2       #szData:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_116

    .line 643
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 644
    .restart local v1       #old_len:I
    const-string v3, ""

    .line 646
    .restart local v3       #szTemp:Ljava/lang/String;
    invoke-virtual {v2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 647
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 649
    move-object v2, v3

    .line 657
    .end local v1           #old_len:I
    .end local v3           #szTemp:Ljava/lang/String;
    :goto_112
    iput-object v2, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szType:Ljava/lang/String;

    goto/16 :goto_25

    .line 653
    :cond_116
    const-string v2, ""

    .line 654
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v6, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_112

    .line 662
    .end local v2           #szData:Ljava/lang/String;
    :sswitch_122
    iget-object v2, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szData:Ljava/lang/String;

    .line 664
    .restart local v2       #szData:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_146

    .line 666
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 667
    .restart local v1       #old_len:I
    const-string v3, ""

    .line 669
    .restart local v3       #szTemp:Ljava/lang/String;
    invoke-virtual {v2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 670
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 672
    move-object v2, v3

    .line 680
    .end local v1           #old_len:I
    .end local v3           #szTemp:Ljava/lang/String;
    :goto_142
    iput-object v2, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szData:Ljava/lang/String;

    goto/16 :goto_25

    .line 676
    :cond_146
    const-string v2, ""

    .line 677
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v6, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_142

    .line 548
    :sswitch_data_152
    .sparse-switch
        0x11 -> :sswitch_34
        0x12 -> :sswitch_122
        0x21 -> :sswitch_c2
        0x26 -> :sswitch_57
        0x2c -> :sswitch_86
        0x35 -> :sswitch_f2
        0x36 -> :sswitch_122
    .end sparse-switch
.end method

.method public endDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 344
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    .line 345
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "szNameSpaceURI"
    .parameter "szLocalName"
    .parameter "szQualifiedName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 405
    new-instance v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;-><init>()V

    .line 406
    .local v0, XmlElement:Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "end =            "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 408
    sget-object v1, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->CurXmlTree:Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;

    if-nez v1, :cond_1e

    .line 527
    :cond_1d
    :goto_1d
    return-void

    .line 413
    :cond_1e
    sget-object v1, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->CurXmlTree:Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;

    iget-object v0, v1, Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;->object:Ljava/lang/Object;

    .end local v0           #XmlElement:Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;
    check-cast v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;

    .line 415
    .restart local v0       #XmlElement:Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;
    invoke-static {p2}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFXmlTagCode(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->gTagCode:I

    .line 417
    if-eqz v0, :cond_1d

    .line 422
    iget v1, p0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->gTagCode:I

    packed-switch v1, :pswitch_data_ae

    .line 525
    :cond_31
    :goto_31
    :pswitch_31
    const/4 v1, 0x0

    iput v1, p0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->gTagCode:I

    goto :goto_1d

    .line 425
    :pswitch_35
    sget-object v1, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->CurXmlTree:Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;

    iget-object v1, v1, Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;->parent:Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;

    sput-object v1, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->CurXmlTree:Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;

    goto :goto_31

    .line 433
    :pswitch_3c
    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 435
    const-string v1, "Node"

    iput-object v1, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szName:Ljava/lang/String;

    goto :goto_31

    .line 444
    :pswitch_49
    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 446
    const-string v1, "No Data"

    iput-object v1, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szData:Ljava/lang/String;

    goto :goto_31

    .line 451
    :pswitch_56
    iget v1, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->acl:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->acl:I

    goto :goto_31

    .line 455
    :pswitch_5d
    iget v1, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->acl:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->acl:I

    goto :goto_31

    .line 459
    :pswitch_64
    iget v1, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->acl:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->acl:I

    goto :goto_31

    .line 463
    :pswitch_6b
    iget v1, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->acl:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->acl:I

    goto :goto_31

    .line 467
    :pswitch_72
    iget v1, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->acl:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->acl:I

    goto :goto_31

    .line 471
    :pswitch_79
    iput v4, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->scope:I

    goto :goto_31

    .line 475
    :pswitch_7c
    iput v3, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->scope:I

    goto :goto_31

    .line 479
    :pswitch_7f
    const/4 v1, 0x6

    iput v1, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->format:I

    goto :goto_31

    .line 483
    :pswitch_83
    const/4 v1, 0x4

    iput v1, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->format:I

    goto :goto_31

    .line 487
    :pswitch_87
    const/4 v1, 0x5

    iput v1, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->format:I

    goto :goto_31

    .line 491
    :pswitch_8b
    const/16 v1, 0x8

    iput v1, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->format:I

    goto :goto_31

    .line 495
    :pswitch_90
    const/4 v1, 0x7

    iput v1, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->format:I

    goto :goto_31

    .line 499
    :pswitch_94
    const/4 v1, 0x3

    iput v1, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->format:I

    goto :goto_31

    .line 503
    :pswitch_98
    iput v4, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->format:I

    goto :goto_31

    .line 507
    :pswitch_9b
    iput v3, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->format:I

    goto :goto_31

    .line 511
    :pswitch_9e
    const/16 v1, 0x9

    iput v1, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->format:I

    goto :goto_31

    .line 515
    :pswitch_a3
    const/16 v1, 0xa

    iput v1, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->format:I

    goto :goto_31

    .line 519
    :pswitch_a8
    const/16 v1, 0xb

    iput v1, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->format:I

    goto :goto_31

    .line 422
    nop

    :pswitch_data_ae
    .packed-switch 0x7
        :pswitch_56
        :pswitch_9b
        :pswitch_98
        :pswitch_94
        :pswitch_83
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_a3
        :pswitch_31
        :pswitch_49
        :pswitch_6b
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_79
        :pswitch_72
        :pswitch_9e
        :pswitch_31
        :pswitch_5d
        :pswitch_87
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_35
        :pswitch_7f
        :pswitch_3c
        :pswitch_90
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_7c
        :pswitch_64
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_a8
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_49
        :pswitch_31
        :pswitch_31
        :pswitch_8b
    .end packed-switch
.end method

.method public startDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 351
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 352
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 10
    .parameter "szNameSpaceURI"
    .parameter "szLocalName"
    .parameter "szQualifiedName"
    .parameter "atts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 361
    invoke-static {p2}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFXmlTagCode(Ljava/lang/String;)I

    move-result v2

    .line 362
    .local v2, nTagCode:I
    iput v2, p0, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->gTagCode:I

    .line 363
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "start =          "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 365
    sparse-switch v2, :sswitch_data_56

    .line 400
    :goto_1b
    :sswitch_1b
    return-void

    .line 368
    :sswitch_1c
    new-instance v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;-><init>()V

    .line 370
    .local v0, XmlElement:Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;
    sget-object v3, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->CurXmlTree:Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;

    iget-object v3, v3, Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;->object:Ljava/lang/Object;

    if-nez v3, :cond_32

    .line 372
    sget-object v3, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->CurXmlTree:Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;

    iput-object v0, v3, Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;->object:Ljava/lang/Object;

    .line 374
    sget-object v3, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->CurXmlTree:Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;

    sput-object v3, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->XmlTree:Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;

    .line 391
    :goto_2f
    iput-object p2, v0, Lcom/wssyncmldm/eng/parser/XDM_DDFXmlElement;->m_szTag:Ljava/lang/String;

    goto :goto_1b

    .line 378
    :cond_32
    sget-object v3, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->CurXmlTree:Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;

    iget-object v3, v3, Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;->childlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    if-nez v3, :cond_40

    .line 380
    sget-object v3, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->CurXmlTree:Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;

    invoke-static {}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListCreateLinkedList()Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-result-object v4

    iput-object v4, v3, Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;->childlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    .line 383
    :cond_40
    new-instance v1, Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;

    invoke-direct {v1}, Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;-><init>()V

    .line 384
    .local v1, childtree:Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;
    sget-object v3, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->CurXmlTree:Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;

    iput-object v3, v1, Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;->parent:Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;

    .line 385
    iput-object v0, v1, Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;->object:Ljava/lang/Object;

    .line 387
    sget-object v3, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->CurXmlTree:Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;

    iget-object v3, v3, Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;->childlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v3, v1}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 389
    sput-object v1, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->CurXmlTree:Lcom/wssyncmldm/eng/parser/XDM_DM_Tree;

    goto :goto_2f

    .line 365
    nop

    :sswitch_data_56
    .sparse-switch
        0x16 -> :sswitch_1b
        0x24 -> :sswitch_1c
    .end sparse-switch
.end method
