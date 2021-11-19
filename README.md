# Illegal Streaming Website 

![illegal streaming website](https://i.imgur.com/CaBpbR4.png)

Are you tired of trying to find links to stream your favorite movies? Dont wanna pay for a subscription to Netflix, HBO Max, Hulu or any other service? GREAT! We dont like to either :)
That is why we have created the ISW platform for your viewing pleasure! Browse our massive collection of movies and stream them on demand without ever having to pay out to a corporation $$$

Its easy to create an account (completley free!) - and once logged in, you can search our extensive and eclectic library of movies. 

We have a dedidicated suggested page for you when you log in, or feel free to browse by genre

---

# Why Was This Built?

This project was the brainchild of our group for our Phase 3 project using Ruby and React. The purpose and the goal was to build and populate a data base in Ruby with Sinatra and using routes, have that data populate into React via fetch calls to those specific API endpoints. 

---

# Technologies Used

For this poject, we used several technologies to bring this app to life. There was a strong focus on backend and data base set up. Below is a list of the tech stacked used in this project:

    1. Ruby
    2. ActiveRecord
    3. Sinatra 
    4. React
    5. HTML/JSX
    6. CSS

---

# Back End Features (Ruby/Sinatra)

To start the backend server, run: rake server

For the front end, we used React to construct and render our needed components to populate our tables from Ruby. We elected to harness useEffect to make our fetches hitting different API ends points constructed in Ruby. With the fetches completed, we then used useState within React to toggle differnt states on and off depending on the users clicks. 
From the CRUD method, we gave this application the ablilty to:

For the back end setup, we used Ruby and ActiveRecord to create our data base and models. We created our tables and migrated them so that we could connect our models with associations to pull and push data. With the tables created and our data seeded, we could then create our routes/API end points within our controllers so that they aligned with CRUD methods to connect to our front end

## READ:
*Fetch*
---
http://localhost:9292/movies
/movies
/movies/suggested
/movies/genres

These were the main routes to fetch the movie database which allowed us to pull all the movies from the public API. This is how we were able to populate our "All Movies", "Generes" and "Suggested" containers.

## CREATE:
*Post*
---
http://localhost:9292/profiles
/profiles

We gave our uses the ability to 'create' new profiles within our application. Using the POST method, a user can create a new profile with a name and a profile picture. This POST request then hits the API end point within Ruby, and then new profile data is then added to the data base and is saved.

## DELETE:
*Delete*
---
http://localhost:9292/profiles
/profiles/:id

Finally, we also gave our users the ability to delete profiles. Using the DELETE method, a user can choose a profile and delete it. This then sends a request to the API end point matching the user ID wihtin the data base. It is then permanently removed from the database, and will not be present on the login screen after making the fetch reqeust to the database.

---

# The Team/Collaborators

This project was a collective effort between:

**Oluwayemisi Soremekun**

*Instagram*: www.instagram.com/oluwayemisi_s/

*Email*: oluwayemisi.soremekun@gmail.com

*Youtube*: www.youtube.com/channel/UCOMU9_StCtTTqnwSr_Jlvvw

**Zachary Vallarino**

*Instagram*: https://www.instagram.com/zvallarino/

*Email*: zvcoding@gmail.com

**Garrett Dick**

*Instagram*: https://www.instagram.com/bobross4life/

*Email*: garrettd0511@gmail.com
