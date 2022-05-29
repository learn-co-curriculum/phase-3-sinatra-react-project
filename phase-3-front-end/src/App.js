import CreateNewPost from "./components/CreateNewPost";
import './App.css';
import GetAllPosts from "./components/GetAllPosts";
function App() {
  return (
    <div className="App">
      <CreateNewPost />
      <GetAllPosts />
    </div>
  );
}

export default App;
