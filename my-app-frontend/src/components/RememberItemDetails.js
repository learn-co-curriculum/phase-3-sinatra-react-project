import React, {useState, useEffect} from 'react'
import {useParams} from 'react-router-dom'


const RememberItemDetails = () => {
    const {id} = useParams() 
    const [rememberItem, setRememberItem] = useState()

    useEffect(() => {
        fetch(`http://localhost:9292/remembers/${id}`)
        .then(res => res.json())
        .then(setRememberItem)
      },[])
      console.log(rememberItem)
      if (rememberItem)

    {return (
        <div className="remember">
            <table class="tg">
<thead>
  <tr>
    <th class="tg-0lax">id</th>
    <th class="tg-0lax">{rememberItem.id}</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0lax">user_id</td>
    <td class="tg-0lax">{rememberItem.user_id}</td>
  </tr>
  <tr>
    <td class="tg-0lax">category_id</td>
    <td class="tg-0lax">{rememberItem.category_id}</td>
  </tr>
  <tr>
    <td class="tg-0lax">remember</td>
    <td class="tg-0lax">{rememberItem.remember}</td>
  </tr>
  <tr>
    <td class="tg-0lax">created_at</td>
    <td class="tg-0lax">{rememberItem.created_at}</td>
  </tr>
</tbody>
</table>
        </div>
    )
}}

export default RememberItemDetails