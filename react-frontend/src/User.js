import React, { useState } from "react";
import axios from 'axios'
import CharacterCreation from "./CharacterCreation";
import CharacterList from "./CharacterList";
import UserCard from "./UserCard";


function User({ users, handleUsers }){
    const [userRoute, setUserRoute] = useState(true)
    const [user, setUser] = useState("")
    const [characters, setCharacters] = useState([])
    const [userName, setUserName] = useState("")

    

    function activate (e) {
        e.preventDefault()
        axios.post('http://localhost:9292//users', {name: userName}).then(resp => handleUsers([...users, resp.data]))

        setUserName('')
        }

    const handleChange = (e) => {
        setUser(e.target.value)
        fetchingUserCharacters(e.target.value)  
    }
    

    const fetchingUserCharacters = (user) => {axios.get(`http://localhost:9292/users/${user}/characters`).then(resp => setCharacters(resp.data))}
    
    
    function handleClick () {
            setUserRoute(userRoute => !userRoute)
    }

    const handleUserName = (e) => {
        setUserName(e.target.value)
    }

    let userList = users.map(user => <option value={user.id} key={user.id}>{user.name}</option>)

    return(
        <div>
            <form action="/action_page.php" onSubmit = {activate}>
                <label htmlFor="name">Username:</label><br/>
                <input type="text" id="name" name="name" onChange={handleUserName} value={userName}/><br/>
                <input type="submit" value="Submit"/>
            </form>
           <h1>User things go Here!</h1>
           <button onClick={handleClick}>{userRoute ? "Create Character": "Choose Character"}</button>
           <br/>
           <select onChange={handleChange}>
           <option>Select User</option>
           {userList}
           </select>
           {userRoute ? user !== "" ? <CharacterCreation user={user}/> : null : characters === null ? null : <CharacterList user={user} characters={characters}/>}
        </div>
    )
}


export default User;