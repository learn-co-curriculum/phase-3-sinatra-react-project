import axios from 'axios'
import { useState, useEffect } from 'react'

function CharacterCard({ selectedCharacter, setSelectedCharacter, setCharacters }){
    const [template, setTemplate] = useState({})
    
    useEffect( () => {
        axios.get(`http://localhost:9292/templates/${selectedCharacter.template_id}`).then(response => setTemplate(response.data))
    }, [])


    const handleDelete = () => {
        axios.delete(`http://localhost:9292/characters/${selectedCharacter.id}`)
    }

    return(
        <div>
        <button onClick ={handleDelete}>Delete Character</button>
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