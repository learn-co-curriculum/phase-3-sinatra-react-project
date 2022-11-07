import React, { useState, useEffect } from "react";
import { Switch, Route } from "react-router-dom";
import ProjectForm from "./ProjectForm";
import ProjectList from "./ProjectList";
import ProjectEditForm from "./ProjectEditForm";
import ProjectDetail from "./ProjectDetail";

function ProjectsContainer() {
    const [projects, setProjects] = useState([]);
    const [selectedPhase, setSelectedPhase] = useState("");
    const [searchQuery, setSearchQuery] = useState("");