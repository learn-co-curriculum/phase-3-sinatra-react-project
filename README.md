# React-Sinatra Todo App

This is a web application that allows users to create and manage a list of tasks. It uses a REST API made using sinatra to communicate with a server to access and persist data in a database.

## Installation

To install the app, clone this repository

### BackEnd Setup

<ol>
<li>Run the following command: <pre>Bundle install</pre>
<li>Then run <pre>Bundle exec rake db:seed</pre> this will populate the db with dummy data</li>
<li>Then to start the server run <pre>Bundle exec rake server</pre></li>
</ol>

### FrontEnd Setup

<ol>
<li>Navigate to the react folder and run <pre>npm install</pre>
</ol>

## Usage

To start the app, run the following command:

<pre>npm start</pre>

this will start the app in development mode and open it in your default browser.

## API

This app uses the following API endpoints:

- `GET /users`: Get all users
- `GET /users/:id`: Get a specific user by ID
- `POST /users`: Create a new user
- `PATCH /users/:id`: Update an existing user by ID
- `DELETE /users/:id`: Delete a user by ID
- `GET /todos`: Get all todos
- `GET /todos/:id`: Get one todo
- `GET /todos/user/:id`: Get user todo
- `GET /todos/p/:priority`: Get by priority
- `GET /todos/t/:title`: Get by title
- `POST /todos`: Create a todo
- `PATCH /todos/:id`: Update a todo
- `DELETE /todos/:id`: Delete a todo

## ERD


![ERD diagram ](/Erd.png)
