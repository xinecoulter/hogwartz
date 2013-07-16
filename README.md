# Hogwarts!

This repo includes [seedfiles][1], creating an [entity-relationship-diagram][2], using [form_for][3] and [form_tag][4] with [drop downs][5] and checkboxes referencing other models.

[1]:[http://edgeguides.rubyonrails.org/migrations.html#migrations-and-seed-data]
[2]:[http://rails-erd.rubyforge.org/]
[3]:[http://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-form_for]
[4]:[http://api.rubyonrails.org/classes/ActionView/Helpers/FormTagHelper.html#method-i-form_tag]
[5]:[http://api.rubyonrails.org/classes/ActionView/Helpers/FormOptionsHelper.html#method-i-collection_select]

## Takes aways

### forms and params

Creating a form by hand will result in a params like the following:

```
params = {name: "Harry Potter", age: 12, id: 1, action: 'create', controller: 'students'}
```

And in your controller

```
Student.new(name: params[:name], age: params[:age])
```

`form_for` can render an HTML form for a specific model. This means your params will contain a hash representing that object.

```
params = {student: { name: "Harry Potter", age: 12 }, id: 1, action: 'create', controller: 'students'}
```

And in your controller

```
Student.new(params[:student])
```

You can pass the entire student hash in to create a new object in your controller

### forms with belongs_to and habtm

Check out the new student form for a select box drop down of houses.  Check out the edit student page for check boxes of all the students spells.