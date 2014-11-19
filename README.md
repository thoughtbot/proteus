# Proteus - Middleman

## About Proteus
[Proteus](http://github.com/thoughtbot/proteus) is a collection of useful
starter kits to help you prototype faster. It follows the
[thoughtbot styleguide](https://github.com/thoughtbot/guides) and includes our
favorite front end tools.

About Middleman
---------------
Middleman is a static site generator built in Ruby. This makes it a great fit
for projects that may end up as a Ruby on Rails app. Its minimalistic structure
makes it very easy to work with, and includes support for deploying to Github
Pages.

Includes
--------
* [HAML](http://haml.info):
  Simple template markup
* [Coffeescript](http://coffeescript.org):
  Write javascript with simpler syntax
* [Sass](http://sass-lang.com):
  CSS with superpowers
* [Bourbon](http://bourbon.io):
  Sass mixin library
* [Neat](http://neat.bourbon.io):
  Semantic grid for Sass and Bourbon
* [Bitters](http://bitters.bourbon.io):
  Scaffold styles, variables and structure for Bourbon projects.
* [Middleman Live Reload](https://github.com/middleman/middleman-livereload):
  Reloads the page when files change
* [Middleman Deploy](https://github.com/karlfreeman/middleman-deploy):
  Deploy your Middleman build via rsync, ftp, sftp, or git (deploys to Github Pages by default)

We also recommend [Refills](http://refills.bourbon.io/) for prepackaged interface patterns

Getting Started
---------------
Set up your project in your code directory
```
git clone git@github.com:thoughtbot/proteus-middleman.git your-project-folder
cd your-project-folder
git remote rm origin
git remote add origin your-git-url
```

Install dependencies:
```
bundle install
```

Run the server
```
middleman
```

Deploy to Github Pages
```
middleman deploy
```

Or install the [Proteus gem](https://github.com/thoughtbot/proteus) and enjoy some shortcuts. 

Directories
------

Stylesheets, fonts, images, and javascript files go in the `/source/assets/` directory.
Vendor stylesheets and javascripts should go in each of their `/vendor/` directories.

Contributing
------

If you have problems, please create a
[GitHub Issue](https://github.com/thoughtbot/proteus-middleman/issues).

Have a fix or want to add a feature?
[Pull Requests](https://github.com/thoughtbot/proteus-middleman/pulls) are welcome!


Credits
-------

![thoughtbot](http://thoughtbot.com/logo.png)

This application is maintained and funded by [thoughtbot, inc](http://thoughtbot.com/community)

Thank you to all [the contributors](https://github.com/thoughtbot/proteus-middleman/contributors)!

License
-------

The names and logos for thoughtbot are trademarks of thoughtbot, inc.

Proteus Middleman is Copyright © 2014 thoughtbot, inc. It is free software, and may be
redistributed under the terms specified in the LICENSE file.
