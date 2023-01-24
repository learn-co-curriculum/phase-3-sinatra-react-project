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

puts "✅ Done seeding!"
