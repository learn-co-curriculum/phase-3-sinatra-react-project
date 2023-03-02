puts "🌱 Seeding spices..."

# Seed your database here
categories = [
    { name: "Food" },
    { name: "Clothing" },
    { name: "Electronics" },
    { name: "Household Items" },
    { name: "Cash" }
  ]
  
#   this is for looping over the categories
#   categories.each do |category|
#     Category.create(name: category[:name])
#   end
  
# incomplete but here is where we add name, img, location, category_id
  donations = [
    {
        category: "Electronics",
        name: "Computer",
        image: "https://images.unsplash.com/photo-1646510352470-8058c608c43b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fFJhem9yJTIwbGFwdG9wc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
        description: "A 128 GB RAM PC with 1TB SSD",
        quantity: "20",
        id: 1,
        charity_id: 3
      },
      {
        category: "household items",
        name: "Table",
        image: "https://images.unsplash.com/photo-1448697138198-9aa6d0d84bf4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8dGFibGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
        description: "A table made in italy",
        quantity: "2",
        id: 2,
        charity_id: 1
      },
      {
        category: "Clothing",
        name: "Shoes",
        image: "https://images.unsplash.com/photo-1629439612315-b69e9236c8e1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bG91aXMlMjB2dWl0dG9ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
        description: "A pair of Louis Vuitton shoes",
        quantity: "2",
        id: 3,
        charity_id: 4
      },
      {
        category: "Food",
        name: "Shawarma",
        image: "https://images.unsplash.com/photo-1530469912745-a215c6b256ea?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c2hhd2FybWF8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
        description: "A plate of shawarma",
        quantity: "1",
        id: 4,
        charity_id: 6
      }
  ]
  
#  seed a donations table in a database with some initial data. or iterates through each donation hash and creates a corresponding Donation object in the database by calling the create method with the attributes from the hash.
  donations.each do |donation|
    Donation.create(
      name: donation[:name], 
      image: donation[:image], 
      description: donation[:description],
      quantity: donation[:quantity], 
      category: donation[:category],
      charity_id: donation[:charity_id]
    )
  end
  
charities = [
    {
      id: 1,
      name: "Pandemic Chow",
      image: "https://images.unsplash.com/photo-1593113598332-cd288d649433?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Y2hhcml0aWVzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
      location: "LA",
      description: "Serves food to needy families.",
      year_established: 2020
    },
    {
      id: 2,
      name: "Love",
      image: "https://images.unsplash.com/photo-1469571486292-0ba58a3f068b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8Y2hhcml0aWVzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
      location: "Kibra",
      description: "Making sure everyone in our community has good clothing.",
      year_established: 2022
    },
    {
      id: 3,
      name: "Helping Hand",
      image: "https://plus.unsplash.com/premium_photo-1663126472261-6e58ab83bfea?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjV8fGNoYXJpdGllc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
      location: "Nai",
      description: "Providing required household items.",
      year_established: 2018
    },
    {
      id: 4,
      name: "Save our Animals",
      image: "https://images.unsplash.com/photo-1582553391226-a52bd96887f7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTZ8fGNoYXJpdGllc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
      location: "Utawala",
      description: "Taking care of stray animals in our neighbourhoods. Bring your animals for vaccinations.",
      year_established: 2015
    },
    {
      id: 5,
      name: "Help Turkey",
      image: "https://images.unsplash.com/photo-1468421870903-4df1664ac249?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1331&q=80",
      location: "Westlands",
      description: "Lending a helping hand to the needy",
      year_established: 2012
    },
    {
      id: 6,
      name: "Save It",
      image: "https://images.unsplash.com/photo-1497375638960-ca368c7231e4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1680&q=80",
      location: "Kilimani",
      description: "Save it and give it",
      year_established: 2017
    },
    {
      id: 8,
      name: "My Space",
      image: "https://images.unsplash.com/photo-1622561029875-d966f88f5578?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=715&q=80",
      location: "Austria",
      description: "We are here for you",
      year_established: "2017"
    },
    {
      id: 9,
      name: "Charity",
      image: "https://images.unsplash.com/photo-1573288880964-292771cdff84?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bmVlZHl8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
      location: "London",
      description: "Always here",
      year_established: "2020"
    },
    {
      name: "Lend",
      image: "https://images.unsplash.com/photo-1573288881762-6ec87577a176?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8bmVlZHl8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
      location: "Bucharest",
      description: "Save for you",
      year_established: "2023",
      id: 10
    }

]
  charities.each do |charity|
    Charity.create(
        name: charity[:name],
        image: charity[:image],
        location: charity[:location],
        description: charity[:description],
        year_established: charity[:year_established]
      )
  end

# Charity.create(charities)

#  This will add the charity with name "Pandemic Chow" to the category with name "Food"
# category = Category.find_by(name: "Food")
# charity = Charity.find_by(name: "Pandemic Chow")
# category.charities << charity


puts "✅ Done seeding!"
