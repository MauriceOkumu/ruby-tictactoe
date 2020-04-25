## Generate controller and view

`rails generate controller { nameof controller = demo} { view = index}`


start server then go to `/name/view` to see your new view


## Routing
 * Request response loop
  - controller
  - action
  - view  

### Resourceful routing
in `config/routes.rb` add `resources :users`. 

This will load the users controller routes

`delete ` route is not added by default so add it.
```
   resources :users do
     member do
      get : delete
      end
     end  
```

 - For models, run
 ` rails g controller Users index show new edit delete` 
 
   These actions have templates to go  with them

   #### CRUD method in controller with Resourceful URL helpers
   - index -> show all items  :users_path
   - show -> one item with id :user_path(user)
   - new -> show new form :new_user_path
   - create -> create an item :users_path
   - edit -> show edit form for user with id :edit_user_path(user)
   - update -> Update user with id :user_path(user)
   - delete -> show delete form :delete_user_path(user)
   - destroy -> delete the user with id :user_path(user)

   * You have to add these actions to the controller
    - Create => do the actual creating ans saving
    - destroy => do the actual destroying
    - update => do the actual updating


## Redirect

 - `redirect_to('url')`
 - `redirect_to(controller=> 'nameof controller' , action => 'action')`

 ## Linking
 `link_to(name, target)`
  - target will be in the format of `{:controller => name, :action => name}`
  with controller being optional if they share controllers

  ### Linking using Resourceful URL helpers
  `<%= link_to('All users', users_path, :class => action index) %>`

  `<%= link_to('show user', user_path(user), :class => action show) %>`
  `<%= link_to('<< Back to list', users_path, :class => 'back_link') %>`

## Rails console

In the terminal, `rails console ` will load the app in the console and you can interact with model, db, etc





## Create a record in the db
### Active records

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
### Example of a controller

```
class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    # Displays a form to capture field for create action
    @user = User.new
  end

  def create
    
    @user = User.new(user_params)
    # 2.save in the db
    # 3.if save succeeds, redirect to index
    # 4.if save fails, display the form to retry
    @user.save ? redirect_to(users_path) : render('new')

  end
  
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params) ? redirect_to(users_path) : render('show')
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to(users_path)
  end

  def delete
    @user = User.find(params[:id])
  end

  private

  def user_params
    # Form Authentication
    params.require(:user)
    # Regulate mass assignment
    .permit(:first_name, :last_name, :email)
    # 1.Instantiate a new user using params from new form
  end
  
end
```

### [Testing in ROR](testing.md)

### [Database operations](database.md)

### [ROR testing](ror-testing.md)

### [General](README.md)