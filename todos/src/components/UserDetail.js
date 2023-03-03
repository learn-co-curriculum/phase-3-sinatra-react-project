import React, { useState, useEffect } from 'react';
import axios from 'axios';
import { Card, Button, Header, Icon } from 'semantic-ui-react';

const UserDetail = ({ userId }) => {
  const [user, setUser] = useState({});
  const [todos, setTodos] = useState([]);

  useEffect(() => {
    // Get user and their todos from the API
    axios.get(`http://localhost:4000/users/${userId}`)
      .then(res => {
        setUser(res.data);
        setTodos(res.data.todos);
      })
      .catch(err => {
        console.log(err);
      });
  }, [userId]);

  const handleDelete = () => {
    // Delete the user from the API and redirect to UserList component
    axios.delete(`http://localhost:4000/users/${userId}`)
      .then(res => {
        console.log(res.data.message);
        // redirect to UserList component
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
