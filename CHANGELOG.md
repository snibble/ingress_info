#Change Log
All notable changes to this project will be documented in this file.

##Unreleased
###Changed
- Changed method names to match snake case ruby convention.
- Changed return types of methods to be timestamps rather than strings. Consumer will now be responsible to stringifying if needed. But, consumer can now do time/date math on return values more easily. (This is not backwards compatible and will come with a major version number change.)

##1.0.2 - 2014-12-05
###Fixed
- Fixed the publication date associated with the gem, in case that maters...

##1.0.1 - 2014-12-05
###Fixed
- Fixed a bug that prevented 00:00 checkpoint from being included in return from checkpointsForDate().

##1.0.0 - 2014-11-30
###Added
- cycleEndTime: computes the end of a cycle given the start time of the cycle
- checkpointsForDate: lists time of each checkpoint in a given day (given cycle start time)