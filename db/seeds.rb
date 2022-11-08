puts "🌱 Seeding spices..."

# Seed your database here

    travel = Category.create(name: "travel")
    lifestyle = Category.create(name: "lifestyle")
    education = Category.create(name: "education")

    Item.create(name: "Travel to Diani, Coast", completed: false, category_id: 1)
    Item.create(name: "Travel to Wasini, Malindi", completed: false, category_id: 1)
    Item.create(name: "Road trip on The Wild Atlantic Way, Ireland's coastal route", completed: false, category_id: 1)
    Item.create(name: "Visit the Yellowstone National Park", completed: false, category_id: 1)
    Item.create(name: "Visit the Glacier national park", completed: false, category_id: 1)
    Item.create(name: "Visit Alaska to see Northern lights", completed: false, category_id: 1)

    Item.create(name: "Meal prep every sunday", completed: false, category_id: 2)
    Item.create(name: "Go to the gym and lift heavy 3 times a week", completed: false, category_id: 2)
    Item.create(name: "Yoga and stretching twice a week", completed: false, category_id: 2)
    Item.create(name: "Learn new language", completed: false, category_id: 2)
    Item.create(name: "Talk to parents once a week", completed: false, category_id: 2)
    Item.create(name: "Read 1 book a month", completed: false, category_id: 2)

    Item.create(name: "Go to pottery class", completed: false, category_id: 3)
    Item.create(name: "Try Curling", completed: false, category_id: 3)
    Item.create(name: "Bungee jumping", completed: false, category_id: 3)
    Item.create(name: "Try white water rafting", completed: false, category_id: 3)
    Item.create(name: "See musical live", completed: false, category_id: 3)
    Item.create(name: "Learn how to make Cannoli", completed: false, category_id: 3)



puts "✅ Done seeding!"
