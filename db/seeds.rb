# <----- Seeding START -----> #
puts '🗑️ Dropping existing tables...Items, Purchases, Stores, Activities'
Item.destroy_all
Purchase.destroy_all
Store.destroy_all
Activity.destroy_all
# <----- Seeding Items -----> #
puts '🌱 Seeding records...'
Item.create(
  item_name: 'Athletic Shorts',
  item_image_url:
    'https://m.media-amazon.com/images/I/81r8m9RvLrL._AC_UX679_.jpg'
)
Item.create(
  item_name: 'Backpack',
  item_image_url:
    'https://m.media-amazon.com/images/I/81nlnnOKiLL._AC_SL1500_.jpg'
)
Item.create(
  item_name: 'Basketball',
  item_image_url:
    'https://m.media-amazon.com/images/I/71XAg43zAEL._AC_SL1000_.jpg'
)
Item.create(
  item_name: 'Basketball shoes',
  item_image_url:
    'https://m.media-amazon.com/images/I/51k2zH5U6TL._AC_UX500_.jpg'
)
Item.create(
  item_name: 'Bike',
  item_image_url:
    'https://m.media-amazon.com/images/I/81wOQ1MaQ0L._AC_SL1500_.jpg'
)
Item.create(
  item_name: 'Bike Helmet',
  item_image_url:
    'https://m.media-amazon.com/images/I/51JQM0U7l0L._AC_SL1001_.jpg'
)
Item.create(
  item_name: 'Cleats',
  item_image_url:
    'https://m.media-amazon.com/images/I/71WEVjm3aWL._AC_UX500_.jpg'
)
Item.create(
  item_name: 'Frisbee',
  item_image_url: 'https://m.media-amazon.com/images/I/6106gCy09ZL._AC_.jpg'
)
Item.create(
  item_name: 'Gloves',
  item_image_url:
    'https://m.media-amazon.com/images/I/81j0ckFZcEL._AC_UX679_.jpg'
)
Item.create(
  item_name: 'Hat',
  item_image_url:
    'https://m.media-amazon.com/images/I/71tdDkcj-7L._AC_UX679_.jpg'
)
Item.create(
  item_name: 'Hiking Boots',
  item_image_url:
    'https://m.media-amazon.com/images/I/81b6sZ+xAuL._AC_SX395_SY395_.jpg'
)
Item.create(
  item_name: 'Jacket',
  item_image_url:
    'https://m.media-amazon.com/images/I/51hC6aVni4L._AC_UX679_.jpg'
)
Item.create(
  item_name: 'Running Shoes',
  item_image_url:
    'https://m.media-amazon.com/images/I/610DKH06nTL._AC_UY500_.jpg'
)
Item.create(
  item_name: 'Snowboard',
  item_image_url:
    'https://m.media-amazon.com/images/I/71IJSP7S8WL.__AC_SX300_SY300_QL70_FMwebp_.jpg'
)
Item.create(
  item_name: 'Snowboard Helmet',
  item_image_url:
    'https://m.media-amazon.com/images/I/51JQM0U7l0L._AC_SL1001_.jpg'
)
Item.create(
  item_name: 'Socks',
  item_image_url:
    'https://m.media-amazon.com/images/I/81VdUJHmd0L._AC_UX679_.jpg'
)
Item.create(
  item_name: 'Sunglasses',
  item_image_url:
    'https://m.media-amazon.com/images/I/51kecFB7DHL._AC_UX679_.jpg'
)
Item.create(
  item_name: 'Tent',
  item_image_url:
    'https://m.media-amazon.com/images/I/71HmL4kzLrL._AC_SL1500_.jpg'
)
Item.create(
  item_name: 'Water Bottle',
  item_image_url:
    'https://m.media-amazon.com/images/I/61PgN9R+7kS._AC_SY300_SX300_.jpg'
)
puts '👟 Items Seeding complete!'
# <----- Seeding Activities -----> #
Activity.create(
  activity_name: 'Hiking',
  item_first: 'Hiking Boots',
  item_second: 'Sunglasses',
  item_third: 'Water Bottle'
)
Activity.create(
  activity_name: 'Biking',
  item_first: 'Bike',
  item_second: 'Sunglasses',
  item_third: 'Helmet'
)
Activity.create(
  activity_name: 'Mountain Climbing',
  item_first: 'Hiking Boots',
  item_second: 'Tent',
  item_third: 'Backpack'
)
puts '🏃 Activity Seeding complete!'
# <----- Seeding Stores -----> #
Store.create(
  store_name: 'Wal-Mart',
  address: '123 Main Street',
  item_1: Item.all.sample.item_name,
  item_2: Item.all.sample.item_name,
  item_3: Item.all.sample.item_name,
  item_4: Item.all.sample.item_name,
  item_1_cost: rand(10..100),
  item_2_cost: rand(10..100),
  item_3_cost: rand(10..100),
  item_4_cost: rand(10..100)
)
Store.create(
  store_name: 'Schills',
  address: '1 South Ave',
  item_1: Item.all.sample.item_name,
  item_2: Item.all.sample.item_name,
  item_3: Item.all.sample.item_name,
  item_4: Item.all.sample.item_name,
  item_1_cost: rand(10..100),
  item_2_cost: rand(10..100),
  item_3_cost: rand(10..100),
  item_4_cost: rand(10..100)
)
Store.create(
  store_name: 'Target',
  address: '42 Answer Way',
  item_1: Item.all.sample.item_name,
  item_2: Item.all.sample.item_name,
  item_3: Item.all.sample.item_name,
  item_4: Item.all.sample.item_name,
  item_1_cost: rand(10..100),
  item_2_cost: rand(10..100),
  item_3_cost: rand(10..100),
  item_4_cost: rand(10..100)
)
puts '🏪 Store Seeding complete!'
# <----- Seeding END -----> #
puts '✅ Done seeding!'
