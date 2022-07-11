puts "🌱 Seeding spices..."

puts "Creating cuisines"
Cuisine.create(name: "Italian")
Cuisine.create(name: "Mexican")
Cuisine.create(name: "Indian")
Cuisine.create(name: "American")
Cuisine.create(name: "Thai")

puts "Creating restaurants"
Restaurant.create(
  name: "Bob's American Grill",
  cuisine_id: 4,
  delivery_time: 45,
  display_image_url:
    "https://media.istockphoto.com/photos/close-up-photo-of-steak-picture-id1174657393?k=20&m=1174657393&s=612x612&w=0&h=UmLstY7GpqLUDexV_A7S5XfcO4O0cD5Ai-9WBuZdqFk=",
  price_gauge: 2
)
Restaurant.create(
  name: "Bertha's Diner",
  cuisine_id: 4,
  delivery_time: 50,
  display_image_url:
    "https://media.istockphoto.com/photos/theres-enough-place-for-everyone-picture-id956025576?k=20&m=956025576&s=612x612&w=0&h=eOJk_kONwXlJg1gFQbmnI-XZdTsV3OTSqUpNpoQ4QO4=",
  price_gauge: 1
)
Restaurant.create(
  name: "India Jones",
  cuisine_id: 3,
  delivery_time: 30,
  display_image_url:
    "https://media.istockphoto.com/photos/indian-thali-indian-food-picture-id464597982?k=20&m=464597982&s=612x612&w=0&h=ktqyfjPcpw5Ehs7YQCAnrUNOC9jqyNdxU7vJ6Wa15Rs=",
  price_gauge: 2
)
Restaurant.create(
  name: "Naan Starter",
  cuisine_id: 3,
  delivery_time: 25,
  display_image_url:
    "https://media.istockphoto.com/photos/vegan-sweet-potato-chickpea-curry-in-wooden-bowl-on-light-background-picture-id953638668?k=20&m=953638668&s=612x612&w=0&h=VWILbVNicUpPtAd4-2AfhTzlVoHF5cGVtHtSMJiym70=",
  price_gauge: 3
)
Restaurant.create(
  name: "Thai Me Up",
  cuisine_id: 5,
  delivery_time: 33,
  display_image_url:
    "https://media.istockphoto.com/photos/floating-market-thailand-picture-id944871842?k=20&m=944871842&s=612x612&w=0&h=uCtUQ5Bi7Grs5z02sJHQdy2SPIdVeAIbW-huWj-bn4U=",
  price_gauge: 1
)
Restaurant.create(
  name: "Thai Tanic",
  cuisine_id: 5,
  delivery_time: 55,
  display_image_url:
    "https://media.istockphoto.com/photos/thai-green-curry-picture-id1140580445?k=20&m=1140580445&s=612x612&w=0&h=I8W4G28Ff4Fp_MtgfE7h8OCfPLrkKJgp8-HAw2--jlw=",
  price_gauge: 4
)
Restaurant.create(
  name: "Tequila Mockingbird",
  cuisine_id: 2,
  delivery_time: 20,
  display_image_url:
    "https://media.istockphoto.com/photos/tequila-with-lime-picture-id1134229698?k=20&m=1134229698&s=612x612&w=0&h=CxEjaj6dbHVb4KcGrRowtGWbDmlPFVuj_nWw-6oCf7g=",
  price_gauge: 2
)
Restaurant.create(
  name: "Mexillent",
  cuisine_id: 2,
  delivery_time: 40,
  display_image_url:
    "https://media.istockphoto.com/photos/row-of-mexican-street-tacos-on-slate-with-carne-asada-and-al-pastor-picture-id1250133101?k=20&m=1250133101&s=612x612&w=0&h=c6UQoXkXGN9DVUdeX2_1AduRw2FcegiC6xz5fezckDU=",
  price_gauge: 3
)
Restaurant.create(
  name: "Spec-taco-lar",
  cuisine_id: 2,
  delivery_time: 30,
  display_image_url:
    "https://media.istockphoto.com/photos/tamale-with-corn-leaf-and-filled-chili-pepper-picture-id913677844?k=20&m=913677844&s=612x612&w=0&h=G5I0YSBJhmw7lnUZjpAjM0dNP_VnOs1Uui48U9L0NOs=",
  price_gauge: 3
)
Restaurant.create(
  name: "Pre-Pasta-rous",
  cuisine_id: 1,
  delivery_time: 22,
  display_image_url:
    "https://media.istockphoto.com/photos/pasta-plate-picture-id632439546?k=20&m=632439546&s=612x612&w=0&h=pkj0ywccJNs8YChKc188E_sIxeO_ENpF0dnvQkQOBqo=",
  price_gauge: 2
)
Restaurant.create(
  name: "Pasta La Vista",
  cuisine_id: 1,
  delivery_time: 18,
  display_image_url:
    "https://media.istockphoto.com/photos/ravioli-with-tomato-sauce-picture-id184637819?k=20&m=184637819&s=612x612&w=0&h=l-hSfmKTDfeVJGG4T7I9Qlpnkh-zks3CY2CMuCoQg0U=",
  price_gauge: 5
)

puts "Creating Ratings"
Rating.create(restaurant_id: 1, rating: 4)
Rating.create(restaurant_id: 1, rating: 3)
Rating.create(restaurant_id: 1, rating: 2)
Rating.create(restaurant_id: 2, rating: 3)
Rating.create(restaurant_id: 2, rating: 5)
Rating.create(restaurant_id: 3, rating: 2)
Rating.create(restaurant_id: 3, rating: 4)
Rating.create(restaurant_id: 4, rating: 4)
Rating.create(restaurant_id: 4, rating: 5)
Rating.create(restaurant_id: 5, rating: 3)
Rating.create(restaurant_id: 5, rating: 4)
Rating.create(restaurant_id: 6, rating: 2)
Rating.create(restaurant_id: 6, rating: 3)
Rating.create(restaurant_id: 7, rating: 5)
Rating.create(restaurant_id: 7, rating: 4)
Rating.create(restaurant_id: 8, rating: 3)
Rating.create(restaurant_id: 8, rating: 4)
Rating.create(restaurant_id: 9, rating: 2)
Rating.create(restaurant_id: 9, rating: 3)
Rating.create(restaurant_id: 10, rating: 3)
Rating.create(restaurant_id: 10, rating: 4)
Rating.create(restaurant_id: 11, rating: 5)
Rating.create(restaurant_id: 11, rating: 4)

puts "Creating Item Categories"
ItemCategory.create(name: "Appetizers")
ItemCategory.create(name: "Main")
ItemCategory.create(name: "Sides")
ItemCategory.create(name: "Dessert")
ItemCategory.create(name: "Drinks")

puts "Creating menu items"
MenuItem.create(item_id: 1, restaurant_id: 1, price: 5, is_special?: 0)
MenuItem.create(item_id: 2, restaurant_id: 1, price: 8, is_special?: 1)
MenuItem.create(item_id: 12, restaurant_id: 1, price: 12, is_special?: 0)
MenuItem.create(item_id: 14, restaurant_id: 1, price: 15, is_special?: 0)
MenuItem.create(item_id: 16, restaurant_id: 1, price: 15, is_special?: 0)
MenuItem.create(item_id: 36, restaurant_id: 1, price: 8, is_special?: 0)
MenuItem.create(item_id: 37, restaurant_id: 1, price: 6, is_special?: 0)
MenuItem.create(item_id: 47, restaurant_id: 1, price: 12, is_special?: 0)
MenuItem.create(item_id: 66, restaurant_id: 1, price: 5, is_special?: 0)
MenuItem.create(item_id: 58, restaurant_id: 1, price: 3, is_special?: 0)
MenuItem.create(item_id: 1, restaurant_id: 2, price: 10, is_special?: 0)
MenuItem.create(item_id: 12, restaurant_id: 2, price: 14, is_special?: 0)
MenuItem.create(item_id: 13, restaurant_id: 2, price: 18, is_special?: 0)
MenuItem.create(item_id: 15, restaurant_id: 2, price: 15, is_special?: 0)
MenuItem.create(item_id: 36, restaurant_id: 2, price: 10, is_special?: 0)
MenuItem.create(item_id: 37, restaurant_id: 2, price: 12, is_special?: 0)
MenuItem.create(item_id: 49, restaurant_id: 2, price: 15, is_special?: 0)
MenuItem.create(item_id: 56, restaurant_id: 2, price: 16, is_special?: 1)
MenuItem.create(item_id: 68, restaurant_id: 2, price: 15, is_special?: 0)
MenuItem.create(item_id: 57, restaurant_id: 2, price: 12, is_special?: 0)
MenuItem.create(item_id: 43, restaurant_id: 2, price: 12, is_special?: 1)
MenuItem.create(item_id: 5, restaurant_id: 3, price: 8, is_special?: 0)
MenuItem.create(item_id: 22, restaurant_id: 3, price: 15, is_special?: 0)
MenuItem.create(item_id: 23, restaurant_id: 3, price: 14, is_special?: 0)
MenuItem.create(item_id: 25, restaurant_id: 3, price: 18, is_special?: 1)
MenuItem.create(item_id: 39, restaurant_id: 3, price: 5, is_special?: 0)
MenuItem.create(item_id: 40, restaurant_id: 3, price: 13, is_special?: 0)
MenuItem.create(item_id: 41, restaurant_id: 3, price: 8, is_special?: 0)
MenuItem.create(item_id: 42, restaurant_id: 3, price: 8, is_special?: 0)
MenuItem.create(item_id: 53, restaurant_id: 3, price: 8, is_special?: 0)
MenuItem.create(item_id: 61, restaurant_id: 3, price: 6, is_special?: 0)
MenuItem.create(item_id: 62, restaurant_id: 3, price: 6, is_special?: 0)
MenuItem.create(item_id: 58, restaurant_id: 3, price: 4, is_special?: 0)
MenuItem.create(item_id: 5, restaurant_id: 4, price: 12, is_special?: 0)
MenuItem.create(item_id: 6, restaurant_id: 4, price: 10, is_special?: 1)
MenuItem.create(item_id: 22, restaurant_id: 4, price: 16, is_special?: 0)
MenuItem.create(item_id: 24, restaurant_id: 4, price: 18, is_special?: 0)
MenuItem.create(item_id: 25, restaurant_id: 4, price: 18, is_special?: 0)
MenuItem.create(item_id: 39, restaurant_id: 4, price: 6, is_special?: 0)
MenuItem.create(item_id: 42, restaurant_id: 4, price: 5, is_special?: 0)
MenuItem.create(item_id: 53, restaurant_id: 4, price: 9, is_special?: 1)
MenuItem.create(item_id: 61, restaurant_id: 4, price: 8, is_special?: 0)
MenuItem.create(item_id: 62, restaurant_id: 4, price: 8, is_special?: 0)
MenuItem.create(item_id: 58, restaurant_id: 4, price: 4, is_special?: 0)
MenuItem.create(item_id: 7, restaurant_id: 5, price: 6, is_special?: 1)
MenuItem.create(item_id: 8, restaurant_id: 5, price: 8, is_special?: 0)
MenuItem.create(item_id: 26, restaurant_id: 5, price: 12, is_special?: 0)
MenuItem.create(item_id: 28, restaurant_id: 5, price: 14, is_special?: 0)
MenuItem.create(item_id: 42, restaurant_id: 5, price: 8, is_special?: 0)
MenuItem.create(item_id: 36, restaurant_id: 5, price: 10, is_special?: 0)
MenuItem.create(item_id: 52, restaurant_id: 5, price: 12, is_special?: 1)
MenuItem.create(item_id: 62, restaurant_id: 5, price: 7, is_special?: 0)
MenuItem.create(item_id: 63, restaurant_id: 5, price: 7, is_special?: 1)
MenuItem.create(item_id: 58, restaurant_id: 5, price: 4, is_special?: 0)
MenuItem.create(item_id: 8, restaurant_id: 6, price: 6, is_special?: 0)
MenuItem.create(item_id: 26, restaurant_id: 6, price: 15, is_special?: 0)
MenuItem.create(item_id: 27, restaurant_id: 6, price: 16, is_special?: 1)
MenuItem.create(item_id: 28, restaurant_id: 6, price: 18, is_special?: 0)
MenuItem.create(item_id: 42, restaurant_id: 6, price: 8, is_special?: 0)
MenuItem.create(item_id: 52, restaurant_id: 6, price: 12, is_special?: 1)
MenuItem.create(item_id: 48, restaurant_id: 6, price: 10, is_special?: 0)
MenuItem.create(item_id: 62, restaurant_id: 6, price: 8, is_special?: 0)
MenuItem.create(item_id: 63, restaurant_id: 6, price: 8, is_special?: 1)
MenuItem.create(item_id: 58, restaurant_id: 6, price: 4, is_special?: 0)
MenuItem.create(item_id: 3, restaurant_id: 7, price: 8, is_special?: 0)
MenuItem.create(item_id: 4, restaurant_id: 7, price: 8, is_special?: 1)
MenuItem.create(item_id: 17, restaurant_id: 7, price: 14, is_special?: 0)
MenuItem.create(item_id: 18, restaurant_id: 7, price: 13, is_special?: 0)
MenuItem.create(item_id: 20, restaurant_id: 7, price: 14, is_special?: 0)
MenuItem.create(item_id: 21, restaurant_id: 7, price: 16, is_special?: 0)
MenuItem.create(item_id: 38, restaurant_id: 7, price: 8, is_special?: 1)
MenuItem.create(item_id: 44, restaurant_id: 7, price: 8, is_special?: 0)
MenuItem.create(item_id: 51, restaurant_id: 7, price: 9, is_special?: 0)
MenuItem.create(item_id: 60, restaurant_id: 7, price: 12, is_special?: 1)
MenuItem.create(item_id: 3, restaurant_id: 8, price: 8, is_special?: 0)
MenuItem.create(item_id: 17, restaurant_id: 8, price: 14, is_special?: 0)
MenuItem.create(item_id: 19, restaurant_id: 8, price: 16, is_special?: 0)
MenuItem.create(item_id: 21, restaurant_id: 8, price: 15, is_special?: 1)
MenuItem.create(item_id: 38, restaurant_id: 8, price: 6, is_special?: 1)
MenuItem.create(item_id: 44, restaurant_id: 8, price: 8, is_special?: 0)
MenuItem.create(item_id: 51, restaurant_id: 8, price: 10, is_special?: 0)
MenuItem.create(item_id: 48, restaurant_id: 8, price: 8, is_special?: 0)
MenuItem.create(item_id: 58, restaurant_id: 8, price: 5, is_special?: 0)
MenuItem.create(item_id: 60, restaurant_id: 8, price: 12, is_special?: 1)
MenuItem.create(item_id: 67, restaurant_id: 8, price: 8, is_special?: 1)
MenuItem.create(item_id: 3, restaurant_id: 9, price: 8, is_special?: 1)
MenuItem.create(item_id: 4, restaurant_id: 9, price: 8, is_special?: 0)
MenuItem.create(item_id: 17, restaurant_id: 9, price: 12, is_special?: 0)
MenuItem.create(item_id: 18, restaurant_id: 9, price: 15, is_special?: 0)
MenuItem.create(item_id: 19, restaurant_id: 9, price: 16, is_special?: 0)
MenuItem.create(item_id: 20, restaurant_id: 9, price: 16, is_special?: 0)
MenuItem.create(item_id: 21, restaurant_id: 9, price: 18, is_special?: 1)
MenuItem.create(item_id: 38, restaurant_id: 9, price: 10, is_special?: 0)
MenuItem.create(item_id: 51, restaurant_id: 9, price: 10, is_special?: 0)
MenuItem.create(item_id: 58, restaurant_id: 9, price: 4, is_special?: 0)
MenuItem.create(item_id: 60, restaurant_id: 9, price: 13, is_special?: 1)
MenuItem.create(item_id: 2, restaurant_id: 10, price: 5, is_special?: 1)
MenuItem.create(item_id: 10, restaurant_id: 10, price: 7, is_special?: 0)
MenuItem.create(item_id: 32, restaurant_id: 10, price: 10, is_special?: 1)
MenuItem.create(item_id: 33, restaurant_id: 10, price: 12, is_special?: 1)
MenuItem.create(item_id: 34, restaurant_id: 10, price: 14, is_special?: 0)
MenuItem.create(item_id: 65, restaurant_id: 10, price: 6, is_special?: 0)
MenuItem.create(item_id: 58, restaurant_id: 10, price: 2, is_special?: 0)
MenuItem.create(item_id: 64, restaurant_id: 10, price: 2, is_special?: 0)
MenuItem.create(item_id: 68, restaurant_id: 10, price: 8, is_special?: 0)
MenuItem.create(item_id: 48, restaurant_id: 10, price: 5, is_special?: 0)
MenuItem.create(item_id: 49, restaurant_id: 10, price: 9, is_special?: 0)
MenuItem.create(item_id: 9, restaurant_id: 11, price: 18, is_special?: 0)
MenuItem.create(item_id: 10, restaurant_id: 11, price: 15, is_special?: 1)
MenuItem.create(item_id: 31, restaurant_id: 11, price: 25, is_special?: 0)
MenuItem.create(item_id: 32, restaurant_id: 11, price: 30, is_special?: 0)
MenuItem.create(item_id: 33, restaurant_id: 11, price: 33, is_special?: 1)
MenuItem.create(item_id: 34, restaurant_id: 11, price: 27, is_special?: 1)
MenuItem.create(item_id: 35, restaurant_id: 11, price: 36, is_special?: 1)
MenuItem.create(item_id: 54, restaurant_id: 11, price: 12, is_special?: 0)
MenuItem.create(item_id: 57, restaurant_id: 11, price: 14, is_special?: 0)
MenuItem.create(item_id: 68, restaurant_id: 11, price: 20, is_special?: 0)
MenuItem.create(item_id: 66, restaurant_id: 11, price: 11, is_special?: 0)

puts "Creating items"
Item.create(
  name: "onion rings",
  item_image_url:
    "https://media.istockphoto.com/photos/crispy-onion-rings-close-up-picture-id533423341?k=20&m=533423341&s=612x612&w=0&h=RY5tT5w3pKqzLAqRlNO-K7qFE9oPeRRmdA_lXbgxD74=	",
  category_id: 1
)
Item.create(
  name: "mozarella sticks",
  item_image_url:
    "https://media.istockphoto.com/photos/crispy-mozzarella-sticks-picture-id183804283?k=20&m=183804283&s=612x612&w=0&h=dzyLghcOjTnbPjAmmZTfz0r-t6AsCfzDd014I1vphPQ=	",
  category_id: 1
)
Item.create(
  name: "guacamole",
  item_image_url:
    "https://media.istockphoto.com/photos/guacamole-dip-picture-id529669952?k=20&m=529669952&s=612x612&w=0&h=X_GQfl7rUix4gh_1hReusebWPmN76ZQrL1LjMEhtxwQ=	",
  category_id: 1
)
Item.create(
  name: "queso",
  item_image_url:
    "https://media.istockphoto.com/photos/yellow-corn-chips-nachos-picture-id858212960?k=20&m=858212960&s=612x612&w=0&h=mR9xZ9_lOE_hpQUik9eM483hJr6Eim_KMVbrt5YTeW4=	",
  category_id: 1
)
Item.create(
  name: "samosa",
  item_image_url:
    "https://media.istockphoto.com/photos/vegetarian-samosas-with-chutney-picture-id181073533?k=20&m=181073533&s=612x612&w=0&h=kcJGt2TcQ4UYa0q7dhDtjnw2Q5WdeKeVplUgUZnEFOU=	",
  category_id: 1
)
Item.create(
  name: "pakora",
  item_image_url:
    "https://media.istockphoto.com/photos/palak-pakoras-fried-hot-and-tasty-picture-id1254198647?k=20&m=1254198647&s=612x612&w=0&h=K62vGdws017XM-a3d2qDuN-hmg968FP-ylvJv0S9e-s=	",
  category_id: 1
)
Item.create(
  name: "summer rolls",
  item_image_url:
    "https://media.istockphoto.com/photos/vietnamese-prawn-summer-rolls-picture-id1183540486?k=20&m=1183540486&s=612x612&w=0&h=v4hm3tluBRgfShSsqCAnGBPZv568fwfK0Db_7-7G1Us=	",
  category_id: 1
)
Item.create(
  name: "egg rolls",
  item_image_url:
    "https://media.istockphoto.com/photos/egg-rolls-or-spring-rolls-friedtraditional-chinese-thai-restaurant-picture-id1209457586?k=20&m=1209457586&s=612x612&w=0&h=Hm2QzPk30FyYdwVle6-w2HmYf5hWTcCaiNAhbW1beXc=	",
  category_id: 1
)
Item.create(
  name: "bruschetta",
  item_image_url:
    "https://media.istockphoto.com/photos/homemade-italian-bruschetta-appetizer-picture-id481765835?k=20&m=481765835&s=612x612&w=0&h=qb_jIq_sPzTsZpCCZJ4fCYrN1ryka1A1umWb83lKWJw=	",
  category_id: 1
)
Item.create(
  name: "olives",
  item_image_url:
    "https://media.istockphoto.com/photos/bowl-of-olives-picture-id74411680?k=20&m=74411680&s=612x612&w=0&h=NZXFZMDlCad8ymTy-yT5AoIwEIpRmE8K1alrvVqPrwA=	",
  category_id: 1
)
Item.create(
  name: "burrata",
  item_image_url:
    "https://media.istockphoto.com/photos/burrata-mit-heirloom-tomato-picture-id600405878?k=20&m=600405878&s=612x612&w=0&h=2fCNEeNsdhbbydBZ6L2uKBw9PnnP90oy-4HwdH8PyRA=	",
  category_id: 1
)
Item.create(
  name: "hot dog",
  item_image_url:
    "https://media.istockphoto.com/photos/barbecue-grilled-hot-dog-with-yellow-mustard-on-wooden-table-picture-id923577738?k=20&m=923577738&s=612x612&w=0&h=iM6xQIGI0rnxfF6v3BCja10GGNbhOG8O9ok_tRE6Zh8=	",
  category_id: 2
)
Item.create(
  name: "cheese burger",
  item_image_url:
    "https://media.istockphoto.com/photos/hamburger-with-cheese-and-french-fries-picture-id1188412964?k=20&m=1188412964&s=612x612&w=0&h=Ow-uMeygg90_1sxoCz-vh60SQDssmjP06uGXcZ2MzPY=	",
  category_id: 2
)
Item.create(
  name: "veggie burger	",
  item_image_url:
    "https://media.istockphoto.com/photos/gourmet-veggie-burger-with-red-skin-fries-picture-id534321264?b=1&k=20&m=534321264&s=612x612&w=0&h=eUdnZFaVogyS2HFAKwnO4QLYjJCIPOteC3KgiD4Fews=	",
  category_id: 2
)
Item.create(
  name: "chicken sandwich	",
  item_image_url:
    "https://media.istockphoto.com/photos/burger-with-fried-chicken-meat-isolated-on-white-background-picture-id1273265655?b=1&k=20&m=1273265655&s=612x612&w=0&h=Z8_HXRwTFz_WGwPb5P_rfLNdszme-UdsS37uf39jgRY=	",
  category_id: 2
)
Item.create(
  name: "BLT	",
  item_image_url:
    "https://media.istockphoto.com/photos/sandwich-picture-id154917899?k=20&m=154917899&s=612x612&w=0&h=GJO77MlIiF_xoti2t0ff2fa01Krc3zpOQbWZQmANOoc=	",
  category_id: 2
)
Item.create(
  name: "fajitas",
  item_image_url:
    "https://media.istockphoto.com/photos/beef-fajitas-picture-id525356135?k=20&m=525356135&s=612x612&w=0&h=trdajiqZFCKiaoOPHzK-K6afoolTneZxrAREdhyRdIs=	",
  category_id: 2
)
Item.create(
  name: "burrito bowl",
  item_image_url:
    "https://media.istockphoto.com/photos/homemade-healthy-chicken-burrito-bowl-picture-id1300212146?k=20&m=1300212146&s=612x612&w=0&h=X4AE_YihXEkRE5MfR3yTq4gl1yTuaZmXakQ_D54vEIo=	",
  category_id: 2
)
Item.create(
  name: "beef burrito",
  item_image_url:
    "https://media.istockphoto.com/photos/mexican-rice-and-chorizo-sausage-wrap-picture-id1313361282?k=20&m=1313361282&s=612x612&w=0&h=TEt2xdGkFu7jXn3l8pmg743NSQujZuhT14B0MR_3B1o=	",
  category_id: 2
)
Item.create(
  name: "chicken quesadilla",
  item_image_url:
    "https://media.istockphoto.com/photos/grilled-chicken-quesadilla-picture-id155282105?k=20&m=155282105&s=612x612&w=0&h=-S4TyWMikKC6Ls-oQQ2ncaYNOpq84ECNAc_4A37aamo=	",
  category_id: 2
)
Item.create(
  name: "fish taco",
  item_image_url:
    "https://media.istockphoto.com/photos/close-up-of-fish-tacos-on-a-plate-picture-id155277469?k=20&m=155277469&s=612x612&w=0&h=toJx5WMY7KZcfOsxfLJGWcU-a5-hDoW0jIzQCuNC99M=	",
  category_id: 2
)
Item.create(
  name: "chicken tikka masala",
  item_image_url:
    "https://media.istockphoto.com/photos/traditional-indian-dish-chicken-tikka-masala-with-spicy-curry-meat-in-picture-id1093661590?k=20&m=1093661590&s=612x612&w=0&h=9Pz3K8PAIu-SolnG6Jwt78Nx3_HG_RYxVShvBIT2iNc=	",
  category_id: 2
)
Item.create(
  name: "chana masala",
  item_image_url:
    "https://media.istockphoto.com/photos/spicy-channa-masala-with-chickpeas-picture-id497509280?k=20&m=497509280&s=612x612&w=0&h=aSe-NlkzhF55LNu0a4OHC4x4aw1EkbvhA7IQLWc9row=	",
  category_id: 2
)
Item.create(
  name: "saag paneer",
  item_image_url:
    "https://media.istockphoto.com/photos/palak-paneer-at-grey-concrete-background-picture-id1166167732?k=20&m=1166167732&s=612x612&w=0&h=aNiozs4D62EPXWIrry5ADtXxZqwMtx5bo67CbUs72QM=	",
  category_id: 2
)
Item.create(
  name: "lamb vindaloo",
  item_image_url:
    "https://media.istockphoto.com/photos/indian-food-chicken-vindaloo-curry-over-basmati-rice-picture-id1165894028?k=20&m=1165894028&s=612x612&w=0&h=yUJDMGXqnq1SUQjZr6_6Yr_ZP8wJBqeRhB85n0A6EmA=	",
  category_id: 2
)
Item.create(
  name: "pad thai",
  item_image_url:
    "https://media.istockphoto.com/photos/pad-thai-picture-id510163478?k=20&m=510163478&s=612x612&w=0&h=38sl3q02yxAqJWLSfm3Tve1cs9E8z3bt0BMfQwCwPtk=	",
  category_id: 2
)
Item.create(
  name: "pad see ew",
  item_image_url:
    "https://media.istockphoto.com/photos/pad-see-ew-plate-picture-id1327025495?k=20&m=1327025495&s=612x612&w=0&h=4WSSNQIkWEWiM350mjiPeOUvM7bPm1_t0vEyAidbIq4=	",
  category_id: 2
)
Item.create(
  name: "tom yum",
  item_image_url:
    "https://media.istockphoto.com/photos/shrimp-soup-or-tom-yam-goongtraditional-food-picture-id914137338?k=20&m=914137338&s=612x612&w=0&h=urAwYk1sWP4LOdcla4uvpx1SH9kuEwcxY7iatQRjY9U=	",
  category_id: 2
)
Item.create(
  name: "tandoori chicken",
  item_image_url:
    "https://media.istockphoto.com/photos/chicken-tikka-indian-food-recipe-picture-id922784238?k=20&m=922784238&s=612x612&w=0&h=dPUylr5bUWzEyihxf8bbAGYc3lgq15cvE3syRJ5ULjo=	",
  category_id: 2
)
Item.create(
  name: "shrimp curry",
  item_image_url:
    "https://media.istockphoto.com/photos/shrimps-curry-with-rice-on-plate-horizontal-view-from-above-picture-id479660444?k=20&m=479660444&s=612x612&w=0&h=2bjHEerPA_eEjRtZlF6w4IbWMebNXpZQiV52mYtJHBM=	",
  category_id: 2
)
Item.create(
  name: "fettucine alfredo",
  item_image_url:
    "https://media.istockphoto.com/photos/homemade-italian-fettuccine-pasta-with-mushrooms-and-cream-sauce-picture-id1161197982?k=20&m=1161197982&s=612x612&w=0&h=C90rcm8qLO3nWWims7TaQ474Fvyu5bS567EXDkS9U9g=	",
  category_id: 2
)
Item.create(
  name: "spaghetti and meatballs",
  item_image_url:
    "https://media.istockphoto.com/photos/spaghetti-and-meatballs-picture-id155429377?k=20&m=155429377&s=612x612&w=0&h=vPpEHFREmzYvsv681T6O4WBm8iF7CLwWPLmw-DYD8YM=	",
  category_id: 2
)
Item.create(
  name: "Pesto penne",
  item_image_url:
    "https://media.istockphoto.com/photos/tasty-appetizing-pasta-with-pesto-sauce-picture-id1161980815?k=20&m=1161980815&s=612x612&w=0&h=Z8VI8GwqOegCyyvwuv6dMoH0g2sCYVS_JjmMTcVKXZw=	",
  category_id: 2
)
Item.create(
  name: "ravioli",
  item_image_url:
    "https://media.istockphoto.com/photos/homemade-fried-ravioli-with-marinara-sauce-picture-id487882951?k=20&m=487882951&s=612x612&w=0&h=PN1BAJjsBpkuza6dPqS5H9JaGKTJNsyi8gxF65D6cS0=	",
  category_id: 2
)
Item.create(
  name: "lasanga",
  item_image_url:
    "https://media.istockphoto.com/photos/eggplant-lasagna-with-cheese-and-tomato-sauce-picture-id931130552?k=20&m=931130552&s=612x612&w=0&h=S6ltkrY5BxrvwhIX13otcq34Xmdx2RGUocwcqSLiDG4=	",
  category_id: 2
)
Item.create(
  name: "fries",
  item_image_url:
    "https://media.istockphoto.com/photos/basket-of-famous-fast-food-french-fries-picture-id618214356?k=20&m=618214356&s=612x612&w=0&h=nhxDfsZapV1XgBB7gDPDhpQEvIpjYUAWvab13vqUve8=	",
  category_id: 3
)
Item.create(
  name: "house salad",
  item_image_url:
    "https://media.istockphoto.com/photos/big-bowl-of-salad-picture-id506600863?k=20&m=506600863&s=612x612&w=0&h=rVOPc4Y4CNyc90llbjWVfUUZiN7syAXf7k15sLr3RjE=	",
  category_id: 3
)
Item.create(
  name: "mexican rice",
  item_image_url:
    "https://media.istockphoto.com/photos/mexican-red-rice-plate-picture-id693824358?k=20&m=693824358&s=612x612&w=0&h=e3I6dD-kLqi5SfmbV1qERpfQTBDrvEFDvjRYjEY4GfU=	",
  category_id: 3
)
Item.create(
  name: "naan",
  item_image_url:
    "https://media.istockphoto.com/photos/indian-naan-bread-with-garlic-butter-on-wooden-table-picture-id1143530040?k=20&m=1143530040&s=612x612&w=0&h=JVVJ5kD_7-k2wiAnmxxNjnpqF_wJ4oWKUUmBetD_FV8=	",
  category_id: 3
)
Item.create(
  name: "dal",
  item_image_url:
    "https://media.istockphoto.com/photos/indian-dal-traditional-indian-soup-lentils-indian-dhal-spicy-curry-in-picture-id1130228942?k=20&m=1130228942&s=612x612&w=0&h=-2R7oo0QPMFxCewert99fFDd12I-PhVzETWR3MvHfcc=	",
  category_id: 3
)
Item.create(
  name: "parantha",
  item_image_url:
    "https://media.istockphoto.com/photos/stuffed-paratha-picture-id1205762531?k=20&m=1205762531&s=612x612&w=0&h=bjZJqxjNXAns4OCb2kS69PZRgxfeDtFFhTkomPPsfSI=	",
  category_id: 3
)
Item.create(
  name: "rice",
  item_image_url:
    "https://media.istockphoto.com/photos/cooked-rice-picture-id491090528?k=20&m=491090528&s=612x612&w=0&h=oKwbkVWhU_17ZBhB4v3SKOTGT85nmi2YS7KbPPa-x8o=	",
  category_id: 3
)
Item.create(
  name: "roasted vegetables",
  item_image_url:
    "https://media.istockphoto.com/photos/roasted-fruits-and-vegetables-picture-id506824326?k=20&m=506824326&s=612x612&w=0&h=IFLenLKNbzoYNthy2bD_NvLOXLh9YreTU8u3SCPmgUE=	",
  category_id: 3
)
Item.create(
  name: "beans",
  item_image_url:
    "https://media.istockphoto.com/photos/refried-beans-picture-id1198243185?k=20&m=1198243185&s=612x612&w=0&h=Kv6mCxZ5Tq04s2bhJLzffoAAZYcjyZsNukmyfU6ucVo=	",
  category_id: 3
)
Item.create(
  name: "polenta",
  item_image_url:
    "https://media.istockphoto.com/photos/polenta-with-mushrooms-tomatoes-and-thyme-on-the-table-picture-id503220305?k=20&m=503220305&s=612x612&w=0&h=vDBDNJtS4zqfYXB2Uf7FQJvdcI6nLiq1BIAGohoOqVU=	",
  category_id: 3
)
Item.create(
  name: "broccolini",
  item_image_url:
    "https://media.istockphoto.com/photos/roasted-broccolini-on-the-plate-picture-id1254028679?k=20&m=1254028679&s=612x612&w=0&h=y7SGH-Klo3Y9VhWMqdWPGiqo6r4ywTSS82x_27-bsLc=	",
  category_id: 3
)
Item.create(
  name: "chocolate cake",
  item_image_url:
    "https://media.istockphoto.com/photos/sweet-homemade-dark-chocolate-layer-cake-picture-id904337728?k=20&m=904337728&s=612x612&w=0&h=DWX0TWZPMiee-BYI6NV_S3fGG8Rg9UIxtB7r2RXOX3U=	",
  category_id: 4
)
Item.create(
  name: "ice cream",
  item_image_url:
    "https://media.istockphoto.com/photos/ice-cream-picture-id170940477?k=20&m=170940477&s=612x612&w=0&h=gCNV8uXVOuJy9bRQlkUnodprArHv7G7C3TfMDXmX5pY=	",
  category_id: 4
)
Item.create(
  name: "cheesecake",
  item_image_url:
    "https://media.istockphoto.com/photos/cheesecake-with-caramel-sauce-picture-id1225491381?k=20&m=1225491381&s=612x612&w=0&h=lolIgOFlxIF4r7c_Mf3LiDeL14yhLJ08AoLgLM5ejt4=	",
  category_id: 4
)
Item.create(
  name: "chocolate chip cookie",
  item_image_url:
    "https://media.istockphoto.com/photos/butter-toffee-crunch-chocolate-chip-cookies-picture-id1182279813?k=20&m=1182279813&s=612x612&w=0&h=o9tVs5PK_P8yMUeGd2eiL2e008DR2V5EKuUtuhAnTv8=	",
  category_id: 4
)
Item.create(
  name: "churros",
  item_image_url:
    "https://media.istockphoto.com/photos/churros-with-cinnamon-sugar-and-chocolate-sauce-picture-id939973796?k=20&m=939973796&s=612x612&w=0&h=_6ki8tbR-Ui23cXXCL_zlSjkGg1_FmUuPsvNtmoKADw=	",
  category_id: 4
)
Item.create(
  name: "mango sticky rice",
  item_image_url:
    "https://media.istockphoto.com/photos/thai-style-tropical-dessert-glutinous-rice-eat-with-mangoes-picture-id507424248?k=20&m=507424248&s=612x612&w=0&h=aSrCsaifwECOoNjxuidFBTo4xfpKAI6mJPtlGH3DrIE=	",
  category_id: 4
)
Item.create(
  name: "gulab jamin",
  item_image_url:
    "https://media.istockphoto.com/photos/gulab-jamun-picture-id163064596?k=20&m=163064596&s=612x612&w=0&h=125wKcpIrJChYRaEcn5xXP14k2iU01RyIO_bT2N8r8w=	",
  category_id: 4
)
Item.create(
  name: "tiramisu",
  item_image_url:
    "https://media.istockphoto.com/photos/tiramisu-cake-with-mint-picture-id1248489319?k=20&m=1248489319&s=612x612&w=0&h=iOdWze_FjhSrIUfUIFCL0FhkwPwiCrp9HLsb7PzLsrQ=	",
  category_id: 4
)
Item.create(
  name: "gelato",
  item_image_url:
    "https://media.istockphoto.com/photos/italian-gelato-of-various-flavors-in-ice-cream-parlor-picture-id1151706409?k=20&m=1151706409&s=612x612&w=0&h=BBIbObbC-ILuHxHWMFp8butWOm0KeGclXCtcdVwA744=	",
  category_id: 4
)
Item.create(
  name: "apple pie ",
  item_image_url:
    "https://media.istockphoto.com/photos/homemade-organic-apple-pie-dessert-picture-id450752471?k=20&m=450752471&s=612x612&w=0&h=YmZui4JR-Av-w9glkvg8RJ2bhJL-OZMg3bCB9zDPAaI=	",
  category_id: 4
)
Item.create(
  name: "chocolate mousse",
  item_image_url:
    "https://media.istockphoto.com/photos/homemade-dark-chocolate-mousse-picture-id535412577?k=20&m=535412577&s=612x612&w=0&h=up-vxrovaD6h2-GEemfMhvvNJGhzsG0BX85iJsJ5o6E=	",
  category_id: 4
)
Item.create(
  name: "coca cola",
  item_image_url:
    "https://media.istockphoto.com/photos/pour-soft-drink-in-glass-with-ice-splash-on-dark-background-picture-id1062831310?k=20&m=1062831310&s=612x612&w=0&h=kvadNOzqCnDYUH83ffviQie1G7E62kBzvZZ8CmZuoxU=	",
  category_id: 5
)
Item.create(
  name: "ginger beer",
  item_image_url:
    "https://media.istockphoto.com/photos/refreshing-golden-ginger-beer-picture-id477314878?k=20&m=477314878&s=612x612&w=0&h=TLqE4f5SbdB_jFa22sT_A55tN7S2m6d1szgMXyR6BYI=	",
  category_id: 5
)
Item.create(
  name: "margarita",
  item_image_url:
    "https://media.istockphoto.com/photos/tequila-and-lime-margaritas-picture-id1031534852?k=20&m=1031534852&s=612x612&w=0&h=5qwGMj5gPZWK7Kn1O46eOQNcPjXTLEAvQ5UvyzYTbOw=	",
  category_id: 5
)
Item.create(
  name: "chai",
  item_image_url:
    "https://media.istockphoto.com/photos/homemade-chai-tea-latte-with-anise-and-cinnamon-stick-in-glass-mug-picture-id1050716504?k=20&m=1050716504&s=612x612&w=0&h=jSCfUHO-i2H_65OARolqRajyqASU9W_zl3lKRrLT3i0=	",
  category_id: 5
)
Item.create(
  name: "mango lassi",
  item_image_url:
    "https://media.istockphoto.com/photos/homemade-sweet-indian-mango-lassi-picture-id1175588974?k=20&m=1175588974&s=612x612&w=0&h=9rpdSNDvMgf7RvNaDLMWmlZjA23aGYAOrixAdNcRh-k=	",
  category_id: 5
)
Item.create(
  name: "lychee smoothie",
  item_image_url:
    "https://media.istockphoto.com/photos/sweet-lychee-juice-on-the-gray-background-closeup-of-fresh-lychee-picture-id1250665517?k=20&m=1250665517&s=612x612&w=0&h=X8PsIUyOTXMboue9DH0bYlOBBphEB8E68hmzk8DH-OA=	",
  category_id: 5
)
Item.create(
  name: "7up",
  item_image_url:
    "https://media.istockphoto.com/photos/can-of-7-up-drink-on-ice-isolated-on-white-picture-id537699703?k=20&m=537699703&s=612x612&w=0&h=TNbu1uYD9CAKVm-VTI74MdzD_y3oB8cks3Xp1DvKGrI=	",
  category_id: 5
)
Item.create(
  name: "iced tea",
  item_image_url:
    "https://media.istockphoto.com/photos/mason-jar-glass-of-iced-tea-with-straw-isolated-on-white-picture-id690507630?k=20&m=690507630&s=612x612&w=0&h=T4f9VCP_jPhyVySrhxq2v1saBJ8TeD4idHftdlwL9p0=",
  category_id: 5
)
Item.create(
  name: "drip coffee",
  item_image_url:
    "https://media.istockphoto.com/photos/close-up-of-steaming-cup-of-coffee-or-tea-on-vintage-table-early-on-picture-id1137365972?k=20&m=1137365972&s=612x612&w=0&h=_x7JXTfZoxVC9JCh5n2YqEzM7c5l171keV2qeOAcuYs=	",
  category_id: 5
)
Item.create(
  name: "horchata",
  item_image_url:
    "https://media.istockphoto.com/photos/traditional-mexican-drink-horchata-picture-id668030848?k=20&m=668030848&s=612x612&w=0&h=eymeyKOoPkJu9dUDK9kdxPNn6f3kXrFntWto5_I6ldE=	",
  category_id: 5
)
Item.create(
  name: "red wine",
  item_image_url:
    "https://dydza6t6xitx6.cloudfront.net/ci-craggy-range-sophia-4e2f43fe55cf7be3.jpeg	",
  category_id: 5
)

puts "✅ Done seeding!"
