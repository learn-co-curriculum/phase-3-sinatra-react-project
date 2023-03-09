import React, { useState, useEffect } from 'react';
import axios from 'axios';
import EditTodoModal from './EditTodoModal';
import 'semantic-ui-css/semantic.min.css';
import { Card, Button, Header, Icon, Image } from 'semantic-ui-react';
import { useParams } from 'react-router-dom';
import TodoForm from './TodoForm';

const UserDetail = () => {
  const [user, setUser] = useState({});
  const [todos, setTodos] = useState([]);
  const [editModalOpen, setEditModalOpen] = useState(false);
  const [addModalOpen, setAddModalOpen] = useState(false);
  const [editingTodo, setEditingTodo] = useState({});
  const { id } = useParams()
  const userId = parseInt(id);


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
  const handleAddModalOpen = () => {
    setAddModalOpen(true);
  }

  const handleAddModalClose = () => {

    setAddModalOpen(false);
  }

  const handleAddTodoSubmit = ({ title, description, category, priority }) => {
    const todoNew = {
      user_id: userId,
      title: title,
      description: description,
      category: category,
      priority: priority
    };

    axios.post(`http://localhost:4000/todos`, todoNew)
      .then(res => {
        console.log(res.data.message);
        setTodos([...todos, res.data]);
        handleAddModalClose();
      })
      .catch(err => {
        console.log(err);
      });
  };


  return (
    <div>
      <Header as='h2' icon textAlign='center'>
      <Image src={user.image_url} avatar />
        <Header.Content>{user.name}</Header.Content>
      </Header>
      <center>  <Button icon labelPosition='left' style={{ margin: "15px" }} onClick={handleAddModalOpen}> <Icon name='plus' /> Add Todo </Button></center>
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
      {/*  modal to open editing */}

      <EditTodoModal
        editModalOpen={editModalOpen}
        handleEditModalClose={handleEditModalClose}
        setEditingTodo={setEditingTodo}
        editingTodo={editingTodo}
        handleEditTodoSubmit={handleEditTodoSubmit}
      />
      <TodoForm
        addModalOpen={addModalOpen}
        handleAddModalClose={handleAddModalClose}
        handleAddTodoSubmit={handleAddTodoSubmit}
      />
    </div>);
};


export default UserDetail;