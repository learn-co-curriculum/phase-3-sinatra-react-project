## Endpoints

### Books
```js
GET '/books' => get all books
GET '/books/:id' => get book by id
POST '/books' => create a book
PATCH '/books/:id' => update a book
DELETE '/books/:id' => delete a book
GET '/authors/:id/books' => get all books by a specific author
```

### Author
```js
GET '/authors' => get all authors
GET '/authors/:id' => get a specific author
POST '/authors' => create an author
PATCH '/authors/:id' => update an author
DELETE '/authors/:id' => delete an author
```

### Book Readers

```js
POST '/readers_books' => create a readers_book
PATCH '/readers_books/:id' => update a readers_book
DELETE '/readers_books/:id' => delete a readers_book

```

### Readers
```js
GET '/readers' => get all readers
GET '/readers/:id' => get a specific reader
POST '/readers' => create a reader
PATCH '/readers/:id' => update a reader
DELETE '/readers/:id' => delete a reader
GET '/readers/:id/books' => get all books read by a specific reader
GET '/books/:id/readers' => get all readers who have read a specific book
```
