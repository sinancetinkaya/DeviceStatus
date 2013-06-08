.class public interface abstract Lcom/wssyncmldm/interfaces/XTPInterface;
.super Ljava/lang/Object;
.source "XTPInterface.java"


# static fields
.field public static final XTP_CHUNKED:I = 0x1

.field public static final XTP_CONNECTION_STRING:Ljava/lang/String; = "connection:"

.field public static final XTP_CONNECT_TIME_OUT:I = 0xea60

.field public static final XTP_CONTENT_LEN_STRING:Ljava/lang/String; = "content-length:"

.field public static final XTP_CONTENT_RANGE_STRING:Ljava/lang/String; = "content-range:"

.field public static final XTP_CONTENT_XDM_TYPE_STRING:Ljava/lang/String; = "content-type:"

.field public static final XTP_COOKIE:Ljava/lang/String; = "set-cookie:"

.field public static final XTP_COOKIE_JSESSIONID:Ljava/lang/String; = "jsessionid"

.field public static final XTP_CRLF_STRING:Ljava/lang/String; = "\r\n"

.field public static final XTP_DL_RETRY_COUNT_MAX:I = 0xf

.field public static final XTP_DL_RETRY_FAIL_COUNT_MAX:I = 0x1

.field public static final XTP_HOST_STRING:Ljava/lang/String; = "host:"

.field public static final XTP_HTTP_ACCEPT:Ljava/lang/String; = "Accept"

.field public static final XTP_HTTP_ACCEPT_CHARSET:Ljava/lang/String; = "Accept-Charset"

.field public static final XTP_HTTP_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field public static final XTP_HTTP_ACCEPT_LANGUAGE:Ljava/lang/String; = "Accept-Language"

.field public static final XTP_HTTP_CACHE_CONTROL:Ljava/lang/String; = "Cache-Control"

.field public static final XTP_HTTP_CACHE_CONTROL_MODE:Ljava/lang/String; = "no-store, private"

.field public static final XTP_HTTP_CLOSE:Ljava/lang/String; = "Close"

.field public static final XTP_HTTP_CONNECTION:Ljava/lang/String; = "Connection"

.field public static final XTP_HTTP_CONNECTION_CLOSE:I = 0x1

.field public static final XTP_HTTP_CONNECTION_KEEP_ALIVE:I = 0x2

.field public static final XTP_HTTP_CONNECTION_NONE:I = 0x0

.field public static final XTP_HTTP_CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field public static final XTP_HTTP_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final XTP_HTTP_COOKIE:Ljava/lang/String; = "Cookie"

.field public static final XTP_HTTP_DM_USER_AGENT:Ljava/lang/String; = "SyncML_DM Client"

.field public static final XTP_HTTP_HEADER_DL_ACCEPT:Ljava/lang/String; = "application/vnd.oma.dd+xml"

.field public static final XTP_HTTP_HEADER_DL_CONTENT_TYPE:Ljava/lang/String; = "application/vnd.oma.dd+xml"

.field public static final XTP_HTTP_HEADER_DM_ACCEPT:Ljava/lang/String; = "application/vnd.syncml.dm+wbxml"

.field public static final XTP_HTTP_HOST:Ljava/lang/String; = "Host"

.field public static final XTP_HTTP_KEEPALIVE:Ljava/lang/String; = "Keep-Alive"

.field public static final XTP_HTTP_LANGUAGE:Ljava/lang/String; = "en"

.field public static final XTP_HTTP_METHOD_CONNECT:Ljava/lang/String; = "CONNECT"

.field public static final XTP_HTTP_METHOD_GET:Ljava/lang/String; = "GET"

.field public static final XTP_HTTP_METHOD_POST:Ljava/lang/String; = "POST"

.field public static final XTP_HTTP_MIME_DM_WBXML_TYPES:Ljava/lang/String; = "application/vnd.syncml.dm+wbxml"

.field public static final XTP_HTTP_MIME_DM_XML_TYPES:Ljava/lang/String; = "application/vnd.syncml.dm+xml"

.field public static final XTP_HTTP_RANGE:Ljava/lang/String; = "Range"

.field public static final XTP_HTTP_SET_COOKIE:Ljava/lang/String; = "set-cookie: jsessionid="

.field public static final XTP_HTTP_TYPE:Ljava/lang/String; = "application/vnd.syncml+wbxml"

.field public static final XTP_HTTP_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field public static final XTP_HTTP_UTF8:Ljava/lang/String; = "UTF-8"

.field public static final XTP_HTTP_VERSION:Ljava/lang/String; = "HTTP/1.1"

.field public static final XTP_HTTP_X_SYNCML_HMAC:Ljava/lang/String; = "x-syncml-hmac"

.field public static final XTP_NETWORK_TYPE_HTTP:Ljava/lang/String; = "http"

.field public static final XTP_NETWORK_TYPE_HTTPS:Ljava/lang/String; = "https"

.field public static final XTP_NETWORK_TYPE_WAP:Ljava/lang/String; = "wap"

.field public static final XTP_NOT_CHUNKED:I = 0x0

.field public static final XTP_RECEIVE_TIME_OUT:I = 0xea60

.field public static final XTP_RETRY_COUNT_MAX:I = 0x3

.field public static final XTP_RETRY_COUNT_NONE:I = 0x0

.field public static final XTP_RET_CHANGED_PROFILE:I = 0x7

.field public static final XTP_RET_CONNECTION_FAIL:I = -0x2

.field public static final XTP_RET_DOWNLOAD_URL_READ_FAIL:I = -0x7

.field public static final XTP_RET_FILE_ERROR:I = -0x9

.field public static final XTP_RET_HTTP_RES_FAIL:I = -0x6

.field public static final XTP_RET_INIT_FAIL:I = -0x1

.field public static final XTP_RET_INVALID_PARAM:I = -0x5

.field public static final XTP_RET_MEMROY_ERROR:I = -0x8

.field public static final XTP_RET_OK:I = 0x0

.field public static final XTP_RET_RECEIVE_FAIL:I = -0x4

.field public static final XTP_RET_SEND_FAIL:I = -0x3

.field public static final XTP_SEND_TIME_OUT:I = 0xea60

.field public static final XTP_SSL_TUNNEL_CLOSED:I = 0x4

.field public static final XTP_SSL_TUNNEL_CONNECTED:I = 0x3

.field public static final XTP_SSL_TUNNEL_CONNECTING:I = 0x2

.field public static final XTP_SSL_TUNNEL_MODE_ACTIVE:I = 0x3

.field public static final XTP_SSL_TUNNEL_MODE_DEACTIVE:I = 0x2

.field public static final XTP_SSL_TUNNEL_MODE_NONE:I = 0x0

.field public static final XTP_SSL_TUNNEL_MODE_NOT_USED:I = 0x1

.field public static final XTP_SSL_TUNNEL_NONE:I = 0x0

.field public static final XTP_SSL_TUNNEL_NOT_CONNECTED:I = 0x1

.field public static final XTP_TIMER_INTERVAL:I = 0x3e8

.field public static final XTP_TRANSFER_ENCODING_STRING:Ljava/lang/String; = "transfer-encoding:"

.field public static final XTP_TYPE_HTTP:I = 0x2

.field public static final XTP_TYPE_HTTPS:I = 0x1

.field public static final XTP_TYPE_NONE:I = 0x0

.field public static final XTP_TYPE_WAP:I = 0x3

.field public static final XTP_UNDEFINED_CONTENT_LENGTH:J = 0x7fffffffL

.field public static final XTP_X_SYNCML_HMAC_STRING:Ljava/lang/String; = "x-syncml-hmac:"
