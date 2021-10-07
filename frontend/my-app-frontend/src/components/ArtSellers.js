import React, {useState, useEffect} from "react"
import {Link} from "react-router-dom"
function ArtSellers ({sellers, handleOneSeller}){
  
    const[formData, setFormData]=useState({
        seller_name:"",
        password:""
    })

    function handleChange(e){
        setFormData({
          ...formData,
          [e.target.name]:e.target.value
        })
      }
      function handleSubmit(e){
        e.preventDefault();
        handleSellerPost(formData)
      }
      
    
      function handleSellerPost(formData){
        fetch('http://localhost:9292/seller',{
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(formData)
        }).then(resp=>resp.json())
        .then(newData=> console.log(newData))
      }
      const eachSeller = sellers.map(seller=> (
      <div key={seller.id}>
        <li >{seller.seller_name}</li>
        <Link to={`/art/seller`}><button className="primary" onClick={()=>handleOneSeller(seller.id)}>View Full Seller list</button></Link>
        </div>
      ))
    return(
    <div>
        <form onSubmit={handleSubmit}>
        <input 
          type="text" 
          name="seller_name" 
          placeholder="Seller Name" 
          value={formData.seller_name}
          onChange={handleChange}
        />
        <input 
          type="text" 
          name="password" 
          placeholder="password" 
          value={formData.password}
          onChange={handleChange}
        />
        <button type="submit">New Seller</button>
      </form>
      {eachSeller}
    </div>
)
}

export default ArtSellers;