### Flow of work
 Default matching to the root

 in the route file, do 

 ` root 'home#index'` to match the root of the app to the home controller index action

In the controller actions, you can render a different view by

`render('path/to/view')` or `render('view') ` if they share controllers

Redirecting? `redirect_to(view or path)` in the action

Linking? `link_to(name, url or view)`

Use instance variables in controllers and views `@variable`

### Partials to remain DRY
 #### Example partial html
 ```
 # in views, create _form.html.erb
 <table>
    <tr>
    <th>First name</th>
    <td><%= f.text_field(:first_name) %></td>
    </tr>
     <tr>
    <th>last name</th>
    <td><%= f.text_field(:last_name) %></td>
    </tr>
     <tr>
    <th>Email</th>
    <td> <%= f.text_field(:email) %></td>
    </tr>
</table>
```

Then in the view
```
<%= form_for (@user) do |f| %>
<%# Using Partial form for shared html _form%>
<%= render(:partial => 'form', :locals => {:f => f}) %>
<div class='form-buttons'>
  <%= f.submit('Update user')%>
</div>
<% end %> 

```

### Helpers
#### Example
``` #in helpers/application-helper

   module ApplicationHelper
    def error_messages_for(object)
        render(:partial => 'application/error_messages', :locals => {:object => object})
    end
end
```
```
views/application/_error_messages.html.erb
  <% if object && object.errors.size > 0%>
<div id='error-explanation'>
  <h2><%= pluralize(object.errors.size, 'error') %> Prohibited this record from being saved </h2>
  <p> There were problems with the following fields: </p>
  <ul>
  <% object.errors.full_messages.each do |msg| %>
  <li><%= msg %></li>
  <% end %>
  </ul>
</div>
<% end %>
```

Then do `<%= error_messages_for(f.object) %>` in the form partials 

## [Controllers](controllers.md)

### [Database operations](database.md)

### [ROR testing](ror-testing.md)

### [Rspec testing](testing.md)

### [General](README.md)