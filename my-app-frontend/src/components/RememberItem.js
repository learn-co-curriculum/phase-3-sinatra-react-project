import React from 'react'

const RememberItem = ({text}) => {
    return (
        <div className="remember">
            <li className='remember-item'>{text}</li>
            {/* <button className='complete-btn'>
                <i className="fas fa-check"></i>
            </button> */}
            <button className='trash-btn'>
                <i className="fas fa-trash"></i>
            </button>
        </div>
    )
}

export default RememberItem