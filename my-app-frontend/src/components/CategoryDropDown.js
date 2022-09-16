import React, { useState, useEffect } from "react";

export default function CategoryDropDown({setCategoryValue}) {
  const getInitialState = () => {
    const value = "covid";
    return value;
  };

  const [categoriesList, setCategoriesList] = useState("")

    useEffect(() => {
        fetch("http://localhost:9292/categories/all")
        .then(res => res.json())
        .then(setCategoriesList)
    }, [])

  const [value, setValue] = useState(getInitialState);

  const handleChange = (e) => {
    setValue(e.target.value);
    setCategoryValue(e.target.value)
  };

  return (
    <div>
      <select value={value} onChange={handleChange}>
        {categoriesList ? categoriesList.map(category => (<option value={category.id}>{category.name}</option>)  ) : null }
      </select>
      <p>{`You selected ${value}`}</p>
    </div>
  );
}


