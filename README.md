# data.admin.ch-site

This provides a server for the domain [data.admin.ch](http://data.admin.ch).


## Requirements

You need to have [docker](https://docker.com/) installed.

## Building

    docker build -t admin .

## Running

    docker run --rm -p 8080:8080 admin
