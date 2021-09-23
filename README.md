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