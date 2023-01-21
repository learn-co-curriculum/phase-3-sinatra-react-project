import React, {useState} from "react";

function PersonForm({addPerson}) {
    const [newName, setNewName] = useState("")
    const [newEmail, setNewEmail] = useState("")
    const [newPassword, setNewPassword] = useState("")

    function handleSubmit(e) {
        e.preventDefault()

        let newPerson = {
            id: Math.floor(Math.random() * 100000) + 1,
            name: newName,
            email: newEmail,
            password: newPassword,
            tickets: []
        }

        fetch("http://localhost:9292/users", {
            method: 'POST',
            headers: {
              "Content-Type": 'application/json',
            },
            body: JSON.stringify({newPerson}),
          })
          .then((r) => r.json())

        addPerson(newPerson)
        e.target.reset()
    }
    return (
        <div>
            <form className="new-person-form" onSubmit={handleSubmit}>
                <input placeholder="Full Name" onChange={(e) => setNewName(e.target.value)} />
                <input placeholder="Email" onChange={(e) => setNewEmail(e.target.value)} />
                <input placeholder="Password" onChange={(e) => setNewPassword(e.target.value)} />
                <input type="submit" value="Create New User" />
            </form>
        </div>
    );
}

export default PersonForm;