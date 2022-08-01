## Getting Started

### Backend Setup
[**Fork and clone**] this repository to get started. Then, run
`bundle install` to install the gems.

The `app/controllers/application_controller.rb` file has an example GET route
handler. 

You can start your server with:

```console
$ bundle exec rake server
```

This will run your server on port
[http://localhost:9292](http://localhost:9292).

### Fetch Example

Your React app should make fetch requests to your Sinatra backend! Here's an
example:

```js
fetch("http://localhost:9292/test")
  .then((r) => r.json())
  .then((data) => console.log(data));
```

## Request

##### POST /create_user
parameters
```
{
  "username": "test",
  "password": "password"
}
```

response
```
{
    "success": true,
    "data": {
        "id": 4,
        "username": "a1",
        "password": "a1",
        "api_token": "$2a$12$ZLOsxBbhGtELcQQjxyC8OuJ7Et29FSvPqmJ2BXVOZ5IIDBeHgUuhS",
        "created_at": "2022-07-31T17:40:58.975Z",
        "updated_at": "2022-07-31T17:40:58.975Z"
    }
}
```

##### POST /login
parameters
```
{
  "username": "test",
  "password": "password"
}
```

response
```
{
    "success": true,
    "data": {
        "id": 5,
        "username": "hi",
        "password": "123",
        "api_token": "$2a$12$/7baF6tTY1doBLrg26ROueDBSGb6GIXJn.30cM2/U3L/h6o7qI3/W",
        "created_at": "2022-07-31T21:32:59.732Z",
        "updated_at": "2022-07-31T21:32:59.732Z"
    }
}
```

##### POST /add_paths
parameters
```
{
    "api_token": "abcsam",
    "canvasboard_identifier": "firstcanvas",
    "canvas_paths": [
    {
        "drawMode": true,
        "strokeColor": "red",
        "strokeWidth": 4,
        "paths": [
        {
            "x": 795.4453125,
            "y": 21.640625
        },
        {
            "x": 795.12890625,
            "y": 22.578125
        },
        {
            "x": 794.5,
            "y": 23.515625
        },
        {
            "x": 792.1015625,
            "y": 26.5078125
        },
        {
            "x": 791.78515625,
            "y": 27.4453125
        }]
    }]
}
```

##### POST /canvas_board
parameters
```
{
    "api_token": "abcsam",
    "canvasboard_identifier": "firstcanvas",
    "last_timestamp": "2022-07-31T21:38:19.770Z"
}
```

response
```
{
    "success": true,
    "data": [
        {
            "drawMode": true,
            "strokeColor": "red",
            "strokeWidth": 4,
            "paths": [
                {
                    "x": 795.4453125,
                    "y": 21.640625
                },
                {
                    "x": 795.12890625,
                    "y": 22.578125
                },
                {
                    "x": 794.5,
                    "y": 23.515625
                },
                {
                    "x": 792.1015625,
                    "y": 26.5078125
                },
                {
                    "x": 791.78515625,
                    "y": 27.4453125
                }
            ],
            "metadata": {
                "id": 434,
                "user_id": 2,
                "uuid": null,
                "created_at": "2022-07-31T21:38:59.109Z"
            }
        }
    ]
}
```

##### POST /create_canvas
parameters
```
{
  "api_token": "abcsam",
  "canvas_name": "newcanvas"
}
```

response
```
{
    "success": true,
    "data": {
        "id": 14,
        "identifier": "78f89a93-2200-40ae-9184-51a260ab19c9",
        "canvas_name": "newcanvas",
        "user_id": 2,
        "created_at": "2022-07-31T21:45:33.958Z",
        "updated_at": "2022-07-31T21:45:33.958Z"
    }
}
```

##### POST /clear_canvas_paths
parameters
```
{
  "api_token": "abcsam",
  "canvasboard_identifier": "firstcanvas"
}
```

response
```
{
    "success": true
}
```

##### DELETE /canvas_board
parameters
```
{
  "api_token": "abcsam",
  "canvasboard_identifier": "firstcanvas"
}
```

response
```
{
    "success": true
}
```

## Resources

- [create-react-app][]
- [dbdiagram.io][]
- [Postman][postman download]

[create-react-app]: https://create-react-app.dev/docs/getting-started
[create repo]: https://docs.github.com/en/get-started/quickstart/create-a-repo
[dbdiagram.io]: https://dbdiagram.io/
[postman download]: https://www.postman.com/downloads/
[network tab]: https://developer.chrome.com/docs/devtools/network/
