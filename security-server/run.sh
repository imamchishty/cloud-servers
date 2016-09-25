#!/bin/sh

echo --------------------------------------------------------------------
echo Starting security using the default profile
echo --------------------------------------------------------------------
mvn clean package && java -jar target/security.jar