puts "🌱 Seeding spices..."

# Seed your database here

travel = Category.create(name: "travel")
lifestyle = Category.create(name: "lifestyle")
education = Category.create(name: "education")


Item.create(name: "Travel to Diani, Coast", completed_event: false, category_id: 1)
    Item.create(name: "Travel to Wasini, Malindi", completed_event: false, category_id: 1)
    Item.create(name: "Road trip to Lake Nakuru, South of Nakuru", completed_event: false, category_id: 1)
    Item.create(name: "Visit Amboseli National Park", completed_event: false, category_id: 1)
    Item.create(name: "Visit Giraffe Centre", completed_event: false, category_id: 1)
    Item.create(name: "Travel to Tsavo East National Park, Taita-Taveta", completed_event: false, category_id: 1)

    Item.create(name: "Meal prep every sunday", completed_event: false, category_id: 2)
    Item.create(name: "Go to the gym 3 times a week", completed_event: false, category_id: 2)
    Item.create(name: "Do swimming  twice a week", completed_event: false, category_id: 2)
    Item.create(name: "Learn new Skill", completed_event: false, category_id: 2)
    Item.create(name: "Meet with friends once a week", completed_event: false, category_id: 2)
    Item.create(name: "Read 1 book a month", completed_event: false, category_id: 2)

    Item.create(name: "Visit Karen Blixen Museum", completed_event: false, category_id: 3)
    Item.create(name: "Visit the Local Ocean Conservation, Watamu", completed_event: false, category_id: 3)
    Item.create(name: "Watch a documentary every week", completed_event: false, category_id: 3)
    Item.create(name: "Go for a Tour at the Bomas of Kenya", completed_event: false, category_id: 3)
    Item.create(name: "Visit Ol pejeta Conservancy", completed_event: false, category_id: 3)
    Item.create(name: "Read two books every month", completed_event: false, category_id: 3)






puts "✅ Done seeding!"
