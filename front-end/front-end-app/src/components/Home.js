import { useEffect, useState } from "react";
import { Link } from "react-router-dom";

const Home = () => {
  const [recentProjects, setRecentProjects] = useState([]);

  useEffect(() => {
    // fetch the 3 most recently added projects from json-server
    fetch("http://localhost:4000/projects?_sort=id&_order=desc&_limit=3")
      .then((r) => r.json())
      .then((recentProjects) => {
        setRecentProjects(recentProjects);
      });
  }, []);

  return (
    <section className="box">
      <h2 style={{ fontSize: "3rem" }}>View Awesome Projects.</h2>
      <p>
        Looking for someone to hire? Check out these awesome projects from
        Flatiron students.
      </p>
      <h3>Recent :</h3>
      {recentProjects.map((project) => (
        <p key={project.id}>{project.name}</p>
      ))}
      <div style={{ margin: "1rem 0" }}>
        <Link className="button" to="/projects">
          View All Books
        </Link>
      </div>
    </section>
  );
};

export default Home;