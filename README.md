# Brewery Tomfoolerly Project Backend

This project was completed at the end of Phase 3, Software Engineering with Flatirons School.

## Goals Achieved

- Build a web basic API with Sinatra and Active Record to support a React
  frontend

## Instructions

Fork and clone this repository to your local device. If you haven't already, also fork and clone the front end react app and configure that app with its ReadMe. That repository can be found here: [https://github.com/brookeross99/brewery-tomfoolery-frontend](https://github.com/brookeross99/brewery-tomfoolery-frontend). Once you have completed the above run the following commands:

### `bundle install`

This will install of the files needed to run this application. 

### `$ bundle exec rake db:migrate`

This will create all of the tables in the database in your local repository. 

### `$ bundle exec rake db:seed`

This will create all of the sample data that we have already populated (using faker) within your database. 

### `$ bundle exec rake server`
 
This will run your server. Once you have your server running you can begin the front end of your application as well. 

## About our Application

Welcome to Brewery Tomfoolery: the ultimate brew log for a brewery lover! Spend your days documenting the best of the best brews through the Add a new Brew form(found on our home page). This application is not only a diary for the brewery lover, but also interactive-- you will be able to access entries that have been made by other users as well. Navigate through your brews, your favorite brews, and global brews through the links at the top of the page!

## Applcation Coding Details

This application utilizes elements of React(JavaScript, CSS & HTML) and Ruby (Active Records), to create a cohesive front end and back end experience. Users data persists to a backend database so that any changes that the user has made (making a username, creating an entry, or favoriting entries from other users) will persist even if the page is refreshed.

## About the Creators

Anna Schmidt, Brooke Ross, Chris Ding, and Justin Saborouh are all attending a 15 week, extremely rigorous online program (full time). Though this program comes with its challenges, they have already come to the end of their third phase (of five) at Flatirons School. This program is a culmination of their work as they have spent the past 9 weeks working on how to create the front and back end to web applications.


## Requirements For Our Project

For this project we:

- Used Active Record to interact with a database.
- Had at least two models with a one-to-many relationship.
- At a minimum, set up the following API routes in Sinatra:
  - create and read actions for both models
  - full CRUD capability for one of the models
- Built a separate React frontend application that interacts with the API to
  perform CRUD actions.
- Implemented proper front end state management. We also updated state using a
  setState function after receiving your response from a POST, PATCH, or DELETE 
  request. 
- Utulized OO design patterns. We have separate classes for each of our
  models, and created instance and class methods as necessary. 
- Routes are a large part in our application (both client side and back end) and follow RESTful conventions.
- Used our back end optimally. Passed JSON for related associations to the front 
  end from the back end. We used active record methods in our controller to grab
  the needed data from our database and provided as JSON to the front end. 

For example, within our application our front to back end allows a user to:

- **Create** a new brew card
- **Read** all of the my brews, favorite brews and global brews. 
- **Update** an individual brew card
- **Delete** a favorite, and also delete an entire post. 

An `Entry` _has many_ `Favorites` and _belongs to_ a `User`
A `Favorite` _belongs to_ a `User` and _belongs to_ an `Entry`
A `User` _has many_ `Favorites` and _has many_ `Entries` and _has many_ `Favorited_entries` _through_ `Favorites` with a _source_ of `Entry`



## Resources

- [create-react-app][]
- [dbdiagram.io][]
- [Postman][postman download]
- Flatirons School Curriculumn 

[create-react-app]: https://create-react-app.dev/docs/getting-started
[create repo]: https://docs.github.com/en/get-started/quickstart/create-a-repo
[dbdiagram.io]: https://dbdiagram.io/
[postman download]: https://www.postman.com/downloads/
[network tab]: https://developer.chrome.com/docs/devtools/network/
