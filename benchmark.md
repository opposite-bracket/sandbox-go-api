# single terminal

run `ab -n 2000 -c 50 http://127.0.0.1:3000/`

```shell
Server Software:
Server Hostname:        127.0.0.1
Server Port:            3000

Document Path:          /
Document Length:        42 bytes

Concurrency Level:      50
Time taken for tests:   1.981 seconds
Complete requests:      2000
Failed requests:        0
Total transferred:      498000 bytes
HTML transferred:       84000 bytes
Requests per second:    1009.36 [#/sec] (mean)
Time per request:       49.536 [ms] (mean)
Time per request:       0.991 [ms] (mean, across all concurrent requests)
Transfer rate:          245.44 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    1   1.1      1       8
Processing:    11   48  10.8     47      83
Waiting:        3   39   9.1     38      76
Total:         11   49  10.7     49      85

Percentage of the requests served within a certain time (ms)
  50%     49
  66%     53
  75%     56
  80%     58
  90%     63
  95%     67
  98%     72
  99%     75
 100%     85 (longest request)
```

## 2 terminals

run (at the same time) `ab -n 2000 -c 50 http://127.0.0.1:3000/`

**Terminal 1**

```shell
Server Software:
Server Hostname:        127.0.0.1
Server Port:            3000

Document Path:          /
Document Length:        42 bytes

Concurrency Level:      50
Time taken for tests:   3.208 seconds
Complete requests:      2000
Failed requests:        0
Total transferred:      498000 bytes
HTML transferred:       84000 bytes
Requests per second:    623.46 [#/sec] (mean)
Time per request:       80.197 [ms] (mean)
Time per request:       1.604 [ms] (mean, across all concurrent requests)
Transfer rate:          151.60 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    2   1.6      1      20
Processing:     6   78  16.1     76     153
Waiting:        4   65  14.2     63     131
Total:          6   79  16.1     78     155

Percentage of the requests served within a certain time (ms)
  50%     78
  66%     84
  75%     89
  80%     92
  90%    102
  95%    110
  98%    117
  99%    123
 100%    155 (longest request)
```

**Terminal 2**

```shell
Server Software:
Server Hostname:        127.0.0.1
Server Port:            3000

Document Path:          /
Document Length:        42 bytes

Concurrency Level:      50
Time taken for tests:   3.210 seconds
Complete requests:      2000
Failed requests:        0
Total transferred:      498000 bytes
HTML transferred:       84000 bytes
Requests per second:    622.96 [#/sec] (mean)
Time per request:       80.262 [ms] (mean)
Time per request:       1.605 [ms] (mean, across all concurrent requests)
Transfer rate:          151.48 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    2   1.7      1      20
Processing:     6   78  16.3     76     136
Waiting:        4   65  14.2     63     110
Total:          6   79  16.4     78     136

Percentage of the requests served within a certain time (ms)
  50%     78
  66%     85
  75%     89
  80%     92
  90%    102
  95%    110
  98%    118
  99%    123
 100%    136 (longest request)
```
