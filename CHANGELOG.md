#Change Log
All notable changes to this project will be documented in this file.

##Unreleased
###Added
- Timezone handling: Internally, cycle information is handled in UTC now. Eternally, inputs and outputs are expected to be timestamps with timezone information included. This allows the consumer to make the final decision about how to present the data.
- Include 00:00 checkpoint in list when appropriate.

###Removed
- Removed need to specify cycle start time for many methods.

##1.0.0 - 2014-11-30
###Added
- cycleEndTime: computes the end of a cycle given the start time of the cycle
- checkpointsForDate: lists time of each checkpoint in a given day (given cycle start time)