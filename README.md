# RESTly

RESTly is an app that helps users find great food around San Diego! With RESTly, users can browse through our collection of restaurants, search and filter for specific cuisines, prices, and dining options, and review restaurants based on their own experiences. With this app, we hope to provide the framework and the foundation that the greater San Diego community can use to highlight the best food in the city!!

# User Stories

RESTly users can:
- Browse through a collection of restaurants on the home page
- Search through the collection by name of the restaurant, and filter restaurants by price range and cuisine
- Click on a specific restaurant to access all available information about a restaurant, including a description, cuisine, price, link to a menu, delivery options, user reviews, & location on a map.
- Submit reviews of restaurants based on their own experiences, update reviews if a return visit is better (or worse!), and delete reviews if necessary
- Add their favorite menu item from restaurant to our collection to share fresh finds with the community

# DB Schema
 
Our database schema will look something like this:
 
Tables: Restaurant, reviews, favorites
- Restaurant has many reviews
- Restaurant has many favorites

Restaurants:
- Name
- Location
- Price ($-$$$$)
- Description
- Cuisine
- Link to restaurant website
- Link to menu (if an image or PDF menu already exists)
 
Reviews:
- User name
- Review date
- Rating (1-5, integer)
- Review text
- Restaurant id (foreign key)
 
Favorite menu items (favorites):
- Food name
- Number of likes
- Restaurant id (foreign key)

# Wireframes:
![Page_1](https://user-images.githubusercontent.com/110696444/201938248-d4fcee27-d902-4e51-88b3-2308468e2c5b.png)

![Page_2](https://user-images.githubusercontent.com/110696444/201938260-b14c7a3a-21d6-4582-9970-b833cae7c89d.png)


![Page_3](https://user-images.githubusercontent.com/110696444/201938264-831b443d-8dec-4bcf-a4b2-cf641a856afd.png)




