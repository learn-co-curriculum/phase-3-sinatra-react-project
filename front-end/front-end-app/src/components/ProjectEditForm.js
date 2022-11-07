import React, { useState, useEffect } from "react";
import { useParams, useHistory } from "react-router-dom";

const initialState = {

  title:"",
  author:"",
  summary:"",
  price:"",
  image:"",
  category:""
  };
const ProjectEditForm = ({ onUpdateProject }) => {
  const [formData, setFormData] = useState(initialState);

  const { title, author, summary, price, image ,category} = formData;

  const { id } = useParams();
  const history = useHistory()
  console.log('id', id)


  useEffect(() => {
    fetch(`http://localhost:4000/projects/${id}`)
      .then((res) => res.json())
      .then((project) => setFormData(project));
  }, [id]);

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData(formData => ({ ...formData, [name]: value }));
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    const configObj = {
      method: "PATCH",
      headers: {
        "Content-Type": "application/json"
      },
      body: JSON.stringify(formData),
    };

    fetch(`http://localhost:4000/projects/${id}`, configObj)
      .then((resp) => resp.json())
      .then((updatedProj) => {
        onUpdateProject(updatedProj);
        history.push("/projects")
      });
  };

  return (
    <form onSubmit={handleSubmit} className="form" autoComplete="off">
      <h3>Edit Book</h3>

      <label htmlFor="tilte">Title</label>
       <input 
       type="text"
        id="title" 
        name="title"
        onChange={handleChange}
        value={formData.title}
        />

      <label htmlFor="author">Author</label>
       <input 
       type="text" 
       id="author" 
       name="author"
       onChange={handleChange}
       value={formData.author}
       />
       

      <label htmlFor="summary">Summary</label>
       <textarea 
       id="summary" 
       name="summary"
       onChange={handleChange}
       value={formData.summary}
       ></textarea>
      

       <label htmlFor="category">Category</label>
       <select 
       name="category" 
       id="category"
       onChange={handleChange}
       value={formData.category}
       >

       <option>Select category</option>
       <option value="Non Fiction">Non Fiction</option>
       <option value="Comic">Comic</option>
       <option value="Thiller">Thriller</option>
       <option value="Romance">Romance</option>
       <option value="Fiction">Fiction</option>
       <option value="TextBook">TextBook</option>
       </select>


       <lable htmlFor='image'>Image</lable>
        <input 
        type="text" 
        id="image" 
        name="image"
        onChange={handleChange}
        value={formData.image}
        />

        <label htmlFor="price">Price</label>
       <input 
       type="text" 
       id="price" 
       name="price"
       onChange={handleChange}
       value={formData.price}
       
       />

      <button type="submit">Update Book</button>
    </form>
  );
};

export default ProjectEditForm;