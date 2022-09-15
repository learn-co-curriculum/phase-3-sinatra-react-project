import { useState, useEffect } from 'react'
import axios from 'axios'
import User from './User'

function Home() {
    const [users, setUsers] = useState([])
  
    useEffect( () => {
    axios.get("http://localhost:9292/users").then(resp => setUsers(resp.data))
    }, [])
    
   

    return(
        <div>
            <User users={users}/>
        </div>
    )
}

export default Home