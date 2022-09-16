import React, { useState, useEffect } from 'react'
import {Link} from 'react-router-dom'
import CategoryForm from "./CategoryForm"

function CategoriesPage() {

    const [categoriesList, setCategoriesList] = useState("")

    useEffect(() => {
        fetch("http://localhost:9292/categories/all")
        .then(res => res.json())
        .then(setCategoriesList)
    }, [])



    const addCategory = text => {
        const newCategories = [...categoriesList, { "name":text, "category_id": 3 }];

        setCategoriesList(newCategories);
      };
      

    return(
        <div>
                {categoriesList ?  categoriesList.map(category => (<Link to={{pathname: `/categories/${category.id}`}}><li>{category.name}</li></Link>)) : null}
                <CategoryForm addCategory={addCategory}/>

        </div>
    )

}
export default CategoriesPage