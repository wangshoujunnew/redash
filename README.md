<p align="center">
  <img title="Redash" src='https://redash.io/assets/images/logo.png' width="200px"/>
</p>
<p align="center">
    <img title="Build Status" src='https://circleci.com/gh/getredash/redash.png?circle-token=8a695aa5ec2cbfa89b48c275aea298318016f040'/>
</p>

[![Join the chat at https://gitter.im/getredash/redash](https://badges.gitter.im/getredash/redash.svg)](https://gitter.im/getredash/redash?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
[![Documentation](https://img.shields.io/badge/docs-redash.io/help-brightgreen.svg)](https://redash.io/help/)

**_Redash_** is our take on freeing the data within our company in a way that will better fit our culture and usage patterns.

Prior to **_Redash_**, we tried to use traditional BI suites and discovered a set of bloated, technically challenged and slow tools/flows. What we were looking for was a more hacker'ish way to look at data, so we built one.

**_Redash_** was built to allow fast and easy access to billions of records, that we process and collect using Amazon Redshift ("petabyte scale data warehouse" that "speaks" PostgreSQL).
Today **_Redash_** has support for querying multiple databases, including: Redshift, Google BigQuery, PostgreSQL, MySQL, Graphite,
Presto, Google Spreadsheets, Cloudera Impala, Hive and custom scripts.

**_Redash_** consists of two parts:

1. **Query Editor**: think of [JS Fiddle](http://jsfiddle.net) for SQL queries. It's your way to share data in the organization in an open way, by sharing both the dataset and the query that generated it. This way everyone can peer review not only the resulting dataset but also the process that generated it. Also it's possible to fork it and generate new datasets and reach new insights.
2. **Dashboards/Visualizations**: once you have a dataset, you can create different visualizations out of it, and then combine several visualizations into a single dashboard. Currently it supports charts, pivot table and cohorts.

## Demo

<img src="https://cloud.githubusercontent.com/assets/71468/17391289/8e83878e-5a1d-11e6-8938-af9054a33b19.gif" width="60%"/>

You can try out the demo instance: http://demo.redash.io/ (login with any Google account).

## Getting Started

* [Setting up Redash instance](https://redash.io/help-onpremise/setup/setting-up-redash-instance.html) (includes links to ready made AWS/GCE images).
* [Documentation](https://redash.io/help/).


## Getting Help

* Issues: https://github.com/getredash/redash/issues
* Discussion Forum: https://discuss.redash.io/
* Slack: http://slack.redash.io/
* Gitter (chat): https://gitter.im/getredash/redash

## Reporting Bugs and Contributing Code

* Want to report a bug or request a feature? Please open [an issue](https://github.com/getredash/redash/issues/new).
* Want to help us build **_Redash_**? Fork the project, edit in a [dev environment](https://redash.io/help-onpremise/setup/setting-up-development-environment-using-vagrant.html), and make a pull request. We need all the help we can get!

## License

BSD-2-Clause.


# if 直接使用docker安装
https://github.com/repertory/docker-redash
```text
官方教程
# 初始化数据
docker-compose -f product.yml run --rm server create_db
# 启动, 一定要用product.yml, 且要注释掉里面的 REDASH_COOKIE_SECRET: veryverysecret
docker-compose product.yml up 这种方式是调试版本 后台启动方式（不加-d可以查看实时日志)
# 停止服务
docker-compose down
```

1. 进入v3.00版本
#2. sudo docker-compose up
#3. npm install
#4. # Create tables
#   sudo docker-compose run --rm server create_db
   # Create database for tests, 用的不是test数据库, 而是postgres 数据库, 2. 外部的目录映射要提前建立好, 并做好权限, /var/lib/postgresql/data
#   sudo docker-compose -f docker-compose.production.yml run --rm postgres psql -h postgres -U postgres -c "create database postgres"
5. 启动: # sudo docker-compose -f docker-compose.production.yml up -d
    sudo docker-compose -f docker-compose.production.yml up -d
6. 参考url: https://www.cnblogs.com/BillyYoung/p/11077476.html
7. 查看生成的docker镜像 todo
# 还得python2.7环境呀
/home/shoujunw/.conda/envs/python27/bin/python



