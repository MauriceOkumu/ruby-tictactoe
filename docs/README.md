
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

### [Controllers](controllers.md)

### [Testing in ROR](testing.md)

### [Database operations](database.md)



* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

