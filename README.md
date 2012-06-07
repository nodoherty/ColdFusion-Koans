#ColdFusion Koans Project

The ColdFusion Koans are a set of unit tests that the user must make pass by filling in values. To get started 
open the file AboutAsserts/AboutAsserts.cfc and begin making the tests pass.

**Its important that you use the mxunit that is packaged with this project.   It will run the unit tests in order!**

As you complete a section you'll confirm your tests by refreshing this page or running the test suite using the mxunit eclipse plugin.

**This is a community run project to please feel free to fork this project and contribute any time.  See the Suggested topics for ideas if you need one or feel free to add your own**

##ColdFusion 10 Topics

When adding topics that are reliant to ColdFusion 10 make sure to add them inside the conditional statement:

```cfm
 if(application.version >= 10){
  /****************
    If you have a topic that is 100% reliant on ColdFusion 10 or greater add them here
  *****************/
    ...
  } 
```
in index.cfm.

##Suggestions for committing

**Be sure to read [https://help.github.com/articles/dealing-with-line-endings](https://help.github.com/articles/dealing-with-line-endings) about line endings if you aren't sure how they can affect your pull requests!**
* We need beginner lessons too, don't hesitate to add a new test for a cftag or something simple!
* Try not to duplicate any current lessons.
* Be creative!
* Add comments that explain the concept for your test.
* Make sure you can make your test pass, then delete the correct answer before you submit.
* If you need to create a new CFC for your test, put it in the components folder. 
* If there is a link to more information on a topic feel free to shorten it and include it

##Suggested topics

* About UnitTesting - Advanced
  * Mocking
  * Stubbing
  * Inject Properties
  * Make Public
* AboutOOP
  * Inheritence
  * Encapsulation
  * Scope
* ColdFusion 10 features (be sure to add the suites inside the conditional if(version > 10) statement in index.html)

##Contributors

Michael Seid [@mbseid](http://twitter.com/#!/mbseid)

Steven Neiland [@sneiland](http://twitter.com/#!/sneiland)

Craig Kaminsky [@craigkaminsky](http://twitter.com/#!/craigkaminsky) [http://craigkaminsky.me/](http://craigkaminsky.me/)

Mike Henke [@mikehenke](http://twitter.com/#!/mikehenke) [http://www.henke.ws/](http://www.henke.ws/)

Niall O'Doherty [@nodoherty](http://twitter.com/#!/nodoherty) [http://www.niallodoherty.com/](http://www.niallodoherty.com/)

##Thanks

Robert Glover [@snarfblat](http://twitter.com/#!/snarfblat) for helping me troubleshoot issues.
