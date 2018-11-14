# Snow command line

## Installation

You need to install [Docker CE](https://store.docker.com/editions/community/docker-ce-desktop-mac) first.

You can now download or clone this repo.

## Usage
Run the snow.sh script to run your snow code:

```bash
 bash scripts/snow.sh SnowFiles/example.snow
 ```
 This may take some time the first time you use it as it will download the imanzarrabian/snowlang docker image on your machine. No need to install Linux nor Swift, the docker image will include them all alongside with Snow. 
 Oncee downloaded a docker container will be instanciated and it'll run the example.snow (or any other snow file you did set as input).

 Once finished the container will be removed from your local machine but you'll still have the image so next time you'll use ```scripts/snow.sh```it will go much faster.
