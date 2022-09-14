import React, { useState, useEffect } from 'react'
// import RememberItem from "./RememberItem"

// ...

function Form({ addRemember }) {
    const [value, setValue] = React.useState("");
    const [categoryValue, setCategoryValue] = React.useState("");

  
    const handleSubmit = e => {
      e.preventDefault();
      if (!value) return;
      addRemember(value);
      setValue("");
    };
  
    return (
      <form onSubmit={handleSubmit}>
        <input
          type="text"
          className="input"
          value={value}
          onChange={e => setValue(e.target.value)}
        />
        
      </form>
    //   <categorydropdown></>
    // <button></button> will take over handleSubmit
    );
  }

  
  // ...

    // onChange={inputTextHandler}
    // onClick={submitToDoHandler}
    // {inputText}


export default Form
