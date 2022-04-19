import './App.css';
import { useState, useEffect } from 'react'

function App() {

  const [museums, setMuseums] = useState([])

  useEffect(() => {
    fetch('http://localhost:9292/trips')
      .then(res => res.json())
      .then((data) => setMuseums(data))
  }, [])

  console.log(museums)

  return (
    <div className="App">
      <header className="App-header">
      </header>
    </div>
  );
}

export default App;
