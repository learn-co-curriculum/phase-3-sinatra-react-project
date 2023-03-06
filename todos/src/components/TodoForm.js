import React, { useState } from 'react';
import { Modal, Form, Button } from 'semantic-ui-react';

const TodoForm = ({ addModalOpen, handleAddModalClose, handleAddTodoSubmit }) => {
  const [title, setTitle] = useState('');
  const [description, setDescription] = useState('');
  const [category, setCategory] = useState('');
  const [priority, setPriority] = useState('');

  const handleSubmit = (e) => {

    e.preventDefault();
    // Call the handleAddTodoSubmit function with the form data
    handleAddTodoSubmit({ title, description, category, priority });
    // Clear the form fields
    setTitle('');
    setDescription('');
    setCategory('');
    setPriority('');

  };

  return (
    <Modal open={addModalOpen} onClose={handleAddModalClose}>
      <Modal.Header>Add New Todo</Modal.Header>
      <Modal.Content>
        <Form onSubmit={(e) => handleSubmit(e)}>
          <Form.Field>
            <label>Title</label>
            <input placeholder='Title' required value={title} onChange={(e) => setTitle(e.target.value)} />
          </Form.Field>
          <Form.Field>
            <label>Description</label>
            <input placeholder='Description' required value={description} onChange={(e) => setDescription(e.target.value)} />
          </Form.Field>
          <Form.Field>
            <label>Category</label>
            <input placeholder='Category' required value={category} onChange={(e) => setCategory(e.target.value)} />
          </Form.Field>
          <Form.Field>
            <label>Priority</label>
            <input placeholder='Priority' required value={priority} onChange={(e) => setPriority(e.target.value)} />
          </Form.Field>
          <Button type='submit'>Add</Button>
        </Form>
      </Modal.Content>
    </Modal>
  );
};




export default TodoForm;
