# README

* ruby 2.5.3
* rails 5.2.3

* Configuration:

cd into the project and run `bundle install`

create a postgres user that matches `/config/database.yml`, or edit the file with your own system pg configuration.<br/>

to create a pg user, enter postgres cli, then: `postgres=# CREATE USER example WITH PASSWORD 'example_password';`<br/>
<br/>
________________________________________________________________________________________
<br/>
(only if you want to Edit user: `postgres=# ALTER USER eric WITH PASSWORD 'password';`,
<br/>
You should get: `postgres=# ALTER ROLE`
<br/>
quit pg: `postgres=# \q`
<br/>
________________________________________________________________________________________
<br/>
run `rake db:create`
<br/>
run `rake db:migrate`
<br/>
start the server with `rails s` 
<br/>
server by default runs on port :3000
<br/>



