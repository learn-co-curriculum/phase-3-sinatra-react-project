import ProjectListItem from "./ProjectListItem";
import { useState, useEffect } from "react";
import { NavLink, useHistory, useParams, useRouteMatch, useLocation } from "react-router-dom";

const ProjectList = ({
  projects,
  onProjectEdit,
  onProjectDelete,
  setSelectedPhase,
  setSearchQuery
}) => {
  const [searchInputText, setSearchInputText] = useState("");
  const { phase } = useParams();
  // useLocation provides access to query parameters as search
  const { search } = useLocation();
  // useHistory gives access to the history object so we can update the url
  const history = useHistory();
  // useRouteMatch used to access the url without any query parameters
  const { url } = useRouteMatch(); 

  
  console.log('useLocation() search', search);
  console.log('useRouteMatch url', url);

  const projectItems = projects.map((project) => {
    return (
      <ProjectListItem
        key={project.id}
        project={project}
        onProjectEdit={onProjectEdit}
        onProjectDelete={onProjectDelete}
      />
    );
  });
  const handleOnChange = (e) => setSearchInputText(e.target.value);

  useEffect(() => {
    const scheduledUpdate = setTimeout(() => {
      setSearchQuery(searchInputText);
      if (searchInputText) {
        history.push(`${url}?${new URLSearchParams({q: encodeURI(searchInputText)}).toString()}`)
      } else {
        history.push(`${url}`)
      }
    }, 300)
    return () => {
        clearTimeout(scheduledUpdate);
      }
    }, [setSearchQuery, searchInputText, history, url])
  
    useEffect(() => {
      setSelectedPhase(phase);
    }, [phase, setSelectedPhase])
    useEffect(() => {
        setSearchInputText(new URLSearchParams(search).get('q'))
      }, [search])
      return (
        <section>
         <h2>Books</h2>
          <div className='filter'>
          <button style={{color: "darkkhaki"}} onClick={()=>setSelectedCategory("")}>All</button>
          <button style={{color: "darkkhaki"}} onClick={()=>setSelectedCategory("Non-Fiction")}>Non-Fiction</button>
          <button style={{color: "darkkhaki"}} onClick={()=>setSelectedCategory("Comic")}>Comic</button>
          <button style={{color: "darkkhaki"}} onClick={()=>setSelectedCategory("Thiller")}>Thriller</button>
          <button style={{color: "darkkhaki"}} onClick={()=>setSelectedCategory("Romance")}>Romance</button>
          <button style={{color: "darkkhaki"}} onClick={()=>setSelectedCategory("Fiction")}>Fiction</button>
          <button style={{color: "darkkhaki"}} onClick={()=>setSelectedCategory("TextBook")}>Textbook</button>
          </div>
          <input type="text" placeholder="Search..." onChange={handleOnChange} value={searchInputText} />
    
          <ul className="cards">{projectItems}</ul>
        </section>
      );
    };
    
    export default ProjectList;