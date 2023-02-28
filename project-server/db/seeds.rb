categories = [
  { name: "Food" },
  { name: "Clothing" },
  { name: "Essentials" },
  { name: "Devices" },
  { name: "Detergents" }
]

categories.each do |category|
  Category.create(name: category[:name])
end

donations = [
  { name: "Donation 1", img: "https://images.pexels.com/photos/9090746/pexels-photo-9090746.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", location: "Location 1", category_id: 1 },
  { name: "Donation 2", img: "https://images.pexels.com/photos/9090747/pexels-photo-9090747.jpeg?cs=srgb&dl=pexels-lagos-food-bank-initiative-9090747.jpg&fm=jpg", location: "Location 2", category_id: 2 },
  { name: "Donation 3", img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf-5LppqufZjDKASkEFbkxnTtK8BtoeVHIshrWh67M6g3X8KrG4tbJZHOseEZc-N00LQE&usqp=CAU", location: "Location 3", category_id: 3 }
]

donations.each do |donation|
  Donation.create(
    name: donation[:name], 
    img: donation[:img], 
    location: donation[:location], 
    category_id: donation[:category_id]
  )
end

charity = Charity.create(
  name: "Charity Name",
  img: "https://www.example.com/image.png",
  location: "Charity Location"
)

category = Category.find_by(name: "Food")
category.charities << charity
