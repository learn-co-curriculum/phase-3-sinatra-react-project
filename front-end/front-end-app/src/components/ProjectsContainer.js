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

    useEffect(() => {
        let url;
        if (selectedPhase && searchQuery) {
          url = `http://localhost:4000/projects?phase=${selectedPhase}&q=${encodeURI(searchQuery)}`;
        } else if (searchQuery) {
          url = `http://localhost:4000/projects?q=${encodeURI(searchQuery)}`;
        } else if (selectedPhase) {
          url = `http://localhost:4000/projects?phase=${selectedPhase}`;
        } else {
          url = "http://localhost:4000/projects";
        }
        fetch(url)
          .then((resp) => resp.json())
          .then((projects) => setProjects(projects));
      }, [selectedPhase, searchQuery]);

      const onAddProject = (newProj) => {
        setProjects((projects) => [...projects, newProj]);
      };
    
      const onUpdateProject = (updatedProject) => {
        setProjects(projects => projects.map(originalProject => {
          if (originalProject.id === updatedProject.id) {
            return updatedProject;
          } else {
            return originalProject;
          }
        }))
      };
    
      const onProjectDelete = (projectId) => {
        setProjects(projects => projects.filter(p => p.id !== projectId))
      };
