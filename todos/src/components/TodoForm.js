import { useState } from 'react';
import { Form, Input, TextArea, Dropdown, Button } from 'semantic-ui-react';

const categoryOptions = [
  { key: 'work', value: 'work', text: 'Work' },
  { key: 'study', value: 'study', text: 'Study' },
  { key: 'personal', value: 'personal', text: 'Personal' },
];

const priorityOptions = [
  { key: 'low', value: 'low', text: 'Low' },
  { key: 'medium', value: 'medium', text: 'Medium' },
  { key: 'high', value: 'high', text: 'High' },
];

const TodoForm = ({ onAdd }) => {
  const [title, setTitle] = useState('');
  const [description, setDescription] = useState('');
  const [category, setCategory] = useState('');
  const [priority, setPriority] = useState('');

  const handleSubmit = async (e) => {
    e.preventDefault();
    const newTodo = { title, description, category, priority };
    try {
      const response = await fetch('http://localhost:4000/todos', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify(newTodo)
      });
      if (!response.ok) {
        throw new Error('Failed to create todo');
      }
      const data = await response.json();
      onAdd(data); // pass the new todo to the parent component's callback function
      setTitle('');
      setDescription('');
      setCategory('');
      setPriority('');
    } catch (error) {
      console.log(error.message);
    }
  };

  return (
    <Form onSubmit={handleSubmit}>
      <Form.Field required>
        <label>Title</label>
        <Input
          placeholder='Enter title'
          value={title}
          onChange={(e) => setTitle(e.target.value)}
        />
      </Form.Field>
      <Form.Field>
        <label>Description</label>
        <TextArea
          placeholder='Enter description'
          value={description}
          onChange={(e) => setDescription(e.target.value)}
        />
      </Form.Field>
      <Form.Field required>
        <label>Category</label>
        <Dropdown
          placeholder='Select category'
          fluid
          selection
          options={categoryOptions}
          value={category}
          onChange={(e, { value }) => setCategory(value)}
        />
      </Form.Field>
      <Form.Field required>
        <label>Priority</label>
        <Dropdown
          placeholder='Select priority'
          fluid
          selection
          options={priorityOptions}
          value={priority}
          onChange={(e, { value }) => setPriority(value)}
        />
      </Form.Field>
      <Button type='submit'>Add Todo</Button>
    </Form>
  );
};

export default TodoForm;
