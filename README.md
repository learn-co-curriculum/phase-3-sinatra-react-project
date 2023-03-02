# Phase 3 Sinatra React project

## Project Description

This is a backend project where we are Building a **Sinatra API backend** that uses **Active Record** to access and persist data in a database,which will be used
by a separate **React frontend** that interacts with the database via the API.

## Objectives:

This backend should give the users capabilities to;

1. Perform a given CRUD action on this backend over a given endpoint on specified data that this endpoint has to return
2. Also be able to test the endpoints using postman

# Project Setup

Clone the repository to your local machine.

Run bundle install to install the necessary gems for this project.

You can start your server with:

```console
$ bundle exec rake server
```

This will run your server on port
[http://localhost:9292](http://localhost:9292).

Use [Postman][postman download] to test your endpoints.

- Use `binding.pry` to debug your requests on the server. It's very helpful to use a
  `binding.pry` in your controller within a route to see what `params` are being
  sent.

### Fetch Example

This is an example that shows how you can make to this sinatra backend using your react front end

```js
fetch("http://localhost:9292/test")
  .then((r) => r.json())
  .then((data) => console.log(data));  
```

## Technologies
![React](https://img.shields.io/badge/react-%2320232a.svg?style=for-the-badge&logo=react&logoColor=%2361DAFB)
![Semantic UI React](https://img.shields.io/badge/Semantic%20UI%20React-%2335BDB2.svg?style=for-the-badge&logo=SemanticUIReact&logoColor=white)
![React Router](https://img.shields.io/badge/React_Router-CA4245?style=for-the-badge&logo=react-router&logoColor=white)
![HTML5](https://img.shields.io/badge/html5-%23E34F26.svg?style=for-the-badge&logo=html5&logoColor=white)
![JavaScript](https://img.shields.io/badge/javascript-%23323330.svg?style=for-the-badge&logo=javascript&logoColor=%23F7DF1E)
![CSS3](https://img.shields.io/badge/css3-%231572B6.svg?style=for-the-badge&logo=css3&logoColor=white)
![Bootstrap](https://img.shields.io/badge/bootstrap-%23563D7C.svg?style=for-the-badge&logo=bootstrap&logoColor=white)
![Ruby](https://img.shields.io/badge/ruby-%23CC342D.svg?style=for-the-badge&logo=ruby&logoColor=white)

## Authors

- [@mukandalee](https://github.com/mukandalee)
- [@kenneth](https://github.com/kenneth732)
- [@Randy](https://www.github.com/randy-04)

# License

This program is available as open source under the terms of the MIT License.
