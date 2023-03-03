import React, { useState, useEffect } from 'react';
import axios from 'axios';
import { Card, Button, Header, Icon } from 'semantic-ui-react';
import { useParams } from 'react-router-dom';

const UserDetail = () => {
  const [user, setUser] = useState({});
  const [todos, setTodos] = useState([]);
  const { id } = useParams();

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
    // Delete the todo from the API and update the state
    axios.delete(`http://localhost:4000/todos/${todoId}`)
      .then(res => {
        setTodos(todos.filter(todo => todo.id !== todoId));
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
                <span>{todo.category}</span>
                <span>{todo.priority}</span>
              </Card.Meta>
            </Card.Content>
            <Card.Content extra>
              <Button basic color='red' onClick={() => handleDelete(todo.id)}>
                Delete
              </Button>
              {/* Add edit functionality */}
            </Card.Content>
          </Card>
        ))}
      </Card.Group>
    </div>
  );
};

export default UserDetail;
