"""a number guessing game"""

import random;

obj Game{
    has attempts: int, won:bool = False;

    def play;
}

obj GuessTheNumberGame(Game){
    has correct_number: int = random.randint(1, 10);
    def init;
    override def play;
    def process_guess(guess: int);
}
#Running the game

with entry {
    game = GuessTheNumberGame();
    game.play();    
}

impl Game.play{
    raise NotImplementedError("The subclass must implement this method.");
}

impl GuessTheNumberGame.init{
    self.attempts = 10;
    self.correct_number = random.randint(1, 10);
   }   

  impl GuessTheNumberGame.play{
    while self.attempts > 0 {
        guess = input("Guesss a number between 1 and 10 : ");
        if guess.isdigit(){
            self.process_guess(int(guess));
        }else{
            print("That's not a valid number, try again");
        }
    }
    if not self.won{
        print("Sorry, you didnt guess the correct number, better luck next time");
    }
  } 

  impl GuessTheNumberGame.process_guess(guess: int){
    if guess > self.correct_number {
        print("Too high!");
        self.attempts -= 1;
    } elif guess < self.correct_number {
        print("Too low!");
        self.attempts -= 1;
    } else {
        print("Congratulations! You've guessed the correct number!");
        self.won = True;
        self.attempts = 0;
        return;
    }
    print(f"You have {self.attempts} attempts left.");
  }