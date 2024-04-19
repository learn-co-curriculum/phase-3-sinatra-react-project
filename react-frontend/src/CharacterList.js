function CharacterList({ characters, handleSelectedCharacter }) {
  
  const characterCard = characters.map(character => 
      <button class="fancy-btn" onClick={() => handleSelectedCharacter(character)} key={character.id}>{character.name}</button>)

 
  
  return(
    <div>
      {characterCard}
    </div>
    )
  }

export default CharacterList;