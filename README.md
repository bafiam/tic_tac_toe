[![Contributors][contributors-shield]][contributors-url]
[![Issues][issues-shield]][issues-url]
<br />
<p align="center">
 
  <h2 align="center">Tic-Tac-Toe</h2>
  <p align="center">
   Second collaborative project from Microverse (Ruby)
    <br />
    <a href="https://github.com/bafiam/tic_tac_toe"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    ·
    <a href="https://github.com/bafiam/tic_tac_toe/issues">Report Bug</a>
    ·
    <a href="https://github.com/bafiam/tic_tac_toe/issues">Request Feature</a>
  </p>
</p>


<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [How to play](#how-to-play)
  * [Rules](#rules)
  * [Instructions](#instructions)
* [Roadmap](#roadmap)
* [License](#license)
* [Contact](#contact)


<!-- ABOUT THE PROJECT -->
## About The Project 
Ruby second collaborative project for Microverse that involves developing a [Tic-Tac-Toe](https://en.wikipedia.org/wiki/Tic-tac-toe) game. The game can be played on the console. The game mimics the object oriented (OOP) concepts in the ruby programming language. You can see the original specifications [here](https://www.theodinproject.com/courses/ruby-programming/lessons/oop).
### Objective
 The main goal is to put into practice the main concepts of Object Oriented Programming. Particularly, classes and access to their attributes.

### Prerequisites
 The development environment uses `Ruby`, hence install ruby before proceeding.
  - Mac OS - `brew install ruby`
  - Linux - `sudo apt-get install ruby-full`
  - windows - Download RubyInstaller [here](https://rubyinstaller.org/), run it, and you are done!

### Installation and set-up
1. You can download the zip project clicking [here](https://github.com/bafiam/tic_tac_toe/archive/develop.zip) or you can clone the project using the command - git clone <https://github.com/bafiam/tic_tac_toe.git> 
2. If you are in windows, just navigate to the tic-tac-toe folder/bin and click on main to start the game. On Linux, navigate with console using [cd command](https://help.ubuntu.com/community/UsingTheTerminal) and then write `ruby bin/main.rb`

### Game Overview
  
  ![Project Screen Shot][product-screenshot]
  
### Built With
This project was built with: 
* Ruby (No libraries)
* Stickler
* Rubocop

<!-- USAGE EXAMPLES -->

## How to play

### Rules 

 * Tic-Tac-Toe is a paper-and-pencil game for two players, X and O, who take turns marking the spaces in a 3×3 grid.
 * Player move is permanent and can't be moved again. If a position is taken you can not overwrite it.
 * The player who succeeds in placing three of their marks in a horizontal, vertical, or diagonal row is the winner.
 * If no move is available, then it's a tie.
 * <strong>Full rules descriptions and details about Tic-Tac-Toe and its variables</strong> [here](https://en.wikipedia.org/wiki/Tic-tac-toe).

### Instructions
 * Once you start the game, players will choose a name. After that, Player 1 (X) will start.
 * Press 1 - 9 to place your move in the 3 x 3 grid that will show on screen.
    * <br>![Numbered grid][numbers-grid]
 * After game ends, press y or n to continue or exit.
 * When another game starts, player who started second on previous round will start first.
 * You can force a break in the game loop at anytime by typing -5 as an input.
<!-- ROADMAP -->
## Roadmap

See the [open issues ](https://github.com/bafiam/tic_tac_toe/issues)for a list of proposed features (and known issues).

<!-- CONTACT -->
## Contact

Facundo Iglesias - [Github profile](https://github.com/Fig77)

Stephen Gumba - [Github profile](https://github.com/bafiam)

Project Link: - [Project repo](https://github.com/bafiam/tic_tac_toe)


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/badge/Contributors-2-brightgreen
[contributors-url]: https://github.com/Fig77/Gradients-Project/graphs/contributors
[issues-shield]: https://img.shields.io/badge/issues-0-%2300ff00
[issues-url]: https://github.com/Fig77/Gradients-Project/issues
[product-screenshot]: img/ss_3.png
[numbers-grid]: img/number_grid.png