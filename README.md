# gaslight.co

[![Build Status](https://travis-ci.org/gaslight/gaslight.co.png?branch=master)](https://travis-ci.org/gaslight/gaslight.co)

The Ruby on Rails application that powers [gaslight.co][gco].

## Setup

1. `git clone git@github.com:gaslight/gaslight.co.git`
1. `cd gaslight.co`
1. `./script/bootstrap`
1. `rails server`

## Getting Production Data

**Note:** You'll need access to the Heroku instance.

1. `script/data`

## Testing

1. `./script/ci`

## Deploy

1. You'll need access to gaslight.herokuapp.com. You can add yourself as
   a collaborator using the credentials in the accounts spreadsheet.
1. `git remote add production git@heroku.com:gaslight.git`
1. `git push production master`

## CI

We're using [Travis][tci].

## Issues

1. Issues are tracked using [GitHub issues][ghissues].

[gco]: http://gaslight.co
[ghissues]: https://github.com/gaslight/gaslight.co/issues
[tci]: https://travis-ci.org/gaslight/gaslight.co

