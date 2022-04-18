puts "creating museums..."

# Seed your database here
Museum.create(name: "Museum of the Weird", address: "412 E 6th St", zipcode: "78701", city_id: 1, weburl: "https://www.museumoftheweird.com/", image: "https://assets.simpleviewinc.com/simpleview/image/fetch/c_limit,q_75,w_1200/https://assets.simpleviewinc.com/simpleview/image/upload/crm/austin/museum-of-the-weird-ee8d7831042d4ba_ee8d7949-d7f3-bd48-21ac6cb9d2b50163.jpg")
Museum.create(name: "Log Cabin Village", address: "2100 LOG CABIN VILLAGE LN", zipcode:"76109", city_id: 2, weburl: "https://www.logcabinvillage.org/", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/The_Parker_Cabin_at_Log_Cabin_Village%2C_a_house_museum_consisting_of_saved_rural_cabins_moved_to_a_central_site_in_Fort_Worth%2C_Texas_LCCN2015631207.tif/lossy-page1-1200px-The_Parker_Cabin_at_Log_Cabin_Village%2C_a_house_museum_consisting_of_saved_rural_cabins_moved_to_a_central_site_in_Fort_Worth%2C_Texas_LCCN2015631207.tif.jpg")
Museum.create(name: "The Sixth Floor Museum at Dealey Plaza", address: "411 Elm St", zipcode:"75202", city_id: 3, weburl: "https://www.jfk.org/", image: "https://media.tacdn.com/media/attractions-splice-spp-674x446/06/67/ab/f7.jpg")
Museum.create(name: "San Antonio Fire Museum", address: "801 E Houston St", zipcode: "78205", city_id: 4, weburl: "https://www.sanantoniofiremuseum.org/", image: "https://i0.wp.com/sanantonioreport.org/wp-content/uploads/2019/03/ScottBall_san-antonio-fire-museum-safd-history-houston-street-3-9-2019-1.jpg?fit=1170%2C780&ssl=1")
Museum.create(name: "El Paso County Historical Society", address: "603 W YANDELL DR", zipcode:"79902", city_id: 5, weburl: "https://www.elpasohistory.com/", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/El_Paso_County_Historical_Society_building.jpg/800px-El_Paso_County_Historical_Society_building.jpg")
Museum.create(name: "Holocaust Museum Houston", address: "5401 Caroline St", zipcode: "77004", city_id: 6, weburl: "https://hmh.org/", image: "https://imageio.forbes.com/specials-images/imageserve/5d0fd81d34a5c400084937eb/After-its--34-million-expansion--Holocaust-Museum-Houston-is-the-fourth-largest-in/960x0.jpg?fit=bounds&format=jpg&width=960")
Museum.create(name: "Valley of the Caddo Museum & Cultural Center", address: "1115 Bonham St", zipcode: "75460", city_id: 7, weburl: "https://www.facebook.com/Valley-of-the-Caddo-Museum-Cultural-Center-Inc-630060587047936/", image: "https://pbs.twimg.com/media/DIAn7e7UQAAg6RY.jpg")
Museum.create(name: "International Bowling Museum & Hall of Fame", address: "621 Six Flags Dr", zipcode: "76011", city_id: 8, weburl: "https://www.bowlingmuseum.com/", image: "https://assets.simpleviewinc.com/simpleview/image/fetch/c_fill,h_315,q_50,w_560/https://assets.simpleviewinc.com/simpleview/image/upload/crm/arlington/IBC-New-2018-7f2e046dbddfd63_7f2e06ee-f806-987d-d0723bf233af5e5f.jpg")
Museum.create(name: "Mexic-Arte Museum", address: "419 Congress Ave", zipcode: "78701", city_id: 1, weburl: "https://mexic-artemuseum.org/", image: "https://upload.wikimedia.org/wikipedia/commons/e/e4/Mexic_arte_storefront_2012.jpg")
Museum.create(name: "Perot Museum of Nature and Science", address: "2201 N Field St", zipcode: "75201", city_id: 3, weburl: "https://www.perotmuseum.org/", image: "https://media.cntraveler.com/photos/5b996e0c7009626e21e1e1e1/16:9/w_2560,c_limit/Perot-Museum-of-Nature-and-Science_Perot10.6.13-317c-Edit.jpg")

puts "creating citys..."
City.create(city_name: "Austin", state: "TX")
City.create(city_name: "Fort Worth", state: "TX")
City.create(city_name: "Dallas", state: "TX")
City.create(city_name: "San Antonio", state: "TX")
City.create(city_name: "El Paso", state: "TX")
City.create(city_name: "Houston", state: "TX")
City.create(city_name: "Paris", state: "TX")
City.create(city_name: "Arlington", state: "TX")

# puts "creating trips..."
# Trip.create()

puts "✅ Done seeding!"
