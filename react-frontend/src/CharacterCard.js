import axios from 'axios'
import { useState, useEffect } from 'react'
import { useNavigate, useLocation } from 'react-router-dom'

function CharacterCard({characters, handleCharacters}){
    const navigate = useNavigate()
    const location = useLocation()
    const { character } = location.state
    const [selectedCharacter, setSelectedCharacter] = useState(() => {
        const savedCharacter = localStorage.getItem('selectedCharacter');
        return savedCharacter ? JSON.parse(savedCharacter) : character;
    });
    const [template, setTemplate] = useState({})
    const [updatedName, setUpdatedName] = useState("")
    const [updatedHistory, setUpdatedHistory] = useState("")
    const [toggleForm, setToggleForm] = useState(false)

    console.log(characters)
    useEffect(() => {
        axios.get(`http://localhost:9292/templates/${selectedCharacter.template_id}`).then(response => setTemplate(response.data))

        localStorage.setItem('selectedCharacter', JSON.stringify(selectedCharacter))
    }, [selectedCharacter])


    const handleDelete = () => {
        axios.delete(`http://localhost:9292/characters/${selectedCharacter.id}`)
            const updatedCharacters = characters.filter(character => character.id !== selectedCharacter.id)
            handleCharacters(updatedCharacters)
            localStorage.setItem('loadedCharacters', JSON.stringify(updatedCharacters))
            navigate('/character_selection')
    }

    const handleUpdateForm = (e) => {
        e.preventDefault()
        axios.patch(`http://localhost:9292/characters/${selectedCharacter.id}`, {name: updatedName, history: updatedHistory})
            .then(res => {setSelectedCharacter(res.data)
                const updatedCharacters = characters.map(character => character.id === res.data.id ? res.data : character)
                console.log(updatedCharacters)
                handleCharacters(updatedCharacters)
                localStorage.setItem('loadedCharacters', JSON.stringify(updatedCharacters))
                })
            
            setUpdatedName("")
            setUpdatedHistory("")
            setToggleForm(false)
    }


    const handleUpdatedName = (e) => {
        setUpdatedName(e.target.value)
    }

    const handleUpdatedHistory = (e) => {
        setUpdatedHistory(e.target.value)
    }

    const handleToggle = () => {
        setToggleForm(!toggleForm)
    }

    return(
        <div id="card">
            <div id="info">
        <button class="fancy-btn" onClick={handleDelete}>Delete Character</button>
        <button class="fancy-btn" onClick={handleToggle}>Update Character</button>
        <br/>
        {toggleForm ? <form onSubmit={handleUpdateForm}> 
            <label>Update Your Character</label>
            <br/>
            <input
                type="text"
                name="name"
                placeholder='New Name'
                value={updatedName}
                onChange={handleUpdatedName}
            />
            <br/>
            <input
                type="text"
                name="history"
                placeholder='New Background Info'
                value={updatedHistory}
                onChange={handleUpdatedHistory}
            />
            <br/>
            <button class="fancy-btn">Submit Update</button>
        </form> : null}
        <br/>
        <h1>{selectedCharacter.name}</h1>
        <p>Race: {template.race}</p>
        <p>Level: {template.level}</p>
        <p>Class: {template.class_name}</p>
        <p>Background: {selectedCharacter.history}</p>
        <p>Strength: {template.strength}</p>
        <p>Dexterity: {template.dexterity}</p>
        <p>Constitution: {template.constitution}</p>
        <p>Intelligence: {template.intelligence}</p>
        <p>Wisdom: {template.wisdom}</p>
        <p>Charisma: {template.charisma}</p>
        {template.spell1 ? <p>Spell: {template.spell1}</p> : null}
        {template.spell2 ? <p>Spell: {template.spell2}</p> : null}
        {template.ability1 ? <p>Ability: {template.ability1}</p> : null}
        {template.ability2 ? <p>Ability: {template.ability2}</p> : null}
        {template.weapon1 ? <p>Weapon: {template.weapon1}</p> : null}
        {template.weapon2 ? <p>Weapon: {template.weapon2}</p> : null}
        </div>
        {template.img_url ? <div id="image"><img src={template.img_url} alt="Class Img"/></div> : null}
        </div>
    )
}
export default CharacterCard;