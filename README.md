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
<pre>
$ pacman -Syu git ruby nodejs imagemagick
$ git pull
$ gem install rails
$ bundle install
$ rake db:create db:migrate
$ rails s
</pre>

### Production - Docker
Voir le depot docker-school_slider : https://github.com/loupnunux/docker-school_slider

