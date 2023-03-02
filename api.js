// GET all users
export function getUsers() {
    return fetch('http://localhost:3000/users')
        .then(response => response.json())
}

// GET a specific user by ID
export function getUserById(id) {
    return fetch(`http://localhost:3000/users/${id}`)
        .then(response => {
            if (response.status === 404) {
                throw new Error('User not found')
            }
            return response.json()
        })
}

// CREATE a new user
export function createUser(name, imageUrl) {
    return fetch('http://localhost:3000/users', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ name, image_url: imageUrl })
    })
        .then(response => response.json())
}

// UPDATE an existing user by ID
export function updateUser(id, name, imageUrl) {
    return fetch(`http://localhost:3000/users/${id}`, {
        method: 'PATCH',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ name, image_url: imageUrl })
    })
        .then(response => {
            if (response.status === 404) {
                throw new Error('User not found')
            }
            return response.json()
        })
}

// DELETE a user by ID
export function deleteUser(id) {
    return fetch(`http://localhost:3000/users/${id}`, { method: 'DELETE' })
        .then(response => {
            if (response.status === 404) {
                throw new Error('User not found')
            }
        })
}

// GET all todos
export function getTodos() {
    return fetch('http://localhost:3000/todos')
        .then(response => response.json())
}

// GET one todo
export function getTodoById(id) {
    return fetch(`http://localhost:3000/todos/${id}`)
        .then(response => response.json())
}

// Get user todo
export function getUserTodos(id) {
    return fetch(`http://localhost:3000/todos/user/${id}`)
        .then(response => response.json())
}

// get by priority
export function getTodosByPriority(priority) {
    return fetch(`http://localhost:3000/todos/p/${priority}`)
        .then(response => response.json())
}

// get by title
export function getTodosByTitle(title) {
    return fetch(`http://localhost:3000/todos/t/${title}`)
        .then(response => response.json())
}

// create todo
export function createTodo(title, description, category, priority, userId) {
    return fetch('http://localhost:3000/todos', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            title,
            description,
            category,
            priority,
            user_id: userId
        })
    })
        .then(response => response.json())
}

// update todo
export function updateTodo(id, title, description, category, priority, userId) {
    return fetch(`http://localhost:3000/todos/${id}`, {
        method: 'PATCH',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            title,
            description,
            category,
            priority,
            user_id: userId
        })
    })
        .then(response => response.json())
}

// delete todo
export function deleteTodo(id) {
    return fetch(`http://localhost:3000/todos/${id}`, { method: 'DELETE' })
        .then(response => {
            if (response.status === 404) {
                throw new Error('Todo not found')
            }
        })
}
