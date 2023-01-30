# Welcome to Dad Jokes! A place to just find dad jokes to annoy the people around you!

> To view in VSCode, right click on the README.md file and select "Open Preview".

## Setup

### To get started:

The link for the repository for the front-end is here: [https://github.com/xtobig4sk8408x/phase-3-project-react-frontend](https://github.com/xtobig4sk8408x/phase-3-project-react-frontend)

The link for the repository for the back-end is here: [https://github.com/xtobig4sk8408x/phase-3-sinatra-react-project](https://github.com/xtobig4sk8408x/phase-3-sinatra-react-project)

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.Ensure that you have both the frontend and the backend files downloaded<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.In the backend directory, run the command: <span style="color:#83AAF1">bundle install</span><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.Once that command finishes running, in the same terminal, run the command: <span style="color:#83AAF1">rake server</span><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-Now go back to ubuntu and navigate to the frontend <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.In the frontend run the command: <span style="color:#83AAF1">npm install</span><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.Once the terminal finishes it's processes, run the command: <span style="color:#83AAF1">npm start</span><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6.The website should open onto your browser automatically. If not, you can navigate to the page by entering the address where the frontend server has started. By default, this is: [http://localhost:3000/](http://localhost:3000/)<br>

## What is it:

A basic application that was meant to allow you to scroll through and read through dad jokes. If you create a user account on the website it would allow you to comment and rate each joke with the option to edit and delete your rating. You also have the option of adding a dad joke to the database, editing your own joke, and deleting your own joke. So far we only have the CRUD part of the jokes. The application was also created in hopes of creating data of which jokes people enjoy more and which jokes aren't enjoyed as much

## The Tools Used:

is a representation of what can be done when working with languages:_Ruby_  and _React_ using _Active Record_, _Sinatra_, _JavaScript_, _HTML_, and _CSS_. This web-based application utilizes several tools and features from these languages including _associations_,  _DOM/Server communication_, _routing_ and more.

<!-- Insert GIF -->

When users open up the application they are greeted by the home page which displays a navigation bar, the store banner, and then all of the products we have available listed below. In the NavBar, the user can then elect to sign in or sign up, they will then be introduced to a login form that is changable to a sign in form if the user does not already have an account, and vice-versa. For account creation to work, the user must meet certain account creation requirements. Once those requirements are met, the new users data is stored within our Ruby database and passwords go through a process with _bcrypt_ and _dotenv_ where their passwords are salted and hashed, making it much more difficult for unauthorized users to gain acess to their account information.

## The dad jokes webpage

is a project made by Harinder Singh & John Josef. Students of Flatiron school that made this project for Phase 3.

## License

MIT License
Copyright (c) 2023 xtobig4sk8408x/harinderovo
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.