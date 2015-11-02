# docker-laverna
Laverna in a Docker container

### Image from Docker Registry

1. Run image

        docker run -d -p 80:80 dmitrysandalov/docker-laverna

### Self-made Docker image

1. Build image from this repo

        git clone https://github.com/DmitrySandalov/docker-laverna.git
        cd docker-laverna
        docker build -t laverna .

2. Run image:

        docker run -d -p 80:80 laverna

### Links

* Laverna official website: https://laverna.cc
* Docker image on Github: https://github.com/DmitrySandalov/docker-laverna
