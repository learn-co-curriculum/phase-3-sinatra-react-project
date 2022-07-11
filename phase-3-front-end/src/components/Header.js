import React from "react";

const Header = () => {
  return (
    <div className="header">
      <h1
        style={{
          padding: "20px",
          color: "white",
        }}
      >
        <span>
          {"un"}
          <img
            src="https://pbs.twimg.com/profile_images/585326586368393217/RJHc4kbo_400x400.png"
            alt="tiger pic"
            width={50}
            height={50}
          ></img>
        </span>
        identified
      </h1>
    </div>
  );
};

export default Header;
