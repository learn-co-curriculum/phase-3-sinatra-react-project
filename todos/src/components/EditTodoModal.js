import React from 'react';
import { Modal, Form, Button } from 'semantic-ui-react';

const EditTodoModal = ({ setEditingTodo, editModalOpen, handleEditModalClose, editingTodo, handleEditTodoSubmit }) => {


  return (
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
            <select value={editingTodo.priority} onChange={e => setEditingTodo({
              ...editingTodo,
              priority: e.target.value,
            })}>
              <option value='Low'>Low</option>
              <option value='Medium'>Medium</option>
              <option value='High'>High</option>
            </select>
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
  );
};

export default EditTodoModal;
