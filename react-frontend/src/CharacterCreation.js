import { useState, useEffect } from 'react';

function CharacterCreation({ user }){
    console.log(user)

    const [characters, setCharacters] = useState([])
    const [templates, setTemplates] = useState([])
    const [name, setName] = useState("")
    const [history, setHistory] = useState("")
    const [className, setClassName] = useState("Select A Class")


    useEffect(() => {
        fetch("http://localhost:9292/characters")
            .then(res => res.json())
            .then(data => {
                setCharacters(data)
            })
    }, [])

      useEffect(() => {
      fetch("http://localhost:9292/templates/class_name")
            .then(res => res.json())
            .then(data => setTemplates(data))
       }, [])

    const addNewCharacter = (newCharacter) => {
        setCharacters([...characters, newCharacter])
    }


    const handleForm = (e) => {
        e.preventDefault()
        fetch("http://localhost:9292/characters", {
            method: "POST",
            headers: {
                "Content-Type": "application/json"
            },
            body: JSON.stringify({
                name: name,
                history: history,
                user_id: user,
                class_name: className,
            })
        })
            .then(res => res.json())
            .then(data => addNewCharacter(data))

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
                <label>Create A New Character</label>
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
                    placeholder='Character Background History'
                    value={history}
                    onChange={e => setHistory(e.target.value)}
                />
                <br/>
                <select onChange={handleChange} value={className}>
                <option>{className}</option>
                {selectTemplate}
                </select>
                <br/>
                <button>Submit</button>
                </form>
        </div>
    )
}
export default CharacterCreation;