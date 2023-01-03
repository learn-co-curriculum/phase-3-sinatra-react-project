# <----- Seeding START -----> #
puts '🗑️ Dropping existing tables...Items, Purchases, Stores, Activities'
Item.destroy_all
Purchase.destroy_all
Store.destroy_all
Activity.destroy_all
# <----- Seeding Items -----> #
puts '🌱 Seeding records...'
Item.create(item_name: 'Athletic Shorts')
Item.create(item_name: 'Backpack')
Item.create(item_name: 'Basketball')
Item.create(item_name: 'Basketball shoes')
Item.create(item_name: 'Bike')
Item.create(item_name: 'Cleats')
Item.create(item_name: 'Frisbee')
Item.create(item_name: 'Gloves')
Item.create(item_name: 'Hat')
Item.create(item_name: 'Helmet')
Item.create(item_name: 'Hiking Boots')
Item.create(item_name: 'Jacket')
Item.create(item_name: 'Running Shoes')
Item.create(item_name: 'Snowboard')
Item.create(item_name: 'Socks')
Item.create(item_name: 'Sunglasses')
Item.create(item_name: 'Tent')
Item.create(item_name: 'Water Bottle')
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
Store.create(store_name: 'Wal-Mart')
Store.create(store_name: 'Schills')
Store.create(store_name: 'Target')
puts '🏪 Store Seeding complete!'
# <----- Seeding END -----> #
puts '✅ Done seeding!'
