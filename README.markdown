# test_nested_attributes

I haven't done nested attributes in Rails 4, and I hear a lot of folks
having issues with them, so I thought I'd put up a little experimental
application to try it out.

I want to see what happens if you omit a nested model from the strong
parameters method.

**Result:** the omitted nested model values are simply not stored,
with no indication. I suppose this makes the most sense, and if the
parent model requires the nested values, the parent model should use
validation to ensure they are entered.

# Adding and deleting sub-items in a nested form

This is a harder problem than it sounds like, since you have to enlist
the aid of JavaScript working with Rails. Luckily,
[Ryan Bates][ryanb] of
[Railscasts][railscasts]
fame has provided
[nested_form][nested_form],
a groovy little gem that provides just the functionality I needed.

Ryan's instructions are really easy to follow, and he provides a
reference implementation using the gem, so you even get an example.

# Installation

Installing this demo is really quite simple.

## Clone or download the repo and bundle gems:

``` bash
$ git clone https://github.com/tamouse/test_nested_attributes.git my_nested_attributes_test
$ cd my_nested_attributes_test
$ bundle install

```

## Stand up the database:

I'm using SQLite3 as the database manager here, so you can just stand it up:

``` bash
$ rake db:drop db:create db:migrate --trace
```

## Fire up the server:

``` bash
$ rails server
```

Navigate to the server page and play away!

# Contributing

This was just a proof-of-concept to myself that I could set up a
Rails application with nested attributes by only following the
available documentation on [Rails Guides][guides] and the
[API Docs][apidocs], as well as the associated gems.

That said, if you'd like to contribute, feel free to fork this on
[Github][repo] and issue a pull-request with your changes.


[ryanb]: https://github.com/ryanb
[railscasts]: http://railscasts.com 
[nested_form]: https://github.com/ryanb/nested_form 
[guides]: http://guides.rubyonrails.org
[apidocs]: http://api.rubyonrails.org 
[repo]: https://github.com/tamouse/test_nested_attributes




