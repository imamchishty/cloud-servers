#!/bin/sh

echo --------------------------------------------------------------------
echo Starting session using the default profile
echo --------------------------------------------------------------------
mvn clean package && java -jar target/session.jar