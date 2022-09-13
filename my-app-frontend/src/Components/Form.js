import React from 'react';
import '../App.css';
import SongForm from './SongForm';

function Form({songs, setSongs}) {
  return (
    <div>
        <SongForm songs={songs} setSongs={setSongs}/>
    </div>
  );
}

export default Form;