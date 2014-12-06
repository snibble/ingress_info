[![Gem Version](http://img.shields.io/gem/v/ingress_info.svg?style=flat)](https://rubygems.org/gems/ingress_info)
[![Code Climate](https://img.shields.io/codeclimate/github/snibble/ingress_info/badges/gpa.svg?style=flat)](https://codeclimate.com/github/snibble/ingress_info)
[![Test Coverage](https://img.shields.io/codeclimate/coverage/github/snibble/ingress_info.svg?style=flat)](https://codeclimate.com/coverage/github/snibble/ingress_info)
[![License](http://img.shields.io/:license-mit-blue.svg?style=flat)](http://doge.mit-license.org)

Ingress_info
============

Ingress_info is a ruby gem for managing information about Niantic Labs' Ingress ARG. In present form, it answers questions about cycles and checkpoints for game scoring. Longer-term, cell scores would be awesome, if I can figure out where to get them. I'm not particularly interested in this growing to cover things like portal information, agent information, etc.

##Using ingress_info

###Installation
Releases of ingress_info are provided as ruby gems at rubygem.org. Installation is as easy as adding a line to your Gemfile:
```
    gem 'ingress_info'
```
or installing directly:
```sh
    $ gem install ingress_info
```
and requiring it in your code:
```
    require 'ingress_info'
```

###Checkpoints
Get a list of checkpoints for a given day:
```
    IngressCycles.checkpointsForDate(cycleStartTime, subjectDate)
    $ irb
    >> IngressCycles.checkpointsForDate(Time.new(2014, 12, 02, 04, 00, 00), Date.new(2014, 12, 02))
    => ["04:00", "09:00", "14:00", "19:00", "24:00"]
```

###Cycles
Get the end time for the cycle that starts at the given time:
```
    IngressCycles.cycleEndTime(cycleStartTime)
    $ irb
    >> IngressCycles.cycleEndTime(Time.new(2014, 12, 31, 04, 00, 00))
    => 2015-01-07 11:00:00 -0500
```
##Changelog

See [CHANGELOG][].

##Contributing

Contributions are welcome. I'm still working on the finer details. For now, I'm open to pull requests.

##License

Ingress_info uses the MIT license. Please check the [LICENSE][] file for more details.

[license]: https://github.com/snibble/ingress_info/blob/master/LICENSE
[changelog]: https://github.com/snibble/ingress_info/blob/master/CHANGELOG.md
