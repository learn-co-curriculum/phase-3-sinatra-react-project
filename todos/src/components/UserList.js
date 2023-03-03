import { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import { Table, Header, Image } from 'semantic-ui-react';

function UserList() {
  const [users, setUsers] = useState([]);

  useEffect(() => {
    fetch('http://localhost:4000/users')
      .then((response) => response.json())
      .then((data) => setUsers(data));
  }, []);

  return (
    <>
      <Header as="h2">User List</Header>

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
                <Link to={`/users/details/${user.id}`}>View</Link>
              </Table.Cell>
            </Table.Row>
          ))}
        </Table.Body>
      </Table>
    </>
  );
}

export default UserList;



