import React, { useState, useEffect } from 'react'
import SessionRemItem from "./SessionRemItem"
import Form from "./Form"


// import RememberItem from "./RememberItem"

function SessionRemList() {

    const [sessionRemembers, setSessionRemembers] = useState([{
        "id": 1,
        "user_id": 1,
        "category_id": 3,
        "remember": "I remember hours and hours in the high school library running my hands along the spines of books.",
        "created_at": "2022-09-14T01:24:14.057Z",
        "updated_at": "2022-09-14T17:28:25.667Z"
    }])

    const addRemember = text => {
        const newRemembers = [...sessionRemembers, { "remember":text, "category_id": 3 }];

        setSessionRemembers(newRemembers);
      };

    return (
        <div>
        <Form addRemember={addRemember}/>

        <div className="remember-container">
            <ul className="remember-list"></ul>
                {sessionRemembers ?  sessionRemembers.map(remember => <SessionRemItem text={remember.remember} id={remember.id} /> ) : null}

        </div>
        </div>
        
    )
    }

export default SessionRemList