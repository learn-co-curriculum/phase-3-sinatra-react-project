import CharacterCard from "./CharacterCard"
import { useState } from 'react'

function CharacterList({ characters }) {
  const [selectedCharacter, setSelectedCharacter] = useState({})
  const [selectedCharacterState, setSelectedCharacterState] = useState(false)

  

  const handleSelectedCharacter = (character) => {
    setSelectedCharacter(character)
    setSelectedCharacterState(!selectedCharacterState)
  }
  
  const characterCard = characters.map(character => 
      <button onClick={() => handleSelectedCharacter(character)} key={character.id}>{character.name}</button>)

  return(
    <div>
       {characterCard}
       {selectedCharacterState ? <CharacterCard selectedCharacter={selectedCharacter} setSelectedCharacter={setSelectedCharacter}/> : null}
    </div>
     
  )
  }

export default CharacterList;