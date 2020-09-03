[![Contributors][contributors-shield]][contributors-url]
[![Issues][issues-shield]][issues-url]
<br />
<p align="center">
 
  <h3 align="center">Manga top</h3>
  <p align="center">
    Web applicaton for the review of mangas and comics, built with Ruby on Rails.
    <br />
    <a href="#table-of-contents"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    ·
    <a href="https://github.com/kalavhan/manga-top/issues">Report Bug</a>
    ·
    <a href="https://blooming-crag-23204.herokuapp.com/">Live version</a>
    ·
    <a href="https://github.com/kalavhan/manga-top/issues">Request Feature</a>
  </p>
</p>

![screenshot](screenshots/homepage.jpg)

<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Features](#features)
  * [Built With](#built-with)
* [Screenshots](#screenshots)
* [Prerequisites](#prerequisites)
* [Setup](#setup)
* [Usage](#usage)
* [Roadmap](#roadmap)
* [License](#license)
* [Contact](#contact)



<!-- ABOUT THE PROJECT -->
## About The Project
Manga Top is a web application to review Mangas, where anyone can read the reviews and registred users can comment, like or publish their own.

## Features
 - Create an account
 - Log in to account
 - Homepage with most recent articles
 - Articles by category
 - Comment an article
 - Like an article

## Built With
- Ruby on Rails 6
- SCSS
- ERB

## Screenshots

### Home page
![screenshot](screenshots/homepage.jpg)

### Signup page
![screenshot](screenshots/signup.png)

### Signin page
![screenshot](screenshots/signin.png)

### Create article page
![screenshot](screenshots/create.png)

### Articles per categorie page
![screenshot](screenshots/categorie.png)

## Prerequisites
 - Git
 - Ruby
 - Ruby on Rails 6
 - Yarn
 - Node.js
 - PostgreSQL

## Setup

Use the [git](https://git-scm.com/downloads) to clone the project to your local machine.
```sh
$ git clone https://github.com/kalavhan/manga-top.git
```

Navigate to the extracted folder
```sh 
cd manga-top
```

Install and update dependencies and modules
```sh
$ bundle install
$ bundle update
```
Create and populate database
```sh
$ rails db:create
$ rails db:migrate
$ rails db:seed
```

### Usage
```sh
$ rails server
```
This will open the app at 127.0.0.1:3000. If it doesn't open, visit ```http://localhost:3000```

<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/kalavhan/manga-top/issues) for a list of proposed features (and known issues).


<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.

<!-- CONTACT -->
## Contact
👤 **Josue Brigido**

[Github](https://github.com/kalavhan) | [Twitter](https://twitter.com/kalavhan) | [LinkedIn](https://linkedin.com/in/kalavhan)

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/badge/Contributors-1-%2300ff00
[contributors-url]: https://github.com/kalavhan/manga-top/graphs/contributors
[issues-shield]: https://img.shields.io/badge/issues-0-%2300ff00
[issues-url]: https://github.com/kalavhan/manga-top/issues/
