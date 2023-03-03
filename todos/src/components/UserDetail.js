import React, { useState, useEffect } from 'react';
import axios from 'axios';
import 'semantic-ui-css/semantic.min.css';
import { Card, Button, Header, Icon, Modal, Form } from 'semantic-ui-react';
import { useParams } from 'react-router-dom';

const UserDetail = ({ userId }) => {
  const [user, setUser] = useState({});
  const [todos, setTodos] = useState([]);
  const [editModalOpen, setEditModalOpen] = useState(false);
  const [editingTodo, setEditingTodo] = useState({});
  const { id } = useParams()

  useEffect(() => {
    // Get user and their todos from the API
    axios.get(`http://localhost:4000/users/${id}`)
      .then(res => {
        setUser(res.data);
        return axios.get(`http://localhost:4000/todos/user/${id}`);
      })
      .then(res => {
        setTodos(res.data);
      })
      .catch(err => {
        console.log(err);
      });
  }, [id]);

  const handleDelete = (todoId) => {
    // Delete the todo from the API
    axios.delete(`http://localhost:4000/todos/${todoId}`)
      .then(res => {
        console.log(res.data.message);
        // Update the todos state to remove the deleted todo
        setTodos(todos.filter(todo => todo.id !== todoId));
      })
      .catch(err => {
        console.log(err);
      });
  };

  const handleEditModalOpen = (todo) => {
    // Set the editingTodo state to the selected todo and open the edit modal
    setEditingTodo(todo);
    setEditModalOpen(true);
  };

  const handleEditModalClose = () => {
    // Clear the editingTodo state and close the edit modal
    setEditingTodo({});
    setEditModalOpen(false);
  };

  const handleEditTodoSubmit = (e) => {
    e.preventDefault();
    // Update the todo in the API
    axios.put(`http://localhost:4000/todos/${editingTodo.id}`, editingTodo)
      .then(res => {
        console.log(res.data.message);
        // Update the todos state to reflect the changes
        setTodos(todos.map(todo => todo.id === editingTodo.id ? editingTodo : todo));
        // Close the edit modal
        handleEditModalClose();
      })
      .catch(err => {
        console.log(err);
      });
  };

  return (
    <div>
      <Header as='h2' icon textAlign='center'>
        <Icon name='user' circular />
        <Header.Content>{user.name}</Header.Content>
      </Header>
      <Card.Group centered>
        {todos.map(todo => (
          <Card key={todo.id}>
            <Card.Content>
              <Card.Header>{todo.title}</Card.Header>
              <Card.Description>{todo.description}</Card.Description>
              <Card.Meta>
                <span>Category: {todo.category}</span>
                <span>Priority: {todo.priority}</span>
              </Card.Meta>
            </Card.Content>
            <Card.Content extra>
              <Button basic color='red' onClick={() => handleDelete(todo.id)}>
                Delete
              </Button>
              <Button basic color='blue' onClick={() => handleEditModalOpen(todo)}>
                Edit
              </Button>
            </Card.Content>
          </Card>
        ))}
      </Card.Group>
      <Modal
        open={editModalOpen}
        onClose={handleEditModalClose}
        closeIcon
      >
        <Modal.Header>Edit Todo</Modal.Header>
        <Modal.Content>
          <Form onSubmit={handleEditTodoSubmit}>
            <Form.Field>
              <label>Title</label>
              <input
                type='text'
                value={editingTodo.title}
                onChange={(e) =>
                  setEditingTodo({
                    ...editingTodo,
                    title: e.target.value,
                  })
                }
              />
            </Form.Field>
            <Form.Field>
              <label>Description</label>
              <input
                type='text'
                value={editingTodo.description}
                onChange={(e) =>
                  setEditingTodo({
                    ...editingTodo,
                    description: e.target.value,
                  })
                }
              />
            </Form.Field>
            <Form.Field>
              <label>Category</label>
              <input
                type='text'
                value={editingTodo.category}
                onChange={(e) =>
                  setEditingTodo({
                    ...editingTodo,
                    category: e.target.value,
                  })
                }
              />
            </Form.Field>
            <Form.Field>
              <label>Priority</label>
              <input
                type='text'
                value={editingTodo.priority}
                onChange={(e) =>
                  setEditingTodo({
                    ...editingTodo,
                    priority: e.target.value,
                  })
                }
              />
            </Form.Field>
            <Button type='submit' color='green'>
              Save
            </Button>
            <Button onClick={handleEditModalClose} color='red'>
              Cancel
            </Button>
          </Form>
        </Modal.Content>
      </Modal>
    </div>);
};


export default UserDetail;