docker run -d -p 8428:8428 \
-v /Users/dongfeng/docker_data/victoria-metrics-data:/victoria-metrics-data \
--name victoria-metrics \
victoriametrics/victoria-metrics:v1.95.1