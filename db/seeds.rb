puts "🌱 Seeding artists and paintings..."

# Seed your database here

a1 = Artist.create(first_name: "Frida", last_name: "Kahlo", living: false , img_link: "https://media.vogue.fr/photos/5c2f474e14f2f3cf7b8e34f4/master/pass/004_frida_kahlo_brows_vogue_int_getty_images_jpg_7867.jpg" )
a2 = Artist.create(first_name: "Leonora", last_name: "Carrington", living: false, img_link: "https://collectionimages.npg.org.uk/large/mw83930/Leonora-Carrington.jpg" )
a3 = Artist.create(first_name: "Faith", last_name: "Ringgold", living: true, img_link:"https://static01.nyt.com/images/2020/06/11/arts/11ringgold1/11ringgold1-mediumSquareAt3X-v3.jpg" )
a4 = Artist.create(first_name: "Paul", last_name: "Cadmus", living: false, img_link:"https://upload.wikimedia.org/wikipedia/commons/a/a3/Cadmus%2C_Paul_%281904-1999%29_-_1937_-_Foto_Carl_Van_Vechten.jpg" )
a5 = Artist.create(first_name: "Kerry James", last_name: "Marshall", living: true, img_link:"https://www.artnews.com/wp-content/uploads/2016/03/116iconkjm-opener.jpg" )
a6 = Artist.create(first_name: "Lynette", last_name: "Yiadom-Boakye", living: true, img_link:"https://assets.vogue.com/photos/58d2cf91df5a2f27ce867fb0/master/pass/HOLDING-painter-lynette-yiadom-boakye-vogue-april-2017.jpg" )
a7 = Artist.create(first_name: "Alex", last_name: "Katz", living: true, img_link:"https://m.psecn.photoshelter.com/img-get/I0000BiZyYBofpR0/s/1200/I0000BiZyYBofpR0.jpg" )
a8 = Artist.create(first_name: "Pablo", last_name: "Picasso", living: false, img_link:"https://upload.wikimedia.org/wikipedia/commons/b/b8/Portrait_de_Picasso%2C_1908.jpg" )
a9 = Artist.create(first_name: "Edouard", last_name: "Manet", living: false,  img_link:"https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/%C3%89douard_Manet%2C_en_buste%2C_de_face_-_Nadar.jpg/640px-%C3%89douard_Manet%2C_en_buste%2C_de_face_-_Nadar.jpg")
a10 = Artist.create(first_name: "Mary", last_name: "Cassatt", living: false, img_link:"https://nmwa.org/wp-content/uploads/2020/01/Cassatt-Mary.jpg" )

p1 = Painting.create(title: "Self-Portrait with Necklace and Hummingbird" , medium: "oil on canvas" , year: 1940 , famous: true, img_link: "https://www.fridakahlo.org/images/paintings/self-portrait-with-necklace-of-thorns.jpg", artist_id: a1.id)
p2 = Painting.create(title: "Green Tea" , medium: "oil on canvas" , year: 1942 , famous: false, img_link: "https://uploads3.wikiart.org/images/leonora-carrington/green-tea-1942.jpg", artist_id: a2.id)
p3 = Painting.create(title: "Matisse's Model, The French Collection, Part 1" , medium: "oil and acrylic on fabric" , year: 1991, famous: false, img_link: "https://collection.artbma.org/internal/media/dispatcher/94373/preview", artist_id: a3.id)
p4 = Painting.create(title: "Jerry" , medium: "oil on canvas", year: 1931 , famous: true, img_link: "https://www.toledomuseum.org/sites/default/files/20427315931_d616027fb2_b.jpg", artist_id: a4.id)
p5 = Painting.create(title:  "School of Beauty, School of Culture", medium: "acrylic and glitter on canvas" , year: 2012 , famous: true, img_link: "http://figuringhistory.site.seattleartmuseum.org/wp-content/uploads/sites/20/2017/12/kjm-school-of-beauty-1080px.jpg", artist_id: a5.id)
p6 = Painting.create(title: "Blue Boy" , medium: "oil on linen"  , year: 2014 , famous: true, img_link: "https://ca-times.brightspotcdn.com/dims4/default/8468c16/2147483647/strip/true/crop/3803x4302+0+0/resize/1200x1357!/quality/80/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2F5e%2Fad%2Fb31ee3b44b0aa10e3a36084e4be9%2F02-greenhouse-fantasies-lyb.jpg" , artist_id: a6.id)
p7 = Painting.create(title: "Homage to Monet" , medium: "oil on linen"  , year: 2019 , famous: true, img_link: "https://i.pinimg.com/originals/90/18/f3/9018f3e521cafbc82a8473a384c3cdf5.png" , artist_id: a7.id)
p8 = Painting.create(title: "Guernica" , medium: "oil on canvas" , year: 1937 , famous: true, img_link: "https://i.natgeofe.com/n/0adb5779-42cb-4a12-ab9c-fdb6498bee50/Main_Guernica_BAT-10313_16x9.jpg" , artist_id: a8.id)
p9 = Painting.create(title: "A Bar at the Folies-Bergere" , medium: "oil on canvas"  , year: 1882 , famous: false, img_link: "https://i.ytimg.com/vi/XQJUL-3QqFU/maxresdefault.jpg" ,  artist_id: a9.id)
p10 = Painting.create(title: "Little Girl in a Blue Armchair" , medium: "oil on canvas" , year: 1878 , famous: true, img_link: "https://media.nga.gov/iiif/6dc9ca49-ea8c-4314-985a-ba2cfc3965cd/full/full/0/default.jpg?attachment_filename=little_girl_in_a_blue_armchair_1983.1.18.jpg", artist_id: a10.id)
p11 = Painting.create(title: "Self-Portrait with Monkey" , medium: "oil on canvas" , year: 1940 , famous: true, img_link: "https://images.theconversation.com/files/127648/original/image-20160621-19789-cw7ze9.JPG?ixlib=rb-1.1.0&q=45&auto=format&w=754&fit=clip", artist_id: a1.id)
p12 = Painting.create(title: "Self-Portrait with Hyena" , medium: "oil on canvas" , year: 1938 , famous: true, img_link: "https://collectionapi.metmuseum.org/api/collection/v1/iiif/492697/preview", artist_id: a2.id)
p13 = Painting.create(title: "Tar Beach 2" , medium: "oil and acrylic on fabric" , year: 1992, famous: true, img_link: "https://iiif.micr.io/wpDsq/full/%5E1200,/0/default.jpg", artist_id: a3.id)
p14 = Painting.create(title: "Finistere" , medium: "egg tempera on paper on board", year: 1952 , famous: true, img_link: "https://whitneymedia.org/assets/artwork/2770/64_41_cropped.jpeg", artist_id: a4.id)
p15 = Painting.create(title: "Untitled (Studio)" , medium: "oil on canvas", year: 2014, famous: false, img_link: "https://www.sartle.com/sites/default/files/styles/as-is/public/images/artwork/untitled-studio-kerry-james-marshall-213911-4905176.jpg?itok=UzEmRSYk", artist_id: a5.id)
p16 = Painting.create(title: "A Concentration" , medium: "oil on linen"  , year: 2018, famous: false, img_link: "https://flash---art.com/wp-content/uploads/2020/07/Lynette-Yiadom-Boakye_A-Concentration_2018_Flash-Art-03-1024x683.jpg" , artist_id: a6.id)
p17 = Painting.create(title: "Ada in the Rain" , medium: "oil on linen"  , year: 1977 , famous: true, img_link: "https://assets.phillips.com/image/upload/t_Website_CuratedAuction_SingleCell_NoPad_dev2/v1/auctions/UK010619/14_001.jpg" , artist_id: a7.id)
p18 = Painting.create(title: "Acrobat and Young Harlequin" , medium: "oil on canvas" , year: 1905, famous: true, img_link: "https://d2r83x5xt28klo.cloudfront.net/5878_JEbYMJApI2VmFBVw_b.jpg" , artist_id: a8.id)
p19 = Painting.create(title: "Boating" , medium: "oil on canvas"  , year: 1874 , famous: true, img_link: "https://images.metmuseum.org/CRDImages/ep/original/DP-25466-001.jpg" ,  artist_id: a9.id)
p20 = Painting.create(title: "Simone in a Blue Bonnet" , medium: "oil on canvas" , year: 1903 , famous: false, img_link: "https://risdmuseum.org/sites/default/files/styles/scaled_900/museumplus/67989.jpg?itok=Zmc87c8L", artist_id: a10.id)

puts "✅ Done seeding!"
