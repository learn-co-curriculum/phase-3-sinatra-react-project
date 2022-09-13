import '../App.css';
import Home from './Home.js'
import NavBar from './NavBar.js';
import List from './List.js';
import ListItem from './ListItem.js';
import AttractionsForm from './AttractionsForm.js';
import FilterSort from './FilterSort.js';

function App() {
  return (
    <div className="App">
      <NavBar/>
      <Home/>
      <List/> 
      <ListItem/>
      <AttractionsForm/>
      <FilterSort/>
    </div>
  );
}

export default App;
