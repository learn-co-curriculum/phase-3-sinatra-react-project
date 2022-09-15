import { useState, useEffect } from 'react'
import axios from 'axios'
import User from './User'

function Home() {
    const [users, setUsers] = useState([])
  
    useEffect( () => {
    axios.get("http://localhost:9292/users").then(resp => setUsers(resp.data))
    }, [])
    
   const handleUsers = (users) => {
    setUsers(users)
   }

    return(
        <div>
            <User users={users} handleUsers={handleUsers}/>
        </div>
    )
}

export default Home