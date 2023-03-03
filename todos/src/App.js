import { BrowserRouter, Routes, Route } from 'react-router-dom';
import React from 'react';
import UserForm from '../src/components/UserForm';
import UserDetail from '../src/components/UserDetail';
import TodoForm from '../src/components/TodoForm';
import TodoDetail from '../src/components/TodoDetail';
import UserList from '../src/components/UserList';
import TodoList from '../src/components/TodoList';
import EditTodoModal from './components/EditTodoModal';
import { Container } from 'semantic-ui-react';

function App() {
  return (
    
    <BrowserRouter>
      <Routes>
        <Container style={{ marginTop: 20 }}>
          <Route exact path="/" component={UserList} />
          <Route exact path="/users/new" component={UserForm} />
          <Route exact path="/users/:id" component={UserDetail} />
          <Route exact path="/todos/new" component={TodoForm} />
          <Route exact path="/todos/:id" component={TodoDetail} />
          <Route exact path='' component={TodoList}/>
          <Route exact path='' component={EditTodoModal}/>
        </Container>
      </Routes>
    </BrowserRouter>
  );
}

export default App;