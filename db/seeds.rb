require 'faker'

puts "Clearing old data..."

AnimalLog.destroy_all
Zookeeper.destroy_all
Animal.destroy_all

puts "🌱 Seeding Poo data..."
Zookeeper.create(name: "Carole Baskin", image: 'https://www.indiewire.com/wp-content/uploads/2020/04/Screen-Shot-2020-04-01-at-3.02.44-PM.png')
Zookeeper.create(name: "Tara Kelly", image: 'https://www.freepnglogos.com/uploads/potato-png/potato-clipart-transparent-pencil-and-color-potato-31.png')
Zookeeper.create(name: "Jessie Lee", image: 'https://ici.net.au/blog/wp-content/uploads/2020/02/Become-a-Zookeeper.png')
Zookeeper.create(name: "Luke Otwell", image: 'https://creazilla-store.fra1.digitaloceanspaces.com/cliparts/64143/angry-potato-clipart-md.png')
Zookeeper.create(name: "Olivia Manam", image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFJkDuP33ZVodCQ14SxddCdPUAuxkXGQmxfA&usqp=CAU')
Zookeeper.create(name: "Christopher Simpson", image: 'https://i.redd.it/tptkkgb4rlr41.jpg')

Animal.create(name: "Adam", image:'https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Lion_waiting_in_Namibia.jpg/440px-Lion_waiting_in_Namibia.jpg', sex: "Male", birthdate: '1980-05-02', sex: "M", species: "Lion")
Animal.create(name: "Toni", image:'https://undark.org/wp-content/uploads/2020/05/a-g-YuQgNYku1M8-unsplash.jpg', birthdate: '1993-03-14', sex: "Female", species: "Tiger")
Animal.create(name: "Antonio", image:'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Giraffe_Mikumi_National_Park.jpg/440px-Giraffe_Mikumi_National_Park.jpg', birthdate: '1986-09-13', sex: "Male", species: "Giraffe")
Animal.create(name: "Dakota", image:'https://i.natgeofe.com/n/a4e20a18-8ae7-4f9a-be59-d7038dbd8d82/4463961.jpg', birthdate: '1987-02-02',sex: "Male", species: "Peacock")
Animal.create(name: "Gretchen", image:'https://api.time.com/wp-content/uploads/2015/02/panda-cub.jpg', birthdate: '2019-02-22',sex: "Female", species: "Panda")
Animal.create(name: "Tommy", image:'https://30txqa38zb7h2db3bbcpzb1x-wpengine.netdna-ssl.com/wp-content/uploads/2018/12/Crocodylus-niloticus.jpg', birthdate: '2020-12-12',sex: "Male", species: "Crocodile")
Animal.create(name: "Martha", image:'https://s.abcnews.com/images/International/african-hippo-stock-jef-181205_hpMain_4x3t_992.jpg', birthdate: '1997-10-22', sex: "Female", species: "Hippo")
Animal.create(name: "Satoshi", image:'https://www.botswana.co.za/images/elephant-jeremy-jowell-1280x881.jpg', birthdate: '1990-03-02',sex: "Male", species: "Elephant")
Animal.create(name: "Himalaya", image:'https://pbs.twimg.com/media/EV5jheVWsAIAS0Z.jpg', birthdate: '2016-05-30',sex: "Male", species: "Penguin")
Animal.create(name: "Didi", image:'https://images.costco-static.com/ImageDelivery/imageService?profileId=12026540&itemId=1447515-847&recipeName=680', birthdate: '2019-04-10',sex: "Female", species: "Flamingo")
Animal.create(name: "Potato", image:'https://media.wired.com/photos/593261cab8eb31692072f129/master/pass/85120553.jpg', birthdate: '2017-09-20',sex: "Female", species: "Fox")

25.times do

    note = Faker::Quote.matz
    zookeeper_id = rand(1..6) 
    pooped = [true,false].sample
    fed = [true, false].sample
    animal_id = rand(1..11)

    AnimalLog.create( note: note  , animal_id: animal_id, zookeeper_id: zookeeper_id , pooped: pooped , fed: fed)

end


puts "✅ Done seeding!"


