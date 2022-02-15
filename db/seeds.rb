puts "🌱 Seeding spices..."

# Seed your database here

# Categories
c1 = Category.create({
    name: "iPhone 13 Pro Max",
    description: "Cases for iPhone 13 Pro Max"
})

c2 = Category.create({
    name: "iPhone 13 Pro",
    description: "Cases for iPhone 13 Pro"
})

c3 = Category.create({
    name: "iPhone 13",
    description: "Cases for iPhone 13"
})

# Products
p1 = Product.create({
    name: "Acid Smiles - Neon Green",
    quantity: 100,
    supply_price: 20.00,
    retail_price: 50.00,
    category_id: c1.id,
    image: "https://cdn-image02.casetify.com/usr/16571/16546571/~v30/13084976x2_iphone13-pro-max_16003282.png.1000x1000-w.m80.jpg"
})

p2 = Product.create({
    name: "You are exactly where you need to be",
    quantity: 100,
    supply_price: 15.00,
    retail_price: 45.00,
    category_id: c2.id,
    image: "https://cdn-image02.casetify.com/usr/5435/19535435/~v23/19190000x2_iphone13-pro-max_16003282.png.1000x1000-w.m80.jpg"
})

p3 = Product.create({
    name: "Clouds",
    quantity: 100,
    supply_price: 10.00,
    retail_price: 40.00,
    category_id: c3.id,
    image: "https://cdn-image02.casetify.com/usr/16571/16546571/~v58/12332179x2_iphone13-pro-max_16003471.png.1000x1000-w.m80.jpg"
})

p4 = Product.create({
    name: "White Butterfly",
    quantity: 100,
    supply_price: 20.00,
    retail_price: 50.00,
    category_id: c1.id,
    image: "https://cdn-image02.casetify.com/usr/24035/1524035/~v91/3165656x2_iphone13-pro-max_16003471.png.1000x1000-w.m80.jpg"
})

p5 = Product.create({
    name: "Dragons",
    quantity: 100,
    supply_price: 15.00,
    retail_price: 45.00,
    category_id: c2.id,
    image: "https://cdn-image02.casetify.com/usr/5386/1655386/~v68/9017505x2_iphone13-pro-max_16003331.png.1000x1000-w.m80.jpg"
})

p6 = Product.create({
    name: "Scratch N Sniff Vintage Smelly Stickers",
    quantity: 100,
    supply_price: 10.00,
    retail_price: 40.00,
    category_id: c3.id,
    image: "https://cdn-image02.casetify.com/usr/17492/1337492/~v23/17145165x2_iphone13-pro-max_16003300.png.1000x1000-w.m80.jpg"
})

s1 = Supplier.create({
    supplier_name: "Supplier 1",
    address: "123 Main Street, Brooklyn, NY 11234",
    phone: "123-456-789"
})

s2 = Supplier.create({
    supplier_name: "Supplier 2",
    address: "456 8th Ave, Brooklyn, NY 11235",
    phone: "789-456-123"
})

ps1 = ProductSupplier.create({
    product_id: p1.id,
    supplier_id: s1.id
})

ps2 = ProductSupplier.create({
    product_id: p2.id,
    supplier_id: s1.id
})

ps3 = ProductSupplier.create({
    product_id: p3.id,
    supplier_id: s1.id
})

ps4 = ProductSupplier.create({
    product_id: p1.id,
    supplier_id: s2.id
})

ps5 = ProductSupplier.create({
    product_id: p2.id,
    supplier_id: s2.id
})

ps6 = ProductSupplier.create({
    product_id: p3.id,
    supplier_id: s2.id
})

puts "✅ Done seeding!"
