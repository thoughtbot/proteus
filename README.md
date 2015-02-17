# Proteus

Proteus is a collection of useful starter kits to help you prototype
faster. They follow the [thoughtbot styleguide](https://github.com/thoughtbot/guides)
and includes our favorite front-end development tools.

## Kits

* [Middleman](http://github.com/thoughtbot/proteus-middleman)
* [Jekyll](http://github.com/thoughtbot/proteus-jekyll)
* [Gulp](http://github.com/thoughtbot/proteus-gulp)

## Installation

1. Install the Proteus gem using the [RubyGems](https://rubygems.org) package manager:

  ```bash
  gem install proteus-kits
  ```

2. Then kick off a new project with the kit you want to use (i.e. Middleman):

  ```bash
  proteus new middleman your-project-name
  ```

## Shortcuts

We’ve also included some handy shortcuts with Proteus:

- Install dependencies and clear the Git remote:

  ```bash
  proteus setup
  ```

- Start the kit-specific server (i.e. `bundle exec middleman server`):

  ```bash
  proteus server
  ```

- Run the kit-specific deploy (i.e. `middleman deploy`):

  ```bash
  proteus deploy
  ```

## Credits

[![thoughtbot](http://images.thoughtbot.com/bourbon/thoughtbot-logo.svg)](http://thoughtbot.com)

Proteus is maintained and funded by [thoughtbot, inc](http://thoughtbot.com). Thank you to all of [the contributors](https://github.com/thoughtbot/proteus-middleman/contributors)!

## License

Copyright © 2014–2015 [thoughtbot, inc](http://thoughtbot.com). Proteus is free software, and may be redistributed under the terms specified in the [license](LICENSE.md).
