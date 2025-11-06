import random;


class Game { 
    def init (self:Game, attempts:int = 0) {
        self.attempts = attempts;
        self.won = False;
    }   

    def play(self: Game){
        raise NotImplementedError("Sublass should implement this method");
    }
}

class GuessTheNumberGame(Game){
    def init (self:GuessTheNumberGame, attempts:int = 0){
        super().init(attempts);
        self.correct_number = random.randint(1, 10);
    }

    def play(self:GuessTheNumberGame){
        while self.attempts > 0{
            guess = input("Enter your guess (1-10): ");
            if guess.isdigit(){
                self.process_guess(int(guess));
                if self.won{
                    print("Congratulations! You've guessed the correct number!");
                    break;
                }
                else{
                    print ("Wrong guess. Try again.");
                }
            }
            if not self.won{
                print("You did not guessed the number correctly, better luck next time");
            }
        }
    }
    def process_guess(guess:int){
        if guess > self.correct_number{
            print("Number too High");
        }elif guess < self.correct_number{
            print("Number too Low");
        }else{
            print("Congratulation, you won !");
            self.won = True;
            return;
        }
    }
  
}
 with entry {
        guess = GuessTheNumberGame();
        game.play();
     }
