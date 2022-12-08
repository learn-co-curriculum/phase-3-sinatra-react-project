import React from 'react'
import {useHistory} from 'react-router-dom'

const headers = {
    Accepts: "application/json",
          "Content-Type" : "application/json"}

function Destination({destination, handleDeleteDestination, handleClickLikes}){
    const {name, image, likes} = destination
    const history = useHistory()

    function handleClick(){
        history.push(`/destination/${destination.id}`)
    }
    function handleDelete(id){
        handleDeleteDestination(id)
        fetch(`http://localhost:9292/destinations/${id}`,{
            method: 'DELETE',
            headers,
        })
    }

 
    return(
        
        <div className="card-container">
            <div className="card">
                <img className="destination-images" onClick={handleClick} src={image} alt="destinations"/>
                <h4>{name}</h4>
                <p>{likes} Likes</p>
                <button onClick={()=> handleClickLikes(destination)}className="like-btn">Like 🖤</button>
                <button className="delete-btn"onClick={()=>handleDelete(destination.id)}>Delete</button> 
            </div>   
        </div>
       
    )
}

export default Destination