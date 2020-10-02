<p align="center">
  <img title="Redash" src='https://redash.io/assets/images/logo.png' width="200px"/>
</p>

[![Documentation](https://img.shields.io/badge/docs-redash.io/help-brightgreen.svg)](https://redash.io/help/)
[![Datree](https://s3.amazonaws.com/catalog.static.datree.io/datree-badge-20px.svg)](https://datree.io/?src=badge)
[![Build Status](https://circleci.com/gh/getredash/redash.png?style=shield&circle-token=8a695aa5ec2cbfa89b48c275aea298318016f040)](https://circleci.com/gh/getredash/redash/tree/master)

Redash is designed to enable anyone, regardless of the level of technical sophistication, to harness the power of data big and small. SQL users leverage Redash to explore, query, visualize, and share data from any data sources. Their work in turn enables anybody in their organization to use the data. Every day, millions of users at thousands of organizations around the world use Redash to develop insights and make data-driven decisions.

Redash features:

1. **Browser-based**: Everything in your browser, with a shareable URL.
2. **Ease-of-use**: Become immediately productive with data without the need to master complex software.
3. **Query editor**: Quickly compose SQL and NoSQL queries with a schema browser and auto-complete.
4. **Visualization and dashboards**: Create [beautiful visualizations](https://redash.io/help/user-guide/visualizations/visualization-types) with drag and drop, and combine them into a single dashboard.
5. **Sharing**: Collaborate easily by sharing visualizations and their associated queries, enabling peer review of reports and queries.
6. **Schedule refreshes**: Automatically update your charts and dashboards at regular intervals you define.
7. **Alerts**: Define conditions and be alerted instantly when your data changes.
8. **REST API**: Everything that can be done in the UI is also available through REST API.
9. **Broad support for data sources**: Extensible data source API with native support for a long list of common databases and platforms.

<img src="https://raw.githubusercontent.com/getredash/website/8e820cd02c73a8ddf4f946a9d293c54fd3fb08b9/website/_assets/images/redash-anim.gif" width="80%"/>

## Getting Started

* [Setting up Redash instance](https://redash.io/help/open-source/setup) (includes links to ready-made AWS/GCE images).
* [Documentation](https://redash.io/help/).

## Supported Data Sources

Redash supports more than 35 SQL and NoSQL [data sources](https://redash.io/help/data-sources/supported-data-sources). It can also be extended to support more. Below is a list of built-in sources:

- Amazon Athena
- Amazon DynamoDB
- Amazon Redshift
- Axibase Time Series Database
- Cassandra
- ClickHouse
- CockroachDB
- CSV
- Databricks (Apache Spark)
- DB2 by IBM
- Druid
- Elasticsearch
- Google Analytics
- Google BigQuery
- Google Spreadsheets
- Graphite
- Greenplum
- Hive
- Impala
- InfluxDB
- JIRA
- JSON
- Apache Kylin
- OmniSciDB (Formerly MapD)
- MemSQL
- Microsoft Azure Data Warehouse / Synapse
- Microsoft Azure SQL Database
- Microsoft SQL Server
- MongoDB
- MySQL
- Oracle
- PostgreSQL
- Presto
- Prometheus
- Python
- Qubole
- Rockset
- Salesforce
- ScyllaDB
- Shell Scripts
- Snowflake
- SQLite
- TreasureData
- Vertica
- Yandex AppMetrrica
- Yandex Metrica

## Getting Help

* Issues: https://github.com/getredash/redash/issues
* Discussion Forum: https://discuss.redash.io/

## Reporting Bugs and Contributing Code

* Want to report a bug or request a feature? Please open [an issue](https://github.com/getredash/redash/issues/new).
* Want to help us build **_Redash_**? Fork the project, edit in a [dev environment](https://redash.io/help-onpremise/dev/guide.html) and make a pull request. We need all the help we can get!

## Security

Please email security@redash.io to report any security vulnerabilities. We will acknowledge receipt of your vulnerability and strive to send you regular updates about our progress. If you're curious about the status of your disclosure please feel free to email us again. If you want to encrypt your disclosure email, you can use [this PGP key](https://keybase.io/arikfr/key.asc).

## License

BSD-2-Clause.


# 采用的数据库 postgresql
1. 打开  postgresql 服务
2. 检查服务状态 service postgresql status, 安装:
    1058  yum -y install postgresql
     1060  yum install -y postgresql-server
     
     修改目录权限
     修改 /var/lib/pgsql目录的归属用户：
     [root@ds1 lib]# chown -R postgres:postgres pgsql
     (journalctl -xe 查看服务失败的具体原因)
     初始化服务 : postgresql-setup initdb
     
3. 打开服务 service postgresql start

# 项目中使用的postgresql url: export REDASH_DATABASE_URL="postgresql://postgres@postgres/tests"

```
表里初始化用户
su postgres
# 创建root用户
psql   
postgres=#create user root with password 'password';    
CREATE ROLE

# 将数据库权限赋予root用户
postgres=# GRANT ALL PRIVILEGES ON DATABASE mydatabase to root;
GRANT

# 将用户修改为超级用户（看实际需求）
postgres=# ALTER ROLE root WITH SUPERUSER;

postgres=# \q

```
4. 运行服务 python manage.py runserver -p 11111
