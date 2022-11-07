import ProjectListItem from "./ProjectListItem";
import { useState, useEffect } from "react";
import { NavLink, useHistory, useParams, useRouteMatch, useLocation } from "react-router-dom";

const ProjectList = ({
  projects,
  onProjectEdit,
  onProjectDelete,
  setSelectedCategory,
  setSearchQuery
}) => {
  const [searchInputText, setSearchInputText] = useState("");
  const { category } = useParams();
  // useLocation provides access to query parameters as search
  const { search } = useLocation();
  // useHistory gives access to the history object so we can update the url
  const history = useHistory();
  // useRouteMatch used to access the url without any query parameters
  const { url } = useRouteMatch(); 

  
  // console.log('useLocation() search', search);
  // console.log('useRouteMatch url', url);


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
    setSelectedCategoty(category);
  }, [category, setSelectedCategory])

  useEffect(() => {

    setSearchInputText(new URLSearchParams(search).get('q'))
  }, [search])


  return (
    <section>
      <h2>Books</h2>

      <div className="filter">
        <NavLink 
          className="button" 
          exact to={{
            pathname: "/books",
            search: search
          }}
        >
          All
        </NavLink>
        <NavLink 
          className="button" 
          to={{
            pathname: "/books/category/non-fiction",
            search: search
          }}
        >
          Non-fiction
        </NavLink>
        <NavLink 
          className="button" 
          to={{
            pathname: "/books/category/comic",
            search: search
          }}
        >
          Comic
        </NavLink>
        <NavLink
          className="button"
          to={{
            pathname: "/books/category/thriller",
            search: search
          }}
        >
          Thiller
        </NavLink>
        <NavLink 
          className="button" 
          to={{
            pathname:"/books/category/romance",
            search: search
          }}
        >
          Romance
        </NavLink>
        <NavLink 
          className="button" 
          to={{
            pathname: "/books/category/fiction",
            search: search
          }}
        >
          Fiction
        </NavLink>
        <NavLink 
          className="button" 
          to={{
            pathname: "/books/category/textbook",
            search: search
          }}
        >
          TextBook
        </NavLink>
      </div>
      <input type="text" placeholder="Search..." onChange={handleOnChange} value={searchInputText} />

      <ul className="cards">{projectItems}</ul>
    </section>
  );
};

export default ProjectList;