#This fork is to add a "http replay" to a mxunit test.

THe http replay will capture the output of a cfhttp command the first time its ran and cache the result and return it every other time the test is run.