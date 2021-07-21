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
# HELP process_cpu_user_seconds_total Total user CPU time spent in seconds.
# TYPE process_cpu_user_seconds_total counter
process_cpu_user_seconds_total 0.120868

# HELP process_cpu_system_seconds_total Total system CPU time spent in seconds.
# TYPE process_cpu_system_seconds_total counter
process_cpu_system_seconds_total 0.031437

# HELP process_cpu_seconds_total Total user and system CPU time spent in seconds.
# TYPE process_cpu_seconds_total counter
process_cpu_seconds_total 0.152305

# HELP process_start_time_seconds Start time of the process since unix epoch in seconds.
# TYPE process_start_time_seconds gauge
process_start_time_seconds 1626857360

# HELP process_resident_memory_bytes Resident memory size in bytes.
# TYPE process_resident_memory_bytes gauge
process_resident_memory_bytes 40304640

# HELP process_virtual_memory_bytes Virtual memory size in bytes.
# TYPE process_virtual_memory_bytes gauge
process_virtual_memory_bytes 576208896

# HELP process_heap_bytes Process heap size in bytes.
# TYPE process_heap_bytes gauge
process_heap_bytes 54218752

# HELP process_open_fds Number of open file descriptors.
# TYPE process_open_fds gauge
process_open_fds 69

# HELP process_max_fds Maximum number of open file descriptors.
# TYPE process_max_fds gauge
process_max_fds 524288

# HELP nodejs_eventloop_lag_seconds Lag of event loop in seconds.
# TYPE nodejs_eventloop_lag_seconds gauge
nodejs_eventloop_lag_seconds 0.006852696

# HELP nodejs_eventloop_lag_min_seconds The minimum recorded event loop delay.
# TYPE nodejs_eventloop_lag_min_seconds gauge
nodejs_eventloop_lag_min_seconds 0.009289728

# HELP nodejs_eventloop_lag_max_seconds The maximum recorded event loop delay.
# TYPE nodejs_eventloop_lag_max_seconds gauge
nodejs_eventloop_lag_max_seconds 0.015966207

# HELP nodejs_eventloop_lag_mean_seconds The mean of the recorded event loop delays.
# TYPE nodejs_eventloop_lag_mean_seconds gauge
nodejs_eventloop_lag_mean_seconds 0.010235798654483926

# HELP nodejs_eventloop_lag_stddev_seconds The standard deviation of the recorded event loop delays.
# TYPE nodejs_eventloop_lag_stddev_seconds gauge
nodejs_eventloop_lag_stddev_seconds 0.0003939185857337193

# HELP nodejs_eventloop_lag_p50_seconds The 50th percentile of the recorded event loop delays.
# TYPE nodejs_eventloop_lag_p50_seconds gauge
nodejs_eventloop_lag_p50_seconds 0.010092543

# HELP nodejs_eventloop_lag_p90_seconds The 90th percentile of the recorded event loop delays.
# TYPE nodejs_eventloop_lag_p90_seconds gauge
nodejs_eventloop_lag_p90_seconds 0.011141119

# HELP nodejs_eventloop_lag_p99_seconds The 99th percentile of the recorded event loop delays.
# TYPE nodejs_eventloop_lag_p99_seconds gauge
nodejs_eventloop_lag_p99_seconds 0.011255807

# HELP nodejs_active_handles Number of active libuv handles grouped by handle type. Every handle type is C++ class name.
# TYPE nodejs_active_handles gauge
nodejs_active_handles{type="WriteStream"} 2
nodejs_active_handles{type="ReadStream"} 1
nodejs_active_handles{type="Server"} 1
nodejs_active_handles{type="Socket"} 2

# HELP nodejs_active_handles_total Total number of active handles.
# TYPE nodejs_active_handles_total gauge
nodejs_active_handles_total 6

# HELP nodejs_active_requests Number of active libuv requests grouped by request type. Every request type is C++ class name.
# TYPE nodejs_active_requests gauge

# HELP nodejs_active_requests_total Total number of active requests.
# TYPE nodejs_active_requests_total gauge
nodejs_active_requests_total 0

# HELP nodejs_heap_size_total_bytes Process heap size from Node.js in bytes.
# TYPE nodejs_heap_size_total_bytes gauge
nodejs_heap_size_total_bytes 8237056

# HELP nodejs_heap_size_used_bytes Process heap size used from Node.js in bytes.
# TYPE nodejs_heap_size_used_bytes gauge
nodejs_heap_size_used_bytes 6107000

# HELP nodejs_external_memory_bytes Node.js external memory size in bytes.
# TYPE nodejs_external_memory_bytes gauge
nodejs_external_memory_bytes 1475600

# HELP nodejs_heap_space_size_total_bytes Process heap space size total from Node.js in bytes.
# TYPE nodejs_heap_space_size_total_bytes gauge
nodejs_heap_space_size_total_bytes{space="read_only"} 262144
nodejs_heap_space_size_total_bytes{space="new"} 1048576
nodejs_heap_space_size_total_bytes{space="old"} 5124096
nodejs_heap_space_size_total_bytes{space="code"} 430080
nodejs_heap_space_size_total_bytes{space="map"} 790528
nodejs_heap_space_size_total_bytes{space="large_object"} 532480
nodejs_heap_space_size_total_bytes{space="code_large_object"} 49152
nodejs_heap_space_size_total_bytes{space="new_large_object"} 0

# HELP nodejs_heap_space_size_used_bytes Process heap space size used from Node.js in bytes.
# TYPE nodejs_heap_space_size_used_bytes gauge
nodejs_heap_space_size_used_bytes{space="read_only"} 32808
nodejs_heap_space_size_used_bytes{space="new"} 472056
nodejs_heap_space_size_used_bytes{space="old"} 4509424
nodejs_heap_space_size_used_bytes{space="code"} 202880
nodejs_heap_space_size_used_bytes{space="map"} 367200
nodejs_heap_space_size_used_bytes{space="large_object"} 524344
nodejs_heap_space_size_used_bytes{space="code_large_object"} 2784
nodejs_heap_space_size_used_bytes{space="new_large_object"} 0

# HELP nodejs_heap_space_size_available_bytes Process heap space size available from Node.js in bytes.
# TYPE nodejs_heap_space_size_available_bytes gauge
nodejs_heap_space_size_available_bytes{space="read_only"} 0
nodejs_heap_space_size_available_bytes{space="new"} 575400
nodejs_heap_space_size_available_bytes{space="old"} 550696
nodejs_heap_space_size_available_bytes{space="code"} 16768
nodejs_heap_space_size_available_bytes{space="map"} 421704
nodejs_heap_space_size_available_bytes{space="large_object"} 0
nodejs_heap_space_size_available_bytes{space="code_large_object"} 0
nodejs_heap_space_size_available_bytes{space="new_large_object"} 1047456

# HELP nodejs_version_info Node.js version info.
# TYPE nodejs_version_info gauge
nodejs_version_info{version="v12.18.3",major="12",minor="18",patch="3"} 1

# HELP nodejs_gc_duration_seconds Garbage collection duration by kind, one of major, minor, incremental or weakcb.
# TYPE nodejs_gc_duration_seconds histogram
nodejs_gc_duration_seconds_bucket{le="0.001",kind="incremental"} 2
nodejs_gc_duration_seconds_bucket{le="0.01",kind="incremental"} 2
nodejs_gc_duration_seconds_bucket{le="0.1",kind="incremental"} 2
nodejs_gc_duration_seconds_bucket{le="1",kind="incremental"} 2
nodejs_gc_duration_seconds_bucket{le="2",kind="incremental"} 2
nodejs_gc_duration_seconds_bucket{le="5",kind="incremental"} 2
nodejs_gc_duration_seconds_bucket{le="+Inf",kind="incremental"} 2
nodejs_gc_duration_seconds_sum{kind="incremental"} 0.000061475
nodejs_gc_duration_seconds_count{kind="incremental"} 2
nodejs_gc_duration_seconds_bucket{le="0.001",kind="major"} 0
nodejs_gc_duration_seconds_bucket{le="0.01",kind="major"} 2
nodejs_gc_duration_seconds_bucket{le="0.1",kind="major"} 2
nodejs_gc_duration_seconds_bucket{le="1",kind="major"} 2
nodejs_gc_duration_seconds_bucket{le="2",kind="major"} 2
nodejs_gc_duration_seconds_bucket{le="5",kind="major"} 2
nodejs_gc_duration_seconds_bucket{le="+Inf",kind="major"} 2
nodejs_gc_duration_seconds_sum{kind="major"} 0.004476819
nodejs_gc_duration_seconds_count{kind="major"} 2

# HELP http_request_duration_seconds duration histogram of http responses labeled with: status_code, method, path, project_name, project_type
# TYPE http_request_duration_seconds histogram
http_request_duration_seconds_bucket{le="0.003",status_code="304",method="GET",path="/hello",project_name="hello_world",project_type="test_metrics_labels"} 10
http_request_duration_seconds_bucket{le="0.03",status_code="304",method="GET",path="/hello",project_name="hello_world",project_type="test_metrics_labels"} 11
http_request_duration_seconds_bucket{le="0.1",status_code="304",method="GET",path="/hello",project_name="hello_world",project_type="test_metrics_labels"} 11
http_request_duration_seconds_bucket{le="0.3",status_code="304",method="GET",path="/hello",project_name="hello_world",project_type="test_metrics_labels"} 11
http_request_duration_seconds_bucket{le="1.5",status_code="304",method="GET",path="/hello",project_name="hello_world",project_type="test_metrics_labels"} 11
http_request_duration_seconds_bucket{le="10",status_code="304",method="GET",path="/hello",project_name="hello_world",project_type="test_metrics_labels"} 11
http_request_duration_seconds_bucket{le="+Inf",status_code="304",method="GET",path="/hello",project_name="hello_world",project_type="test_metrics_labels"} 11
http_request_duration_seconds_sum{status_code="304",method="GET",path="/hello",project_name="hello_world",project_type="test_metrics_labels"} 0.012559293000000001
http_request_duration_seconds_count{status_code="304",method="GET",path="/hello",project_name="hello_world",project_type="test_metrics_labels"} 11

# HELP up 1 = up, 0 = not up
# TYPE up gauge
up 1
```

