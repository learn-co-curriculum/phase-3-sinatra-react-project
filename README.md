# Project Title

<<<<<<< HEAD
# Project Title

Tittle : Back-End Database for TeckBlog

The Application Helps to fetch Data from The Client side THrough the Help of ActiveRecords and Sinatra

## Learning Goals
=======
Tittle : Back-End Database for TeckBlog
>>>>>>> 235b971c5a9dad1f2779829ee36a78c7256abada

The Application Helps to fetch Data from The Client side THrough the Help of ActiveRecords and Sinatra

# Project Title

<<<<<<< HEAD
The focus of this project is **building a Sinatra API backend** that uses
**Active Record** to access and persist data in a database, which will be used
by a separate **React frontend** that interacts with the database via the API.

## Requirements

For this project, you must:

- Use Active Record to interact with a database.
- Have at least two models with a one-to-many relationship.
- At a minimum, set up the following API routes in Sinatra:
  - create and read actions for both models
  - full CRUD capability for one of the models
- Build a separate React frontend application that interacts with the API to
  perform CRUD actions.
- Implement proper front end state management. You should be updating state using a
  setState function after receiving your response from a POST, PATCH, or DELETE 
  request. You should NOT be relying on a GET request to update state. 
- Use good OO design patterns. You should have separate classes for each of your
  models, and create instance and class methods as necessary. 
- Routes in your application (both client side and back end) should follow RESTful
  conventions.
- Use your back end optimally. Pass JSON for related associations to the front 
  end from the back end. You should use active record methods in your controller to grab
  the needed data from your database and provide as JSON to the front end. You
  should NOT be relying on filtering front end state or a separate fetch request to
  retrieve related data.

For example, build a todo list application with a React frontend interface and a
Sinatra backend API, where a user can:

- **Create** a new Post
- **Read** a list of all Post
- **Update** an individual Post
- **Delete** a Post

## Getting Started

### Backend Setup

This repository has all the starter code needed to get a Sinatra backend up and
running. [**Fork and clone**][fork link] this repository to get started. Then, run
`bundle install` to install the gems.

**Important**: Be sure you fork a copy of the repo into your GitHub account
before cloning it. You can do this by using the link above or by clicking the
"Octocat" button at the top of this page, then clicking "Fork" in the upper
right corner of the repo page.

[fork link]: https://github.com/learn-co-curriculum/phase-3-sinatra-react-project/fork

The `app/controllers/application_controller.rb` file has an example GET route
handler. Replace this route with routes for your project.

You can start your server with:

```console
$ bundle exec rake server
=======
```http
  RUBY
  ActiveRecords
  Sinatra
>>>>>>> 235b971c5a9dad1f2779829ee36a78c7256abada
```

## Gem Reference

#### Get all items

```http
  $ gem update --system
```

#### You might be running into some bug that prevents you from upgrading rubygems the standard way.In that case, you can try upgrading manually:

| Parameter   | Type     | Description       |
| :---------- | :------- | :---------------- |
| `gem files` | `string` | **Required**. Gem |

#### Get item

```http
  Install with: ruby setup.rb
```

For more details and other options, see:

```http
  ruby setup.rb --help
```

## Badges

Add badges from somewhere like: [shields.io](https://shields.io/)

<<<<<<< HEAD
[create-react-app]: https://create-react-app.dev/docs/getting-started
[create repo]: https://docs.github.com/en/get-started/quickstart/create-a-repo
[dbdiagram.io]: https://dbdiagram.io/
[postman download]: https://www.postman.com/downloads/
[network tab]: https://developer.chrome.com/docs/devtools/network/

=======
[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)
[![GPLv3 License](https://img.shields.io/badge/License-GPL%20v3-yellow.svg)](https://opensource.org/licenses/)
[![AGPL License](https://img.shields.io/badge/license-AGPL-blue.svg)](http://www.gnu.org/licenses/agpl-3.0)
>>>>>>> 235b971c5a9dad1f2779829ee36a78c7256abada

## Authors

- [@malise5](https://www.github.com/malise5)
- [@Ramayan0](https://www.github.com/Ramayan0)

## Acknowledgements

- [Understnding sinatra](http://sinatra-org-book.herokuapp.com/)
- [Ruby Gems and Dependecies](https://rubygems.org/)
- [ActiveRecords Guidlines](https://guides.rubyonrails.org/active_record_querying.html)
