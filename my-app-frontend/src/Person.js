import React from "react";

function Person() {

    function refundTicket(){
        fetch(`http://localhost:3000/persons/purchased/`, {
            method: "Delete",
        })
     }

    return (
    <div>
      <button onClick={refundTicket}>X</button>
    </div>
    );
}

export default Person;