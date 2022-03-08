Activity.destroy_all
Mood.destroy_all

puts "🌱 Seeding spices..."

Mood.create(mood_name: "chill")
Mood.create(mood_name: "adventurous")
Mood.create(mood_name: "hungry")
Mood.create(mood_name: "creative")
Mood.create(mood_name: "hype")


Activity.create(activity_name: "Zilker Park", 
                img_url: "https://assets.simpleviewinc.com/simpleview/image/upload/c_limit,h_1200,q_75,w_1200/v1/clients/austin/Zilker_Park_Lifestyle_Credit_Ryan_Kyte_Lifetime_Usage_65926b40-20e5-49c5-afcc-844467a87c4e.jpg", 
                description: "If you visit Austin, this is a must visit to come relax at the park, play some sports or even just picnic with friends and dogs all around you. Super fun and the views of downtown are amazing.", 
                mood_id: 1,)

Activity.create(activity_name: "Barton Springs Pool", 
                img_url: "https://www.austintexas.gov/sites/default/files/images/Parks/Pool/bartonsprings1.jpg", 
                description: "Awesome place to cool down and have a nice swim. Nice park around and all you need for a comfortable stay. It is amazing nature site and swimming pool together. Recommended for a swim and relax time.",
                mood_id: 1,)

Activity.create(activity_name: "Austin 360 Bridge", 
                img_url: "https://assets.simpleviewinc.com/simpleview/image/upload/c_fill,h_667,q_75,w_1000/v1/clients/austin/360_Bridge_Internal_Use_Only_1975c39c-61b7-4a68-ae0b-552509f006fb.jpg", 
                description: "Even if you have never visited Austin, it's likely you've seen a photo or two of an insanely beautiful sunset overlooking the Pennybacker Bridge—also known as the Austin 360 Bridge—and thought to yourself, is that real? Yes, it's real and even more breathtaking in person.",
                mood_id: 1,)

Activity.create(activity_name: "Lady Bird Johnson Wildflower Center", 
                img_url: "https://assets.simpleviewinc.com/simpleview/image/fetch/c_fill,h_562,q_75,w_1000/https://assets.simpleviewinc.com/simpleview/image/upload/v1/clients/austin/Bluebonnet_Sunrise_credit_Pierce_Ingram_expires_June_2021_16bcb8cc-9f71-4142-85f1-c1f5ef20a58a.jpg", 
                description: "The Lady Bird Johnson Wildflower Center in southwest Austin displays 650 native Texas plant species in gardens and on nature trails (open by reservation only). Or take a day trip out to Texas Hill Country, where the meadows and valleys burst into a colorful carpet of bright bluebonnets every spring.",
                mood_id: 1,)           

Activity.create(activity_name: "Greetings From Austin Mural", 
                img_url: "https://www.busytourist.com/wp-content/uploads/2020/03/Greetings-From-Austin-Mural.jpg.webp", 
                description: "Located in the heart of the city, it’s a painted wall that resembles a cheerful, life-sized postcard, and it’s the perfect selfie spot for tourists. The mural contains images of iconic Austin landmarks such as the Texas State Capitol and the University of Texas Tower. It’s free to visit and take photos, so you can pose with it as many times as you’d like to get an Instagram-worthy photo.",
                mood_id: 1,)   
                
Activity.create(activity_name: "Lake Travis Zipline Adventures", 
                img_url: "https://assets.simpleviewinc.com/simpleview/image/fetch/c_fill,h_340,q_75,w_545/https://assets.simpleviewinc.com/simpleview/image/upload/crm/austin/ZIPLINE-3-e06e56b9b3b9c87_e06e57cf-efbf-1520-eae9b75c2edb0f81.jpg", 
                description: "The Longest and Fastest Ziplines in Texas! LTZA provides an Active Outdoor Adventure that is FUN for people of all Ages. Your tour offers a 3 hour guided hiking tour through Austin Hill country with 5 exhilarating Ziplines over Lake Travis!", 
                mood_id: 2,)

Activity.create(activity_name: "River Place Nature Trail", 
                img_url: "https://photos.alltrails.com/eyJidWNrZXQiOiJhc3NldHMuYWxsdHJhaWxzLmNvbSIsImtleSI6InVwbG9hZHMvcGhvdG8vaW1hZ2UvNDUwNzg1MTAvMDAzOWNmNDJlZjZkMjE2MWE0NDljMjM4Y2VhZmYwZGQuanBnIiwiZWRpdHMiOnsidG9Gb3JtYXQiOiJqcGVnIiwicmVzaXplIjp7IndpZHRoIjoyMDQ4LCJoZWlnaHQiOjIwNDgsImZpdCI6Imluc2lkZSJ9LCJyb3RhdGUiOm51bGwsImpwZWciOnsidHJlbGxpc1F1YW50aXNhdGlvbiI6dHJ1ZSwib3ZlcnNob290RGVyaW5naW5nIjp0cnVlLCJvcHRpbWlzZVNjYW5zIjp0cnVlLCJxdWFudGlzYXRpb25UYWJsZSI6M319fQ==", 
                description: "River Place Nature Trail via Canyon Trailhead is a 5.4 mile heavily trafficked out and back trail located near Austin, Texas that features a lake and is rated as moderate. The trail is primarily used for hiking, walking, running, and bird watching. Dogs are also able to use this trail but must be kept on leash.", 
                mood_id: 2,)
            
Activity.create(activity_name: "Twin Falls and Sculpture Falls Via Barton Creek Greenbelt Trail", 
                img_url: "https://photos.alltrails.com/eyJidWNrZXQiOiJhc3NldHMuYWxsdHJhaWxzLmNvbSIsImtleSI6InVwbG9hZHMvcGhvdG8vaW1hZ2UvNDQ5MzA4NDcvY2U1YWY1NDFiNDAzZGY0M2U3YzViMmMyYTkyODE4YzEuanBnIiwiZWRpdHMiOnsidG9Gb3JtYXQiOiJqcGVnIiwicmVzaXplIjp7IndpZHRoIjoyMDQ4LCJoZWlnaHQiOjIwNDgsImZpdCI6Imluc2lkZSJ9LCJyb3RhdGUiOm51bGwsImpwZWciOnsidHJlbGxpc1F1YW50aXNhdGlvbiI6dHJ1ZSwib3ZlcnNob290RGVyaW5naW5nIjp0cnVlLCJvcHRpbWlzZVNjYW5zIjp0cnVlLCJxdWFudGlzYXRpb25UYWJsZSI6M319fQ==", 
                description: "Twin Falls and Sculpture Falls Via Barton Creek Greenbelt Trail is a 3.2 mile heavily trafficked out and back trail located near Austin, Texas that features a river and is good for all skill levels. The trail is primarily used for hiking, walking, and running and is accessible year-round. Dogs are also able to use this trail but must be kept on leash.", 
                mood_id: 2,)

Activity.create(activity_name: "Bat Watching at Congress Avenue Bridge", 
                img_url: "https://assets.simpleviewinc.com/simpleview/image/fetch/c_fill,h_647,q_75,w_1000/https://assets.simpleviewinc.com/simpleview/image/upload/v1/clients/austin-redesign/Story2_Austin_Bats_8a5efec1_a9f7_bdda_c49d730f8e0296e8_82d2e3df-8670-4c41-9815-a8d8c3372a8f.jpg", 
                description: "Visitors and residents alike line up nightly on the Congress Avenue Bridge to witness the bats fly out from beneath the bridge, forming a surreal dark cloud as they ascend into the night sky. Arrive early for a front row spot (the sidewalk gets crowded) and be sure to face the east, as the bats will fly out in that direction.", 
                mood_id: 2,)

Activity.create(activity_name: "Austin Flyboard", 
                img_url: "https://laketravis.com/lake-travis/lake-travis-flyboard/gallery/#https://laketravis.com/lake-travis/lake-travis-flyboard/austin-flyboard-header/", 
                description: "Almost anyone can use a FlyBoard. Young and old, short and tall, big and small, it is really very easy. At Austin FlyBoard we know you want to ‘fly’ and not sit in boring training. That’s why we pride ourselves on minimizing ‘training’ to maximize ‘riding’. Typical first time riders are up and flying in about 15 minutes. Once you master the basics, our instructors can teach you progressively more difficult manuvers. It is all up to you how far you want to go.", 
                mood_id: 2,)

Activity.create(activity_name: "Home Slice Pizza", 
                img_url: "http://culturemap.com/thumbnail/800x700/photos/2014/11/17/Homeslice-Pizza_162338.jpg", 
                description: "If you visit Austin, this is a must visit to come relax at the park, play some sports or even just picnic with friends and dogs all around you. Super fun and the views of downtown are amazing.", 
                mood_id: 3,)

Activity.create(activity_name: "Franklin Barbecue", 
                img_url: "https://cdn.vox-cdn.com/thumbor/GI9IuYHqv500I2neoGsi-sYRGM0=/0x0:1021x680/970x728/filters:focal(430x259:592x421):format(webp):no_upscale()/cdn.vox-cdn.com/uploads/chorus_image/image/62580712/DSC_8831.0.0.0.1543526504.jpeg", 
                description: "Pitmaster Aaron Franklin’s smoky meats have risen from humble trailer origins to become one of the country’s most talked-about barbecue destinations. Yes, you will wait in line. Yes, it will be worth it. Weekend waits can be very long, so consider opting for a weekday brisket fix instead. If perfect brisket happens to run out, try the ribs, turkey, and sausages. Advance preorders can be placed online; the dining room has reopened.", 
                mood_id: 3,)

Activity.create(activity_name: "Ramen Tatsuya", 
                img_url: "https://res.cloudinary.com/culturemap-com/image/upload/ar_4:3,c_fill,g_faces:center,w_980/v1544190071/photos/286987_original.jpg", 
                description: "Hip spot for creative ramen bowls & sides, plus sake & Japanese coffee served at communal tables.", 
                mood_id: 3,)

Activity.create(activity_name: "Gourdough's", 
                img_url: "https://static.spacecrafted.com/d2d167f24f6d4582b7828211d5661e2e/i/c1c5c8afefa243ca89b768c2dfba4349/2/4SoifmQp45JMgBnHjfgmz/Trailer.jpg", 
                description: "Gourdough's Big. Fat. Donuts. is housed in a vintage Airstream Trailer located on South Lamar and doles out the most delectable and crazy donut concoctions your mind and taste buds will allow. From the Mother Clucker (topped with fried chicken and honey butter) to the Funky Monkey (topped with grilled bananas and brown sugar), these toppings and fillings take no prisoners. Each donut is handmade, fried fresh to order, and is always served piping hot! Choose from one of 23 favorites or create your own.", 
                mood_id: 3,)

 Activity.create(activity_name: "The Salt Lick BBQ", 
                img_url: "https://www.austincityguide.com/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBck1YIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--f5cd33751753276aa5911f18010f3ab27473cba4/salt_lick_bbq_in_driftwood.jpg", 
                description: "Come see us where it all began in the midst of rolling hills, abundant wildlife, century-old oak trees and native wildflowers. Experience Salt Lick history as you enter the restaurant by our open pit where we have smoked our meats since 1967. After a short scenic drive from Austin, you will enjoy our legendary mouthwatering barbecue in the beauty of the Texas Hill Country", 
                mood_id: 3,)

Activity.create(activity_name: "Cathedral of Junk", 
                img_url: "https://do512family.com/wp-content/uploads/2016/07/cofJ2-768x1024.jpg", 
                description: "We love that Austin “Keeps it Weird”, and the Cathedral of Junk is one of those amazing things here in our lovely city that fully embraces that spirit. The Cathedral of Junk is a sculpture made of over 60 tons of junk, including found objects such as bicycle parts, electronics, broken toys, bottles, car parts, building materials, tires, signs, and much, much (much) more. Located in the backyard of South Austin artist, Vince Hannemann, you must call for an appointment to visit his home to see it. But wow — when you see it, it’ll blow you away!", 
                mood_id: 4,)

Activity.create(activity_name: "Museum of the Weird", 
                img_url: "https://assets.simpleviewinc.com/simpleview/image/fetch/c_limit,q_75,w_1200/https://assets.simpleviewinc.com/simpleview/image/upload/crm/austin/museum-of-the-weird-ee8d7831042d4ba_ee8d7949-d7f3-bd48-21ac6cb9d2b50163.jpg", 
                description: "THE DIME OR DIME STORE museum is by all accounts an endangered species. The first dime museum, “The American Museum,” was opened in 1841 by none other than P. T. Barnum himself. It represented a departure from high-class art and science museums, catering to a poorer crowd and offering items of a much more dubious nature.", 
                mood_id: 4,)


Activity.create(activity_name: "HOPE Outdoor Gallery", 
                img_url: "https://img.atlasobscura.com/jZz8UztjirXlnbEUhD1AFbQQD2yYXOriFRfWFkPP6qQ/rt:fit/w:1200/q:81/sm:1/scp:1/ar:1/aHR0cHM6Ly9hdGxh/cy1kZXYuczMuYW1h/em9uYXdzLmNvbS91/cGxvYWRzL3BsYWNl/X2ltYWdlcy81NjU3/OGM5Mjc4NzYwMzk2/YmZfNTYxMDQ4XzEw/MTAxNzY0OTM1MzE3/MzcxXzg3MzE5Nzg2/MV9uLmpwZw.jpg", 
                description: "THE DIME OR DIME STORE museum is by all accounts an endangered species. The first dime museum, “The American Museum,” was opened in 1841 by none other than P. T. Barnum himself. It represented a departure from high-class art and science museums, catering to a poorer crowd and offering items of a much more dubious nature.", 
                mood_id: 4,)

Activity.create(activity_name: "Wonderspace", 
                img_url: "https://www.gannett-cdn.com/presto/2021/06/09/NA36/1509e654-c71d-4565-8135-04a321284a5c-jwj_Wonderspaces_0146.JPG", 
                description: "Wonderspaces is a traveling art show that has taken up permanent residence in Northeast Austin. Spanning 28,000 square feet, the permanent Austin location features a dozen works of immersive and interactive installments from artists from around the world. New artwork rotates in throughout the year, presenting an ever-changing lineup of art that is typically confined to famous festivals and art fairs.", 
                mood_id: 4,)      
                
Activity.create(activity_name: "The Contemporary", 
                img_url: "https://thecontemporaryaustin.org/wp-content/uploads/2017/03/0043-2-1680x1120.jpg", 
                description: "The Contemporary Austin reflects the spectrum of contemporary art through exhibitions, commissions, education, and the collection.", 
                mood_id: 4,)

Activity.create(activity_name: "The Concourse Project", 
                img_url: "https://www.austinchronicle.com/binary/a079/Concourse_Diplo.jpg", 
                description: "The Concourse Project is an indoor-outdoor music and special event venue in Austin, TX located by the south terminal of the airport.", 
                mood_id: 5,)

Activity.create(activity_name: "Barbarella", 
                img_url: "https://media.timeout.com/images/103701597/image.jpg", 
                description: "Located in the heart of downtown just off of the famous 6th Street in Austin's Red River District is the late night hotspot called, Barbarella. People go here for on reason and that is to dance their asses off!", 
                mood_id: 5,)


 Activity.create(activity_name: "Rainey Street District", 
                img_url: "https://www.austincityguide.com/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBaVVRIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--4fabae5153f09f27066c780ff6f06e80204f8667/front-image.jpg", 
                description: "Rainey Street District is probably the most unusual nightlife scene in Austin. The first bar to open in Rainey was Lustre Pearl located in an old home. Not too long after other homes converted into bars and now the area is covered with bars, hotels, restaurants, and food trucks all in what was once a typical neighborhood street in downtown Austin.", 
                mood_id: 5,)

 Activity.create(activity_name: "Cidercade", 
                img_url: "https://cdn.vox-cdn.com/thumbor/SIv6PAgsjwWRKacjNNoABpwNV_8=/1400x1050/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/20004709/Front_Room.jpg", 
                description: "The best arcade bar in Austin. $10 admission for unlimited play on 150+ games! Enjoy adult beverages from Bishop Cider, pizzas, wings and a patio on Town Lake. We're family-friendly during the day and 21+ at 8pm", 
                mood_id: 5,)

Activity.create(activity_name: "Dirty Sixth", 
                img_url: "https://austinot.com/wp-content/uploads/2012/04/Dirty-Sixth-Street-Austin.jpg", 
                description: "Let’s head east on Sixth Street for the main event, the Bourbon Street of Austin, Dirty Sixth. You’ll want to take out-of-towners here just to experience the bars, energy, and the guy who stands in the middle of the street with a live snake around his neck.", 
                mood_id: 5,)
puts "✅ Done seeding!"
