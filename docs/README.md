
# GENERAL


[More Info about ruby](https://guides.rubyonrails.org)

[Ruby Apis](api.rubyonrails.org)

## Configuration

### Installing dependencies in local machine
` rbenv install {e.g ruby}`

After installing do

`rbenv rehash`

Make sure you append `eval "$(rbenv init -)"` to either the bash_profile or zshrc files and source the said file

`gem install rails`

### Create new ROR project

` rails new {dir} -d {database}`


### Serving ROR on the web
- Apache

- Nginx

- Passenger

-  Unicorn

- Puma ( Comes with Rails)

### Dependency installation and starting the app

For fresh packages, do

`bundle install`

from root

`rails server`

This will start puma for developement

`rails console` => will load our app in a terminal .

### [Controllers](controllers.md)

### [ROR testing](ror-testing.md)

### [Testing in rspec](testing.md)

### [Control-flow](control-flow.md)

### [Database operations](database.md)



### ENV variables
 #### Figaro
 * Add it as a gem 
 ` gem figaro`

 `rails generate figaro:install`
 `bundle exec figaro install` -> to generate the .yml file

 Then go to `config/application.yml and store your variables

 * Usage

 `ENV['variable name']`

* Deployment instructions
 `figaro heroku:set -e production`
* ...

