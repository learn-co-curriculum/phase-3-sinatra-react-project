import { useState, useEffect } from 'react'
import { useNavigate } from 'react-router-dom'
import axios from 'axios'

function CharacterCreation({ userId, characters, handleCharacters }){
    const [templates, setTemplates] = useState([])
    const [name, setName] = useState("")
    const [history, setHistory] = useState("")
    const [className, setClassName] = useState("Select A Class")
    const navigate = useNavigate()


    useEffect(() => {
        axios.get("http://localhost:9292/templates/class_name")
            .then(resp => setTemplates(resp.data))
    }, [])

    const addNewCharacter = (newCharacter) => {
        handleCharacters([...characters, newCharacter])
        localStorage.setItem('loadedCharacters', JSON.stringify([...characters, newCharacter]))
        localStorage.removeItem('selectedCharacter')
        navigate('/character_card', {state: { character : newCharacter}})
    }


    const handleForm = (e) => {
        e.preventDefault()
        axios.post("/characters", {
                name: name,
                history: history,
                user_id: userId,
                class_name: className,
            })
            .then(resp => addNewCharacter(resp.data))

            setName("")
            setHistory("")
            setClassName("Select A Class")

    }

    const handleChange = (e) => {
        setClassName(e.target.value)
    }
    
    const selectTemplate = templates.map(template => <option key={template.id}>{template}</option>)

    return(
        <div className='form-box'>
            <br/>
            <form onSubmit={handleForm}>
                <label>Hark! Create Thy Champion!</label>
                <h5>Enter a name, background and class for your character, and their stats will be auto-generated!</h5>
                <br/>
                <input
                    type="text"
                    name="name"
                    placeholder='Name of New Character'
                    value={name}
                    onChange={e => setName(e.target.value)}
                />
                <br/>
                <input
                    type='text'
                    name='history'
                    placeholder='Character Background'
                    value={history}
                    onChange={e => setHistory(e.target.value)}
                />
                <br/>
                <select onChange={handleChange} value={className}>
                <option>{className}</option>
                {selectTemplate}
                </select>
                <br/>
                <button class="fancy-btn">Submit</button>
                </form>
        </div>
    )
}
export default CharacterCreation;