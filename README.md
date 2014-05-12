## WDI Cook Book app 
... with authentication/authorization and session management

### TODO: Fix my app

Imagine you just got this app from a student who is having a few issues with bugs.  The student is try to implement our cookbook app with authentication, but needs you to help him fix some of the bugs he has created.  Fork and clone this repo and fix all the bugs!  Get it fully running.  Make sure to test all the create, read update and delete pages for the resources.

#### Hints

Remember rails conventions.  Names matter, pluralizaton matters, and inheritence matters.  Also, try to work in groups to tackle bugs.  __Do not just copy and paste bug fixes until you understand them!__

### Add Token Expiration to the Auth

Once you get the app up and running, add authentication that expires in some period of time (say 2 weeks).  In other words, if I'm User A, and I sign into the applicaiton, my remember token should not be valid 2 weeks from the time I first signed in.

#### Hints

The first thing you should do is brainstorm.  Ask yourself the following:

* What additional information do I need to store about the user?
* Where can I make sure the cookie is still valid?
* When implementing a time based auth expiration, is it sufficient to a cookie that expires in 2 weeks, rather than a permenant cookie?  Explain to yourself why or why not.


### Install instructions (Assuming everything works)

- fork and clone this repo
- cd in project root dir
- make a .env file that has a value for SECRET_KEY_BASE
- bundle update
- rake db:create
- rake db:migrate
- rake db:seed
- start rails server
- Start cooking!!


