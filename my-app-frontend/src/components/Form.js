import React, { useState, useEffect } from 'react'
import CategoryDropDown from "./CategoryDropDown"

// import RememberItem from "./RememberItem"

// ...

function Form({ addRemember }) {
    const [value, setValue] = useState("");
    const [categoryValue, setCategoryValue] = useState("");

  
    const handleSubmit = e => {
      e.preventDefault();
      if (!value) return;
      addRemember(value);
      console.log(categoryValue)

      // const body = 
      // {
      //   "user_id": 1,
      //   "category_id": 3,
      //   "remember": "I remember hours in the high school library running my hands along the spines of books."
      // }
     
        fetch(`http://localhost:9292/remembers`, {
          method: "POST",
          headers: {
            // Accept: 'application.json',
            'Content-Type': 'application/json'
          },
          body: JSON.stringify({
            "user_id": 1,
            "category_id": categoryValue,
            "remember": value 
          })
        })
        .then(res => res.json())
        .then(data => console.log(data))
      
        setValue("");

    };
  
    return (
      <div>
      <form onSubmit={handleSubmit}>
        <input
          type="text"
          className="input"
          value={value}
          onChange={e => setValue(e.target.value)}
        />
        
      </form>
      
      <CategoryDropDown setCategoryValue={setCategoryValue}/>
    {/* // <button></button> will take over handleSubmit */}
    </div>
    );
  }

  
  // ...

    // onChange={inputTextHandler}
    // onClick={submitToDoHandler}
    // {inputText}


export default Form
