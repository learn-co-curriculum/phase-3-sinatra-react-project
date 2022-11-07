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