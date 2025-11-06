with entry{
    print("Hello Mgetich");
}

with entry{
    name = "Mgetich";
    age = 40;
    is_single = False;
    is_driving:bool = True;
    no_of_schooling:int =20;
    tax_completed:float = 10.8;
    car_type:str = "Lamborghini";
    print(name);
    print(age);
    print(is_single);
    print(is_driving);
    print(tax_completed);
    print(f" {name} 👀🪐🏎 is {age} and he is currently cruising {car_type}");



}
#Changing variables

with entry {
    score:float = 80.6;
    print(score);
    score: float = 90.3;
    print(score);
    score =score+2;
    print(score);
}

#Area of a rectangle

with entry{
    length:int = 20;
    width:int = 13;
    area = length * width;
    
    print(area);
}


#Temperature

with entry{
    temperature = 40;

    if temperature < 40 {
        print("Good for fun");
    }
    else{
        print("Go swimming");
    }
    }


#Scoring
with entry {
    score = 67;

    if score >= 70{
    print("Grade A");
    }elif score >= 60{
    print("Grade B");
    }elif score >= 50{
    print("Grade C");
    }elif score >= 40{
    print("Grade D");
    }else{
    print("You need to repeat class");
    }
    }

    #driving if age is 16 and licensed , else if age is below 16 or above 60, then discounted ,else if not licensed , go to school

    with entry{
          age = 8;
          is_licensed = True;

          if age > 16 and is_licensed {
            print("Kindly you can drive");
          }
          if age < 16 or age > 60 {
            print("Discounted ticketing");
          }
          if not is_licensed{
            print("go to school");
          }

    }

    with entry{
        weather = "sunny";
        temperature = 50;

        if weather == "sunny"{
            if temperature > 45 {
                print("lets go swimming");
               }else{
                print("Kayaking we go");
             }
        }else{
            print("Scrabble we play");
        }
    }

    with entry{
    age = 17;

    if age <=12 {
        print("child");
    }
        elif age<= 19{
            print("teenager");
        }elif age <=64{
            print("adult");
        }else{
            print("senior");
        }
    }



with entry{
count = 1;
while count <=5{
    print(f"The count for Erella 🤹‍♀️  💥   💙    💛   🧡   ❤  🤍    🤍   🤍 is {count}");
    count += 1;
}
print("Well done !!!");


}