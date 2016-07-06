#!/bin/bash

host=192.168.1.185
port=8086
dbname=mydb
measurement=successratio


for service_id in {1..10}
do
    cmd="curl -i -XPOST 'http://$host:$port/write?db=$dbname' --data-binary '$measurement,service_id=$service_id,service_name=查询订单,app_id=C001,app_name=上海航空 biz_success=0.9,biz_fail=0.1'"
   echo $cmd
done