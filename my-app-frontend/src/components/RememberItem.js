import React, {useState} from 'react'
import {Link} from 'react-router-dom'

const RememberItem = ({text, id, deleteRemember, updateRemember, editedRowId}) => {
const [localText, setLocalText] = useState(null)
const handleClick = () => {
    deleteRemember(id)

}

const handleUpdateClick = () => {
    updateRemember(id)
    setLocalText(text)
 
}
const handleSubmit = (e) => {
    e.preventDefault()
    updateRemember(null)

    fetch(`http://localhost:9292/remembers/${id}`, {
        method: "PATCH",
        headers: {
            "Content-type": "application/json"
            },
        body: JSON.stringify({
        "remember": localText
        })
        })
        .then(response => response.json())
        .then(json => console.log(json))

}

const handleChange = (e) => {
    setLocalText(e.target.value)
}
const isCurrentTaskEdit = id === editedRowId


    return (
        <div className="remember">
           
            {isCurrentTaskEdit ? (<form onSubmit={handleSubmit}><input onChange={handleChange} value={localText}></input></form>) : (<Link
                to={{pathname: `/remembers/${id}`,
                    state: {id:id, text:text}
            }}
           >
            <li className='remember-item'>{localText ? localText : text}</li>
            </Link>)}

            <button onClick={handleClick} className='delete'>
                <p className="delete">X</p>
            </button>
            <button onClick={handleUpdateClick} className='update'>
                <p className="update">Update</p>
            </button>
        </div>
    )
}

export default RememberItem