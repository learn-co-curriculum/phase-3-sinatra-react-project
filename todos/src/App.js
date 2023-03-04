import { BrowserRouter, Routes, Route } from 'react-router-dom';
import React from 'react';
import UserDetail from '../src/components/UserDetail';
import TodoForm from '../src/components/TodoForm';
import UserList from '../src/components/UserList';
import EditTodoModal from './components/EditTodoModal';
import { Container } from 'semantic-ui-react';

function App() {
  return (

    <BrowserRouter>
      <Container style={{ marginTop: 20 }}>
        <Routes>
          <Route exact path="/" element={<UserList />} />

          <Route exact path="/users/details/:id" element={<UserDetail />} />
          <Route exact path="/todos/new" element={<TodoForm />} />

          <Route exact path="/todos/edit/:id" element={<EditTodoModal />} />
        </Routes>
      </Container>
    </BrowserRouter>
  );
}

export default App;