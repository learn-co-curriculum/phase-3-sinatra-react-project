puts "Deleting Traveler/Location data..."
Destination.destroy_all
Review.destroy_all

puts "Creating Destinations..."

d1 = Destination.create(name: "Home of Ohio Meth Labs ", location: "Waverly, OH", description: "Be careful out there, it’s icy here all year around! ", image: "https://www.gannett-cdn.com/authoring/2014/01/19/NCOD/ghows-OH-e468e16e-6e32-4de8-95f6-80f450fc83b1-463c3d09.jpeg?width=1200&disable=upscale&format=pjpg&auto=webp", likes: 20)
d2 = Destination.create(name: "Avalon Beach", location: "Avalon, CA", description: "Visit one of the most polluted beaches in the country! ", image: "https://i.guim.co.uk/img/media/8f112a3ba24e4c2244c76e17d7597ac45b7df2f9/0_48_2952_1771/master/2952.jpg?width=700&quality=85&auto=format&fit=max&s=6f3a30714afcac9498ce0feaa5dc8a4d", likes: 12)
d3 = Destination.create(name: " Most polluted Town", location: "Medford, OR", description: "6th highest level of air pollution", image: "https://files.ondemandhosting.info/imagecache/cropfit@w=710/blob/images/articles/7/d/7d50ea49-0fb8-11e9-baed-42010a8001f9/medford-oregon.jpg?_=5ksxC0lT", likes: 13)
d4 = Destination.create(name: "Most boring town in kentucky", location: "Englewood, KY", description: "There’s just nothing to do there. At all. ", image: "https://mediavault.point2.com/p2h/listing/2bd6/baa6/d68e/82b05444878726eb9a02/nwm_large.jpg", likes: 55)
d5 = Destination.create(name: "Lamest Town In TN", location: "Forest Hills, TN", description: "Just dont go if you wanna stay awake", image: "https://www.cityofforesthills.com/sites/default/files/imageattachments/parks/page/117/a1176_e.jpg", likes: 33)
d6 = Destination.create(name: "For Legal Reasons This City is Actually Real", location: "Jacksonville, NC", description: "The finest strip malls in all of North Carolina", image: "https://i.pinimg.com/originals/a7/50/05/a75005e5bcee292725dbefeb05106bec.jpg", likes: 12)
d7 = Destination.create(name: "It's Cheaper to Fly Here", location: "Newark, NJ", description: "Of the 90 dirtiest cities chosen, this one was the worst. ", image: "https://www.nj.com/resizer/QqqfvzVu3GfNfObomm6RKXzlz0s=/arc-anglerfish-arc2-prod-advancelocal/public/OZ2GBXCGYNE4RDP2VNUX44X42A.JPG", likes: 13)
d8 = Destination.create(name: "Exceptional Bridges to Jump Off", location: "Aurora, IL", description: "Nothing is better than living in the 29th dirtiest city!", image: "https://bloximages.chicago2.vip.townnews.com/buffalonews.com/content/tncms/assets/v3/editorial/3/da/3dafb956-71e7-56bd-93d0-15c0b910125d/5ef1184bcf0b8.image.jpg?crop=1387%2C1040%2C106%2C0&resize=1387%2C1040&order=crop%2Cresize", likes: 19)
d9 = Destination.create(name: "The Other Other Other LA", location: "Lafayette, LA", description: "We all love our tax dollars going to good use! Good roads to be found here", image: "https://thecurrentla.com/wp-content/uploads/5B078F5F-5CB2-4DB4-9B0B-F51B54202C01.jpeg", likes: 99)
d10 = Destination.create(name: "It's Dallas.", location: "Dallas, TX", description: "Doesn't everyone love sitting in traffic?! Come here to witness construction traffic! ", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDWZ0bHF3ANgQkyEsgklefQ78WDBtQRK6X0w&usqp=CAU", likes: 666)
d11 = Destination.create(name: "World's Largest Ball of Twine", location: "Cawker City, KS", description: "Nothing says Kansas like a large ball of twine.", image: "https://cdn.vroomvroomvroom.com/images/vroomvroomvroom-com/cms/twine-ball-wk.jpg", likes: 7)
d12 = Destination.create(name: "Idaho Potato Museum", location: "Blackfoot, ID", description: "What better way to spend your time in Idaho then go to look at a museum of potatoes.", image: "https://idahopotatomuseum.com/wp-content/uploads/2017/03/big-potato-by-harmony-web-e1615235134425.jpg", likes: 90)
d13 = Destination.create(name: "World's Largest Thermometer", location: "Baker, CA", description: "The best part about this Thermometer is that it isn't even accurate.", image: "https://img.atlasobscura.com/lFNF7dmXSleytVRcDMfvpka9-3wS-idohzBaR5oB5fI/rs:fill:580:580:1/g:ce/q:81/sm:1/scp:1/ar:1/aHR0cHM6Ly9hdGxh/cy1kZXYuczMuYW1h/em9uYXdzLmNvbS91/cGxvYWRzL3BsYWNl/X2ltYWdlcy9kMGIw/ZTk0NzgzMmVkMDQ1/MWFfMjU3MTY1OTcx/Ml9hODE3MWEwOTlk/X3ouanBn.jpg", likes: 4)
d14 = Destination.create(name: "The Geographic Center of the United States", location: "Lebanon, KS", description: "Who doesn't love to go all the way to Kansas just to take a picture with a flag!", image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/04/ae/81/7c/geographical-center-of.jpg?w=1200&h=-1&s=1", likes: 7)
d15 = Destination.create(name: "Archway", location: "Kearney, NE", description: "The amazing feeling of walking through the archway just because people of history have. ", image: "https://i.pinimg.com/originals/89/b2/75/89b2755f0766a8f3a7933b55ffa446b9.jpg", likes: 8)
d16 = Destination.create(name: "Portland Dog Bowl", location: "Portland, OR", description: "Who doesn't love to travel to Oregon to look at a dog bowl shaped fountain?!", image: "https://www.roadsideamerica.com/attract/images/or/ORPORdogbowl_samantha.jpg", likes: 13)
d17 = Destination.create(name: "Four Courners Monument", location: "Teec Nos Pos, AZ", description: "How amazing is walking in the heat just to take a picture of you standing between four states?", image: "https://upload.wikimedia.org/wikipedia/commons/f/ff/Four_Corners%2C_NM%2C_reconstructed_monument_in_2010.jpg", likes: 44)
d18 = Destination.create(name: "Plymouth Rock", location: "Plymouth, MA", description: "Massachusetts best attraction: a rock", image: "https://ugc.naturalatlas.com/photos/0/41/950/41950/anIdLkuw/1200.jpg?1551129466", likes: 5)
d20 = Destination.create(name: "World's Largest Bottle of Ketchup", location: "Collinsville, IL", description: "Nothing says Illinois like a large bottle of Ketchup!", image: "https://live.staticflickr.com/6223/6244867867_2fc9b2c063_b.jpg", likes: 8)
d21 = Destination.create(name: "Axila de California", location: "Bakersfield, CA", description: "Enjoy the comfort of having your very own forest fire in your backyard", image: "https://bakersfieldmover.com/wp-content/uploads/2018/03/cfiles67139.jpg", likes: 2)
d22 = Destination.create(name: "We Suck!", location: "Youngstown, PA", description: "This town knew how to come from nothing and made sure you remember it by...something.", image: "https://www.inquirer.com/resizer/5VZwaXeJ42EdpIklRD8bwQfa674=/filters:format(webp)/cloudfront-us-east-1.images.arcpublishing.com/pmn/DGQS2V6TDJCRDCMVOA57ZJVWWU.jpg", likes: 2)
d23 = Destination.create(name: "Pretty Good Meth", location: "Yakima, WA", description: "More like Whackima, am I right?", image: "https://i.pinimg.com/originals/9a/e8/6a/9ae86a164a89550a9b037220d5b7af64.jpg", likes: 4)
d24 = Destination.create(name: "Technically This Counts as a Beach", location: "Myrtle Beach, SC", description: "Who could turn down laying on a mix of dirt, sand and glass while a seagul constantly tries to steal your food?", image: "https://kiss951.com/wp-content/uploads/sites/48/2021/11/shutterstock_1204262425-scaled.jpg", likes: 8)
d25 = Destination.create(name: "A Cuomo or Two May Still Live Here", location: "Albany, NY", description: "Gives great city hall vibes.", image: "https://assets.bwbx.io/images/users/iqjWHBFdfxIU/iTYUUswmdvLY/v1/-1x-1.jpg", likes: 7)
d26 = Destination.create(name: "A Gas Station and A Church", location: "Somerset, IN", description: "Literally just a gas station and a church.", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/db/Somerset%2C_Indiana.jpg/1920px-Somerset%2C_Indiana.jpg", likes: 4)
d27 = Destination.create(name: "A Retiree Haven", location: "Bonfield, IL", description: "About to die? Not sure? You'll want to here!", image: "https://live.staticflickr.com/7752/18022663061_44dbed3846_c.jpg", likes: 36)
d28 = Destination.create(name: "This Sign is Also a 7/11", location: "Mesa, AZ", description: "Feelin' hot, hot, hot in this land where somehow plants avoid but humans reside.", image: "https://ssl.cdn-redfin.com/photo/86/mbphoto/199/genMid.6403199_55_2.jpg", likes: 234)
d29 = Destination.create(name: "Not The Green Part of California", location: "Stockton, CA", description: "Time flies like an arrow and fruit flies like Stockton.", image: "https://www.portofstockton.com/wp-content/uploads/2022/03/port-of-stockton-tower-768x512.jpg", likes: 69)
d30 = Destination.create(name: "Where?", location: "Harrisville, MI", description: "...I'm sure someone has heard of it. It's probably nice?", image: "https://bestlifeonline.com/wp-content/uploads/sites/3/2019/02/harrisville-michigan.jpg?resize=1024,681&quality=82&strip=all", likes: 420)

puts "Creating Reviews..."

r1 = Review.create(comment: "I gave birth in a toilet here!", destination_id: d30.id)
r2 = Review.create(comment: "I’m coming back to visit the local crackheads, they know the best spots.", destination_id: d6.id)
r3 = Review.create(comment: "My wife and I had a fight and I punched a hole in the wall at the local motel. Will be returning soon!", destination_id: d1.id)
r4 = Review.create(comment: "I came for peace and quiet and left with the best recipe for homemade meth!", destination_id: d3.id)
r5 = Review.create(comment: "My favorite part of the whole trip was how the locals stared!", destination_id: d10.id)
r6 = Review.create(comment: "I only got food poisoning twice. 10/10 would go again.", destination_id: d13.id )
r7 = Review.create(comment: "I might have forgotten a kid there, but the place was so lovely, I'm sure they're doing just fine.", destination_id: d15.id)
r8 = Review.create(comment: "Went to my sisters wedding here! She never showed but the venue was gorgeous.", destination_id: d18.id)
r9 = Review.create(comment: "Could not see the view because of the trash but I’ve heard that it looks nice", destination_id: d22.id)
r10 = Review.create(comment: "I never imagined I would be so bored. I loved it!", destination_id: d26.id)
r11 = Review.create(comment: "My favorite part was that their water fountains also had different flavors!", destination_id: d27.id)
r12 = Review.create(comment: "I couldn't sleep for days after this! Amazing!", destination_id: d28.id )

Destination.all.each {|d| 
    Review.create(
        comment: "Your Mom", 
        destination: d
    )
}

puts "✅ Done seeding!"
