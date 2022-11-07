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

  return (
    <li className="card">
      <Link to={`/projects/${id}`}>
        <figure className="image">
          <img src={image} alt={name} />
          <button onClick={handleClap} className="claps">
            👏{clapCount}
          </button>
        </figure>
      </Link>

      <section className="details">
        <h4>{name}</h4>
        <p>{about}</p>
        {link ? (
          <p>
            <a href={link}>Link</a>
          </p>
        ) : null}
      </section>

      <footer className="extra">
        <span className="badge blue">Phase {phase}</span>
        <div className="manage">
          <Link className="button" to={`/projects/${id}/edit`}>
            <FaPencilAlt />
          </Link>
          <button onClick={handleDeleteClick}>
            <FaTrash />
          </button>
        </div>
      </footer>
    </li>
  );
};

export default ProjectListItem;