import React, {useEffect, useState} from "react";

function GetAllPosts(){

    const [posts, setPosts] = useState([])
    const [allProducts, setAllProducts] = useState([])
    
    

    useEffect(() => {
        fetch("http://localhost:9292/posts")
        .then(res => res.json())
        .then(data => setPosts(data))
    },[])

    useEffect(() => {
        fetch("http://localhost:9292/products")
        .then(res => res.json())
        .then(products => setAllProducts(products))
    },[])

    // function handleDeletePost(id){
    //     fetch(`http://localhost:9292/posts/${id}`, {
    //         method: 'DELETE'
    //     })
    //     .then( res => res.json())
    //     .then( deletedPost => {
    //         setPosts(posts.filter(t => t.id !== deletedPost.id))
    //     })
    // }
   const newProducts = allProducts.map(product => {
       return(
       <div key={product.id} >
           <h1>{product.name}</h1>
           <p>{product.description}</p>
           <p>{product.price}</p>
       </div>
       )
   })

   const newPosts = posts.map(post => {
       return (
           <div key={post.id}>
               <form>
               <h1> Title : {post.title}</h1>
               <h2> Author : {post.name}</h2>
               <p>{post.body}</p>
               {/* <button onClick={() => handleDeletePost(post.id)} >Delete post</button> */}
               </form>
               
           </div>
       )
   })

    return(
        // <div>{posts.map(post => {
        //     return(
        //     <div key={post.id} >
        //         <li>{post.title}
        //         {post.name}
        //         {post.body}
        //         </li>
        //         <button onClick={() => handleDeletePost(post.id)}>delete</button>
        //     </div>
        //     )
        // })}</div>
        <div>
        <p>{newPosts}</p>
        <p>{newProducts}</p>
        </div>
    )
}

export default GetAllPosts