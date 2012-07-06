# Thready

<http://github.com/alexch/thready>

by Alex Chaffee <http://alexchaffee.com>

Sets up a signal handler so when your app receives a SIGQUIT it dumps
information about the currently running threads. On Unix (including MacOS)
this usually happens when you press control-backslash.

## Installation

Add this line to your application's Gemfile:

    gem 'thready'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install thready

## Usage

Sometime during your program's initialization, do

    require "thready"

Then while it's running, press

    Ctrl-\

This gem is only intended to be run during development and testing.
In fact, you probably shouldn't even check it in to your version control
system.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## References

* http://en.wikipedia.org/wiki/Signal_(computing)
* http://en.wikipedia.org/wiki/SIGQUIT
* http://weblog.jamisbuck.org/2006/9/22/inspecting-a-live-ruby-process
* http://axonflux.com/inspect-a-live-running-ruby-process

