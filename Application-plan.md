# phase-3-project-pet-finder
## Application Behaviour(BDD)
This is an application that allows users to add pets and be able to see all
the pets they have added. The user should also be able to:
- view **all the available pets**
- search for a pet through the **name** or **breed**
- update details for a pet that they have added
- a user should be able to remove details of pets they added
- a user should **NOT** be able to update or delete pets they have not added
- a user must be logged in order to use the application

## Pseudo code 
### Create tables
    1. Users table
    -has name(str) and password(str) columns
    2. Pets table
    -has name(str), breed(str), image_url(str) and user_id(int) columns
### Add table associations to Models
    1.Users table: has_many: pets
    2. Pets table: belongs_to: user
### Add data to tables
    Use faker to seed cats and users but add user_id manually
### Create controllers
    1.search for a user and get their username and password
    2.Get all animals for a specific user
    3.Getting all animals
    4.Search for an animal through its name or breed
    5.Update an animals details
    6.Delete an animal

### deploy ruby application 

    
