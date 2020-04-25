## Installation

### [Installation guide](https://github.com/rspec/rspec-rails)

Add `rspec-rails` to both the `:development and :test `groups of your app’s `Gemfile`

```
  group :development, :test do
  gem 'rspec-rails', '~> 4.0.0'
end
```

Then do

`bundle install`

### Generate boilerplate config files

`rails generate rspec:install`

This CMD does not prepare the DB, do ` rake spec` to prepare the test db

### Generators

Then when a model is generated, the boilerplate specs are too

`rails generate model User first_name:string last_name:string email:string`
`rails g controller Users index show new edit delete` => comes with template views

In an existing model,

`rails generate rspec:model User` => User being the model name

### Running the tests
` rake` => will set up the db also or do below
```
# Default: Run all spec files (i.e., those matching spec/**/*_spec.rb)
   bundle exec rspec -f d

# Run all spec files in a single directory (recursively)
  bundle exec rspec spec/models

# Run a single spec file
  bundle exec rspec spec/controllers/accounts_controller_spec.rb

# Run a single example from a spec file (by line number)
  bundle exec rspec spec/controllers/accounts_controller_spec.rb:8

# See all options for running specs
  bundle exec rspec --help
```
#### Example of a describe block

```
RSpec.describe User do           #
    it 'has 0  users in the beginning ' do   #
      expect(User.count).to eq(0)  # test code
    end
  end
end
```

### Transactional examples(DB tests)

* Remember
- Data modified by before(:example) will be rolled back
- Data modified by before(:context) wont so use after(:context)
```
describe User do
  before(:context) do
    @user = User.create(name => 'Maurice')
  end

  after(:context) do
   @user.destroy
   end
```

### Helper testing

Consider using the `helper module ` instead of loading the helper file
``` module Ahelper
    def area(l, w)
      l * w
    end
  end

  decribe Ahelper do
    decsribe 'area' do
     it 'return area' do
     expect (helper.area(2,2)).to eq(4)
     end
    end
  end
```

### Controller specs request
 ` get(:index)`

 `post(:create : user =>{name  => 'Maurice'} )`

 * Objects available for controller specs
   - controller
   - request
   - response

  * Attributes
    - assigns
    - session
    - flash
    - cookies

    #### Example
```
    def index
     @users = User.all
    end

    describe UsersController do
      let(:users) {User.all}
      describe 'Get index' do
        it 'assigns all user to @users' do

        #the get simulates the http request
        get :index
        expect(assigns('users')).to eq(users) 
        end
      end
    end
```
use `request.cookies['logged_in']` when using cookies

### Controller specs response

`expect(response).to render_template( template)`

`expect(response).to redirect_to( path )`

`expect(response).to have_http_status( status )`

#### Example of response
```
  describe 'GET index' do

    before(:example) { get :index}
      it 'is a success' do
      expect(response).to have_http_status(:ok)
      end

      it 'is renders template' do
      expect(response).to render_template('index')
      end
    
  end
```

### View spec
* Objects available
  - view
  - assign
  - render
  - rendered

  #### Example
  ```
  describe 'users/index' do
   it 'displays all users' do 
    assign(:users, [User.new(:name => 'Imara')])

    render

    expect(rendered).to match(/Imara/)
    end
   end
  
  ```

  ### Fixtures
  These are sample data store as YAML files insidde `spec/fixtures`
  ``` 
    #spec/fixtures/users.yml
    jared:
        name: Jared
        email: a@b

    imara:
       name: Imara
       email: b@c
  ```

  Then use the fixture as `users(:jared)`

  ### Acceptance (End to End) testing and more reading
  `Cucumber`
  `Capybara`
  `Selenium`
  `Poltergeist`

  ### Atomatic testing CI/CD
  `Autotest`
  `guard-rspec`
  `Jenkins`
  `simplecov`
  `vcr`
  `spork`




### [Controllers](controllers.md)

### [Database operations](database.md)

### [Testing in rspec](testing.md)

### [General](README.md)