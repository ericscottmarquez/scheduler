# README

* ruby 2.5.3
* rails 5.2.3

* Configuration:

cd into the project and run `bundle install`

create a postgres user

`
postgres=# ALTER USER eric WITH PASSWORD 'password';`,
You should get:
`ALTER ROLE`, then quit:
`postgres=# \q`

run rake `db:create`

run rake `db:migrate`

start the server with `rails s` 

server by default runs on port :3000

* ...

