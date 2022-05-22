import React, {useState} from "react";


function CreateNewPost(){
    
    const [title, setTitle] = useState('')
    const [body, setBody] = useState('')
    const [name, setName] = useState('')
    const [genre, setGenre] = useState('')
    const [userId, setUserId] = useState(0)
    



    


    function handleSubmit(e){
        const post = {title, body, name, genre, userId}
        e.preventDefault()
        fetch("http://localhost:9292/posts", {
            method: 'POST',
            headers: {"content-type": "application/json"},
            body: JSON.stringify(post)
        })

        setBody('')
        setTitle('')
        setGenre('')
        setUserId(0)
        setName('')
    }
    

    return(
        <div>
            <form onSubmit={handleSubmit} >
                <input type='text' placeholder='Add your title' value={title} onChange={(e) => setTitle(e.target.value)}></input>
                <input placeholder="add your name" value={name} onChange={(e) => setName(e.target.value)} ></input>
                <input placeholder="add genre" value={genre} onChange={(e) => setGenre(e.target.value)} ></input>
                <input placeholder="add your post!" value={body} onChange={(e) => setBody(e.target.value)} ></input>
                <input placeholder="user ID" value={userId} onChange={(e) => setUserId(e.target.value)} ></input>
                <button type="submit" >add</button>
            </form>
        </div>
    )
}

export default CreateNewPost