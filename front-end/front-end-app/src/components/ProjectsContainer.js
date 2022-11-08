import React, { useState, useEffect } from "react";
import { Switch, Route } from "react-router-dom";
import ProjectForm from "./ProjectForm";
import ProjectList from "./ProjectList";
import ProjectEditForm from "./ProjectEditForm";
import ProjectDetail from "./ProjectDetail";

function ProjectsContainer() {
    const [projects, setProjects] = useState([]);
    const [selectedCategory, setSelectedCategory] = useState("");
    const [searchQuery, setSearchQuery] = useState("");

    useEffect(() => {
        let url;
        if (selectedCategory && searchQuery) {
          url = `http://localhost:4000/projects?phase=${selectedCategory}&q=${encodeURI(searchQuery)}`;
        } else if (searchQuery) {
          url = `http://localhost:4000/projects?q=${encodeURI(searchQuery)}`;
        } else if (selectedCategory) {
          url = `http://localhost:4000/projects?phase=${selectedCategory}`;
        } else {
          url = "http://localhost:4000/projects";
        }
        fetch(url)
          .then((resp) => resp.json())
          .then((projects) => setProjects(projects));
      }, [selectedCategory, searchQuery]);

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

      return (
        <>
          <Switch>
            <Route path="/books/:id/edit">
              <ProjectEditForm
                onUpdateProject={onUpdateProject}
              />
            </Route>
            <Route path="/books/new">
              <ProjectForm onAddProject={onAddProject} />
            </Route>
            <Route exact path="/books/:id">
              <ProjectDetail />
            </Route>
             <Route path="/books/category/:category">
              <ProjectList
                projects={projects}
                onProjectDelete={onProjectDelete}
                setSelectedCategory={setSelectedCategory}
                setSearchQuery={setSearchQuery}
                />
            </Route>
            <Route path="/books">
              <ProjectList
                projects={projects}
                onProjectDelete={onProjectDelete}
                setSelectedCategory={setSelectedCategory}
                setSearchQuery={setSearchQuery}
                />
            </Route>
          </Switch>
        </>
      )
    }
    
    export default ProjectsContainer;
