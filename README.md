# Phase 3 React Sinatra App

this is a basic API built with ruby's Sinatra DSL.

The application has been built with the MVC design pattern.

## Pre-Requisites
In order to use this repository you will need the following:



- Operating System **(Windows `10+`, Linux `3.8+`, or MacOS X `10.7+`)**
- RAM >= 4GB
- Free Space >= 2GB

## Built With
This application has been built with the following tools:

![ruby](https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white)
![sqlite](https://img.shields.io/badge/SQLite-07405E?style=for-the-badge&logo=sqlite&logoColor=white)


- **Ruby `v2.7.+`**
- **SQlite3 `v1.6`**
- **ActiveRecord `v7.0.4`**
- **Rake `v13.0.6`**
- **Puma `v6.1`**
- **rerun `v0.14`**
- **Sinatra `v3.0.5`**
- **Bootstrap `v5.3.0`**
- **ERB `v4.0`**

## Setup
You can setup this repository by following this manual

1. Clone the repository
    ```{shell}
   git clone git@github.com:levy-web/phase-3-sinatra-react-project.git
   ```
2. Ensure the ruby gems are setup in your machine
    ```{shell}
   bundle install
   ```
3. Perform any pending database migrations
   ```{shell}
   rake db:migrate
   ```
4. You cant also seed some sample data with
   ```{shell}

5. Run the application
    ```{shell}
    rake start
    ```
6. Open the application from your browser
    ```
   http://localhost:9292
   ```
   
## Application
This application is a simple web API that allows users to:

- Register a new account.
- Log in to existing account.
- Create projects with descriptions.
- Update individual project.
- View all user projects once you login.
- Add users as members of the project and they can update the project and  the ststus.
- Delete a project.
- View status of the project and update it.

### MODELS
Database schema definitions.

### ENTITY RELATION MODEL

![screenshot](https://github.com/levy-web/phase-3-sinatra-react-project/blob/main/Screenshot.png)


#### PROJECT

| COLUMN      | DATA TYPE                                       | DESCRIPTION                         | 
|-------------|-------------------------------------------------|-------------------------------------|
| id          | Integer                                         | Unique identifier.                  |
| title       | String                                          | The name of the task.               |
| description | String                                          | A short description about the task. |
| timestamp   | Date                                            | The date the task was created and when updated.     |
| status      | ENUM `[CREATED, ONGOING, COMPLETED, CANCELLED]` | TThe status of the task.            |


#### USER
| COLUMN        | DATA TYPE | DESCRIPTION                           | 
|---------------|-----------|---------------------------------------|
| id            | Integer   | Unique identifier.                    |
| username      | String    | User's name.                          |
| email         | String    | User's email                          |
| password_hash | String    | User's password hashed with`BCrypt`.  |

#### MEMBER
| COLUMN        | DATA TYPE | DESCRIPTION                           | 
|---------------|-----------|---------------------------------------|
| id            | Integer   | Unique identifier.                    |
| user_id       | Integer   | foreign key user identification       |
| project_id    | Integer   | foreign key user identification       |




### ROUTES

1. `/` - Presents a simple message for the project.
2. `/signup` - Create a new user account.
   
   ```{json}
   ## REQUEST BODY
   {
    "username": "John Doe",
    "email": "mail@mail.com",
    "password": "12345678"
   }
   ```
3. `login` - Log in a user using email and password.

   ```{json}
   ## REQUEST BODY
   {
    "username": "mail@mail.com",
    "password": "12345678"
   }
   ```
4. `/project` - Add a new project.

   ```{json}
   ## REQUEST BODY
   {
    "title": "Make Breakfast",
    "description": "Prepare milk and cereal"
   }
   ```
5. get '/:id/projects'` - List users projects by the id.

   ```{json}
   ## RESPONSE SAMPLE
    [
      {
        "id": 2,
        "title": "project two",
        "description": "two",
        "status": "CREATED",
        "created_at": "2023-03-04T12:47:43.072Z",
        "updated_at": "2023-03-04T12:47:43.072Z"
      }
    ]
   ```
6. '/projects/:id' - gets and updates by the id.
7. `/delete/:id` - Delete a project.


## Author
This repository is maintained by:

- [levy njiru](https://github.com/levy-web) 
