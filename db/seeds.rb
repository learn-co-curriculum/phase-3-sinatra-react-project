puts "🌱 Seeding spices..."

# Seed your database here
author1 = Author.create(name: "Mark Manson")
author2 = Author.create(name: "James Clear")
author3 = Author.create(name: "Kiersten White")
author4 = Author.create(name: "Diana Hamilton")
author5 = Author.create(name: "Stephen King")
author6 = Author.create(name: "Robert Elis")
author7 = Author.create(name: "Karj Smith")
author8 = Author.create(name: "Oliver Boyd")
author9 = Author.create(name: "A. J. Meadows")

book1 = Book.create( title: "The Subtle Art Of Not Giving A Fuck",author: author1,summary: "A counterintuitive Approach To Living A Good Life.",category: "Non-Fiction",image: "https://covers.openlibrary.org/b/id/8231990-M.jpg",price: 1500,)
book2 = Book.create( title: "Atomic Habits",author: author2,summary: "An Easy And Proven Wyto Build Good Habits and Break ad Ones. ",category: "Non-Fiction",image: "https://covers.openlibrary.org/b/id/12539702-M.jpg", price: 2000)
book3 = Book.create( title: "ENDLESSLY",author: author1,summary: "Sixteen-year-old Evie is forced to face the truth about her supernatural past.",category: "Thiller",image: "https://covers.openlibrary.org/w/id/8787911-M.jpg",price: 2500)
book4 = Book.create( title: "A HUSBANDS PRICE",author: author4,summary: "Two Loves Birds",category: "Romance",image: "https://covers.openlibrary.org/w/id/2407332-M.jpg",price: 1800)
book5 = Book.create( title: "IT",author: author3,summary: "Scary",category: "Thiller",image: "https://covers.openlibrary.org/w/id/8569284-M.jpg",price: 1300)
book6 = Book.create( title: "CALCULUS",author: author5,summary: "Two Loves Birds",category: "Textbook",image: "https://covers.openlibrary.org/w/id/19874-M.jpg",price: 2400)
book7 = Book.create( title: "NATURE MATHEMATICS",author: author7,summary: "Mathematics",category: "Textbook",image: "https://covers.openlibrary.org/w/id/364010-M.jpg",price: 2100)
book8 = Book.create( title: "DICTIONARY OF STATISTICS TERMS",author: author1,summary: "Statistics terms",category: "Textbook",image: "https://covers.openlibrary.org/w/id/4522317-M.jpg",price: 1700)
book9 = Book.create(title: "It Ends With Us",author: author5,summary: "Lily has always had it easy",category: "Romance",image: "https://covers.openlibrary.org/b/id/10473609-M.jpg",price: 2100)
book10 = Book.create( title: "Science and controversey", author: author9,summary: "a biography of Sir Norman Lockyer",category: "TextBook",image: "https://covers.openlibrary.org/w/id/8919212-M.jpg",price: 1000)
puts "✅ Done seeding!"
