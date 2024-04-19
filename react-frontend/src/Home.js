import { useNavigate } from 'react-router-dom'

function Home({ handleLogout }) {
    const navigate = useNavigate()
  
    const handleClick = (e) => {
        if(e.target.value === "creation"){
            navigate('character_creation')
        }
        else if (e.target.value === "selection"){
            navigate('/character_selection')
            }
        }

    return(
        <div>
            <h5>This handy app will help you create and keep track of your original Roleplaying Characters.</h5>
            <button class="fancy-btn" value="creation" onClick={handleClick}>Character Creation</button>
            <button class="fancy-btn" value="selection" onClick={handleClick}>Character Selection</button>
            <button class="fancy-btn" value="log out" onClick={() => handleLogout()}>Log Out</button>
        </div>
    )
}

export default Home