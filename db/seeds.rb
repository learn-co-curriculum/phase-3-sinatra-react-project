puts "🌱 Seeding..."

# Seed your database here


# Clearing Our Tables!
puts "Clearing Our Tables💫..."

User.destroy_all




#### User Seeds


    user1 = User.create( 

        name: "Sam",
        image_url: "https://ca.slack-edge.com/T02MD9XTF-U018W9H54N6-6bb69b64ec24-512"

    )
    user2 = User.create( 

        name: "Jenny",
        image_url: "https://ca.slack-edge.com/T02MD9XTF-U029X96QUPM-bb4a9bf9b1f9-512"

    )
    user3 = User.create( 

        name: "Josh",
        image_url: "https://ca.slack-edge.com/T02MD9XTF-U02GC8Z8SLD-e2437b5541d4-512"

    )


################




puts "✅ Done seeding!"
