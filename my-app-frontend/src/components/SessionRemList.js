import React, { useState, useEffect } from 'react'
import SessionRemItem from "./SessionRemItem"
import Form from "./Form"

function SessionRemList() {

    const [sessionRemembers, setSessionRemembers] = useState("")

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