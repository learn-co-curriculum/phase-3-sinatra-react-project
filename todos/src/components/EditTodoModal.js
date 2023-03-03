import React, { useState } from 'react';
import { Modal, Form, Button } from 'semantic-ui-react';

const EditTodoModal = ({ todo, open, onClose, onSave }) => {
  const [title, setTitle] = useState(todo.title);
  const [description, setDescription] = useState(todo.description);
  const [category, setCategory] = useState(todo.category);
  const [priority, setPriority] = useState(todo.priority);

  const handleSave = () => {
    onSave({ id: todo.id, title, description, category, priority });
    onClose();
  };

  return (
    <Modal open={open} onClose={onClose}>
      <Modal.Header>Edit Todo</Modal.Header>
      <Modal.Content>
        <Form>
          <Form.Field>
            <label>Title</label>
            <input value={title} onChange={e => setTitle(e.target.value)} />
          </Form.Field>
          <Form.Field>
            <label>Description</label>
            <textarea value={description} onChange={e => setDescription(e.target.value)} />
          </Form.Field>
          <Form.Field>
            <label>Category</label>
            <input value={category} onChange={e => setCategory(e.target.value)} />
          </Form.Field>
          <Form.Field>
            <label>Priority</label>
            <select value={priority} onChange={e => setPriority(e.target.value)}>
              <option value='low'>Low</option>
              <option value='medium'>Medium</option>
              <option value='high'>High</option>
            </select>
          </Form.Field>
        </Form>
      </Modal.Content>
      <Modal.Actions>
        <Button color='black' onClick={onClose}>
          Cancel
        </Button>
        <Button positive onClick={handleSave}>
          Save
        </Button>
      </Modal.Actions>
    </Modal>
  );
};

export default EditTodoModal;
