# cloud-servers

Cloud servers provides developers (Spring Boot ones) the ability to quickly test microservices with 'cloud' services such as configuration and eureka.
The aim of this project isn't to teach what each service is/or what it does as I'm sure there are much better sources for this.

Each module (Maven) can run independently using the ./run.sh script. In order to simplify the entire process each of the services has been dockerized and a simple docker-compose file has been added.
So you have three options for running these services:

1. ./run.sh in each module
2. docker run imamchishty/XXXX-server
3. docker-compose

The preferred option is to use docker-compose as it is extremely simple.

## Docker compose

The docker-compose file is available at the root of this project. It's a very simple yaml file that combines multiple docker images to run seamlessly.

### How to set up the required properties/variable?

For the config-server you're required to pass the location, directory location, of where the config files for the apps reside. In future I'll add an option for github, but to keep it really simple I've opted for files on the filesystem.
To make the env variable available to docker-compose please create a `.env` file and keep this in the same location as docker-compose.yaml.

Set the following values:

    CONFIG_SERVER_CONFIG_DIR=/your/config/folder/location

### Running compose?

`docker-compose up` optional `-d` can also be used.

The following lists the services that will be available.

## Running services without compose but with docker

Run examples have been provided, to run detached use the `-d` switch.

### config-server

Image: imamchishty/config-server
Run: docker run -p 8070:8070 -e "CONFIG_DIR=/config/" -v /config/:/config/ imamchishty/config-server 
Url: localhost:8070

### eureka-server

Image: imamchishty/eureka-server
Run: docker run -p 8071:8071 imamchishty/eureka-server 
Url: localhost:8071

### zuul-server

Image: imamchishty/zuul-server
Run: docker run -p 8072:8072 imamchishty/zuul-server 
Url: localhost:8072

### turbine-server

Image: imamchishty/turbine-server
Run: docker run -p 8073:8073 imamchishty/turbine-server 
Url: localhost:8073

### zipkin-server

Image: imamchishty/zipkin-server
Run: docker run -p 9411:9411 imamchishty/zipkin-server 
Url: localhost:9411

### graylog-server

Please refer to the compose-file.