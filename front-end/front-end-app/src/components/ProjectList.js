import ProjectListItem from "./ProjectListItem";
import { useState, useEffect } from "react";
import { NavLink, useHistory, useParams, useRouteMatch, useLocation } from "react-router-dom";

const ProjectList = ({
  projects,
  onProjectEdit,
  onProjectDelete,
  setSelectedPhase,
  setSearchQuery