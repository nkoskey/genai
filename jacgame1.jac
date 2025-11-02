import random;

obj GuessTheNumberGame {
    has attempts: int;
    has correct_number: int;
    has won: bool;

    def init {
        self.attempts = 10;
        self.correct_number = random.randint(1, 10);
        self.won = False;

    }

    def play {
        while self.attempts > 0 and not self.won {
            guess_str = input("Guess a number between 1 and 10: ");
            
            if guess_str.isdigit() {
                guess_num = int(guess_str);
                
                if guess_num == self.correct_number {
                    print("Congratulations! You've guessed the correct number!");
                    self.won = True;
                } elif guess_num > self.correct_number {
                    print("Too high!");
                    self.attempts = self.attempts - 1;
                } else {
                    print("Too low!");
                    self.attempts = self.attempts - 1;
                }
                
                if self.attempts > 0 and not self.won {
                    print(f"You have {self.attempts} attempts left.");
                }
            } else {
                print("Please enter a valid number.");
            }
        }
        
        if not self.won {
            print(f"Sorry, you've run out of attempts. The correct number was {self.correct_number}");
        }
    }
}

with entry {
    game = GuessTheNumberGame();
    game.play();
}