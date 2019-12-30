# Astroscope App

A daily Horoscope React app which allows you to view your personal horoscope, as well as all other daily horoscopes. When usuers sign up the app asks for a date of birth which it uses to assign the users correct star sign.

The app has been built using:

* React Frontend.
* Rails API Backend.
* Postgres Database.
* Horoscope API.
* Cron job to run a daily fetch.


## User stories: 

A user can:

* Login/sign up ad logout (using JSON Web Tokens and localStorage to store encrypted user information client-side).
* Browse all daily horoscopes optained from the daily horoscopes API.
* View their daily personal horoscope.
* User daily horoscopes are added to the Postgres database.


## Prerequisites

Make sure you have installed:

* Ruby, version 2.6.1 or newer
* Postgres
* Rails, version 5.2.3 or newer

You can check in the terminal:

```bash
ruby -v
rails -v
postgres -v
```

This should output some information on the installed versions. If not, you can refer to the [Ruby](https://www.ruby-lang.org/en/documentation/installation/ "Ruby"), [Postgres](https://www.postgresql.org/ "Postgres") and [Rails](https://guides.rubyonrails.org/v5.0/getting_started.html "Rails") documentation.

No API key is required for the [daily horoscopes API](http://horoscope-api.herokuapp.com/).

For the frontend repository of this app see https://github.com/daveb1392/astroScope

## Getting started

Fork and clone this repository and the [frontend repository](https://github.com/daveb1392/astroScope "frontend repository"). Start Postgres.

## Installation

### Backend

On a terminal window, move into the backend directory of this project. Use the gem manager [bundler](https://bundler.io/ "bundler") to install all dependencies. Create, migrate and seed the database. Start the Rails server. To do all this, run these commands, one at the time. It is only necessary to run the `rake fetch_dayly_updates` command once per day.

```bash
bundle install
rails db:create
rails db:migrate
rails db:seed
rake fetch_dayly_updates 
rails start
```

### Frontend

On a new terminal tab, navigate to the frontend directory inside the root directory of the project. Use the package manager [npm](https://www.npmjs.com/ "npm") to install all dependencies.

`npm install`

Start the server on port 3001.

`npm start`

Visit localhost:3001.

**You're all set!**