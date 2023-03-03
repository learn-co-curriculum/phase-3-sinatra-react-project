import React, { useState, useEffect } from "react";
import { Card, Button, Icon } from "semantic-ui-react";
import axios from "axios";
import EditTodoModal from "./EditTodoModal";

// import { getTodos } from './API';

const TodoList = ({ user }) => {
  const [todos, setTodos] = useState([]);

  useEffect(() => {
    const fetchTodos = async () => {
      const response = await axios.get(`http://localhost:4000/user/${user.id}/todos`);
      setTodos(response.data);
    };
    fetchTodos();
  }, [user]);

  const deleteTodo = async (id) => {
    await axios.delete(`http://localhost:4000/users/${user.id}/todos/${id}`);
    setTodos(todos.filter((todo) => todo.id !== id));
  };

  const editTodo = async (id, updates) => {
    await axios.patch(`http://localhost:4000/users/${user.id}/todos/${id}`, updates);
    setTodos(
      todos.map((todo) => {
        if (todo.id === id) {
          return { ...todo, ...updates };
        }
        return todo;
      })
    );
  };

  return (
    <Card.Group>
      {todos.map((todo) => (
        <Card key={todo.id}>
          <Card.Content>
            <Card.Header>{todo.title}</Card.Header>
            <Card.Meta>{todo.category}</Card.Meta>
            <Card.Description>{todo.description}</Card.Description>
            <Card.Meta>{todo.priority}</Card.Meta>
          </Card.Content>
          <Card.Content extra>
            <div className="ui two buttons">
              <EditTodoModal todo={todo} editTodo={editTodo} />
              <Button color="red" onClick={() => deleteTodo(todo.id)}>
                <Icon name="trash" />
                Delete
              </Button>
            </div>
          </Card.Content>
        </Card>
      ))}
    </Card.Group>
  );
};

export default TodoList;
