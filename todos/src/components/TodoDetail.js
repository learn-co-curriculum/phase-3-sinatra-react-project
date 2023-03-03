import React, { useState } from "react";
import { Button, Header, Icon, Modal } from "semantic-ui-react";
import TodoForm from "./TodoForm";

const TodoDetail = ({ todo, onDelete, onEdit }) => {
  const [showEditModal, setShowEditModal] = useState(false);

  const handleDelete = () => {
    onDelete(todo.id);
  };

  const handleEdit = (updatedTodo) => {
    onEdit(todo.id, updatedTodo);
    setShowEditModal(false);
  };

  return (
    <div className="todo-detail">
      <div className="todo-detail-header">
        <Header as="h2" dividing>
          {todo.title}
        </Header>
        <div className="todo-detail-actions">
          <Button icon color="yellow" onClick={() => setShowEditModal(true)}>
            <Icon name="edit" />
          </Button>
          <Button icon color="red" onClick={handleDelete}>
            <Icon name="trash" />
          </Button>
        </div>
      </div>
      <p>{todo.description}</p>
      <p>Category: {todo.category}</p>
      <p>Priority: {todo.priority}</p>
      <Modal open={showEditModal} onClose={() => setShowEditModal(false)}>
        <Modal.Header>Edit Todo</Modal.Header>
        <Modal.Content>
          <TodoForm todo={todo} onSubmit={handleEdit} />
        </Modal.Content>
      </Modal>
    </div>
  );
};

export default TodoDetail;
