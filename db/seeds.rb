puts "🌱 Seeding spices..."

# Seed your database here

travel = Category.create(name: "travel")
lifestyle = Category.create(name: "lifestyle")
education = Category.create(name: "education")
sports = Category.create(name: "sports")
food = Category.create(name: "food")


Item.create(name: "Travel to Diani, Coast", completed: false, category_id: 1)
    Item.create(name: "Travel to Wasini, Malindi", completed: false, category_id: 1)
    Item.create(name: "Road trip to Lake Nakuru, South of Nakuru", completed: false, category_id: 1)
    Item.create(name: "Visit Amboseli National Park", completed: false, category_id: 1)
    Item.create(name: "Visit Giraffe Centre", completed: false, category_id: 1)
    Item.create(name: "Travel to Tsavo East National Park, Taita-Taveta", completed: false, category_id: 1)

    Item.create(name: "Meal prep every sunday", completed: false, category_id: 2)
    Item.create(name: "Go to the gym 3 times a week", completed: false, category_id: 2)
    Item.create(name: "Do swimming  twice a week", completed: false, category_id: 2)
    Item.create(name: "Learn new Skill", completed: false, category_id: 2)
    Item.create(name: "Meet with friends once a week", completed: false, category_id: 2)
    Item.create(name: "Read 1 book a month", completed: false, category_id: 2)

    Item.create(name: "Visit Karen Blixen Museum", completed: false, category_id: 3)
    Item.create(name: "Visit the Local Ocean Conservation, Watamu", completed: false, category_id: 3)
    Item.create(name: "Watch a documentary every week", completed: false, category_id: 3)
    Item.create(name: "Go for a Tour at the Bomas of Kenya", completed: false, category_id: 3)
    Item.create(name: "Visit Ol pejeta Conservancy", completed: false, category_id: 3)
    Item.create(name: "Read two books every month", completed: false, category_id: 3)






puts "✅ Done seeding!"
