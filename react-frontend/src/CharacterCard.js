import axios from 'axios'
import { useState, useEffect } from 'react'

function CharacterCard({ selectedCharacter, setSelectedCharacter }){
    const [template, setTemplate] = useState({})
    const [updatedName, setUpdatedName] = useState("")
    const [updatedHistory, setUpdatedHistory] = useState("")
    const [toggleForm, setToggleForm] = useState(false)

    
    useEffect( () => {
        axios.get(`http://localhost:9292/templates/${selectedCharacter.template_id}`).then(response => setTemplate(response.data))
    }, [])


    const handleDelete = () => {
        axios.delete(`http://localhost:9292/characters/${selectedCharacter.id}`)
    }

    const handleUpdateForm = (e) => {
        e.preventDefault()
        axios.patch(`http://localhost:9292/characters/${selectedCharacter.id}`, {name: updatedName, history: updatedHistory})
            .then(res => setSelectedCharacter(res.data))
            
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
        <div>
        <button onClick={handleDelete}>Delete Character</button>
        <button onClick={handleToggle}>Update Character</button>
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
            <button>Submit Update</button>
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
        {template.spell1 ? <p>{template.spell1}</p> : null}
        {template.spell2 ? <p>{template.spell2}</p> : null}
        {template.ability1 ? <p>{template.ability1}</p> : null}
        {template.ability2 ? <p>{template.ability2}</p> : null}
        {template.weapon1 ? <p>{template.weapon1}</p> : null}
        {template.weapon2 ? <p>{template.weapon2}</p> : null}
        <img src={template.img_url} alt="Class Img"/>
        </div>
    )
}
export default CharacterCard;