import { BrowserRouter as Router, Switch, Route, Redirect } from 'react-router-dom';
import MuseumsContainer from './Components/MuseumsContainer';
import Trips from "./Components/Trips";
import MuseumSelection from "./Components/MuseumSelection";
import HomePage from "./Components/HomePage";
import NavBar from "./Components/NavBar";

function App() {
  return (
    <Router>
      {/* <NavBar /> */}
      <Switch>
        <Route path="/museums">
          <MuseumsContainer />
        </Route>
        <Route path="/trips">
          <Trips />
        </Route>
        <Redirect to="/museums"></Redirect>
      </Switch>
    </Router>
  );
}


export default App;
