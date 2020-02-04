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
* [Use](#use)
* [Roadmap](#roadmap)
* [License](#license)
* [Contact](#contact)


<!-- ABOUT THE PROJECT -->
## About The Project
Ruby second collaborative project for Microverse.
### Objective
 1. Getting familiar with OOP concepts, developing a small Tic-Tac-Toe game.
 2. Getting a glimpse on how basic algorithm from Enumerables works.
 
### Assignment:
  * Build a <bold>tic-tac-toe</bold> game on the command line where two human players can play against each other and the board is displayed in between turns.
 ###### <i>This project requires separate code review for each milestone. Please read more in the Code Review section below.</i> ######
  * <strong>Milestone 1: Project setup</strong> Setup project as it is described in requirements.
In addition, create 2 main directories:
    * lib - for the game logic (HINT: as this directory is empty you can use .gitkeep file)
    * bin - with the [executable file] https://commandercoriander.net/blog/2013/02/16/making-a-ruby-script-executable/) called main.rb.
    * main.rb file should be responsible for user interaction. This is the only one place where puts and get.chomp can be used.
    * Make your main.rb file displaying “Hello world!” when you use bin/main.rb as a bash command. 
  * <strong>Milestone 2: User interface</strong>
    * Suggested branch name: user_interface.
    * main.rb file should be responsible for user interaction. In this milestone you should only create content in this file.
    * Think about steps needed to play the game:
      * what do you need from player?
          * what do you need to display for player?
    * Display prompts for users (hint: puts/print), collect user input (hint: get.chomp) and only mock the basic flow of the game (you can use puts or inline comments to say for example “Now, your move is displayed on the board”).
    * Make sure that you can run your game with your executable file and play with the basic flow.
    * The final point of this milestone is to make sure that you thought about all actions needed to play * Tic Tac Toe. It does not need to work yet - this will be done in the next milestone.
  * <strong> Milestone 3: Game logic </strong>
    * Suggested branch name game_logic.
    * Add real logic for your game - get rid of all inline comments and mocked logic used in previous milestone.
    * As main.rb file should be responsible for user interaction, this is the only(!) one place where puts/print and get.chomp can be used.
    * Think how you can encapsulate diffrent parts of game logic in classes. Do not create one class for everything.
    * Read about DRY rule and use it.
    * Think about the diffrence between attr_readers/attr_writers and atrr_acessors. Use atrr_acessors only if you really need it.
    * Remember about single responsibility rule. Always.
    * Remember to cover edge cases: think what player could try to do to cheat the game and make sure that your program does not allow to perform invalid action.
  * <strong>Milestone 4: Game instructions and final touches</strong>  
    * Suggested branch name readme_game_instructions
    * Add full description of game rules in README file - remember that some people might not be familiar with Tic Tac Toe game rules.
    * Make sure that you informed your players on how to start your game - they might not be programmers.
    * Improve anything you want to improve in order to mkae your game perfect.
    
    ![Project Screen Shot][product-screenshot]
  
### Built With
This project was built using raw Ruby. 

<!-- USAGE EXAMPLES -->
## Use
<bold>How should this be manually tested?</bold>
Clone the repo then navigate to the project directory, on the terminal type bin/main.rb
###### How to play ######
* After choosing a name, Player 1 (X) will start.
* Press 1 - 9 to place your move in the 3 x 3 grid that will show on screen.
  * <br>![Numbered grid][numbers-grid]
* After game ends, press y or n to continue or exit.
* You can force a break in the loop by typing -5 as an input.

<i>Tic-Tac-Toe instructions</i> 
 * Tic-Tac-Toe is a paper-and-pencil game for two players, X and O, who take turns marking the spaces in a 3×3 grid.
 * Player move is permanent and can't be moved again. If a position is taken you can not overwrite it.
 * The player who succeeds in placing three of their marks in a horizontal, vertical, or diagonal row is the winner.
 * If no move is available, then it's a tie.
 
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