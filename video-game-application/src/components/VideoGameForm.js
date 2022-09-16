import React from "react";

function VideoGameForm ({formCreator, formRating, formTitle, formImage, onChangeRating, onChangeTitle, onChangeImage, onChangeCreator, onSubmitForm, onSubmitRemove, formRemove, onChangeRemove}) {
    
    function handleSubmit(e) {
        e.preventDefault()
        onSubmitForm()
    }

    function handleRemove(e) {
        e.preventDefault()
        onSubmitRemove()
    }
    return (
        <div className="form_div">

            <p>Add a video game you enjoy playing yourself!</p>
            <form onSubmit={handleSubmit}>
                <div><input className="form_input" onChange={onChangeTitle} type="text" value={formTitle} placeholder="game title..."/></div>
                <div><input className="form_input" onChange={onChangeImage} type="text" value={formImage} placeholder="game image url..."/></div>
                <div><input className="form_input" onChange={onChangeRating} type="text" value={formRating} placeholder="game rating..."/></div>
                <div><input className="form_input" onChange={onChangeCreator} type="text" value={formCreator} placeholder="game creator..."/></div>
                <div><button type="submit">SUBMIT GAME</button></div>
            </form>
        </div>
    )
}

export default VideoGameForm;