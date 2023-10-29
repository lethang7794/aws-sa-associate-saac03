# OSI Model Debugging Tools

## OSI Layer 7

### OSI Layer 7 - HTTP/s:

#### Using browser network debugging tool

#### Using CLI tools: `httpie`, `curl`

```shell
❯ http -v httpbin.org/headers

# Request Header
GET /headers HTTP/1.1
Accept: */*
Accept-Encoding: gzip, deflate
Connection: keep-alive
Host: httpbin.org
User-Agent: HTTPie/3.2.2


# Response Header
HTTP/1.1 200 OK
Access-Control-Allow-Credentials: true
Access-Control-Allow-Origin: *
Connection: keep-alive
Content-Length: 215
Content-Type: application/json
Date: Sun, 29 Oct 2023 09:02:09 GMT
Server: gunicorn/19.9.0

# Response Body
{
    "headers": {
        "Accept": "*/*",
        "Accept-Encoding": "gzip, deflate",
        "Host": "httpbin.org",
        "User-Agent": "HTTPie/3.2.2",
        "X-Amzn-Trace-Id": "Root=1-653e1f91-460f926d6dd9a7fa0b2ffadc"
    }
}
```

### OSI Layer 7 - DNS: `dig +trace`

## OSI Layer 6 - Presentation Layer

## OSI Layer 5 - Session Layer

Using browsers's `Dev Tools` > `Storage` > `Cookies` > `URL`

## OSI Layer 4: `netcat`

Example:

- Connect to `example.com` on TCP port 80

  ```shell
  ❯ netcat -vz example.com 80
  Connection to example.com (93.184.216.34) 80 port [tcp/http] succeeded!
  ```

- Connect to `example.com` on TCP port 443

  ```shell
  ❯ netcat -vz example.com 443
  Connection to example.com (93.184.216.34) 443 port [tcp/https] succeeded!
  ```

## OSI Layer 3

### OSI Layer 3 - IP: `traceroute`

```shell
❯ traceroute example.com
traceroute to example.com (93.184.216.34), 30 hops max, 60 byte packets
 1  _gateway (172.21.64.1)  4.980 ms  4.832 ms  5.207 ms
 2  adsl.hnpt.com.vn (203.210.144.237)  13.331 ms  18.460 ms  18.355 ms
 3  172.17.5.57 (172.17.5.57)  18.256 ms 172.17.5.61 (172.17.5.61)  18.521 ms  18.434 ms
 4  static.vnpt.vn (113.171.48.157)  18.334 ms static.vnpt.vn (113.171.49.73)  18.248 ms static.vnpt.vn (113.171.48.113)  18.171 ms
 5  * * *
 6  static.vnpt.vn (113.171.31.80)  56.974 ms * *
 7  * static.vnpt.vn (113.171.36.53)  54.805 ms  47.859 ms
 8  * 203.22.177.41 (203.22.177.41)  130.841 ms 121.59.128.33 (121.59.128.33)  65.246 ms
 9  static.vnpt.vn (113.171.36.85)  57.070 ms 203.22.177.41 (203.22.177.41)  134.357 ms  131.765 ms
10  * * 38.142.247.66 (38.142.247.66)  227.320 ms
11  * 38.142.247.66 (38.142.247.66)  227.136 ms *
12  * * *
13  * 38.142.247.66 (38.142.247.66)  211.344 ms *
14  93.184.216.34 (93.184.216.34)  250.968 ms  251.868 ms  251.738 ms
```

### OSI Layer 3 - ICMP: `ping`

```shell
❯ ping -c 10 example.com
PING example.com (93.184.216.34) 56(84) bytes of data.
64 bytes from 93.184.216.34: icmp_seq=1 ttl=53 time=253 ms
64 bytes from 93.184.216.34: icmp_seq=2 ttl=53 time=286 ms
64 bytes from 93.184.216.34: icmp_seq=3 ttl=53 time=277 ms
64 bytes from 93.184.216.34: icmp_seq=4 ttl=53 time=269 ms
64 bytes from 93.184.216.34: icmp_seq=5 ttl=53 time=260 ms
64 bytes from 93.184.216.34: icmp_seq=6 ttl=53 time=254 ms
64 bytes from 93.184.216.34: icmp_seq=7 ttl=53 time=242 ms
64 bytes from 93.184.216.34: icmp_seq=8 ttl=53 time=235 ms
64 bytes from 93.184.216.34: icmp_seq=9 ttl=53 time=225 ms
64 bytes from 93.184.216.34: icmp_seq=10 ttl=53 time=235 ms

--- example.com ping statistics ---
10 packets transmitted, 10 received, 0% packet loss, time 15605ms
rtt min/avg/max/mdev = 225.020/253.679/285.941/18.837 ms
```
