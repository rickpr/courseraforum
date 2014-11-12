# Coursera Forum Copier

### Pulls Coursera Forum into local database.

# How to use:

Clone the repository:
```
git clone https://github.com/rickpr/courseraforum.git
```

First you need a Coursera username and password. Then log into Coursera and use
[Edit this
Cookie](https://chrome.google.com/webstore/detail/editthiscookie/fngmhnnpilhplaeedifhccceomclgfbg)
to get your cookies from Coursera. Export them as semicolon value-pairs

Take the semicolon value pairs and replace Coursecookie in
/config/initializers/coursera.rb with your actual cookie (leave it in quotes). Also,
replace YOURCOURSEHERE with the URL of your course, it should be
somecourse-somenumber. You will see it in the URL bar of your course.

Then run the following in your shell within the app folder
```
rake db:migrate
rails console
load "./forum.rb"
load "./posts.rb"
```
This last operation will take a very long time. It may also fail when Coursera
cuts your connection. Look through your console output and look for "thread_id"
to see where it failed. Then you may edit posts.rb to start where you left off
by changing the value of i to that value:
```
i=0 #Change this
i=500 #Or wherever it failed
```
If you get an exit code with error 400, that means the script probably finished.
If you get an ECONNREFUSED error, Coursera probably blocked the script and you
must get a new cookie.

You may only see protected attributes like e-mail address if you already have
privileges to do so.
