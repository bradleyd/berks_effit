# BerksEffit

Removes ~/.berkshelf/cookbooks

Removes Berksfile.lock in your current working directory (if it exists)

## Installation

from inside the project 

```rake build```

and then 

```rake install```

* I use this in my global gemset

Add this line to your application's Gemfile:

    gem 'berks_effit'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install berks_effit

## Usage

``` 
berkseffit -d
you're Berksfile.lock has been effed!
you're berks has been effed!
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
