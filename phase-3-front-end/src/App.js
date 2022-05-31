import CreateNewPost from "./components/CreateNewPost";
import './App.css';
import GetAllPosts from "./components/GetAllPosts";
import CreateProduct from "./components/CreateNewProduct";
function App() {
  return (
    <div className="App">
      <CreateNewPost />
      <CreateProduct />
      <GetAllPosts />
    </div>
  );
}

export default App;
