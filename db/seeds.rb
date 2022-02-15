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
    inventory: 100,
    retail_price: 50.99,
    image: "https://cdn-image02.casetify.com/usr/16571/16546571/~v30/13084976x2_iphone13-pro-max_16003282.png.1000x1000-w.m80.jpg"
})

p2 = Product.create({
    name: "You are exactly where you need to be",
    inventory: 100,
    retail_price: 45.99,
    image: "https://cdn-image02.casetify.com/usr/5435/19535435/~v23/19190000x2_iphone13-pro-max_16003282.png.1000x1000-w.m80.jpg"
})

p3 = Product.create({
    name: "Clouds",
    inventory: 100,
    retail_price: 40.99,
    image: "https://cdn-image02.casetify.com/usr/16571/16546571/~v58/12332179x2_iphone13-pro-max_16003471.png.1000x1000-w.m80.jpg"
})

p4 = Product.create({
    name: "White Butterfly",
    inventory: 100,
    retail_price: 50.99,
    image: "https://cdn-image02.casetify.com/usr/24035/1524035/~v91/3165656x2_iphone13-pro-max_16003471.png.1000x1000-w.m80.jpg"
})

p5 = Product.create({
    name: "Dragons",
    inventory: 100,
    retail_price: 45.99,
    image: "https://cdn-image02.casetify.com/usr/5386/1655386/~v68/9017505x2_iphone13-pro-max_16003331.png.1000x1000-w.m80.jpg"
})

p6 = Product.create({
    name: "Scratch N Sniff Vintage Smelly Stickers",
    inventory: 100,
    retail_price: 40.99,
    image: "https://cdn-image02.casetify.com/usr/17492/1337492/~v23/17145165x2_iphone13-pro-max_16003300.png.1000x1000-w.m80.jpg"
})

# Collections
cl1 = Collection.create({
    category_id: c1.id,
    product_id: p1.id
})

cl2 = Collection.create({
    category_id: c1.id,
    product_id: p4.id
})

cl3 = Collection.create({
    category_id: c2.id,
    product_id: p2.id
})

cl4 = Collection.create({
    category_id: c2.id,
    product_id: p5.id
})

cl5 = Collection.create({
    category_id: c3.id,
    product_id: p3.id
})

cl6 = Collection.create({
    category_id: c3.id,
    product_id: p6.id
})

#Suppliers
supplier1 = Supplier.create({
    name: "Alliance Plastic Co",
    address: "146 8th Ave, Brooklyn, NY 11235",
    phone: "123-456-789"
})

supplier2 = Supplier.create({
    name: "Manu Cases Co",
    address: "258 New Hype Park Rd., Garden City, NY 11559",
    phone: "789-456-123"
})

# Purchases
purchase1 = Purchase.create({
    quantity: 100, 
    supplier_price: 25.99,
    product_id: p1.id,
    supplier_id: supplier1.id
})

purchase2 = Purchase.create({
    quantity: 100, 
    supplier_price: 25.99,
    product_id: p2.id,
    supplier_id: supplier2.id
})

purchase3 = Purchase.create({
    quantity: 100, 
    supplier_price: 25.99,
    product_id: p3.id,
    supplier_id: supplier1.id
})

purchase4 = Purchase.create({
    quantity: 100, 
    supplier_price: 25.99,
    product_id: p4.id,
    supplier_id: supplier2.id
})

purchase5 = Purchase.create({
    quantity: 100, 
    supplier_price: 25.99,
    product_id: p5.id,
    supplier_id: supplier1.id
})

purchase6 = Purchase.create({
    quantity: 100, 
    supplier_price: 25.99,
    product_id: p6.id,
    supplier_id: supplier2.id
})

puts "✅ Done seeding!"
