import { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import { Table, Header, Image, Button, Modal, Form, Icon } from 'semantic-ui-react';
import axios from 'axios';

function UserList() {
  const [users, setUsers] = useState([]);
  const [modalOpen, setModalOpen] = useState(false);
  const [name, setName] = useState('');
  const [image_url, setImageUrl] = useState('');

  useEffect(() => {
    fetch('http://localhost:4000/users')
      .then((response) => response.json())
      .then((data) => setUsers(data));
  }, []);

  const handleDeleteUser = (userId) => {
    axios.delete(`http://localhost:4000/users/${userId}`)
      .then(() => {
        setUsers(users.filter((user) => user.id !== userId));
      })
      .catch((error) => console.error(error));
  };

  const handleModalOpen = () => {
    setModalOpen(true);
  };

  const handleModalClose = () => {
    setModalOpen(false);
  };

  const handleSubmit = (event) => {
    event.preventDefault();
    axios
      .post('http://localhost:4000/users', {
        name: name,
        image_url: image_url,
      })
      .then((response) => {
        setUsers([...users, response.data]);
        setName('');
        setImageUrl('');
        handleModalClose();
      })
      .catch((error) => console.error(error));
  };

  return (
    <>
      <Header as="h2">User Profiles</Header>
      <Button icon style={{ margin: "15px" }} onClick={handleModalOpen}> <Icon name='plus' /> Add User </Button>
      <Table celled>
        <Table.Header>
          <Table.Row>
            <Table.HeaderCell>Name</Table.HeaderCell>
            <Table.HeaderCell>Image</Table.HeaderCell>
            <Table.HeaderCell>Actions</Table.HeaderCell>
          </Table.Row>
        </Table.Header>

        <Table.Body>
          {users.map((user) => (
            <Table.Row key={user.id}>
              <Table.Cell>{user.name}</Table.Cell>
              <Table.Cell>
                <Image src={user.image_url} size="tiny" rounded />
              </Table.Cell>
              <Table.Cell>
                <Link to={`/users/details/${user.id}`}>
                  <Button>View</Button>
                </Link>
                <Button
                  color="red"
                  onClick={() => handleDeleteUser(user.id)}
                >
                  Delete
                </Button>
              </Table.Cell>
            </Table.Row>
          ))}
        </Table.Body>
      </Table>

      <Modal open={modalOpen} onClose={handleModalClose}>
        <Modal.Header>Add User</Modal.Header>
        <Modal.Content>
          <Form onSubmit={handleSubmit}>
            <Form.Field>
              <label>Name</label>
              <input
                placeholder="User name"
                value={name}
                onChange={(event) => setName(event.target.value)}
              />
            </Form.Field>
            <Form.Field>
              <label>Profile Image</label>
              <input
                placeholder="Image URL"
                value={image_url}
                onChange={(event) => setImageUrl(event.target.value)}
              />
            </Form.Field>
            <Button type="submit">Add</Button>
          </Form>
        </Modal.Content>
      </Modal>
    </>
  );
}

export default UserList;
