puts "🌱 Seeding spices..."

# Seed your database here
categories = [
    { name: "Food" },
    { name: "Clothing" },
    { name: "Electronics" },
    { name: "Household Items" }
  ]
  
#   categories.each do |category|
#     Category.create(name: category[:name])
#   end
  
#   donations = [
#     { name: "Donation 1", image: "https://images.pexels.com/photos/9090746/pexels-photo-9090746.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", location: "Location 1", category_id: 1 },
#     { name: "Donation 2", image: "https://images.pexels.com/photos/9090747/pexels-photo-9090747.jpeg?cs=srgb&dl=pexels-lagos-food-bank-initiative-9090747.jpg&fm=jpg", location: "Location 2", category_id: 2 },
#     { name: "Donation 3", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf-5LppqufZjDKASkEFbkxnTtK8BtoeVHIshrWh67M6g3X8KrG4tbJZHOseEZc-N00LQE&usqp=CAU", location: "Location 3", category_id: 3 }
#   ]
  
#   donations.each do |donation|
#     Donation.create(
#       name: donation[:name], 
#       image: donation[:image], 
#       description: donation[:description],
#       quantity: quantity[:quantity], 
#       category: donation[:category],
#       charity_id: donation[:charity_id]
#     )
#   end
  
charities = [
    {
        name: "Pandemic Chow",
        image: "https://images.unsplash.com/photo-1593113598332-cd288d649433?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Y2hhcml0aWVzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
        location: "LA",
        description: "Serves food to needy families.",
        year_established: 2020
    },
    {
        name: "Love",
        image: "https://images.unsplash.com/photo-1469571486292-0ba58a3f068b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8Y2hhcml0aWVzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
        location: "Kibra",
        description: "Making sure everyone in our community has good clothing.",
        year_established: 2022
    },
    {
        name: "Helping Hand",
        image: "https://plus.unsplash.com/premium_photo-1663126472261-6e58ab83bfea?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjV8fGNoYXJpdGllc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
        location: "Nai",
        description: "Providing required household items.",
        year_established: 2018
    },
    {
        name: "Save our Animals",
        image: "https://images.unsplash.com/photo-1582553391226-a52bd96887f7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTZ8fGNoYXJpdGllc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
        location: "Utawala",
        description: "Taking care of stray animals in our neighbourhoods. Bring your animals for vaccinations.",
        year_established: 2015
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
    
  
#   category = Category.find_by(name: "Food")
#   category.charities << charity

puts "✅ Done seeding!"
