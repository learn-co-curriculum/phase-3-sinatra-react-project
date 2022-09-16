import React from 'react'

const SessionRemItem = ({text}) => {
    return (
        <div className="remember">
            <li className='remember-item'>{text}</li>

            <button className='delete'>
                <i className="delete"></i>
            </button>
        </div>
    )
}

export default SessionRemItem