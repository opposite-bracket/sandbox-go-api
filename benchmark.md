# single terminal

run `ab -n 2000 -c 50 http://127.0.0.1:3000/`

```shell
Server Software:
Server Hostname:        127.0.0.1
Server Port:            3000

Document Path:          /
Document Length:        40 bytes

Concurrency Level:      50
Time taken for tests:   0.927 seconds
Complete requests:      2000
Failed requests:        0
Total transferred:      338000 bytes
HTML transferred:       80000 bytes
Requests per second:    2156.77 [#/sec] (mean)
Time per request:       23.183 [ms] (mean)
Time per request:       0.464 [ms] (mean, across all concurrent requests)
Transfer rate:          355.95 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    1   0.7      1       4
Processing:     6   22   6.7     21      49
Waiting:        3   21   6.3     20      49
Total:          6   23   6.7     22      50

Percentage of the requests served within a certain time (ms)
  50%     22
  66%     25
  75%     26
  80%     28
  90%     31
  95%     35
  98%     39
  99%     42
 100%     50 (longest request)
```

## 2 terminals

run (at the same time) `ab -n 2000 -c 50 http://127.0.0.1:3000/`

**Terminal 1**

```shell
Server Software:
Server Hostname:        127.0.0.1
Server Port:            3000

Document Path:          /
Document Length:        40 bytes

Concurrency Level:      50
Time taken for tests:   1.795 seconds
Complete requests:      2000
Failed requests:        0
Total transferred:      338000 bytes
HTML transferred:       80000 bytes
Requests per second:    1114.18 [#/sec] (mean)
Time per request:       44.876 [ms] (mean)
Time per request:       0.898 [ms] (mean, across all concurrent requests)
Transfer rate:          183.88 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    2   2.1      2      11
Processing:     7   42  14.3     41     109
Waiting:        2   40  13.8     39     105
Total:          7   44  14.2     44     111

Percentage of the requests served within a certain time (ms)
  50%     44
  66%     49
  75%     52
  80%     55
  90%     61
  95%     68
  98%     81
  99%     94
 100%    111 (longest request)
```

**Terminal 2**

```shell
Server Software:
Server Hostname:        127.0.0.1
Server Port:            3000

Document Path:          /
Document Length:        40 bytes

Concurrency Level:      50
Time taken for tests:   1.798 seconds
Complete requests:      2000
Failed requests:        0
Total transferred:      338000 bytes
HTML transferred:       80000 bytes
Requests per second:    1112.35 [#/sec] (mean)
Time per request:       44.950 [ms] (mean)
Time per request:       0.899 [ms] (mean, across all concurrent requests)
Transfer rate:          183.58 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    3   2.2      2      11
Processing:    10   42  13.7     41     120
Waiting:        4   39  13.1     38     119
Total:         11   44  13.6     44     123

Percentage of the requests served within a certain time (ms)
  50%     44
  66%     48
  75%     52
  80%     54
  90%     61
  95%     66
  98%     80
  99%     94
 100%    123 (longest request)
```
