import React, {useEffect, useState} from "react";

function GetAllPosts(){

    const [posts, setPosts] = useState([])
    
    

    useEffect(() => {
        fetch("http://localhost:9292/posts")
        .then(res => res.json())
        .then(data => setPosts(data))
    },[])

    function handleDeletePost(id){
        fetch(`http://localhost:9292/posts${id}`, {
            method: 'DELETE',
            headers: {
                'Content-type' : 'application/json'
            }
        })
    }

   const newPosts = posts.map(post => {
       return (
           <div >
               <form>
               <h1> Title : {post.title}</h1>
               <h2> Author : {post.name}</h2>
               <p>{post.body}</p>
               </form>
               <button onClick={() => {handleDeletePost(post.id)}} >Delete post</button>
           </div>
       )
   })

    return(
        <div>{newPosts}</div>
    )
}

export default GetAllPosts