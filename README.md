# cloud-servers
cloud servers

## zipkin-server

zipkin server for testing

###Docker image:

https://hub.docker.com/r/imamchishty/zipkin-server/

docker run -p 9411:9411 -d imamchishty/zipkin-server


## config-server

The following property must be provided:

spring:
  cloud:
    config:
      server:
        native:
          search-locations: ${CONFIG_DIR}
          
The CONFIG_DIR env var must be provided at runtime, for simplicity edit the run.sh to provide the value.                    

###Docker image:

####Image:

https://hub.docker.com/r/imamchishty/config-server/

####Running

`docker run -p 8070:8070 -e "CONFIG_DIR=/config/" -v /config/:/config/ -d imamchishty/config-server`

Example
Lets say that the config files are located `/config/apps/hello` then to start:

`docker run -p 8070:8070 -e "CONFIG_DIR=/config/apps/hello/" -v /config/apps/hello/:/config/apps/hello/ -d imamchishty/config-server`
