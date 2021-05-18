# super-rentals-api

A backend for [my implementation](https://github.com/sillle14/super-rentals) of the Ember.js tutorial application.
This uses [JSON:API Resources](https://jsonapi-resources.com/) to create JSON API compliant endpoints for managing 
rental objects.

## Running the App

Seed test data with `bin/rails db:setup` and run the Rails app with `bin/rails s`. By default, this will run the app at port
3000 as expected by the front end.

## Mock Authentication

To facilitate a proof of concept authetication layer on the front end, this app also supplies a mock authentication endpoint.