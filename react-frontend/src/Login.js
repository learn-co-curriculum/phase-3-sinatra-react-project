import { useState } from 'react'
import axios from 'axios'
import { useNavigate } from 'react-router-dom'


function LoginScreen ({handleUser}) {
    const [username, setUsername] = useState('')
    const [password, setPassword] = useState('')
    const [available, setAvailable] = useState(true)
    const navigate = useNavigate()

    const handleUsernameChange = (e) => {
        setUsername(e.target.value)
    }

    const handlePasswordChange = (e) => {
        setPassword(e.target.value)
    }

  const submit = (e) => {
    e.preventDefault()
    
    if (available) {
        axios.post("/login", {
            username,
            password
        })
        .then(res => {
            handleUser(res.data)
            })
        navigate('/')
    }
    else {
        axios.post("/signup", {
            username,
            password
          })
          .then(res => {
            handleUser(res.data)
            })
        navigate('/')
    }
  }

  const handleAvailable = () => {
    setAvailable(!available)
  }

  console.log(available)

    return(
      <form onSubmit={submit}>
  
      <div class="segment">
        <h1>Login</h1>
      </div>
      
      <label>
        <input type="text" placeholder="Username" value={username} onChange={(e) => handleUsernameChange(e)}/>
      </label>
      <label>
        <input type="password" placeholder="Password"value={password} onChange={(e) => handlePasswordChange(e)}/>
      </label>
      <button class="red" type="submit">{available ? "Log in" : "Sign up"}</button>
    
      <h3 onClick={handleAvailable}>
      {available ? "Don't have an account yet? Sign up" : "Already have an account? Login"}
      </h3>

    </form>
  )}

  export default LoginScreen