# Pillando
Short messages app

# Why?

This is an app to send short messages and to report what is happening in real time. We know there are many other apps
but this is Mexican effort to create apps that can helps to loose coupling dependencies of USA apps.


# Running in development

  Pillando requires:
     > rbenv
     > ruby 3.1.2
     > rails 7

  Please install ruby 3.1.2 and set as local version using `rbenv` or any other
  version manager

  Then install bundler gem
    `gem install bundler`

  From here we can install Pillando dependencies. Please run

  `bundle`

  Then we need to create tables and run migrations

   `bin/rails db:create`

  And run migrations

    `bin/rails db:migrate`

  complete tests
     `bin/rails db:test:prepare`


Now we can run the application

   `bin/rails s`

This should be all. Pillando is not compiling any javascript or css is using
cdn and the rails feature `importmaps`

It is reacting wiht stymulus and using basic components. Therefore we don't
need to run any extra setting


### Create an account

  Create an account with `username` and `password`

### Then Generate your Magic link

  Press Login and put your email. This won't let you know if exists or not.
  Please go and check your email. Well right now is not sending emails but you
  can get your magick link in your console logs.

  Get this link and paste in your browser should let you get in. Now you can
  create a Post aka Pio.

### Likes

_You can like any PIO. Please take a look it is reacting and showing the number
of likes your PIO is getting


###  RePio


Other users are able to RePio yours. If you want to test please Logout and
crete another account.

### Using another account

I recommend to open another browser to have a clean session. Split your screen
and keep your session open in one side and using the new account create a Post

Once you create a post Pio should display your posts in both browsers

All users should be able to like the posts many times

Other users can repost the PIO

### Rails Console

You can also create a post from the console and get this record in your PIO
stream. Give a try!

# Running tests

  `bin/rails test`

# Collaborating

  `git clone this`

