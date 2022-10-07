# TwoSum

Phase 3 Project for Flatiron School: React/Ruby Full Stack Application Backend Segment

## General Information

Looking for love but just don't know where to go? Look no further -- TwoSum is a brand new, full-stack dating site for all your romantic needs. The project was built using a React frontend and a Ruby/SQLite3 Backend. We worked as a team of four to deploy both the frontend and backend servers in a week.

## Technologies Used

 -Ruby 2.7.4
 -Active Model Serializers 0.10.12
 -NodeJS (v16) and npm
 -React 17.0.2
 -React-Router-Dom 5.3.3

See the Environment Setup below for instructions on installing these tools if you don't already have them.

##Features
###Sign Up/Sign In
Start finding love by creating an account on our home page. Our authentication runs by creating a cookie of a new user every time someone either logs in or creates a new account, saving it to our local storage to persist in the future.
![image](https://user-images.githubusercontent.com/60560932/194465932-029b80af-ad09-4325-a3a5-ba988133467c.png)

###Create Account
On signing up, you are greeted with a page to create your own account. You can fill out forms with information like your name, a bio, and add a profile picture that will register a POST request to our backend, officially registering you as a new user, and matching you up with a few of our lovely pre-registered bots!
![image](https://user-images.githubusercontent.com/60560932/194466097-2603a991-557e-4402-b69a-202a9edf417c.png)

###Browse Page
Once you're all signed up, feel free to browse through our vast collection of wonderful bots! Based on your gender preferences, you are met with users that fulfill that requirement. On viewing the page, you can either like or dislike different bots until you hit a match, or when the backend registers that you've sent a like to a bot who has been set to match with you (the real matches will come soon)!
![image](https://user-images.githubusercontent.com/60560932/194466324-49326a2a-d15a-45c9-88e2-1e9b3e8828c7.png)


###Match Found
On finding a match, two things will happen: first, the website will dynamically render both you and the user of interest, displaying your pictures in a modal that announces your match. Secondly, the website will create a chat feature between you and said user that will display their name and either the last message sent, or a simple "Stasrt the conversation!"
![image](https://user-images.githubusercontent.com/60560932/194466717-c85e1ced-19f4-4559-be47-241b759b5abc.png)


###Chat
On clicking into one of your conversations, you can now enter a chat with said user. All messages are POST requests sent to the backend, processed, cleaned up, and displayed along with the first name of the user who sent the message.
![image](https://user-images.githubusercontent.com/60560932/194466850-565b522f-e516-44a2-b345-8cc14b19275e.png)


###Edit Profile
If there's anything about your profile you'd like to change, simply click into your profile to start personalizing. Switch up your name, profile picture, bio, and have it all persist via a PATCH request with the push of a button!

You also have the option to either logout or delete your account, which will delete both your account and all its associated matche, redirecting you back to the home page.
![image](https://user-images.githubusercontent.com/60560932/194466892-210498c6-ae4d-427e-8e67-1742f51bd0bd.png)




##Environment Setup
### Clone repository

**clone** the front-end project repository from github: [https://github.com/roylee0912/twosum](https://github.com/roylee0912/twosum)

```console
$ git clone https://github.com/roylee0912/twosum
```

### Install NodeJS

Verify you are running a recent version of Node with:

```sh
node -v
```

If your Node version is not 16.x.x, install it and set it as the current and
default version with:

```sh
nvm install 16
nvm use 16
nvm alias default 16
```

You can also update your npm version with:

```sh
npm i -g npm
```

You'll also need to run the backend server at the same time. 
**clone** the back-end project repository from github: [https://github.com/roylee0912/two-sum-backend](https://github.com/roylee0912/two-sum-backend)

```console
$ git clone https://github.com/roylee0912/two-sum-backend
```
### Install the Latest Ruby Version

Verify which version of Ruby you're running by entering this in the terminal:

```sh
ruby -v
```

Make sure that the Ruby version you're running is listed in the [supported
runtimes][] by Heroku. At the time of writing, supported versions are 2.6.8,
2.7.4, or 3.0.2. Our recommendation is 2.7.4, but make sure to check the site
for the latest supported versions.

If it's not, you can use `rvm` to install a newer version of Ruby:

```sh
rvm install 2.7.4 --default
```
[supported runtimes]: https://devcenter.heroku.com/articles/ruby-support#supported-runtimes

### Application Install

When you're ready to start building your project, run in the back-end:

```sh
bundle install
```

## Server Start

You can use the following commands to run the application:

- `rake db:migrate db:seed`: migrate and seed the database (use `db:seed:replant` if this is not the first time running)
- `rake server`: run the backend on [http://localhost:9292](http://localhost:9292)
- `npm start`: run the frontend on
  [http://localhost:3000](http://localhost:3000)
  
  ## Project Status

- Project is: _in progress_.

## Room for Improvement

Backend:

- Fix the conversation feature to have it fully functional on both ends, consider implementing a more secure user-auth system

Frontend:

- Add transitions, make it responsive
