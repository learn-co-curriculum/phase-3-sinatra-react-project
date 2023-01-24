puts "🌱 Seeding artists and paintings..."

# Seed your database here

a1 = Artist.create(first_name: "Frida", last_name: "Kahlo", living: false , img_link: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vogue.fr%2Ffashion-culture%2Farticle%2Ffrida-kahlo-7-things-to-know-about-the-artist&psig=AOvVaw3RgOkknnEA6G2nGoIshsWo&ust=1674590274439000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCKCvx4W93vwCFQAAAAAdAAAAABAK" )
a2 = Artist.create(first_name: "Leonora", last_name: "Carrington", living: false, img_link: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.npg.org.uk%2Fcollections%2Fsearch%2Fportrait%2Fmw83930%2FLeonora-Carrington&psig=AOvVaw3tf-xo1hcQ8fYdMOz0KujV&ust=1674593748744000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCNCSlf7J3vwCFQAAAAAdAAAAABAG" )
a3 = Artist.create(first_name: "Faith", last_name: "Ringgold", living: true, img_link:"https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.sugarhillmuseum.org%2Ffaith-ringgold&psig=AOvVaw219NhGOW9qa5o5m4m2N7Sv&ust=1674593776154000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCKjakovK3vwCFQAAAAAdAAAAABAH" )
a4 = Artist.create(first_name: "Paul", last_name: "Cadmus", living: false, img_link:"https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.sothebys.com%2Fen%2Fartists%2Fpaul-cadmus&psig=AOvVaw1o2NTyIdX1EoamsUjRM7fM&ust=1674593878894000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCMCElrzK3vwCFQAAAAAdAAAAABAK" )
a5 = Artist.create(first_name: "Kerry James", last_name: "Marshall", living: true, img_link:"https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.nytimes.com%2F2016%2F10%2F17%2Ft-magazine%2Fkerry-james-marshall-artist.html&psig=AOvVaw3nP7JnKes4oELC2yaJucD0&ust=1674593917316000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCNDKts7K3vwCFQAAAAAdAAAAABAL" )
a6 = Artist.create(first_name: "Lynette", last_name: "Yiadom-Boakye", living: true, img_link:"https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vogue.com%2Farticle%2Fartist-lynette-yiadom-boakye-paintings-portray-black-lives&psig=AOvVaw2dAJs8_ipAqzZrpStjzKz-&ust=1674593946681000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCNjztdzK3vwCFQAAAAAdAAAAABAE" )
a7 = Artist.create(first_name: "Alex", last_name: "Katz", living: true, img_link:"https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.interviewmagazine.com%2Fart%2Falex-katz&psig=AOvVaw2c6QytXO5XPRvfnVHeYIe8&ust=1674594003231000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCPDst_fK3vwCFQAAAAAdAAAAABAK" )
a8 = Artist.create(first_name: "Pablo", last_name: "Picasso", livng: false, img_link:"https://www.google.com/url?sa=i&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FPablo_Picasso&psig=AOvVaw2sAfb4HLem0_46atwbmmzZ&ust=1674594030863000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCNjzuoTL3vwCFQAAAAAdAAAAABAE" )
a9 = Artist.create(first_name: "Edouard", last_name: "Manet", living: false,  img_link:"https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.manet.org%2F&psig=AOvVaw2sUFlTHV4yaBgQvPDd05JB&ust=1674594047727000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCJC3vozL3vwCFQAAAAAdAAAAABAE")
a10 = Artist.create(first_name: "Mary", last_name: "Cassatt", living: false, img_link:"https://www.google.com/url?sa=i&url=https%3A%2F%2Fnmwa.org%2Fart%2Fartists%2Fmary-cassatt%2F&psig=AOvVaw3LX5Vu66Z0iL7NhOAsQYEO&ust=1674594068491000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCJD4tJbL3vwCFQAAAAAdAAAAABAK" )

p1 = Painting.create(title: "Self-Portrait with Necklace and Hummingbird" , medium: "oil on canvas" , year: 1940 , famous: true, img_link: "https://www.fridakahlo.org/images/paintings/self-portrait-with-necklace-of-thorns.jpg", artist_id: a1.id)
p2 = Painting.create(title: "Green Tea" , medium: "oil on canvas" , year: 1942 , famous: false, img_link: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.moma.org%2Fcollection%2Fworks%2F297568&psig=AOvVaw31R-m9873OCscwq3PKCGAU&ust=1674595308295000&source=images&cd=vfe&ved=0CA4QjRxqFwoTCOiiouXP3vwCFQAAAAAdAAAAABAE", artist_id: a2.id)
p3 = Painting.create(title: "Matisse's Model, The French Collection, Part 1" , medium: "oil and acrylic on fabric" , year: 1991, famous: false, img_link: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fnews.artnet.com%2Fart-world%2Ffaith-ringgold-new-museum-2088395&psig=AOvVaw3aA0UzhyoBLudchEptOKfV&ust=1674595143214000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCPiy_ZbP3vwCFQAAAAAdAAAAABAJ", artist_id: a3.id)




puts "✅ Done seeding!"
