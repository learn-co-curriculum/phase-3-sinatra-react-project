import CharacterCreation from "./CharacterCreation";
import CharacterList from "./CharacterList";

function User(){
    return(
        <div>
           <h1>User things go Here!</h1>
           <CharacterCreation/>
           <CharacterList/>
        </div>
    )
}

export default User;