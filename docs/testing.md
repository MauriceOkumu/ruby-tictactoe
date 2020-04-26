## Installation

`gem install rspec`

Info about rspec :
`rspec -v, rspec -h`

## Configuration

Create `.rspec-local file` in the root for configs to be applies

Then run `rspec --init`

## Running the tests

To run the test, `rspec spec/practise_spec.rb -f d` 

To run a particular test, `rspec spec/practise_spec.rb:line-num -f d`

To skip , use `xdescribe, xit..` or use `skip('message')` inside the block

Pending examples `it "does something"` without the do block or use `pending('message')`. The latter must be a failing test

## Matchers
### Equivalence 
- `.to eq is == ` loose equality
- `.to eql is .eql?` value equality
- `.to equal is .equal? ` identity equality

### Truthiness
- `.to be true`
- `.to be_truthy`
- `.to be_falsey`
- `.to be nil`

### Numeric
- `.to eq`
- `to be <=`
- `to be_between(3, 5).inclusive`
- `to be_within(5).of(38)`
- `(1...10).to cover(7)`

### Collection
- `[].to include(val)`
- `to start/end_with(val)`
- `to match_array([])`
- `to include(:city =>'Dallas')`
- `to include(:city)`

### Object type
- ` @user .to be_instance_of(User)`
- ` @user .to be_kind_of(Superclass)`

### Attribute
- `@user .to have_attributes(:first_name =>'val')`

### Satisfy
- `@user .to satisfy {|user| user.saved? && user.confirmation_sent? }`

### Predicate
`it will match be_* to custom method ending in ?`
Note the `be_*` in the syntax

- `(user.visible?).to be true` now can be written as
- `@user .to be_visible`
Dynamically figuring out that there is a visible action in the user controller

### Observation
``` 
  arr = []
   expect { arr << 1}.to change(arr, :empty?).from(true).to(false)

   expect do
     changes
   end. to (matcher)

   expect{ print 'hello'}.to output.to_stdout

```

## Hooks
### Before hooks
- `config.before(:suite) do`
- `before(:context) do`
- `before(:example) do`

### Around

```
  around(:example) do |example| 
    example.run
  end
```
### Memoization with let method

```
  before (:context) do
    def user
      @user ||= User.new
     end
    end

    expect (user.some_value).........
    end
   ```  

   All thes can be done with the `let` method

   `let (:car) { Car.new }`=> lazy execution
   `expect (user.some_value).........`

   Very good for populating instance variables

   ### Subject

   ` let(:subject) {User.new}` same as `subject {User.new}` => Explicitely

   Implicitely Subject
   ```
   describe User
     it"has a user_name attr" do
       expect(subject,user_name)...
       end
      end
``` 

### Shared Examples

In the spec folder, create a new file and put the shared code in it
```
shared_examples_for('a sortable`) do
  it ....
  end
 end
 ```

 Then in the test suite, to include the shared code, require the file then
 ```
  Describe User
   it_behaves_like 'a sortable'
   end
  end
  ```  

  ### Test Doubles
  When the real object is difficult or expensive to work with eq API, sending emails. etc..

  - Mock/Double => An object preprogrammed with expectations and responses for the calls it will receive

  - Stub => Instruction to an object to return a specific response to a method call
 ```
  it 'allows stubbing methods' do
   dbl = double(obj)
   allow(dbl).to receive(:msg)
   expect(dbl).to respond_to(response_expected))
  end
  ``` 
  Using blocks
```
   it 'allows setting responses' do
   dbl = double(obj)
   allow(dbl).to receive(:msg) { response}
   expect(dbl.msg).to eq(response))
  end
  ```

  ```
   it 'allows setting responses' do
   dbl = double(obj)
   allow(dbl).to receive(:msg),and_return (response)
   expect(dbl.msg).to eq(response))
  end
  ```
  Stubbing many variables at once

  ```
   it 'allows setting multiple values at once' do
   dbl = double(User, :name => 'M'. :email =>'@')
   
   expect(dbl.name).to eq('M'))
  end
  ```

  Stubbing random returns
  `allow(die).to receive(:roll).and_return(2,6,3,7)`

  ### Partial test doubles

  Using real instance of class but stub the methods e.g for db calls

  ```
  it 'stubs call to the db' do
    c1 = double('User1', :name => 'M')
    c2 = double('User2', :name => 'Mm')

    allow(User).to receive(:all).and_return([c1, c2])
    users = User.all
    expect(user[0].name).to eq('M')
  end
  ```  

  If you set the expectation, call the method after
  ```
    expect(dbl).to receive(:msg),and_return (response)
    dbl.msg
  ```

  You can also `spy` on the method calls


### [Controllers](controllers.md)

### [Database operations](database.md)

### [ROR testing](ror-testing.md)

### [Control-flow](control-flow.md)

### [General](README.md)