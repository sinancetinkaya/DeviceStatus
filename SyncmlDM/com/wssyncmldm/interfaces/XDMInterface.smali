.class public interface abstract Lcom/wssyncmldm/interfaces/XDMInterface;
.super Ljava/lang/Object;
.source "XDMInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;,
        Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;,
        Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;
    }
.end annotation


# static fields
.field public static final ALERT_CLIENT_EVENT:Ljava/lang/String; = "1224"

.field public static final ALERT_CLIENT_INITIATED_MGMT:Ljava/lang/String; = "1201"

.field public static final ALERT_CONTINUE_OR_ABORT:Ljava/lang/String; = "1101"

.field public static final ALERT_DISPLAY:Ljava/lang/String; = "1100"

.field public static final ALERT_GENERIC:Ljava/lang/String; = "1226"

.field public static final ALERT_MULTIPLE_CHOICE:Ljava/lang/String; = "1104"

.field public static final ALERT_NEXT_MESSAGE:Ljava/lang/String; = "1222"

.field public static final ALERT_NO_END_OF_DATA:Ljava/lang/String; = "1225"

.field public static final ALERT_SERVER_INITIATED_MGMT:Ljava/lang/String; = "1200"

.field public static final ALERT_SESSION_ABORT:Ljava/lang/String; = "1223"

.field public static final ALERT_SINGLE_CHOICE:Ljava/lang/String; = "1103"

.field public static final ALERT_TEXT_INPUT:Ljava/lang/String; = "1102"

.field public static final ALERT_TYPE_DEV_INIT:Ljava/lang/String; = "org.openmobilealliance.dm.firmwareupdate.devicerequest"

.field public static final ALERT_TYPE_DOWNLOAD_AND_UPDATE_REPORT:Ljava/lang/String; = "org.openmobilealliance.dm.firmwareupdate.downloadandupdate"

.field public static final ALERT_TYPE_DOWNLOAD_REPORT:Ljava/lang/String; = "org.openmobilealliance.dm.firmwareupdate.download"

.field public static final ALERT_TYPE_UPDATE_REPORT:Ljava/lang/String; = "org.openmobilealliance.dm.firmwareupdate.update"

.field public static final ALERT_TYPE_USER_INIT:Ljava/lang/String; = "org.openmobilealliance.dm.firmwareupdate.userrequest"

.field public static final AUTH_TYPE_BASIC:Ljava/lang/String; = "BASIC"

.field public static final AUTH_TYPE_DIGEST:Ljava/lang/String; = "DIGEST"

.field public static final AUTH_TYPE_HMAC:Ljava/lang/String; = "HMAC"

.field public static final AUTH_TYPE_NONE:Ljava/lang/String; = "NONE"

.field public static final CMD_ADD:Ljava/lang/String; = "Add"

.field public static final CMD_ALERT:Ljava/lang/String; = "Alert"

.field public static final CMD_ATOMIC:Ljava/lang/String; = "Atomic"

.field public static final CMD_COPY:Ljava/lang/String; = "Copy"

.field public static final CMD_DELETE:Ljava/lang/String; = "Delete"

.field public static final CMD_EXEC:Ljava/lang/String; = "Exec"

.field public static final CMD_GET:Ljava/lang/String; = "Get"

.field public static final CMD_MAP:Ljava/lang/String; = "Map"

.field public static final CMD_PUT:Ljava/lang/String; = "Put"

.field public static final CMD_REPLACE:Ljava/lang/String; = "Replace"

.field public static final CMD_RESULTS:Ljava/lang/String; = "Results"

.field public static final CMD_SEQUENCE:Ljava/lang/String; = "Sequence"

.field public static final CMD_STATUS:Ljava/lang/String; = "Status"

.field public static final CMD_SYNC:Ljava/lang/String; = "Sync"

.field public static final CMD_SYNCHDR:Ljava/lang/String; = "SyncHdr"

.field public static final CRED_TYPE_BASIC:Ljava/lang/String; = "syncml:auth-basic"

.field public static final CRED_TYPE_HMAC:Ljava/lang/String; = "syncml:auth-MAC"

.field public static final CRED_TYPE_MD5:Ljava/lang/String; = "syncml:auth-md5"

.field public static final DEFAULT_DISPLAY_UIC_OPTION:Ljava/lang/String; = "MINDT=30"

.field public static final FUMO_X_NODE_COMMON:Ljava/lang/String; = "/COMMONPkg"

.field public static final FUMO_X_NODE_COUNT_COMMON:I = 0x1

.field public static final MIMETYPE_TEXT_PLAIN:Ljava/lang/String; = "text/plain"

.field public static final STATUS_ACCEPTED_AND_BUFFERED:Ljava/lang/String; = "213"

.field public static final STATUS_ACCEPTED_FOR_PROCESSING:Ljava/lang/String; = "202"

.field public static final STATUS_ALREADY_EXISTS:Ljava/lang/String; = "418"

.field public static final STATUS_ATOMIC_FAILED:Ljava/lang/String; = "507"

.field public static final STATUS_ATOMIC_RESPONSE_TOO_LARGE_TO_FIT:Ljava/lang/String; = "517"

.field public static final STATUS_ATOMIC_ROLL_BACK_FAILED:Ljava/lang/String; = "516"

.field public static final STATUS_ATOMIC_ROLL_BACK_OK:Ljava/lang/String; = "216"

.field public static final STATUS_AUTHENTICATIONACCEPTED:Ljava/lang/String; = "212"

.field public static final STATUS_AUTHENTICATION_REQUIRED:Ljava/lang/String; = "407"

.field public static final STATUS_COMMAND_FAILED:Ljava/lang/String; = "500"

.field public static final STATUS_COMMAND_NOT_ALLOWED:Ljava/lang/String; = "405"

.field public static final STATUS_DATA_STORE_FAILURE:Ljava/lang/String; = "510"

.field public static final STATUS_DEVICE_FULL:Ljava/lang/String; = "420"

.field public static final STATUS_FORBIDDEN:Ljava/lang/String; = "403"

.field public static final STATUS_INCOMPLETE_COMMAND:Ljava/lang/String; = "412"

.field public static final STATUS_NOT_EXECUTED:Ljava/lang/String; = "215"

.field public static final STATUS_NOT_FOUND:Ljava/lang/String; = "404"

.field public static final STATUS_NOT_MODIFIED:Ljava/lang/String; = "304"

.field public static final STATUS_OK:Ljava/lang/String; = "200"

.field public static final STATUS_OPERATION_CANCELLED:Ljava/lang/String; = "214"

.field public static final STATUS_OPTIONAL_FEATURE_NOT_SUPPORTED:Ljava/lang/String; = "406"

.field public static final STATUS_PERMISSION_DENIED:Ljava/lang/String; = "425"

.field public static final STATUS_REQUESTED_RANGE_NOT_SATISFIABLE:Ljava/lang/String; = "416"

.field public static final STATUS_REQUEST_ENTITY_TOO_LARGE:Ljava/lang/String; = "413"

.field public static final STATUS_REQUEST_TIMEOUT:Ljava/lang/String; = "408"

.field public static final STATUS_UNAUTHORIZED:Ljava/lang/String; = "401"

.field public static final STATUS_UNSUPPORTED_MEDEA_TYPE_OR_FORMAT:Ljava/lang/String; = "415"

.field public static final STATUS_URI_TOO_LONG:Ljava/lang/String; = "414"

.field public static final SYNCMLDL:I = 0x1

.field public static final SYNCMLDM:I = 0x0

.field public static final SYNCMLMAX:I = 0x2

.field public static final SYNCML_MIME_TYPE_TNDS_WBXML:Ljava/lang/String; = "application/vnd.syncml.dmtnds+wbxml"

.field public static final SYNCML_MIME_TYPE_TNDS_XML:Ljava/lang/String; = "application/vnd.syncml.dmtnds+xml"

.field public static final VERDTD_1_1:Ljava/lang/String; = "1.1"

.field public static final VERDTD_1_2:Ljava/lang/String; = "1.2"

.field public static final VERPROTO_1_1:Ljava/lang/String; = "DM/1.1"

.field public static final VERPROTO_1_2:Ljava/lang/String; = "DM/1.2"

.field public static final WBXML_STRING_TABLE_1_1:Ljava/lang/String; = "-//SYNCML//DTD SyncML 1.1//EN"

.field public static final WBXML_STRING_TABLE_1_2:Ljava/lang/String; = "-//SYNCML//DTD SyncML 1.2//EN"

.field public static final XDM_ABORT_AGENT_FAILURE:I = 0x4

.field public static final XDM_ABORT_ALERT_FROM_SERVER:I = 0xa

.field public static final XDM_ABORT_AUTHENTICATION_FAILURE:I = 0x3

.field public static final XDM_ABORT_CONNECT_CLOSE:I = 0x8

.field public static final XDM_ABORT_PARSING_FAILURE:I = 0x9

.field public static final XDM_ABORT_RECV_FAILURE:I = 0x6

.field public static final XDM_ABORT_RECV_TIMEOUT:I = 0x7

.field public static final XDM_ABORT_SEND_FAILURE:I = 0x5

.field public static final XDM_ABORT_TIMEOUT:I = 0x2

.field public static final XDM_ABORT_USER_REQUEST:I = 0x1

.field public static final XDM_ACC_AAUTHPREF_PATH:Ljava/lang/String; = "/AAuthPref"

.field public static final XDM_ACC_ADDRTYPE_PATH:Ljava/lang/String; = "/AddrType"

.field public static final XDM_ACC_ADDR_PATH:Ljava/lang/String; = "/Addr"

.field public static final XDM_ACC_APPADDR_PATH:Ljava/lang/String; = "/AppAddr"

.field public static final XDM_ACC_APPAUTH_PATH:Ljava/lang/String; = "/AppAuth"

.field public static final XDM_ACC_APPID_PATH:Ljava/lang/String; = "/AppID"

.field public static final XDM_ACC_AUTHPREF_PATH:Ljava/lang/String; = "/AuthPref"

.field public static final XDM_ACC_CLIENTNONCE_PATH:Ljava/lang/String; = "/ClientNonce"

.field public static final XDM_ACC_CLIENTPW_PATH:Ljava/lang/String; = "/ClientPW"

.field public static final XDM_ACC_CONREF_PATH:Ljava/lang/String; = "/ConRef"

.field public static final XDM_ACC_EXT_PATH:Ljava/lang/String; = "/Ext"

.field public static final XDM_ACC_NAME_PATH:Ljava/lang/String; = "/Name"

.field public static final XDM_ACC_PATH:Ljava/lang/String; = "./SyncML/DMAcc"

.field public static final XDM_ACC_PORTNBR_PATH:Ljava/lang/String; = "/PortNbr"

.field public static final XDM_ACC_PREFCONREF_PATH:Ljava/lang/String; = "/PrefConRef"

.field public static final XDM_ACC_SERVERID_PATH:Ljava/lang/String; = "/ServerID"

.field public static final XDM_ACC_SERVERID_PATH_1_1:Ljava/lang/String; = "/ServerId"

.field public static final XDM_ACC_SERVERNONCE_PATH:Ljava/lang/String; = "/ServerNonce"

.field public static final XDM_ACC_SERVERPW_PATH:Ljava/lang/String; = "/ServerPW"

.field public static final XDM_ACC_TOCONREF_PATH:Ljava/lang/String; = "/ToConRef"

.field public static final XDM_ACC_USERNAME_PATH:Ljava/lang/String; = "/UserName"

.field public static final XDM_AGENT_DM:I = 0x0

.field public static final XDM_AGENT_FUMO:I = 0x1

.field public static final XDM_APPADDR_ADDRTYPE_PATH:Ljava/lang/String; = "/AddrType"

.field public static final XDM_APPADDR_ADDR_PATH:Ljava/lang/String; = "/Addr"

.field public static final XDM_APPADDR_PORT_PATH:Ljava/lang/String; = "/Port"

.field public static final XDM_APPADDR_PORT_PORTNUMBER_PATH:Ljava/lang/String; = "/PortNbr"

.field public static final XDM_APPAUTH_AAUTHDATA_PATH:Ljava/lang/String; = "/AAuthData"

.field public static final XDM_APPAUTH_AAUTHLEVEL_PATH:Ljava/lang/String; = "/AAuthLevel"

.field public static final XDM_APPAUTH_AAUTHNAME_PATH:Ljava/lang/String; = "/AAuthName"

.field public static final XDM_APPAUTH_AAUTHSECRET_PATH:Ljava/lang/String; = "/AAuthSecret"

.field public static final XDM_APPAUTH_AAUTHTYPE_PATH:Ljava/lang/String; = "/AAuthType"

.field public static final XDM_ATT_BASE_ACCOUNT_PATH:Ljava/lang/String; = "./DMAcc"

.field public static final XDM_AUTH_STATE_FAIL:I = -0x1

.field public static final XDM_AUTH_STATE_INVALID_CRED:I = -0x2

.field public static final XDM_AUTH_STATE_MISSING_CRED:I = -0x3

.field public static final XDM_AUTH_STATE_NONE:I = -0x8

.field public static final XDM_AUTH_STATE_OK:I = 0x1

.field public static final XDM_AUTH_STATE_OK_PENDING:I = 0x0

.field public static final XDM_AUTH_STATE_REQUIRED:I = -0x9

.field public static final XDM_AUTH_STATE_RETRY:I = -0x7

.field public static final XDM_AUTOINSTALL_POSTPONE:I = 0x4

.field public static final XDM_BASE_ACCOUNT_PATH:Ljava/lang/String; = "."

.field public static final XDM_BASE_ACCOUNT_PATH_1_1:Ljava/lang/String; = "./SyncML/DMAcc"

.field public static final XDM_BASE_CON_PATH:Ljava/lang/String; = "./SyncML/Con"

.field public static final XDM_CONNECTION_NAME:Ljava/lang/String; = "DM Profile"

.field public static final XDM_CON_EXT_PATH:Ljava/lang/String; = "/Ext"

.field public static final XDM_CON_EXT_SERVICE_PATH:Ljava/lang/String; = "/Ext/Service"

.field public static final XDM_CON_NAP_ADDRTYPE_PATH:Ljava/lang/String; = "/NAP/AddrType"

.field public static final XDM_CON_NAP_ADDR_PATH:Ljava/lang/String; = "/NAP/Addr"

.field public static final XDM_CON_NAP_AUTH_CHAP_ID_PATH:Ljava/lang/String; = "/NAP/Auth/CHAP/Id"

.field public static final XDM_CON_NAP_AUTH_CHAP_PATH:Ljava/lang/String; = "/NAP/Auth/CHAP"

.field public static final XDM_CON_NAP_AUTH_CHAP_SEC_PATH:Ljava/lang/String; = "/NAP/Auth/CHAP/Secret"

.field public static final XDM_CON_NAP_AUTH_PAP_ID_PATH:Ljava/lang/String; = "/NAP/Auth/PAP/Id"

.field public static final XDM_CON_NAP_AUTH_PAP_PATH:Ljava/lang/String; = "/NAP/Auth/PAP"

.field public static final XDM_CON_NAP_AUTH_PAP_SEC_PATH:Ljava/lang/String; = "/NAP/Auth/PAP/Secret"

.field public static final XDM_CON_NAP_AUTH_PATH:Ljava/lang/String; = "/NAP/Auth"

.field public static final XDM_CON_NAP_BEARER_PATH:Ljava/lang/String; = "/NAP/Bearer"

.field public static final XDM_CON_NAP_PATH:Ljava/lang/String; = "/NAP"

.field public static final XDM_CON_PX_ADDRTYPE_PATH:Ljava/lang/String; = "/PX/AddrType"

.field public static final XDM_CON_PX_ADDR_PATH:Ljava/lang/String; = "/PX/Addr"

.field public static final XDM_CON_PX_AUTH_PATH:Ljava/lang/String; = "/PX/Auth"

.field public static final XDM_CON_PX_PATH:Ljava/lang/String; = "/PX"

.field public static final XDM_CON_PX_PORTNBR_PATH:Ljava/lang/String; = "/PX/PortNbr"

.field public static final XDM_CRED_TYPE_BASIC:I = 0x0

.field public static final XDM_CRED_TYPE_HMAC:I = 0x2

.field public static final XDM_CRED_TYPE_MD5:I = 0x1

.field public static final XDM_CRED_TYPE_MD5_NOT_BASE64:I = 0x3

.field public static final XDM_CRED_TYPE_NONE:I = -0x1

.field public static final XDM_CRED_TYPE_SHA1:I = 0x4

.field public static final XDM_DEFAULT_BIG_BUFFER_SIZE:J = 0x400L

.field public static final XDM_DEFAULT_BIG_BUFFER_SIZE_2:J = 0x800L

.field public static final XDM_DEFAULT_BUFFER_SIZE:I = 0x20

.field public static final XDM_DEFAULT_BUFFER_SIZE_2:I = 0x40

.field public static final XDM_DEFAULT_BUFFER_SIZE_3:I = 0x80

.field public static final XDM_DEFAULT_BUFFER_SIZE_4:I = 0x100

.field public static final XDM_DEFAULT_BUFFER_SIZE_5:J = 0x200L

.field public static final XDM_DEFAULT_BUFFER_SIZE_HALF:I = 0x10

.field public static final XDM_DEFAULT_CONREF:Ljava/lang/String; = "dataProxy"

.field public static final XDM_DEVDETAIL_BEARER_PATH:Ljava/lang/String; = "./DevDetail/Bearer"

.field public static final XDM_DEVDETAIL_DEFAULT_DEVTYPE:Ljava/lang/String; = "phone"

.field public static final XDM_DEVDETAIL_DEFAULT_LRGOBJ_SUPPORT:Ljava/lang/String; = "false"

.field public static final XDM_DEVDETAIL_DEFAULT_URI_SUBNODE_VALUE:Ljava/lang/String; = "0"

.field public static final XDM_DEVDETAIL_DEVTYPE_PATH:Ljava/lang/String; = "./DevDetail/DevTyp"

.field public static final XDM_DEVDETAIL_EXT_PATH:Ljava/lang/String; = "./DevDetail/Ext"

.field public static final XDM_DEVDETAIL_FWV_PATH:Ljava/lang/String; = "./DevDetail/FwV"

.field public static final XDM_DEVDETAIL_HWV_PATH:Ljava/lang/String; = "./DevDetail/HwV"

.field public static final XDM_DEVDETAIL_LRGOBJ_PATH:Ljava/lang/String; = "./DevDetail/LrgObj"

.field public static final XDM_DEVDETAIL_OEM_PATH:Ljava/lang/String; = "./DevDetail/OEM"

.field public static final XDM_DEVDETAIL_PATH:Ljava/lang/String; = "./DevDetail"

.field public static final XDM_DEVDETAIL_SWV_PATH:Ljava/lang/String; = "./DevDetail/SwV"

.field public static final XDM_DEVDETAIL_URI_MAXDEPTH_PATH:Ljava/lang/String; = "./DevDetail/URI/MaxDepth"

.field public static final XDM_DEVDETAIL_URI_MAXSEGLEN_PATH:Ljava/lang/String; = "./DevDetail/URI/MaxSegLen"

.field public static final XDM_DEVDETAIL_URI_MAXTOLEN_PATH:Ljava/lang/String; = "./DevDetail/URI/MaxTotLen"

.field public static final XDM_DEVDETAIL_URI_PATH:Ljava/lang/String; = "./DevDetail/URI"

.field public static final XDM_DEVICE_INIT:I = 0x2

.field public static final XDM_DEVINFO_BEARER_PATH:Ljava/lang/String; = "./DevInfo/Bearer"

.field public static final XDM_DEVINFO_DEFAULT_DMV1_1:Ljava/lang/String; = " 1.1"

.field public static final XDM_DEVINFO_DEFAULT_DMV1_2:Ljava/lang/String; = " 1.2"

.field public static final XDM_DEVINFO_DEFAULT_LANG:Ljava/lang/String; = "en-us"

.field public static final XDM_DEVINFO_DEVID_PATH:Ljava/lang/String; = "./DevInfo/DevId"

.field public static final XDM_DEVINFO_DMV_PATH:Ljava/lang/String; = "./DevInfo/DmV"

.field public static final XDM_DEVINFO_EXT_PATH:Ljava/lang/String; = "./DevInfo/Ext"

.field public static final XDM_DEVINFO_LANG_PATH:Ljava/lang/String; = "./DevInfo/Lang"

.field public static final XDM_DEVINFO_MAN_PATH:Ljava/lang/String; = "./DevInfo/Man"

.field public static final XDM_DEVINFO_MOD_PATH:Ljava/lang/String; = "./DevInfo/Mod"

.field public static final XDM_DEVINFO_PATH:Ljava/lang/String; = "./DevInfo"

.field public static final XDM_DL_DELTA_DOWNLOAD_AFTER:I = 0x2

.field public static final XDM_DL_DELTA_DOWNLOAD_BEFORE:I = 0x1

.field public static final XDM_DM_START_POSTPONE:I = 0x1

.field public static final XDM_DOWNLOAD_POSTPONE:I = 0x2

.field public static final XDM_FORMAT_B64:I = 0x1

.field public static final XDM_FORMAT_BIN:I = 0x2

.field public static final XDM_FORMAT_BOOL:I = 0x3

.field public static final XDM_FORMAT_CHR:I = 0x4

.field public static final XDM_FORMAT_DATE:I = 0xa

.field public static final XDM_FORMAT_FLOAT:I = 0x9

.field public static final XDM_FORMAT_INT:I = 0x5

.field public static final XDM_FORMAT_NODE:I = 0x6

.field public static final XDM_FORMAT_NONE:I = 0xc

.field public static final XDM_FORMAT_NULL:I = 0x7

.field public static final XDM_FORMAT_TIME:I = 0xb

.field public static final XDM_FORMAT_XML:I = 0x8

.field public static final XDM_FOTA_MECHANISM_ALTERNATIVE:I = 0x2

.field public static final XDM_FOTA_MECHANISM_ALTERNATIVE_DOWNLOAD:I = 0x3

.field public static final XDM_FOTA_MECHANISM_NONE:I = 0x0

.field public static final XDM_FOTA_MECHANISM_REPLACE:I = 0x1

.field public static final XDM_FOTA_MECHANISM_UPDATE:I = 0x4

.field public static final XDM_HTTP_RETRY_COUNT:I = 0x3

.field public static final XDM_MAX_ACL_NUM:I = 0xa

.field public static final XDM_MAX_ADDRESS_LENGTH:I = 0x80

.field public static final XDM_MAX_APN_LENGTH:I = 0x80

.field public static final XDM_MAX_AUTH_COUNT:I = 0x3

.field public static final XDM_MAX_CHILD_NUM:I = 0x64

.field public static final XDM_MAX_ID_LENGTH:I = 0x80

.field public static final XDM_MAX_IPV4ADDR_INTEGER_MAX_LENGTH:I = 0x6

.field public static final XDM_MAX_NODENAME_SIZE:J = 0x100L

.field public static final XDM_MAX_NODE_NUM:J = 0x400L

.field public static final XDM_MAX_PASSWORD_LENGTH:I = 0x80

.field public static final XDM_MAX_PATH_LENGTH:I = 0x80

.field public static final XDM_MAX_PORT_LENGTH:I = 0x6

.field public static final XDM_MAX_PROTOCOL_LENGTH:I = 0x10

.field public static final XDM_MAX_SPACE_SIZE:J = 0xa000L

.field public static final XDM_MAX_TYPE_NUM:I = 0xa

.field public static final XDM_MAX_URL_LENGTH:I = 0x100

.field public static final XDM_MECHANISM_END:I = 0xf

.field public static final XDM_MEGA_BYTE_SIZE:D = 1048576.0

.field public static final XDM_MEMORY_CACHE:I = 0x0

.field public static final XDM_MEMORY_EXTERNAL:I = 0x2

.field public static final XDM_MEMORY_EXTERNAL_SD:I = 0x3

.field public static final XDM_MEMORY_INTERIOR:I = 0x1

.field public static final XDM_NETWORK_STATE_ALREADY_DOWNLOAD:I = 0x3

.field public static final XDM_NETWORK_STATE_NOT_READY:I = 0x1

.field public static final XDM_NETWORK_STATE_NOT_USE:I = 0x0

.field public static final XDM_NETWORK_STATE_USING:I = 0x2

.field public static final XDM_NONE_INIT:I = 0x0

.field public static final XDM_NOTI_RESYNC_MODE_FALSE:I = 0x0

.field public static final XDM_NOTI_RESYNC_MODE_TRUE:I = 0x1

.field public static final XDM_OMACL_ADD:I = 0x1

.field public static final XDM_OMACL_DELETE:I = 0x2

.field public static final XDM_OMACL_EXEC:I = 0x4

.field public static final XDM_OMACL_GET:I = 0x8

.field public static final XDM_OMACL_NONE:I = 0x0

.field public static final XDM_OMACL_REPLACE:I = 0x10

.field public static final XDM_OMA_ALTERNATIVE:Ljava/lang/String; = "/DownloadAndUpdate/PkgURL"

.field public static final XDM_OMA_ALTERNATIVE_2:Ljava/lang/String; = "/Download/PkgURL"

.field public static final XDM_OMA_EXEC_ALTERNATIVE:Ljava/lang/String; = "/DownloadAndUpdate"

.field public static final XDM_OMA_EXEC_ALTERNATIVE_2:Ljava/lang/String; = "/Download"

.field public static final XDM_OMA_EXEC_REPLACE:Ljava/lang/String; = "/Update"

.field public static final XDM_OMA_MECHANISM:Ljava/lang/String; = "/Mechanism"

.field public static final XDM_OMA_REPLACE:Ljava/lang/String; = "/Update/PkgData"

.field public static final XDM_OMA_REPLACE_SVCSTATE:Ljava/lang/String; = "/SvcState"

.field public static final XDM_OMVFSPACK_ACL:I = 0x46

.field public static final XDM_OMVFSPACK_ENDNODE:I = 0x44

.field public static final XDM_OMVFSPACK_STARTNODE:I = 0x42

.field public static final XDM_OMVFS_ERR_BUFFER_NOT_ENOUGH:I = -0x3

.field public static final XDM_OMVFS_ERR_FAILED:I = -0x4

.field public static final XDM_OMVFS_ERR_INVALIDPARAMETER:I = -0x1

.field public static final XDM_OMVFS_ERR_NOEFFECT:I = -0x2

.field public static final XDM_OMVFS_ERR_NOSPACE:I = -0x5

.field public static final XDM_OMVFS_ERR_OK:I = 0x0

.field public static final XDM_POSTPONE_NONE:I = 0x0

.field public static final XDM_PROCESS_STEP_ATOMIC:I = 0x2

.field public static final XDM_PROCESS_STEP_FINISH:I = 0x3

.field public static final XDM_PROCESS_STEP_NORMAL:I = 0x0

.field public static final XDM_PROCESS_STEP_SEQUENCE:I = 0x1

.field public static final XDM_PROFILE_NUM:I = 0x3

.field public static final XDM_REGISTRATION_INIT:I = 0x3

.field public static final XDM_RESULT_REPORT_ASYNC:I = 0x1

.field public static final XDM_RESULT_REPORT_GENRIC_COMPLETE:I = 0x2

.field public static final XDM_RESULT_REPORT_SYNC:I = 0x0

.field public static final XDM_RESUME_STATUS_DL_FAIL:I = 0x2

.field public static final XDM_RESUME_STATUS_DM_FAIL:I = 0x1

.field public static final XDM_RESUME_STATUS_NONE:I = 0x0

.field public static final XDM_RET_ABORT:I = 0x9

.field public static final XDM_RET_ALERT_SESSION_ABORT:I = 0x3

.field public static final XDM_RET_AUTH_MAX_ERROR:I = -0x6

.field public static final XDM_RET_BUFFER_SIZE_EXCEEDED:I = -0x4

.field public static final XDM_RET_CHANGED_PROFILE:I = 0x4

.field public static final XDM_RET_CONNECT_FAIL:I = -0x7

.field public static final XDM_RET_EXEC_ALTERNATIVE:I = 0x2

.field public static final XDM_RET_EXEC_ALTERNATIVE_DOWNLOAD:I = 0x5

.field public static final XDM_RET_EXEC_ALTERNATIVE_UPDATE:I = 0x6

.field public static final XDM_RET_EXEC_DOWNLOAD_COMPLETE:I = 0x7

.field public static final XDM_RET_EXEC_REPLACE:I = 0x1

.field public static final XDM_RET_FAILED:I = -0x1

.field public static final XDM_RET_FINISH:I = 0x8

.field public static final XDM_RET_OK:I = 0x0

.field public static final XDM_RET_PARSE_ERROR:I = -0x2

.field public static final XDM_RET_PAUSED_BECAUSE_UIC_COMMAND:I = -0x5

.field public static final XDM_RET_RECV_TIMEOUT:I = -0x3

.field public static final XDM_RET_UNKNOWN_ERROR:I = -0x9

.field public static final XDM_SCOPE_DYNAMIC:I = 0x2

.field public static final XDM_SCOPE_NONE:I = 0x0

.field public static final XDM_SCOPE_PERMANENT:I = 0x1

.field public static final XDM_SDCARD_POSTPONE:I = 0x5

.field public static final XDM_SYNCML_PATH:Ljava/lang/String; = "./SyncML"

.field public static final XDM_SYNC_BOOTSTARP:I = 0x3

.field public static final XDM_SYNC_COMPLETE:I = 0x2

.field public static final XDM_SYNC_NONE:I = 0x0

.field public static final XDM_SYNC_RUN:I = 0x1

.field public static final XDM_SYSTEM_SYSSCOPE_NOT_OK:I = 0x1

.field public static final XDM_SYSTEM_SYSSCOPE_NOT_SCAN:I = -0x1

.field public static final XDM_SYSTEM_SYSSCOPE_OK:I = 0x0

.field public static final XDM_TASK_ACTIVE:I = 0x1

.field public static final XDM_TASK_NONE:I = 0x0

.field public static final XDM_TASK_RETRY:I = 0x2

.field public static final XDM_TNDS_PROPERTY_ACL:I = 0x1

.field public static final XDM_TNDS_PROPERTY_FORMAT:I = 0x2

.field public static final XDM_TNDS_PROPERTY_TYPE:I = 0x4

.field public static final XDM_TNDS_PROPERTY_VALUE:I = 0x8

.field public static final XDM_TOCONREF_CONREF_PATH:Ljava/lang/String; = "/ConRef"

.field public static final XDM_TYPE_EXTENSION:I = 0x2

.field public static final XDM_TYPE_OPAQUE:I = 0x1

.field public static final XDM_TYPE_STRING:I = 0x0

.field public static final XDM_UI_MODE_BACKGROUND:I = 0x2

.field public static final XDM_UI_MODE_FOREGROUND:I = 0x1

.field public static final XDM_UI_MODE_MANDATORY_FOTA:I = 0x3

.field public static final XDM_UI_MODE_NONE:I = 0x0

.field public static final XDM_UPDATE_POSTPONE:I = 0x3

.field public static final XDM_USER_INIT:I = 0x1

.field public static final XDM_WBXML_ENCODING_BUF_SIZE:I = 0x1c00

.field public static final XDM_WBXML_MAX_MESSAGE_SIZE:I = 0x1400

.field public static final XDM_WBXML_MAX_OBJECT_SIZE:I = 0x100000

.field public static final XDM_WSSYNCML_PATH:Ljava/lang/String; = "data/data/com.wssyncmldm/"
