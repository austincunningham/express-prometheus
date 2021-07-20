# Express-Prometheus

A hello world express app with prometheus metrics included

# Install

```bash
npm i
```
# Running
```bash
npm start
> express-prometheus@1.0.0 start /home/austincunningham/repo/express-prometheus
> node index.js

Listening at http://localhost:8080

# curl the hello world endpoint
curl localhost:8080/hello
{"hello":"world"}%                                                                                                     

# curl the metrics endpoint
curl localhost:8080/metrics
# HELP http_request_duration_seconds duration histogram of http responses labeled with: status_code, method, path
# TYPE http_request_duration_seconds histogram
http_request_duration_seconds_bucket{le="0.003",status_code="200",method="GET",path="/hello"} 0
http_request_duration_seconds_bucket{le="0.03",status_code="200",method="GET",path="/hello"} 1
http_request_duration_seconds_bucket{le="0.1",status_code="200",method="GET",path="/hello"} 1
http_request_duration_seconds_bucket{le="0.3",status_code="200",method="GET",path="/hello"} 1
http_request_duration_seconds_bucket{le="1.5",status_code="200",method="GET",path="/hello"} 1
http_request_duration_seconds_bucket{le="10",status_code="200",method="GET",path="/hello"} 1
http_request_duration_seconds_bucket{le="+Inf",status_code="200",method="GET",path="/hello"} 1
http_request_duration_seconds_sum{status_code="200",method="GET",path="/hello"} 0.004445196
http_request_duration_seconds_count{status_code="200",method="GET",path="/hello"} 1

# HELP up 1 = up, 0 = not up
# TYPE up gauge
up 1
```

