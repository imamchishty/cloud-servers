#!/bin/sh

echo --------------------------------------------------------------------
echo Starting zipkin using the default profile
echo --------------------------------------------------------------------
mvn clean package && java -jar target/zipkin.jar