### Database creation
`psql -d postgres -U maury`
 After creating the db, configure it accordingli in the database.yml file

Then create the databases for development and test as in the config/database.yml
### DB interactions
 `\c name_of_db` 

 `\dt` => to list all tables

 `SELECT * FROM { table}`

### Database initialization
 do `rails db:schema:dump` to check if your app is connected to the db

 ### Managing db tables

### Migrations

`rails generate migration {migration name}`

With columns
`rails generate model User first_name:string last_name:string email:string`

- To run the migrations, do 
`rails db:migrate`

`rails db:migrate VERSION=0` this will migrate all migrations down
Alternatively give the version to migrate to.

### [General](README.md)

### [Controllers](controllers.md)

### [Testing in rspec](testing.md)

### [ROR testing](ror-testing.md)