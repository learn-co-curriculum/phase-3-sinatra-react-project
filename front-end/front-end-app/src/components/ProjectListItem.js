import { useState } from "react";
import { FaPencilAlt, FaTrash } from "react-icons/fa";
import { Link } from "react-router-dom";

const ProjectListItem = ({
    project,
    onProjectEdit,
    onProjectDelete,
  }) => {
    const { id, image, about, name, link, phase } = project;
  
    const [clapCount, setClapCount] = useState(0);
  
    const handleClap = (clapCount) => setClapCount(clapCount + 1);
  
    const handleEditClick = () => {
      onProjectEdit(project);
    };

    const handleDeleteClick = () => {
        onProjectDelete(id)
        fetch(`http://localhost:4000/projects/${id}`, {
          method: "DELETE"
        })
      };