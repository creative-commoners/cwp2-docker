# CWP 2.0 (SilverStripe 4.1) docker container

A basic [docker-compose](https://docs.docker.com/compose/) setup to run CWP 2.0 (including SilverStripe 4.1).

## Components

* Apache 2.4
* PHP 5.6
* MySQL 5.6

## Usage

```bash
git clone https://github.com/creative-commoners/cwp2-docker.git
cd cwp2-docker
docker-compose build
docker-compose up
```

Initially this may take some time to pull dependencies and compile the images. Go and grab a coffee!

Once complete, this will start with logging in the foreground. If you'd like to run in the background you can
add `-d` to detach.

### Installing dependencies

Install the Composer dependencies:

```bash
docker-compose run composer install --ignore-platform-reqs
```

### Reset or import the database

Temporary solution: the database container exposes port 3307, so use a local `mysql` client to import the snapshot:

**Note:** if you're not using a native Docker implementation, switch the host IP for the IP of Docker's MySQL container.

```bash
cat snapshots/database.sql | mysql -h127.0.0.1 -uroot -proot -P3307 silverstripe
```

SilverStripe images and other assets are included in the `html` codebase by default. You can reset the database as desired.

## PHP codebase

The `html` folder in this project will be mounted to the `web` docker container, which you can modify on your host
machine as required.

## Run it!

### Docker on OSX/Linux

If you're running Docker natively on MacOS or Linux, you should now be able to access the container's web server
at http://localhost:8000/

### Virtual docker

If running Docker on Windows or inside VirtualBox or another virtualisation system, you will first need to map your
Docker machine's IP to a local host name, then the same as above applies.
