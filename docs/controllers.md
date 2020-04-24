## Generate controller and view

`rails generate controller { nameof controller = demo} { view = index}`

- For models, run
 ` rails g controller Users index show new edit delete` These actions have templates to go with them

 You have to add these actions to the controller
  - Create => do the actual creating ans saving
  - destroy => do the actual destroying
  - update => do the actual updating

start server then go to `/name/view` to see your new view


## Routing
 * Request response loop
  - controller
  - action
  - view  
## Redirect

 - `redirect_to('url')`
 - `redirect_to(controller=> 'nameof controller' , action => 'action')`

 ## Linking
 `link_to(name, target)`
  - target will be in the format of `{:controller => name, :action => name}`
  with controller being optional if they share controllers

## Rails console

In the terminal, `rails console ` will load the app in the console and you can interact with model, db, etc





## Create a record in the db

`user = User.create(:attr => value)`


## Update record
 `user = User.find(id)`

 `User.where(:attr => value)`

 for Dynamic data in queries, never interpolate.

 `User.where(['first_name LIKE ?', @query])`

After getting the record,
`user.update(:attr => new value)`

## Delete record

Find the record

`user.destroy`

## One-to-many relationship

In models

`has_many :secondary-model`
`belongs_to :primary-model`

Usually, one controller per model
Plural names for controllers and Singular names for Models


### [Testing in ROR](testing.md)

### [Database operations](database.md)

### [ROR testing](ror-testing.md)

### [General](README.md)