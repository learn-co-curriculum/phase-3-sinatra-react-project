Activity.destroy_all
Mood.destroy_all

puts "🌱 Seeding spices..."

Mood.create(mood_name: "chill")
Mood.create(mood_name: "adventurous")
Mood.create(mood_name: "hungry")
Mood.create(mood_name: "creative")
Mood.create(mood_name: "wild")


Activity.create(activity_name: "Zilker Park", 
                img_url: "https://assets.simpleviewinc.com/simpleview/image/upload/c_limit,h_1200,q_75,w_1200/v1/clients/austin/Zilker_Park_Lifestyle_Credit_Ryan_Kyte_Lifetime_Usage_65926b40-20e5-49c5-afcc-844467a87c4e.jpg", 
                description: "If you visit Austin, this is a must visit to come relax at the park, play some sports or even just picnic with friends and dogs all around you. Super fun and the views of downtown are amazing.", 
                mood_id: 1,)

Activity.create(activity_name: "Barton Springs Pool", 
                img_url: "https://www.austintexas.gov/sites/default/files/images/Parks/Pool/bartonsprings1.jpg", 
                description: "Awesome place to cool down and have a nice swim. Nice park around and all you need for a comfortable stay. It is amazing nature site and swimming pool together. Recommended for a swim and relax time.",
                mood_id: 1,)

puts "✅ Done seeding!"
