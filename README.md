<a name="readme-top"></a>

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
-->
# [![Andrea][linkedin-shield]][linkedin-url1] Andrea [![Alie][linkedin-shield]][linkedin-url2] Alie [![Kelsey][linkedin-shield]][linkedin-url3] Kelsey



<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/AndreaRose92/dnd-flatbase-backend">GitHub BACKEND</a>
  <a href="https://github.com/AndreaRose92/dnd-flatbase-frontend">GitHub FRONTEND</a>


<h1 align="center">DND FLATBASE</h1>

  <p align="center">
    Welcome to DND Flatbase!
    <br />
    <br />
    <br />
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

<!-- [![Product Name Screen Shot][product-screenshot]](https://example.com) -->

Dnd Flatbase is a full-stack web application which calls to the DnD5E web API for data on classes, races, spells, etc... which was used to create a custom API. We built a frontend to fetch from our databases which allows a user to select a player or create a new one. Clicking on that player card then navigates the user to a list of their characters as cards. 

The character cards can be clicked to open their individual character sheet or the character can be edited or deleted from the main character page.

The character sheet contains functionality for healing or damaging current hit point levels. Saving throws and skills apply the characters proficiency bonus based on their chosen race and class. In addition, the character will populate spells if their class has any and the number of spells at each spell level is determined by the characters level.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



### Built With

* [![React][React.js]][React-url]
* [![Ruby][Ruby]][Ruby-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

A few dependencies are needed to run the frontend and backend.

### Prerequisites

You'll need to run bundler for the backend and node package manager on the frontend.

For the backend, bundler should install all of the gems in the gemfile if you run:
  ```sh
  bundle install 
  ```

The package.json file should contain all the packages node needs to run the frontend.


### Frontend Installation

1. Fork and clone the repo
   ```sh
   git clone https://github.com/AndreaRose92/dnd-flatbase-frontend
   ```
2. Install NPM packages on the frontend clone
   ```sh
   npm install
   ```
3. Run the development server
    ```sh
    npm start
    ```

### Backend Installation

1. Fork and clone the repo
   ```sh
   git clone https://github.com/AndreaRose92/dnd-flatbase-backend
   ```
2. Install Ruby gems on the backend clone
   ```sh
   bundle install
   ```
3. Run the migrations and seed the database
    ```sh
    bundle exec rake db:migrate db:seed
    ```
4. Run the database server
    ```sh
    bundle exec rake server
    ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>




<!-- CONTACT -->
## Contact
Andrea Rosentel - [LinkedIn][linkedin-url1] - [GitHub](https://github.com/AndreaRose92/)

Alie Brubaker - [LinkedIn][linkedin-url2] - [GitHub](https://github.com/AlbertaLynnBrubaker)

Kelsey Weeks - [@twitter_handle][linkedin-url3] - [GitHub]()

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/github_username/repo_name.svg?style=for-the-badge
[contributors-url]: https://github.com/github_username/repo_name/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/github_username/repo_name.svg?style=for-the-badge
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url1]: https://www.linkedin.com/in/andrearosentel/
[linkedin-url2]: https://www.linkedin.com/in/alie-brubaker/
[linkedin-url3]: https://www.linkedin.com/in/kelseyweeks/
[product-screenshot]: images/screenshot.png
[file-structure-screenshot]: images/screenshot.png  
[Next.js]: https://img.shields.io/badge/next.js-000000?style=for-the-badge&logo=nextdotjs&logoColor=white
[Next-url]: https://nextjs.org/
[React.js]: https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB
[React-url]: https://reactjs.org/
[Ruby]: https://www.ruby-lang.org/images/header-ruby-logo.png
[Ruby-url]: https://www.ruby-lang.org/en/
[JQuery.com]: https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white
[JQuery-url]: https://jquery.com 