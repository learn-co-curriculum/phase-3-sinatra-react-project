import { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import { Form, Button } from 'semantic-ui-react';

function UserForm({ match }) {
  const [user, setUser] = useState({
    name: '',
    image_url: '',
  });
  const [error, setError] = useState(null);
  const navigate = useNavigate();

  useEffect(() => {
    if (match.params.id) {
      fetch(`http://localhost:4000/users/${match.params.id}`)
        .then((response) => response.json())
        .then((data) => setUser(data));
    }
  }, [match.params.id]);

  const handleChange = (event) => {
    setUser({ ...user, [event.target.name]: event.target.value });
  };

  const handleSubmit = (event) => {
    event.preventDefault();

    const method = user.id ? 'PUT' : 'POST';
    const url = user.id ? `http://localhost:4000/users/${user.id}` : '/api/users';

    fetch(url, {
      method: method,
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify(user),
    })
      .then((response) => {
        if (!response.ok) {
          throw new Error('Network response was not ok');
        }
        return response.json();
      })
      .then(() => {
        navigate('http://localhost:4000/users');
      })
      .catch((error) => {
        setError(error);
      });
  };

  return (
    <>
      <h2>{user.id ? 'Edit User' : 'New User'}</h2>

      {error && <div>Error: {error.message}</div>}

      <Form onSubmit={handleSubmit}>
        <Form.Field>
          <label>Name</label>
          <input
            type="text"
            name="name"
            value={user.name}
            onChange={handleChange}
          />
        </Form.Field>
        <Form.Field>
          <label>Image URL</label>
          <input
            type="text"
            name="image_url"
            value={user.image_url}
            onChange={handleChange}
          />
        </Form.Field>
        <Button primary type="submit">
          Save
        </Button>
      </Form>
    </>
  );
}

export default UserForm;
