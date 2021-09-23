# wasme-rust-filter


https://pretired.dazwilkin.com/posts/200723/

https://docs.eupraxia.io/docs/how-to-guides/deploy-rust-based-envoy-filter/


curl -kv -H "name:rama" -H "state:Tx"  -H "authority:mannem" localhost:8080/ | jq
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0*   Trying 127.0.0.1...
* TCP_NODELAY set
* Connected to localhost (127.0.0.1) port 8080 (#0)
> GET / HTTP/1.1
> Host: localhost:8080
> User-Agent: curl/7.64.1
> Accept: */*
> name:rama
> state:Tx
> authority:mannem
> 
< HTTP/1.1 200 OK
< date: Thu, 23 Sep 2021 02:56:36 GMT
< content-type: text/html; charset=UTF-8
< x-powered-by: Express
< x-ratelimit-limit: 1000
< x-ratelimit-remaining: 999
< x-ratelimit-reset: 1632363544
< vary: Origin, Accept-Encoding
< access-control-allow-credentials: true
< cache-control: public, max-age=43200
< last-modified: Thu, 23 Sep 2021 02:17:55 GMT
< via: 1.1 vegur
< cf-cache-status: HIT
< age: 2304
< expect-ct: max-age=604800, report-uri="https://report-uri.cloudflare.com/cdn-cgi/beacon/expect-ct"
< report-to: {"endpoints":[{"url":"https:\/\/a.nel.cloudflare.com\/report\/v3?s=B3dS43j%2FkWxwVwXt8p7pd7CFfhWj%2FMvH46JrERdscUWVj1HPcSVU9FqhmY%2B3OZpgu87bajOpOCphXJqIcbU47T6wYMZE43scIFiPjob7CJ9DfN%2FbG2X0C3lntVX5h8yRRfGQycnIrn3Prilw3A1x"}],"group":"cf-nel","max_age":604800}
< nel: {"success_fraction":0,"report_to":"cf-nel","max_age":604800}
< server: envoy
< cf-ray: 693080376ba70bf3-DFW
< alt-svc: h3=":443"; ma=86400, h3-29=":443"; ma=86400, h3-28=":443"; ma=86400, h3-27=":443"; ma=86400
< x-envoy-upstream-service-time: 32
< transfer-encoding: chunked
< 
{ [7632 bytes data]
100  7619    0  7619    0     0   195k      0 --:--:-- --:--:-- --:--:--  190k
* Connection #0 to host localhost left intact
* Closing connection 0
parse error: Invalid numeric literal at line 2, column 10

--------------------------------------------------------
$ curl --verbose -d '{"2": "two", "one": 1, "3": ["three", 4, "five", 6] }' http://localhost:8080/echo
*   Trying 127.0.0.1...
* TCP_NODELAY set
* Connected to localhost (127.0.0.1) port 8080 (#0)
> POST /echo HTTP/1.1
> Host: localhost:8080
> User-Agent: curl/7.64.1
> Accept: */*
> Content-Length: 53
> Content-Type: application/x-www-form-urlencoded
> 
* upload completely sent off: 53 out of 53 bytes
< HTTP/1.1 404 Not Found
< date: Thu, 23 Sep 2021 03:45:25 GMT
< content-type: application/json; charset=utf-8
< content-length: 2
< x-powered-by: Express
< x-ratelimit-limit: 1000
< x-ratelimit-remaining: 999
< x-ratelimit-reset: 1632368764
< vary: Origin, X-HTTP-Method-Override, Accept-Encoding
< access-control-allow-credentials: true
< cache-control: no-cache
< pragma: no-cache
< expires: -1
< x-content-type-options: nosniff
< etag: W/"2-vyGp6PvFo4RvsFtPoIWeCReyIC8"
< via: 1.1 vegur
< cf-cache-status: DYNAMIC
< expect-ct: max-age=604800, report-uri="https://report-uri.cloudflare.com/cdn-cgi/beacon/expect-ct"
< report-to: {"endpoints":[{"url":"https:\/\/a.nel.cloudflare.com\/report\/v3?s=ynV1Urur%2Bbp45y4m9ymeGmLO5awNcHgp8xug1X7LucT%2BprnRiYcMixkKS1qEa8IaQdkLB%2BwYHfykGOLN6tQMQoKWk%2Bcym3bVI0R%2BEWucR%2BPqaT5gsbJNrUGDOO9hugQOVt6eY65XiMJOSxWfMSOq"}],"group":"cf-nel","max_age":604800}
< nel: {"success_fraction":0,"report_to":"cf-nel","max_age":604800}
< server: envoy
< cf-ray: 6930c7b8bbaf66ef-DFW
< alt-svc: h3=":443"; ma=86400, h3-29=":443"; ma=86400, h3-28=":443"; ma=86400, h3-27=":443"; ma=86400
< x-envoy-upstream-service-time: 96
< 
* Connection #0 to host localhost left intact
{}* Closing connection 0
rama@RamakrishnasMBP:~/learning/workspace/go/src/github.com/rksmannem/rust-wasm-filter-with-cargo/envoy 
master ✔ $ curl --verbose -d '{"2": "two", "one": 1, "3": ["three", 4, "five", 6] }' http://localhost:8080/hello
*   Trying 127.0.0.1...
* TCP_NODELAY set
* Connected to localhost (127.0.0.1) port 8080 (#0)
> POST /hello HTTP/1.1
> Host: localhost:8080
> User-Agent: curl/7.64.1
> Accept: */*
> Content-Length: 53
> Content-Type: application/x-www-form-urlencoded
> 
* upload completely sent off: 53 out of 53 bytes
< HTTP/1.1 200 OK
< content-length: 14
< content-type: text/plain
< hello: World
< powered-by: proxy-wasm
< date: Thu, 23 Sep 2021 03:46:27 GMT
< server: envoy
< connection: close
< 
Hello, World!
* Closing connection 0
rama@RamakrishnasMBP:~/learning/workspace/go/src/github.com/rksmannem/rust-wasm-filter-with-cargo/envoy 
master ✔ $ 


[2021-09-23 03:45:25.870][16][info][wasm] [external/envoy/source/extensions/common/wasm/context.cc:1107] wasm log root_id root_id: #4 -> :path: /echo
[2021-09-23 03:45:25.870][16][info][wasm] [external/envoy/source/extensions/common/wasm/context.cc:1107] wasm log root_id root_id: #4 -> :method: POST
[2021-09-23 03:45:25.870][16][info][wasm] [external/envoy/source/extensions/common/wasm/context.cc:1107] wasm log root_id root_id: #4 -> user-agent: curl/7.64.1
[2021-09-23 03:45:25.870][16][info][wasm] [external/envoy/source/extensions/common/wasm/context.cc:1107] wasm log root_id root_id: #4 -> accept: */*
[2021-09-23 03:45:25.870][16][info][wasm] [external/envoy/source/extensions/common/wasm/context.cc:1107] wasm log root_id root_id: #4 -> content-length: 53
[2021-09-23 03:45:25.870][16][info][wasm] [external/envoy/source/extensions/common/wasm/context.cc:1107] wasm log root_id root_id: #4 -> content-type: application/x-www-form-urlencoded
[2021-09-23 03:45:25.870][16][info][wasm] [external/envoy/source/extensions/common/wasm/context.cc:1107] wasm log root_id root_id: #4 -> x-forwarded-proto: http
[2021-09-23 03:45:25.870][16][info][wasm] [external/envoy/source/extensions/common/wasm/context.cc:1107] wasm log root_id root_id: #4 -> x-request-id: 939fdda6-4a36-4014-a63d-805bfe7bd7d4
[2021-09-23 03:45:25.871][16][info][wasm] [external/envoy/source/extensions/common/wasm/context.cc:1107] wasm log root_id root_id: Begin: on_http_request_body
[2021-09-23 03:45:25.871][16][info][wasm] [external/envoy/source/extensions/common/wasm/context.cc:1107] wasm log root_id root_id: Begin: on_http_request_body
[2021-09-23 03:45:25.871][16][info][wasm] [external/envoy/source/extensions/common/wasm/context.cc:1107] wasm log root_id root_id: #4 <- {"2": "two", "one": 1, "3": ["three", 4, "five", 6] }
[2021-09-23 03:45:25.871][16][info][wasm] [external/envoy/source/extensions/common/wasm/context.cc:1107] wasm log root_id root_id: End: on_http_request_body
[2021-09-23 03:45:25.968][16][info][wasm] [external/envoy/source/extensions/common/wasm/context.cc:1107] wasm log root_id root_id: #4 <- :status: 404
[2021-09-23 03:45:25.968][16][info][wasm] [external/envoy/source/extensions/common/wasm/context.cc:1107] wasm log root_id root_id: #4 <- date: Thu, 23 Sep 2021 03:45:25 GMT
[2021-09-23 03:45:25.968][16][info][wasm] [external/envoy/source/extensions/common/wasm/context.cc:1107] wasm log root_id root_id: #4 <- content-type: application/json; charset=utf-8
[2021-09-23 03:45:25.968][16][info][wasm] [external/envoy/source/extensions/common/wasm/context.cc:1107] wasm log root_id root_id: #4 <- content-length: 2
[2021-09-23 03:45:25.968][16][info][wasm] [external/envoy/source/extensions/common/wasm/context.cc:1107] wasm log root_id root_id: #4 <- connection: keep-alive
[2021-09-23 03:45:25.968][16][info][wasm] [external/envoy/source/extensions/common/wasm/context.cc:1107] wasm log root_id root_id: #4 <- x-powered-by: Express
[2021-09-23 03:45:25.968][16][info][wasm] [external/envoy/source/extensions/common/wasm/context.cc:1107] wasm log root_id root_id: #4 <- x-ratelimit-limit: 1000
[2021-09-23 03:45:25.968][16][info][wasm] [external/envoy/source/extensions/common/wasm/context.cc:1107] wasm log root_id root_id: #4 <- x-ratelimit-remaining: 999
[2021-09-23 03:45:25.968][16][info][wasm] [external/envoy/source/extensions/common/wasm/context.cc:1107] wasm log root_id root_id: #4 <- x-ratelimit-reset: 1632368764
[2021-09-23 03:45:25.968][16][info][wasm] [external/envoy/source/extensions/common/wasm/context.cc:1107] wasm log root_id root_id: #4 <- vary: Origin, X-HTTP-Method-Override, Accept-Encoding
[2021-09-23 03:45:25.968][16][info][wasm] [external/envoy/source/extensions/common/wasm/context.cc:1107] wasm log root_id root_id: #4 <- access-control-allow-credentials: true
[2021-09-23 03:45:25.968][16][info][wasm] [external/envoy/source/extensions/common/wasm/context.cc:1107] wasm log root_id root_id: #4 <- cache-control: no-cache
[2021-09-23 03:45:25.968][16][info][wasm] [external/envoy/source/extensions/common/wasm/context.cc:1107] wasm log root_id root_id: #4 <- pragma: no-cache
[2021-09-23 03:45:25.969][16][info][wasm] [external/envoy/source/extensions/common/wasm/context.cc:1107] wasm log root_id root_id: #4 <- expires: -1
[2021-09-23 03:45:25.969][16][info][wasm] [external/envoy/source/extensions/common/wasm/context.cc:1107] wasm log root_id root_id: #4 <- x-content-type-options: nosniff
[2021-09-23 03:45:25.969][16][info][wasm] [external/envoy/source/extensions/common/wasm/context.cc:1107] wasm log root_id root_id: #4 <- etag: W/"2-vyGp6PvFo4RvsFtPoIWeCReyIC8"
[2021-09-23 03:45:25.969][16][info][wasm] [external/envoy/source/extensions/common/wasm/context.cc:1107] wasm log root_id root_id: #4 <- via: 1.1 vegur
[2021-09-23 03:45:25.969][16][info][wasm] [external/envoy/source/extensions/common/wasm/context.cc:1107] wasm log root_id root_id: #4 <- cf-cache-status: DYNAMIC
[2021-09-23 03:45:25.969][16][info][wasm] [external/envoy/source/extensions/common/wasm/context.cc:1107] wasm log root_id root_id: #4 <- expect-ct: max-age=604800, report-uri="https://report-uri.cloudflare.com/cdn-cgi/beacon/expect-ct"
[2021-09-23 03:45:25.969][16][info][wasm] [external/envoy/source/extensions/common/wasm/context.cc:1107] wasm log root_id root_id: #4 <- report-to: {"endpoints":[{"url":"https:\/\/a.nel.cloudflare.com\/report\/v3?s=ynV1Urur%2Bbp45y4m9ymeGmLO5awNcHgp8xug1X7LucT%2BprnRiYcMixkKS1qEa8IaQdkLB%2BwYHfykGOLN6tQMQoKWk%2Bcym3bVI0R%2BEWucR%2BPqaT5gsbJNrUGDOO9hugQOVt6eY65XiMJOSxWfMSOq"}],"group":"cf-nel","max_age":604800}
[2021-09-23 03:45:25.969][16][info][wasm] [external/envoy/source/extensions/common/wasm/context.cc:1107] wasm log root_id root_id: #4 <- nel: {"success_fraction":0,"report_to":"cf-nel","max_age":604800}
[2021-09-23 03:45:25.969][16][info][wasm] [external/envoy/source/extensions/common/wasm/context.cc:1107] wasm log root_id root_id: #4 <- server: cloudflare
[2021-09-23 03:45:25.969][16][info][wasm] [external/envoy/source/extensions/common/wasm/context.cc:1107] wasm log root_id root_id: #4 <- cf-ray: 6930c7b8bbaf66ef-DFW
[2021-09-23 03:45:25.969][16][info][wasm] [external/envoy/source/extensions/common/wasm/context.cc:1107] wasm log root_id root_id: #4 <- alt-svc: h3=":443"; ma=86400, h3-29=":443"; ma=86400, h3-28=":443"; ma=86400, h3-27=":443"; ma=86400
[2021-09-23 03:45:25.969][16][info][wasm] [external/envoy/source/extensions/common/wasm/context.cc:1107] wasm log root_id root_id: #4 <- x-envoy-upstream-service-time: 96
[2021-09-23 03:45:25.969][16][info][wasm] [external/envoy/source/extensions/common/wasm/context.cc:1107] wasm log root_id root_id: #4 completed.