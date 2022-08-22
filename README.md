Lights Out! Movie review Page

A movie review page, made by critics, viewed by all. Our DB of movies, reviews and their critics. A user (critic) will be able to log in to their account and add/edit or delete their review.

One to many: Rotten Potatoes has many users, user belongs to Rotten Potatoes (Login in or Subscription)

Many to many :

Critic Reviews (joining table) Movies :name (string) :star_rating/review score(float) :title(string) :years_critiquing (integer) :comment(string) :director(string) :movies_reviewed (integer) :critic_id(integer) :budget(integer) :perfect_movies (string.map) :movie_id(integer) :main_actor(string)

CRUD

User(or maybe Critic) could log in and read all reviews (GET)

Critic could leave a new review (POST)

Critic could edit review already given after second watch (PATCH)

Critic could delete review if they wanted (DELETE)
