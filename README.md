SpreeCollection
===============

Extension that provides a way to create a collection of spree objects via polymorphic relation. Can be used for special purpose pages or sections within a page. This allows you to create a section to hightlight certain products, but also certain taxons. Easily extentable.

Installation
------------

Add spree_collection to your Gemfile:

```ruby
gem 'spree_collection'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g spree_collection:install
```

Testing
-------

First bundle your dependencies, then run `rake`. `rake` will default to building the dummy app if it does not exist, then it will run specs. The dummy app can be regenerated by using `rake test_app`.

```shell
bundle
bundle exec rake
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'spree_collection/factories'
```

Copyright (c) 2014 Jan Vereecken, released under the New BSD License
