import React from "react";

function PersonDetail({ personList, showPerson}) {
  return (
    <div>
      <header>
        <p> Select Profile
          <select id="persondetails" onChange={(e) => showPerson(e.target.value)}>
            {personList.map((person) => (
              <option value={person.name}>{person.name}</option>
            ))}
          </select>
        </p>
      </header>
    </div>
  );
}

export default PersonDetail;