# PHASE-2-SINATRA-REACT-PROJECT

This is where I store the backend side of the phase 3 final project. 

The frontend side is found at https://github.com/mio-k/phase-3-sinatra-react-project.

##  Project Requirements
The requirements for the phase 3 project are as follows:
- Use Active Record to interact with a database. In this project, I've used ActiveRecord to create migrations, then define table structures, and seed the tables with data.
- Have at least two models with a one-to-many relationship.  In this project, I got two models -- dog model and order model, and they have one to many relationship.
- At a minimum, set up the following API routes in Sinatra:
    - create and read actions for both models.  you can create, read, and delete data for both dog and order models.
    - full CRUD capability for one of the models.  The order model allows you to create, read, update and delete record.
- Build a separate React frontend application that interacts with the API to perform CRUD actions. This repo contains the frontend side developed in React.
- Use good OO design patterns. You should have separate classes for each of your models, and create instance and class methods as necessary. The project has both Dog and Order classes, and you can create instances as needed.

### To start the app

First start the server from the backend side. Navigate to the backend folder and start the server.
`rake server`

Then from the frontend directry, bring up the browser by running:
`npm start`
This will open [http://localhost:3000](http://localhost:3000) and loads the app.


### What the app does

This app is for the Dog Pod members to place food orders for their dogs.
Things you can do includes:
- View dog's profile
- View upcoming orders for each dog
- Add new dogs
- Delete dogs
- Update orders
- Add new orders
- Delete orders

