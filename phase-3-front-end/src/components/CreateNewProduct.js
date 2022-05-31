import React, { useState } from "react";

function CreateProduct(){

   const [name, setName] = useState('')
   const [description, setDescription] = useState('')
   const [price, setPrice] = useState(null)

    function handleSubmit(e){
        let product = {name, description, price}
        e.preventDefault()
        fetch("http://localhost:9292/products", {
            method: 'POST',
            headers: {"content-type": "application/json"},
            body: JSON.stringify(product)
        })
        .then(res => res.json())
        .then(item => {product.concat(item)})
        
        
    }
    return(
        <div>
            List a new product
            <form onSubmit={handleSubmit} >
                <input placeholder="Product name" value={name} onChange={(e) => setName(e.target.value)} />
                <input placeholder="Product description" value={description} onChange={(e) => setDescription(e.target.value)}/>
                <input placeholder="Price" value={price} onChange={(e) => setPrice(e.target.value)} />
                <button type="submit">Add</button>
            </form>
        </div>
    )
}

export default CreateProduct
