# Summary
This is a 2 player CLI Math game. Players will each take turn answering simple addition question. Each player has 3 lives and will lose 1 for every incorrect answer. Game ends when 1 player loses all lives

## Game Flow
Task: Game will start and welcome 2 players. (players will each be granted 3 lives). PLAYER
  Loop:
    Set the player to be questioned GAME
    Question will run and give a random addition problem with 2 numbers. QUESTION
    Prompt player 1 for an answer. GAME
    if correct QUESTION
      success message QUESTION
    else
      fail message QUESTION
      take a life away from the player PLAYER

## Classes: Person, Game, Turns, Questions

### Player
- lives initialized to 3
- life getter/setter

### Game
- set current player turn
- get player answers
- answers checking
- looping questions

### Questions
- set question
- set answer