
# WeSearch Backend Template

The backend for the WeSearch app

## Getting started

### Setting up a project

* Move into your projects directory: `cd ~/YOUR_PROJECTS_DIRECTORY`
* Clone this repository: `git clone https://github.com/thesymbolicway/phase-3-we-search-backend WeSearch`
* Move into the project directory: `cd WeSearch`
* Install the dependencies: `bundle install`
* Create a new repo on GitHub: https://github.com/new
    * Make sure the "Initialize this repository with a README" option is left unchecked
* Update the remote to point to your GitHub repository: `git remote set-url origin https://github.com/YOUR_GITHUB_USERNAME/YOUR_REPOSITORY_NAME`

### Working on the project

* Move into the project directory: `cd ~/YOUR_PROJECTS_DIRECTORY/YOUR_PROJECT_NAME`
* Run the development task: `bundle exec rake server`
    * Starts a server running at http://localhost:9292
    * Automatically restarts when any of your files change


## Deployment

Requires the [Heroku CLI client](https://devcenter.heroku.com/articles/heroku-command-line).

### Setting up the project on Heroku

* Move into the project directory: `cd ~/YOUR_PROJECTS_DIRECTORY/YOUR_PROJECT_NAME`
* Create the Heroku app: `heroku create PROJECT_NAME`

* If your backend connects to a database, you need to configure the database URL:
    * For a MongoDB database: `heroku config:set DATABASE_URL=mongodb://USERNAME:PASSWORD@HOST:PORT/DATABASE_NAME`
    * For a PostgreSQL database: `heroku config:set DATABASE_URL=postgresql://USERNAME:PASSWORD@HOST:PORT/DATABASE_NAME`

* If you are creating a full-stack app, you need to configure the client origin: `heroku config:set CLIENT_ORIGIN=https://www.YOUR_DEPLOYED_CLIENT.com`

### Deploying to Heroku

* Push your code to Heroku: `git push heroku master`
