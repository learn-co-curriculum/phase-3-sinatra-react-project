puts "🌱 Seeding spices..."

# Seed your database here
all_reviews = ["This play is as relevant today as it was in 1959, and more relevant to American students than Shakespeare may ever be.", "I did not like this book at all. All the drug, booze, swearing was just too much for me to overlook. Perhaps there is an element of society that lives this kind of life, but I really didn't enjoy reading about it.",
"French girls farther is a museum custodian and the jewel now resides behind 13 locked doors like Russian dolls. Guess the girl and soldier meet up … could not take any more.", "Every story in this collection is a gem. ",
"Boring... ", "I dont need to feel ashamed for how Im not “woke enough” these days. I get enough of that on Twitter.", "I bought this because it was required reading for my English class.", 
"I enjoyed this novel very much because it rang true about life in general during this period and because it was so well written.", "This is a fantastic edition to own, and I'm glad to have it. 5 stars for the book.",
" I came to a conclusion that there's simply nothing else like it, and it tops my list."]

Book.create(title: "A Raisin in the Sun", author: "Lorraine Hansberry", likes: 0)
Book.create(title: "The Goldfinch", author: "Donna Tartt", likes: 0)
Book.create(title: "All the Light We Can Not See", author: "Anthony Doerr", likes: 0)
Book.create(title: "Welcome to the Monkey House", author: "Kurt Vonnegut", likes: 0)
Book.create(title: "Paradise Lost", author: "John Milton", likes: 0)
Book.create(title: "Bad Feminist", author: "Roxane Gay", likes: 0)
Book.create(title: "Tracks", author: "Louise Erdrich", likes: 0)
Book.create(title: "The Outsiders", author: "SE Hinton", likes: 0)
Book.create(title: "The Lord of the Rings", author: "JRR Tolkien", likes: 0)
Book.create(title: "And Then There Were None", author: "Agatha Christie", likes: 0)

Book.all.each do |book|
    Review.create(text: all_reviews.sample, book_id: book.id)
end



puts "✅ Done seeding!"