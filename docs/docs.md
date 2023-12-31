# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [gsloc/api/config/core/v1/base.proto](#gsloc_api_config_core_v1_base-proto)
    - [HeaderValue](#gsloc-api-config-core-v1-HeaderValue)
    - [HeaderValueOption](#gsloc-api-config-core-v1-HeaderValueOption)
  
- [gsloc/api/config/core/v1/tls.proto](#gsloc_api_config_core_v1_tls-proto)
    - [TLS](#gsloc-api-config-core-v1-TLS)
  
- [gsloc/api/config/permission/v1/permission.proto](#gsloc_api_config_permission_v1_permission-proto)
    - [Element](#gsloc-api-config-permission-v1-Element)
    - [ElementPermission](#gsloc-api-config-permission-v1-ElementPermission)
  
    - [ElementType](#gsloc-api-config-permission-v1-ElementType)
    - [Role](#gsloc-api-config-permission-v1-Role)
  
- [gsloc/type/v1/http.proto](#gsloc_type_v1_http-proto)
    - [CodecClientType](#gsloc-type-v1-CodecClientType)
  
- [gsloc/type/v1/range.proto](#gsloc_type_v1_range-proto)
    - [Int64Range](#gsloc-type-v1-Int64Range)
  
- [gsloc/type/matcher/v1/string.proto](#gsloc_type_matcher_v1_string-proto)
    - [StringMatcher](#gsloc-type-matcher-v1-StringMatcher)
  
- [gsloc/api/config/healthchecks/v1/healthcheck.proto](#gsloc_api_config_healthchecks_v1_healthcheck-proto)
    - [GrpcHealthCheck](#gsloc-api-config-healthchecks-v1-GrpcHealthCheck)
    - [HealthCheck](#gsloc-api-config-healthchecks-v1-HealthCheck)
    - [HealthCheckPayload](#gsloc-api-config-healthchecks-v1-HealthCheckPayload)
    - [HttpHealthCheck](#gsloc-api-config-healthchecks-v1-HttpHealthCheck)
    - [IcmpHealthCheck](#gsloc-api-config-healthchecks-v1-IcmpHealthCheck)
    - [NoHealthCheck](#gsloc-api-config-healthchecks-v1-NoHealthCheck)
    - [PluginHealthCheck](#gsloc-api-config-healthchecks-v1-PluginHealthCheck)
    - [TcpHealthCheck](#gsloc-api-config-healthchecks-v1-TcpHealthCheck)
    - [TlsConfig](#gsloc-api-config-healthchecks-v1-TlsConfig)
    - [UdpHealthCheck](#gsloc-api-config-healthchecks-v1-UdpHealthCheck)
  
    - [RequestMethod](#gsloc-api-config-healthchecks-v1-RequestMethod)
  
- [gsloc/api/config/entries/v1/entry.proto](#gsloc_api_config_entries_v1_entry-proto)
    - [Entry](#gsloc-api-config-entries-v1-Entry)
    - [Member](#gsloc-api-config-entries-v1-Member)
    - [SignedEntry](#gsloc-api-config-entries-v1-SignedEntry)
  
    - [LBAlgo](#gsloc-api-config-entries-v1-LBAlgo)
  
- [gsloc/services/gslb/v1/gslb.proto](#gsloc_services_gslb_v1_gslb-proto)
    - [DeleteEntryRequest](#gsloc-services-gslb-v1-DeleteEntryRequest)
    - [DeleteMemberRequest](#gsloc-services-gslb-v1-DeleteMemberRequest)
    - [GetEntryRequest](#gsloc-services-gslb-v1-GetEntryRequest)
    - [GetEntryResponse](#gsloc-services-gslb-v1-GetEntryResponse)
    - [GetEntryStatusRequest](#gsloc-services-gslb-v1-GetEntryStatusRequest)
    - [GetEntryStatusResponse](#gsloc-services-gslb-v1-GetEntryStatusResponse)
    - [GetHealthCheckRequest](#gsloc-services-gslb-v1-GetHealthCheckRequest)
    - [GetHealthCheckResponse](#gsloc-services-gslb-v1-GetHealthCheckResponse)
    - [GetMemberRequest](#gsloc-services-gslb-v1-GetMemberRequest)
    - [GetMemberResponse](#gsloc-services-gslb-v1-GetMemberResponse)
    - [ListDcsRequest](#gsloc-services-gslb-v1-ListDcsRequest)
    - [ListDcsResponse](#gsloc-services-gslb-v1-ListDcsResponse)
    - [ListEntriesRequest](#gsloc-services-gslb-v1-ListEntriesRequest)
    - [ListEntriesResponse](#gsloc-services-gslb-v1-ListEntriesResponse)
    - [ListEntriesStatusRequest](#gsloc-services-gslb-v1-ListEntriesStatusRequest)
    - [ListEntriesStatusResponse](#gsloc-services-gslb-v1-ListEntriesStatusResponse)
    - [ListMembersRequest](#gsloc-services-gslb-v1-ListMembersRequest)
    - [ListMembersResponse](#gsloc-services-gslb-v1-ListMembersResponse)
    - [ListPluginHealthChecksResponse](#gsloc-services-gslb-v1-ListPluginHealthChecksResponse)
    - [MemberStatus](#gsloc-services-gslb-v1-MemberStatus)
    - [PluginHealthCheckInfo](#gsloc-services-gslb-v1-PluginHealthCheckInfo)
    - [SetEntryRequest](#gsloc-services-gslb-v1-SetEntryRequest)
    - [SetHealthCheckRequest](#gsloc-services-gslb-v1-SetHealthCheckRequest)
    - [SetMemberRequest](#gsloc-services-gslb-v1-SetMemberRequest)
    - [SetMembersStatusRequest](#gsloc-services-gslb-v1-SetMembersStatusRequest)
    - [SetMembersStatusResponse](#gsloc-services-gslb-v1-SetMembersStatusResponse)
    - [SetMembersStatusResponse.Info](#gsloc-services-gslb-v1-SetMembersStatusResponse-Info)
  
    - [MemberState](#gsloc-services-gslb-v1-MemberState)
    - [MemberStatus.Status](#gsloc-services-gslb-v1-MemberStatus-Status)
  
    - [GSLB](#gsloc-services-gslb-v1-GSLB)
  
- [gsloc/type/matcher/v1/regex.proto](#gsloc_type_matcher_v1_regex-proto)
    - [RegexMatchAndSubstitute](#gsloc-type-matcher-v1-RegexMatchAndSubstitute)
  
- [Scalar Value Types](#scalar-value-types)



<a name="gsloc_api_config_core_v1_base-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## gsloc/api/config/core/v1/base.proto



<a name="gsloc-api-config-core-v1-HeaderValue"></a>

### HeaderValue
Header name/value pair.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  | Header name. |
| value | [string](#string) |  | Header value. |






<a name="gsloc-api-config-core-v1-HeaderValueOption"></a>

### HeaderValueOption
Header name/value pair plus option to control append behavior.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| header | [HeaderValue](#gsloc-api-config-core-v1-HeaderValue) |  | Header name/value pair that this option applies to. |
| append | [bool](#bool) |  | Should the value be appended? If true (default), the value is appended to existing values. Otherwise it replaces any existing values. |





 

 

 

 



<a name="gsloc_api_config_core_v1_tls-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## gsloc/api/config/core/v1/tls.proto



<a name="gsloc-api-config-core-v1-TLS"></a>

### TLS
TLS is a message containing the configuration for a TLS listener.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| server_names | [string](#string) | repeated | If non-empty, a list of server names (e.g. SNI for TLS protocol) to consider when determining a filter chain match. Those values will be compared against the server names of a new connection, when detected by one of the listener filters.

The server name will be matched against all wildcard domains, i.e. www.example.com will be first matched against www.example.com, then *.example.com, then *.com.

Note that partial wildcards are not supported, and values like *w.example.com are invalid. |
| certificates_uuid | [string](#string) | repeated |  |
| alpn_protocols | [string](#string) | repeated | Supplies the list of ALPN protocols that the listener should expose. In practice this is likely to be set to one of two values (see the

* &#34;h2,http/1.1&#34; If the listener is going to support both HTTP/2 and HTTP/1.1. * &#34;http/1.1&#34; If the listener is only going to support HTTP/1.1.

There is no default for this parameter. If empty, tls handshake will not expose ALPN. |





 

 

 

 



<a name="gsloc_api_config_permission_v1_permission-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## gsloc/api/config/permission/v1/permission.proto



<a name="gsloc-api-config-permission-v1-Element"></a>

### Element
Member is a user or a group.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| element_type | [ElementType](#gsloc-api-config-permission-v1-ElementType) |  |  |
| element_name | [string](#string) |  |  |






<a name="gsloc-api-config-permission-v1-ElementPermission"></a>

### ElementPermission
MemberPermission is a permission on a resource for a given member.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| role | [Role](#gsloc-api-config-permission-v1-Role) |  |  |
| element | [Element](#gsloc-api-config-permission-v1-Element) |  |  |





 


<a name="gsloc-api-config-permission-v1-ElementType"></a>

### ElementType
MemberType is the type of the member.

| Name | Number | Description |
| ---- | ------ | ----------- |
| USER | 0 |  |
| GROUP | 1 |  |



<a name="gsloc-api-config-permission-v1-Role"></a>

### Role
Role is the permission role.
READER: can read the entry.
WRITER: can read and update the entry.
OWNER: can read, update, delete and set permission on the entry.
Order is important, it is used to check if a user has a permission or higher.

| Name | Number | Description |
| ---- | ------ | ----------- |
| READER | 0 |  |
| WRITER | 10 |  |
| OWNER | 20 |  |


 

 

 



<a name="gsloc_type_v1_http-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## gsloc/type/v1/http.proto
copy from envoy type

 


<a name="gsloc-type-v1-CodecClientType"></a>

### CodecClientType


| Name | Number | Description |
| ---- | ------ | ----------- |
| HTTP1 | 0 |  |
| HTTP2 | 1 |  |
| HTTP3 | 2 | [#not-implemented-hide:] QUIC implementation is not production ready yet. Use this enum with caution to prevent accidental execution of QUIC code. I.e. `!= HTTP2` is no longer sufficient to distinguish HTTP1 and HTTP2 traffic. |


 

 

 



<a name="gsloc_type_v1_range-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## gsloc/type/v1/range.proto
copy from envoy type


<a name="gsloc-type-v1-Int64Range"></a>

### Int64Range
Specifies the int64 start and end of the range using half-open interval semantics [start,
end).


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| start | [int64](#int64) |  | start of the range (inclusive) |
| end | [int64](#int64) |  | end of the range (exclusive) |





 

 

 

 



<a name="gsloc_type_matcher_v1_string-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## gsloc/type/matcher/v1/string.proto



<a name="gsloc-type-matcher-v1-StringMatcher"></a>

### StringMatcher
Specifies the way to match a string.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| exact | [string](#string) |  | The input string must match exactly the string specified here.

Examples:

* *abc* only matches the value *abc*. |
| prefix | [string](#string) |  | The input string must have the prefix specified here. Note: empty prefix is not allowed, please use regex instead.

Examples:

* *abc* matches the value *abc.xyz* |
| suffix | [string](#string) |  | The input string must have the suffix specified here. Note: empty prefix is not allowed, please use regex instead.

Examples:

* *abc* matches the value *xyz.abc* |
| regex | [string](#string) |  | The input string must match the regular expression specified here. |
| contains | [string](#string) |  | The input string must have the substring specified here. Note: empty contains match is not allowed, please use regex instead.

Examples:

* *abc* matches the value *xyz.abc.def* |
| ignore_case | [bool](#bool) |  | If true, indicates the exact/prefix/suffix matching should be case insensitive. This has no effect for the safe_regex match. For example, the matcher *data* will match both input string *Data* and *data* if set to true. |





 

 

 

 



<a name="gsloc_api_config_healthchecks_v1_healthcheck-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## gsloc/api/config/healthchecks/v1/healthcheck.proto



<a name="gsloc-api-config-healthchecks-v1-GrpcHealthCheck"></a>

### GrpcHealthCheck
`grpc.health.v1.Health
&lt;https://github.com/grpc/grpc/blob/master/src/proto/grpc/health/v1/health.proto&gt;`_-based
healthcheck. See `gRPC doc &lt;https://github.com/grpc/grpc/blob/master/doc/health-checking.md&gt;`_
for details.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| service_name | [string](#string) |  | An optional service name parameter which will be sent to gRPC service in `grpc.health.v1.HealthCheckRequest &lt;https://github.com/grpc/grpc/blob/master/src/proto/grpc/health/v1/health.proto#L20&gt;`_. message. See `gRPC health-checking overview &lt;https://github.com/grpc/grpc/blob/master/doc/health-checking.md&gt;`_ for more information. |
| authority | [string](#string) |  | The value of the :authority header in the gRPC health check request. If left empty (default value), the name of the cluster this health check is associated with will be used. The authority header can be customized for a specific endpoint by setting the HealthCheckConfig.hostname field. |






<a name="gsloc-api-config-healthchecks-v1-HealthCheck"></a>

### HealthCheck
Health check configuration.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| timeout | [google.protobuf.Duration](#google-protobuf-Duration) |  | The time to wait for a health check response. If the timeout is reached the health check attempt will be considered a failure. |
| interval | [google.protobuf.Duration](#google-protobuf-Duration) |  | The interval between health checks. |
| port | [uint32](#uint32) |  | port specifies the port to use when performing health checks. |
| http_health_check | [HttpHealthCheck](#gsloc-api-config-healthchecks-v1-HttpHealthCheck) |  | HTTP health check. |
| tcp_health_check | [TcpHealthCheck](#gsloc-api-config-healthchecks-v1-TcpHealthCheck) |  | TCP health check. |
| grpc_health_check | [GrpcHealthCheck](#gsloc-api-config-healthchecks-v1-GrpcHealthCheck) |  | gRPC health check. |
| no_health_check | [NoHealthCheck](#gsloc-api-config-healthchecks-v1-NoHealthCheck) |  | No health check. |
| plugin_health_check | [PluginHealthCheck](#gsloc-api-config-healthchecks-v1-PluginHealthCheck) |  | Plugin health check. |
| icmp_health_check | [IcmpHealthCheck](#gsloc-api-config-healthchecks-v1-IcmpHealthCheck) |  | ICMP health check. |
| udp_health_check | [UdpHealthCheck](#gsloc-api-config-healthchecks-v1-UdpHealthCheck) |  | UDP health check. |
| tls_config | [TlsConfig](#gsloc-api-config-healthchecks-v1-TlsConfig) |  | set tls configuration for healthcheck |






<a name="gsloc-api-config-healthchecks-v1-HealthCheckPayload"></a>

### HealthCheckPayload
Describes the encoding of the payload bytes in the payload.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text | [string](#string) |  | Hex encoded payload. E.g., &#34;000000FF&#34;. |
| binary | [bytes](#bytes) |  | Binary payload. |






<a name="gsloc-api-config-healthchecks-v1-HttpHealthCheck"></a>

### HttpHealthCheck



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| host | [string](#string) |  | The value of the host header in the HTTP health check request. If left empty (default value), the name of the cluster this health check is associated with will be used. |
| path | [string](#string) |  | Specifies the HTTP path that will be requested during health checking. For example */healthcheck*. |
| send | [HealthCheckPayload](#gsloc-api-config-healthchecks-v1-HealthCheckPayload) |  | HTTP specific payload. |
| receive | [HealthCheckPayload](#gsloc-api-config-healthchecks-v1-HealthCheckPayload) |  | HTTP specific response. |
| request_headers_to_add | [gsloc.api.config.core.v1.HeaderValueOption](#gsloc-api-config-core-v1-HeaderValueOption) | repeated | Specifies a list of HTTP headers that should be added to each request that is sent to the health checked cluster. |
| expected_statuses | [gsloc.type.v1.Int64Range](#gsloc-type-v1-Int64Range) |  | Specifies a list of HTTP response statuses considered healthy. If provided, replaces default 200-only policy - 200 must be included explicitly as needed. Ranges follow half-open semantics of Int64Range. The start and end of each range are required. Only statuses in the range [100, 600) are allowed. |
| codec_client_type | [gsloc.type.v1.CodecClientType](#gsloc-type-v1-CodecClientType) |  | Use specified application protocol for health checks. |
| method | [RequestMethod](#gsloc-api-config-healthchecks-v1-RequestMethod) |  | HTTP Method that will be used for health checking, default is &#34;GET&#34;. GET, HEAD, POST, PUT, DELETE, OPTIONS, TRACE, PATCH methods are supported, but making request body is not supported. CONNECT method is disallowed because it is not appropriate for health check request. If a non-200 response is expected by the method, it needs to be set in expected_statuses. |






<a name="gsloc-api-config-healthchecks-v1-IcmpHealthCheck"></a>

### IcmpHealthCheck
ICMP health check also known as ping.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| delay | [google.protobuf.Duration](#google-protobuf-Duration) |  | Delay specifies the delay between ICMP reply read try. If left empty (default to 1s). |






<a name="gsloc-api-config-healthchecks-v1-NoHealthCheck"></a>

### NoHealthCheck
No health check. This health check is always considered healthy.
This is particularly useful for udp route which cannot be health checked.






<a name="gsloc-api-config-healthchecks-v1-PluginHealthCheck"></a>

### PluginHealthCheck
Plugin health check by using a external program defined in the plugin configuration in the server.
Plugin name and description can be view in service list plugins.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The name of the plugin to use for health checking. |
| options | [google.protobuf.Struct](#google-protobuf-Struct) |  | The options to pass to the plugin. |






<a name="gsloc-api-config-healthchecks-v1-TcpHealthCheck"></a>

### TcpHealthCheck



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| send | [HealthCheckPayload](#gsloc-api-config-healthchecks-v1-HealthCheckPayload) |  | Empty payloads imply a connect-only health check. |
| receive | [HealthCheckPayload](#gsloc-api-config-healthchecks-v1-HealthCheckPayload) | repeated | When checking the response, “fuzzy” matching is performed such that each binary block must be found, and in the order specified, but not necessarily contiguous. |






<a name="gsloc-api-config-healthchecks-v1-TlsConfig"></a>

### TlsConfig



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| enable | [bool](#bool) |  | Enable TLS for healthcheck. |
| ca | [string](#string) |  | The CA certificate to use for healthcheck. this is not necessary if the CA certificate is already in the system trust store. |
| server_name | [string](#string) |  | The server name to use for healthcheck. By default server name take the value of the fqdn entry |






<a name="gsloc-api-config-healthchecks-v1-UdpHealthCheck"></a>

### UdpHealthCheck
UDP health check.
It has 2 behaviors:
- if receive is not empty, it will send the payload and check the response received by server with receive.
- (Weak method) if receive is empty, it will ping the server if not responding it will be considered as unhealthy,
  if it&#39;s responding it will send the payload and wait to receive a Port Unreachable ICMP message,
  if not has been received after the timeout it will considered healthy.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| send | [HealthCheckPayload](#gsloc-api-config-healthchecks-v1-HealthCheckPayload) |  | Udp specific payload to send. It always send something to test UDP connection. If left empty (default to &#34;test-gohc&#34;) |
| receive | [HealthCheckPayload](#gsloc-api-config-healthchecks-v1-HealthCheckPayload) | repeated | When checking the response, “fuzzy” matching is performed such that each binary block must be found, and in the order specified, but not necessarily contiguous. |
| ping_timeout | [google.protobuf.Duration](#google-protobuf-Duration) |  | PingTimeout specifies the timeout for ICMP requests. If left empty (default to 5s) |
| delay | [google.protobuf.Duration](#google-protobuf-Duration) |  | Delay specifies the delay between ICMP requests. If left empty (default to 1s) |





 


<a name="gsloc-api-config-healthchecks-v1-RequestMethod"></a>

### RequestMethod
HTTP request method.

| Name | Number | Description |
| ---- | ------ | ----------- |
| METHOD_UNSPECIFIED | 0 |  |
| GET | 1 |  |
| HEAD | 2 |  |
| POST | 3 |  |
| PUT | 4 |  |
| DELETE | 5 |  |
| CONNECT | 6 |  |
| OPTIONS | 7 |  |
| TRACE | 8 |  |
| PATCH | 9 |  |


 

 

 



<a name="gsloc_api_config_entries_v1_entry-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## gsloc/api/config/entries/v1/entry.proto



<a name="gsloc-api-config-entries-v1-Entry"></a>

### Entry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fqdn | [string](#string) |  |  |
| lb_algo_preferred | [LBAlgo](#gsloc-api-config-entries-v1-LBAlgo) |  |  |
| lb_algo_alternate | [LBAlgo](#gsloc-api-config-entries-v1-LBAlgo) |  |  |
| lb_algo_fallback | [LBAlgo](#gsloc-api-config-entries-v1-LBAlgo) |  |  |
| max_answer_returned | [uint32](#uint32) |  |  |
| members_ipv4 | [Member](#gsloc-api-config-entries-v1-Member) | repeated |  |
| members_ipv6 | [Member](#gsloc-api-config-entries-v1-Member) | repeated |  |
| ttl | [uint32](#uint32) |  |  |
| permissions | [gsloc.api.config.permission.v1.ElementPermission](#gsloc-api-config-permission-v1-ElementPermission) | repeated |  |
| tags | [string](#string) | repeated |  |






<a name="gsloc-api-config-entries-v1-Member"></a>

### Member



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ip | [string](#string) |  |  |
| ratio | [uint32](#uint32) |  |  |
| dc | [string](#string) |  |  |
| disabled | [bool](#bool) |  |  |






<a name="gsloc-api-config-entries-v1-SignedEntry"></a>

### SignedEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| entry | [Entry](#gsloc-api-config-entries-v1-Entry) |  |  |
| signature | [string](#string) |  |  |
| healthcheck | [gsloc.api.config.healthchecks.v1.HealthCheck](#gsloc-api-config-healthchecks-v1-HealthCheck) |  |  |





 


<a name="gsloc-api-config-entries-v1-LBAlgo"></a>

### LBAlgo


| Name | Number | Description |
| ---- | ------ | ----------- |
| ROUND_ROBIN | 0 |  |
| TOPOLOGY | 1 |  |
| RATIO | 2 |  |
| RANDOM | 3 |  |


 

 

 



<a name="gsloc_services_gslb_v1_gslb-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## gsloc/services/gslb/v1/gslb.proto



<a name="gsloc-services-gslb-v1-DeleteEntryRequest"></a>

### DeleteEntryRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fqdn | [string](#string) |  |  |






<a name="gsloc-services-gslb-v1-DeleteMemberRequest"></a>

### DeleteMemberRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fqdn | [string](#string) |  |  |
| ip | [string](#string) |  |  |






<a name="gsloc-services-gslb-v1-GetEntryRequest"></a>

### GetEntryRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fqdn | [string](#string) |  |  |






<a name="gsloc-services-gslb-v1-GetEntryResponse"></a>

### GetEntryResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| entry | [gsloc.api.config.entries.v1.Entry](#gsloc-api-config-entries-v1-Entry) |  |  |
| healthcheck | [gsloc.api.config.healthchecks.v1.HealthCheck](#gsloc-api-config-healthchecks-v1-HealthCheck) |  |  |






<a name="gsloc-services-gslb-v1-GetEntryStatusRequest"></a>

### GetEntryStatusRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fqdn | [string](#string) |  |  |






<a name="gsloc-services-gslb-v1-GetEntryStatusResponse"></a>

### GetEntryStatusResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fqdn | [string](#string) |  |  |
| members_ipv4 | [MemberStatus](#gsloc-services-gslb-v1-MemberStatus) | repeated |  |
| members_ipv6 | [MemberStatus](#gsloc-services-gslb-v1-MemberStatus) | repeated |  |






<a name="gsloc-services-gslb-v1-GetHealthCheckRequest"></a>

### GetHealthCheckRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fqdn | [string](#string) |  |  |






<a name="gsloc-services-gslb-v1-GetHealthCheckResponse"></a>

### GetHealthCheckResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| healthcheck | [gsloc.api.config.healthchecks.v1.HealthCheck](#gsloc-api-config-healthchecks-v1-HealthCheck) |  |  |






<a name="gsloc-services-gslb-v1-GetMemberRequest"></a>

### GetMemberRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fqdn | [string](#string) |  |  |
| ip | [string](#string) |  |  |






<a name="gsloc-services-gslb-v1-GetMemberResponse"></a>

### GetMemberResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| member | [gsloc.api.config.entries.v1.Member](#gsloc-api-config-entries-v1-Member) |  |  |






<a name="gsloc-services-gslb-v1-ListDcsRequest"></a>

### ListDcsRequest







<a name="gsloc-services-gslb-v1-ListDcsResponse"></a>

### ListDcsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dcs | [string](#string) | repeated |  |






<a name="gsloc-services-gslb-v1-ListEntriesRequest"></a>

### ListEntriesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| tags | [string](#string) | repeated |  |
| prefix | [string](#string) |  |  |






<a name="gsloc-services-gslb-v1-ListEntriesResponse"></a>

### ListEntriesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| entries | [GetEntryResponse](#gsloc-services-gslb-v1-GetEntryResponse) | repeated |  |






<a name="gsloc-services-gslb-v1-ListEntriesStatusRequest"></a>

### ListEntriesStatusRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| tags | [string](#string) | repeated |  |
| prefix | [string](#string) |  |  |






<a name="gsloc-services-gslb-v1-ListEntriesStatusResponse"></a>

### ListEntriesStatusResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| entries_status | [GetEntryStatusResponse](#gsloc-services-gslb-v1-GetEntryStatusResponse) | repeated |  |






<a name="gsloc-services-gslb-v1-ListMembersRequest"></a>

### ListMembersRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fqdn | [string](#string) |  |  |






<a name="gsloc-services-gslb-v1-ListMembersResponse"></a>

### ListMembersResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| members_ipv4 | [gsloc.api.config.entries.v1.Member](#gsloc-api-config-entries-v1-Member) | repeated |  |
| members_ipv6 | [gsloc.api.config.entries.v1.Member](#gsloc-api-config-entries-v1-Member) | repeated |  |






<a name="gsloc-services-gslb-v1-ListPluginHealthChecksResponse"></a>

### ListPluginHealthChecksResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| plugin_health_checks | [PluginHealthCheckInfo](#gsloc-services-gslb-v1-PluginHealthCheckInfo) | repeated |  |






<a name="gsloc-services-gslb-v1-MemberStatus"></a>

### MemberStatus



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ip | [string](#string) |  |  |
| dc | [string](#string) |  |  |
| status | [MemberStatus.Status](#gsloc-services-gslb-v1-MemberStatus-Status) |  |  |
| failure_reason | [string](#string) |  |  |






<a name="gsloc-services-gslb-v1-PluginHealthCheckInfo"></a>

### PluginHealthCheckInfo



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |
| description | [string](#string) |  |  |






<a name="gsloc-services-gslb-v1-SetEntryRequest"></a>

### SetEntryRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| entry | [gsloc.api.config.entries.v1.Entry](#gsloc-api-config-entries-v1-Entry) |  |  |
| healthcheck | [gsloc.api.config.healthchecks.v1.HealthCheck](#gsloc-api-config-healthchecks-v1-HealthCheck) |  |  |






<a name="gsloc-services-gslb-v1-SetHealthCheckRequest"></a>

### SetHealthCheckRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fqdn | [string](#string) |  |  |
| healthcheck | [gsloc.api.config.healthchecks.v1.HealthCheck](#gsloc-api-config-healthchecks-v1-HealthCheck) |  |  |






<a name="gsloc-services-gslb-v1-SetMemberRequest"></a>

### SetMemberRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fqdn | [string](#string) |  |  |
| member | [gsloc.api.config.entries.v1.Member](#gsloc-api-config-entries-v1-Member) |  |  |






<a name="gsloc-services-gslb-v1-SetMembersStatusRequest"></a>

### SetMembersStatusRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| prefix | [string](#string) |  |  |
| ip | [string](#string) |  |  |
| dc | [string](#string) |  |  |
| tags | [string](#string) | repeated |  |
| status | [MemberState](#gsloc-services-gslb-v1-MemberState) |  |  |
| dry_run | [bool](#bool) |  |  |






<a name="gsloc-services-gslb-v1-SetMembersStatusResponse"></a>

### SetMembersStatusResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| updated | [SetMembersStatusResponse.Info](#gsloc-services-gslb-v1-SetMembersStatusResponse-Info) | repeated |  |






<a name="gsloc-services-gslb-v1-SetMembersStatusResponse-Info"></a>

### SetMembersStatusResponse.Info



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fqdn | [string](#string) |  |  |
| ips | [string](#string) | repeated |  |





 


<a name="gsloc-services-gslb-v1-MemberState"></a>

### MemberState


| Name | Number | Description |
| ---- | ------ | ----------- |
| ENABLED | 0 |  |
| DISABLED | 1 |  |



<a name="gsloc-services-gslb-v1-MemberStatus-Status"></a>

### MemberStatus.Status


| Name | Number | Description |
| ---- | ------ | ----------- |
| ONLINE | 0 |  |
| OFFLINE | 1 |  |
| CHECK_FAILED | 2 |  |


 

 


<a name="gsloc-services-gslb-v1-GSLB"></a>

### GSLB


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| SetEntry | [SetEntryRequest](#gsloc-services-gslb-v1-SetEntryRequest) | [.google.protobuf.Empty](#google-protobuf-Empty) |  |
| DeleteEntry | [DeleteEntryRequest](#gsloc-services-gslb-v1-DeleteEntryRequest) | [.google.protobuf.Empty](#google-protobuf-Empty) |  |
| GetEntry | [GetEntryRequest](#gsloc-services-gslb-v1-GetEntryRequest) | [GetEntryResponse](#gsloc-services-gslb-v1-GetEntryResponse) |  |
| ListEntries | [ListEntriesRequest](#gsloc-services-gslb-v1-ListEntriesRequest) | [ListEntriesResponse](#gsloc-services-gslb-v1-ListEntriesResponse) |  |
| GetEntryStatus | [GetEntryStatusRequest](#gsloc-services-gslb-v1-GetEntryStatusRequest) | [GetEntryStatusResponse](#gsloc-services-gslb-v1-GetEntryStatusResponse) |  |
| ListEntriesStatus | [ListEntriesStatusRequest](#gsloc-services-gslb-v1-ListEntriesStatusRequest) | [ListEntriesStatusResponse](#gsloc-services-gslb-v1-ListEntriesStatusResponse) |  |
| SetMember | [SetMemberRequest](#gsloc-services-gslb-v1-SetMemberRequest) | [.google.protobuf.Empty](#google-protobuf-Empty) |  |
| DeleteMember | [DeleteMemberRequest](#gsloc-services-gslb-v1-DeleteMemberRequest) | [.google.protobuf.Empty](#google-protobuf-Empty) |  |
| GetMember | [GetMemberRequest](#gsloc-services-gslb-v1-GetMemberRequest) | [GetMemberResponse](#gsloc-services-gslb-v1-GetMemberResponse) |  |
| ListMembers | [ListMembersRequest](#gsloc-services-gslb-v1-ListMembersRequest) | [ListMembersResponse](#gsloc-services-gslb-v1-ListMembersResponse) |  |
| SetMembersStatus | [SetMembersStatusRequest](#gsloc-services-gslb-v1-SetMembersStatusRequest) | [SetMembersStatusResponse](#gsloc-services-gslb-v1-SetMembersStatusResponse) |  |
| GetHealthCheck | [GetHealthCheckRequest](#gsloc-services-gslb-v1-GetHealthCheckRequest) | [GetHealthCheckResponse](#gsloc-services-gslb-v1-GetHealthCheckResponse) |  |
| SetHealthCheck | [SetHealthCheckRequest](#gsloc-services-gslb-v1-SetHealthCheckRequest) | [.google.protobuf.Empty](#google-protobuf-Empty) |  |
| ListDcs | [ListDcsRequest](#gsloc-services-gslb-v1-ListDcsRequest) | [ListDcsResponse](#gsloc-services-gslb-v1-ListDcsResponse) |  |
| ListPluginHealthChecks | [.google.protobuf.Empty](#google-protobuf-Empty) | [ListPluginHealthChecksResponse](#gsloc-services-gslb-v1-ListPluginHealthChecksResponse) |  |

 



<a name="gsloc_type_matcher_v1_regex-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## gsloc/type/matcher/v1/regex.proto



<a name="gsloc-type-matcher-v1-RegexMatchAndSubstitute"></a>

### RegexMatchAndSubstitute
Describes how to match a string and then produce a new string using a regular
expression and a substitution string.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| regex | [string](#string) |  | The regular expression used to find portions of a string (hereafter called the &#34;subject string&#34;) that should be replaced. When a new string is produced during the substitution operation, the new string is initially the same as the subject string, but then all matches in the subject string are replaced by the substitution string. If replacing all matches isn&#39;t desired, regular expression anchors can be used to ensure a single match, so as to replace just one occurrence of a pattern. Capture groups can be used in the pattern to extract portions of the subject string, and then referenced in the substitution string. |
| substitution | [string](#string) |  | The string that should be substituted into matching portions of the subject string during a substitution operation to produce a new string. Capture groups in the pattern can be referenced in the substitution string. Note, however, that the syntax for referring to capture groups is defined by the chosen regular expression engine. Google&#39;s `RE2 &lt;https://github.com/google/re2&gt;`_ regular expression engine uses a backslash followed by the capture group number to denote a numbered capture group. E.g., ``\1`` refers to capture group 1, and ``\2`` refers to capture group 2. |





 

 

 

 



## Scalar Value Types

| .proto Type | Notes | C++ | Java | Python | Go | C# | PHP | Ruby |
| ----------- | ----- | --- | ---- | ------ | -- | -- | --- | ---- |
| <a name="double" /> double |  | double | double | float | float64 | double | float | Float |
| <a name="float" /> float |  | float | float | float | float32 | float | float | Float |
| <a name="int32" /> int32 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint32 instead. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="int64" /> int64 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint64 instead. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="uint32" /> uint32 | Uses variable-length encoding. | uint32 | int | int/long | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="uint64" /> uint64 | Uses variable-length encoding. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum or Fixnum (as required) |
| <a name="sint32" /> sint32 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int32s. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sint64" /> sint64 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int64s. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="fixed32" /> fixed32 | Always four bytes. More efficient than uint32 if values are often greater than 2^28. | uint32 | int | int | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="fixed64" /> fixed64 | Always eight bytes. More efficient than uint64 if values are often greater than 2^56. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum |
| <a name="sfixed32" /> sfixed32 | Always four bytes. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sfixed64" /> sfixed64 | Always eight bytes. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="bool" /> bool |  | bool | boolean | boolean | bool | bool | boolean | TrueClass/FalseClass |
| <a name="string" /> string | A string must always contain UTF-8 encoded or 7-bit ASCII text. | string | String | str/unicode | string | string | string | String (UTF-8) |
| <a name="bytes" /> bytes | May contain any arbitrary sequence of bytes. | string | ByteString | str | []byte | ByteString | string | String (ASCII-8BIT) |

