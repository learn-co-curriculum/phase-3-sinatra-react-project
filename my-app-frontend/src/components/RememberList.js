import React, { useState, useEffect } from 'react'
import RememberItem from "./RememberItem"

function RememberList({rememberList, deleteRemember, updateRemember, editedRowId}) {
    return (

        <div className="remember-container">
            <ul className="remember-list"></ul>
                {rememberList ?  rememberList.map(remember => <RememberItem text={remember.remember} id={remember.id} deleteRemember={deleteRemember} updateRemember={updateRemember} editedRowId={editedRowId} /> ) : null}

        </div>
        
    )
    }

export default RememberList
