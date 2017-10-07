# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* Rails version
5.1.4

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...



### Developpement - In shell
$ pacman -Syu git ruby nodejs imagemagick
$ git pull
$ gem install rails
$ bundle install
$ rake db:create db:migrate
$ rails s


### Production - Docker
# Veriffier les informations du docker-compose.prod.yml
$ docker-compose -f docker-compose.prod.yml build app
$ docker-compose -f docker-compose.prod.yml run --rm app rake db:create db:migrate
$ docker run --rm schoolslider_app rake secret
# reporter le secret dans .env variable 'SECRET_KEY_BASE'
$ docker-compose -f docker-compose.prod.yml up app



