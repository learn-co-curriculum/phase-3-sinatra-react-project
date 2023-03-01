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

## Authors

- [randy](https://www.github.com/randy-04)
- [mukandalee](https://github.com/mukandalee)
- [kenneth](https://github.com/kenneth732)

# License

This program is available as open source under the terms of the MIT License.
