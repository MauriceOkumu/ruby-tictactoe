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

Then when a model is generated, the boilerplate specs are too

`rails generate model user [...actions]`

### Running the tests
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

### [Controllers](controllers.md)

### [Database operations](database.md)

### [Testing in rspec](testing.md)

### [General](README.md)