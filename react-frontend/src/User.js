import React, { useState } from "react";
import axios from 'axios'
import CharacterCreation from "./CharacterCreation";
import CharacterList from "./CharacterList";
import UserCard from "./UserCard";


function User({ users }){
    const [userRoute, setUserRoute] = useState(true)
    const [user, setUser] = useState("")
    const [characters, setCharacters] = useState([])

    

    const handleChange = (e) => {
        setUser(e.target.value)
        fetching()
        
    }
    console.log(user)

    const fetching = () => {axios.get(`http://localhost:9292/users/${user}/characters`).then(resp => setCharacters(resp.data))}
 
    console.log(characters)

    let userList = users.map(user => <option value={user.id}>{user.name}</option>)
    
    function handleClick () {
         setUserRoute( userRoute => !userRoute)
    }

        function activate (e) {
            e.preventDefault()
            console.log(e.target.name.value)
         }

    return(
        <div>
            <form action="/action_page.php" onSubmit = {activate}>
                <label for="fname">Username:</label><br/>
                <input type="text" id="name" name="name"/><br/>
                <input type="submit" value="Submit"/>
            </form>
           <h1>User things go Here!</h1>
           <button onClick={handleClick}>{userRoute ? "Create Character": "Choose Character"}</button>
           <br/>
           <select onChange={handleChange}>
           <option>Select User</option>
           {userList}
           </select>
           {userRoute ? user !== "" ?<CharacterCreation user={user}/> : null : characters === null ? null : <CharacterList user={user} characters={characters}/>}
        </div>
    )
}


export default User;