# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

cd into the project and run `bundle install`

create a postgres user

`
postgres=# ALTER USER eric WITH PASSWORD 'password';`
You shoule get:
`ALTER ROLE
postgres=# \q
`
run rake `db:create`

run rake `db:migrate`

start the server with `rails s` 

server by default runs on port :3000

* ...
