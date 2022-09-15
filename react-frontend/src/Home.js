import { useState, useEffect } from 'react'
import User from './User'

function Home() {
    const [users, setUsers] = useState([])
  
    useEffect( () => {
    fetch("http://localhost:9292/users")
        .then(res => res.json())
        .then(setUsers)
    }, [])
    
   

    return(
        <div>
            <User users={users}/>
        </div>
    )
}

export default Home