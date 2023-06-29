About
-----

本地开发自用的 docker compose 服务。

### 服务列表

#### php

- [x] php72
- [x] php73
- [x] php74
- [x] php81

#### tool

- [x] gitlab
- [x] gitlab-runner
- [x] grafana
- [x] jenkins
- [x] xxl-job
- [x] filebrowser
- [x] canal admin
- [x] canal server
- [x] chatgpt
- [x] clash
- [x] keeweb

#### middleware

- [x] mysql
- [x] clickhouse
- [x] redis
- [x] redisinsight
- [x] mongo
- [x] mongo-express
- [x] rabbitmq
- [x] zookeeper
- [x] kafka
- [x] kafkamanager
- [x] etcd

#### elasic

- [x] elasticsearch
- [x] kibana
- [x] logstash
- [x] filebeat
- [x] elasticview

#### gateway

- [x] nginx
- [x] traefik
- [x] hub-agent
- [x] consul
- [x] kong
- [x] tyk
- [x] tyk-dashboard
- [x] apisix
- [x] apisix-dashboard

#### prometheus

- [x] prometheus
- [x] alertmanager
- [x] mysql_exporter
- [x] redis_exporter

### 默认配置

需要拷贝 .env.example 为 .env，然后自定义修改配置

```shell
# 宿主机代码目录
CODE_PATH=~/code

# MySQL宿主机端口
MYSQL_PORT=3306
# MySQL默认root密码
MYSQL_ROOT_PASSWORD=4c592e241caca7c92813bf1a7b8e7b9a
# 创建数据库
MYSQL_DATABASE=dev
# 创建账号
MYSQL_USER=dev
# 创建密码
MYSQL_PASSWORD=8f0ec72b858b541ffaec5d1a491d677b

# Redis宿主机端口
REDIS_PORT=63790

# RedisInsight 宿主机端口
REDIS_INSIGHT_PORT=8001

# Mongo宿主机端口
MONGO_PORT=27017
# 用户名
MONGO_ROOT_USERNAME=mongo
# 密码
MONGO_ROOT_PASSWORD=2f3dbc6ba1f11bae7383b56915125e5e
# 创建数据库
MONGO_INITDB_DATABASE=dev

# MongoExpress宿主机端口
MONGO_EXPRESS_PORT=8081
# 用户名
MONGO_EXPRESS_USERNAME=admin
# 密码
MONGO_EXPRESS_PASSWORD=admin

# ELK版本
ELK_VERSION=7.16.1
# ES密码
ELASTIC_PASSWORD=feb1f9a47775a60b57e87cfc5ba1924d
# GEO IP
GEO_IP_PATH=xxx
# LOGS_PATH
LOGS_PATH=xxx

# Zookeeper Servers
ZOOKEEPER_SERVERS=zookeeper1:2181,zookeeper2:2181,zookeeper3:2181

# Kafka Manager
KAFKA_MANAGER_USERNAME=admin
KAFKA_MANAGER_PASSWORD=6fZ6RQ0XyJQ=

# CanalServer数据库账号
CANAL_SERVER_DB_USERNAME = canal
# CanalSERVER数据库密码
CANAL_SERVER_DB_PASSWORD = 9c871345022fb3a5dc28ea78e075c387
# CanalAdmin账号
CANAL_ADMIN_USERNAME = admin
# CanalAdmin密码
CANAL_ADMIN_PASSWORD = F98A8C86156DAB0D0E2D23C4A062160106027B86
# CanalAdmin数据库
CANAL_ADMIN_DB = canal_admin
# CanalAdmin数据库账号
CANAL_ADMIN_DB_USERNAME = canal_admin
# CanalAdmin数据库密码
CANAL_ADMIN_DB_PASSWORD = 72407951f36977f60882497efb69cbd9

# RABBITMQ默认账号
RABBITMQ_DEFAULT_USER=admin
# RABBITMQ默认密码
RABBITMQ_DEFAULT_PASS=I0toQXpGK0E=
# RABBITMQ默认镜像
RABBITMQ_IMAGE_TAG=3.9-management

# XXLJOB镜像标签
XXL_JOB_IMAGE_TAG=2.3.0

# ClickHouse
CLICKHOUSE_PORT_HTTP=8123
CLICKHOUSE_PORT_TCP=9000

# ChatGPT
CHATGPT_OPENAI_API_KEY=
CHATGPT_AUTH_SECRET_KEY=
```