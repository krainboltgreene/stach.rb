# stach

  - [![Build](http://img.shields.io/travis-ci/krainboltgreene/stach.svg?style=flat-square)](https://travis-ci.org/krainboltgreene/stach)
  - [![Downloads](http://img.shields.io/gem/dtv/stach.svg?style=flat-square)](https://rubygems.org/gems/stach)
  - [![Version](http://img.shields.io/gem/v/stach.svg?style=flat-square)](https://rubygems.org/gems/stach)


A micro-mustache rendering engine.


## Using

First require the library if you need to:

``` ruby
require "stach"
```

Now have a interpolation string ready:

``` ruby
content = "Hello {{name}}, my name is computer. I see that you are {{age}} years old!"
```

And now some data:

``` ruby
data = {name: "Kurtis Rainbolt-Greene", age: 30}
```

Lets setup our render:

``` ruby
renderer = Stach.new(content, data)
```

That alone is not enough, we need to realize it:

``` ruby
renderer.to_s
```

That would return the below string:

``` ruby
"Hello Kurtis Rainbolt-Greene, my name is computer. I see you are 30 years old!"
```

Since it's all about calling `to_s` you can also do this:


``` ruby
puts "Johny the robot says, '#{renderer}'"
```

or this:

``` ruby
puts "Johny the robot says, '#{Stach.new(content, data)}'"
```

Which would output:

```
Johny the robot says, 'Hello Kurtis Rainbolt-Greene, my name is computer. I see you are 30 years old!'
```

Here's how this all looks together:

``` ruby
require "stach"

content = "Hello {{name}}, my name is computer. I see that you are {{age}} years old!"

data = {name: "Kurtis Rainbolt-Greene", age: 30}

renderer = Stach.new(content, data)

puts "Johny the robot says, '#{renderer}'"

puts "Johny the robot says, '#{Stach.new(content, data)}'"
```


## Installing

Add this line to your application's Gemfile:

    gem "stach", "1.0.0"

And then execute:

    $ bundle

Or install it yourself with:

    $ gem install stach


## Contributing

  1. Read the [Code of Conduct](/CONDUCT.md)
  2. Fork it
  3. Create your feature branch (`git checkout -b my-new-feature`)
  4. Commit your changes (`git commit -am 'Add some feature'`)
  5. Push to the branch (`git push origin my-new-feature`)
  6. Create new Pull Request
