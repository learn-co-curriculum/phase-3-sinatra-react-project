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
      // when we debounce and update the fetch request we also want to:
      // update the url with the contents of the search input text
      // we use the url from useRouteMatch to access the current route
      // without query parameters
      // currently this could be /projects or /projects/phase/5
      // we'll add on a query parameter containing the search text or 
      // remove the query parameter if the search input is empty
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