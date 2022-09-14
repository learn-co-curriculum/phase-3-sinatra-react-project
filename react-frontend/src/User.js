import React from "react";
import CharacterCreation from "./CharacterCreation";
import CharacterList from "./CharacterList";
import UserCard from "./UserCard";

function User({ users }){

    const [user, setUser] = useState({})

    const handleClick = () => {

    }


    return(
        <div>
           <h1>User things go Here!</h1>
           <button>Add a User</button>
           <br/>
           <select onClick={handleClick}>
           {users.map(user => <option>{user.name}</option>)}
           </select>
           {setUser ? <UserCard/> : null}
           <CharacterCreation/>
           <CharacterList/>
        </div>
    )
}

export default User;