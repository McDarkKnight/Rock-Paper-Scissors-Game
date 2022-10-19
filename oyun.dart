import 'dart:io';
import 'dart:math';

var avatar;
var playermove;
int? randomnumber;
bool quitwhile = true ;
int aiwins = 0;
int playerwins= 0;
void main() {
print("\nWelcome To Rock/Paper/Scissors Game");
 StartGame();
}

GameEnd(){
print("Good Bye dear player see you soon.....");
}

StartGame(){
  bool choose = true;
  while(choose){

    print("Choose your avatar dear player \ Paper Lord, King Of The Rock, Scissors Prince");
    avatar = stdin.readLineSync()!.toLowerCase();
      if(avatar=="paper lord" || avatar=="king of the rock" || avatar=="scissors prince"){
        choose=false;
        PlayGame();
       }
       else if(avatar == "exit"){
              choose = true;
              break;
            }
            else{
              print("\n Wrong decision");
            }
   }
   print("\n Play again? Y or N");
  var again = stdin.readLineSync()!.toLowerCase();
  if(again == "y"){
    again = "n";
    quitwhile = true;
    StartGame();
  }
  else if(again == "n"){
    GameEnd();
  }

}

PlayGame(){

  
    print("\n Choose your move and start the game");
    if(avatar=="paper lord"){
      while(quitwhile){
        bool choose = true;
          while(choose){
          print("Paper / Rock / Scissors");
          playermove = stdin.readLineSync()!.toLowerCase();
            if(playermove=="paper" || playermove=="rock" || playermove=="scissors"){
            choose=false;
            }
            else if(playermove == "exit"){
              quitwhile = true;
              break;
            }
            else{
              print("Wrong decision");
            }
         }
        
        if(playermove == "exit"){
          quitwhile = false;
          choose = false;
          }
        else
          PaperLord();
        print("AI Point= $aiwins");
        print("Your Point= $playerwins");
        if(aiwins==3 || playerwins==3){quitwhile=false;}
      }

      if(aiwins>playerwins){
        print("Big Fail my lord Big Fail");
      }
      else if(playerwins>aiwins){
        print("Glorious Victory my lord");
      }
    }


   else if(avatar=="king of the rock"){
      while(quitwhile){
        bool choose = true;
          while(choose){
          print("Paper / Rock / Scissors");
          playermove = stdin.readLineSync()!.toLowerCase();
            if(playermove=="paper" || playermove=="rock" || playermove=="scissors"){
            choose=false;
            }
            else if(playermove == "exit"){
              quitwhile = true;
              break;
            }
            else{
              print("Wrong decision");
            }
         }
         
        if(playermove == "exit"){
          quitwhile = false;
          choose = false;
          }
        else
        KingOfTheRock();
        print("AI Point= $aiwins");
        print("Your Point= $playerwins");
        if(aiwins==3 || playerwins==3){quitwhile=false;}
      }

      if(aiwins>playerwins){
        print("Big Fail my king Big Fail");
      }
      else if(playerwins>aiwins){
        print("Glorious Victory my king");
      }
    }


   else if(avatar == "scissors prince"){
      while(quitwhile){
        bool choose = true;
          while(choose){
          print("Paper / Rock / Scissors");
          playermove = stdin.readLineSync()!.toLowerCase();
            if(playermove=="paper" || playermove=="rock" || playermove=="scissors"){
            choose=false;
            }
            else if(playermove == "exit"){
              quitwhile = true;
              break;
            }
            else{
              print("Wrong decision");
            }
         }
        if(playermove == "exit"){
          quitwhile = false;
          choose = false;
          }
        else
        ScissorsPrince();
        print("AI Point= $aiwins");
        print("Your Point= $playerwins");
        if(aiwins==3 || playerwins==3){quitwhile=false;}
      }

      if(aiwins>playerwins){
        print("Big Fail my prince Big Fail");
      }
      else if(playerwins>aiwins){
        print("Glorious Victory my prince");
      }
    }

  print("\n Play again? Y or N");
  var again = stdin.readLineSync()!.toLowerCase();
  if(again == "y" || again=="yes"){
    again = "n";
    quitwhile = true;
    PlayGame();
  }
}


void PaperLord(){
int randomnumbers= Random().nextInt(10);
var aimove;
  if(playermove=="paper"){
  var ihtimal = ["rock","rock","rock","rock","rock","rock","paper","paper","paper","scissors"];
  aimove = ihtimal.elementAt(randomnumbers);
        print("");
        print("Your Move : $playermove");
        print("");
        print("AI Move : $aimove");
        print("");
      if(aimove == "rock"){
        print("You Win this Round");
        playerwins++;
     }
     else if(aimove == "paper"){
        print("Draw this Round");
     }
     else if(aimove == "scissors"){
        print("You Lose this Round");
        aiwins++;
     }
  }

  if(playermove=="scissors"){
  var ihtimal = ["rock","rock","rock","rock","rock","rock","paper","paper","scissors","scissors"];
  aimove = ihtimal.elementAt(randomnumbers);
        print("");
        print("Your Move : $playermove");
        print("");
        print("AI Move : $aimove");
        print("");
      if(aimove == "rock"){
        print("You Lose this Round");
        aiwins++;
     }
     else if(aimove == "paper"){
        print("You Win this Round");
        playerwins++;
     }
     else if(aimove == "scissors"){
        print("Draw this Round");
     }
  }

  if(playermove=="rock"){
  var ihtimal = ["rock","rock","rock","rock","paper","paper","paper","scissors","scissors","scissors"];
  aimove = ihtimal.elementAt(randomnumbers);
  
        print("");
        print("Your Move : $playermove");
        print("");
        print("AI Move : $aimove");
        print("");
      if(aimove == "rock"){
        print("Draw this Round");
     }
     else if(aimove == "paper"){
        print("You Win this Round");
        playerwins++;
     }
     else if(aimove == "scissors"){
        print("You Lose this Round");
        aiwins++;
     }
  }

}

void KingOfTheRock(){
int randomnumbers= Random().nextInt(10);
var aimove;
  if(playermove=="rock"){
  var ihtimal = ["scissors","scissors","scissors","scissors","scissors","scissors","rock","rock","rock","paper"];
  aimove = ihtimal.elementAt(randomnumbers);
        print("");
        print("Your Move : $playermove");
        print("");
        print("AI Move : $aimove");
        print("");
      if(aimove == "scissors"){
        print("You Win this Round");
        playerwins++;
     }
     else if(aimove == "rock"){
        print("Draw this Round");
     }
     else if(aimove == "paper"){
        print("You Lose this Round");
        aiwins++;
     }
  }

  if(playermove=="paper"){
  var ihtimal = ["scissors","scissors","scissors","scissors","scissors","scissors","paper","paper","rock","rock"];
  aimove = ihtimal.elementAt(randomnumbers);
  
        print("");
        print("Your Move : $playermove");
        print("");
        print("AI Move : $aimove");
        print("");
      if(aimove == "rock"){
        print("You Lose this Round");
        aiwins++;
     }
     else if(aimove == "paper"){
        print("You Win this Round");
        playerwins++;
     }
     else if(aimove == "scissors"){
        print("Draw this Round");
     }
  }

  if(playermove=="scissors"){
  var ihtimal = ["paper","paper","paper","paper","rock","rock","rock","scissors","scissors","scissors"];
  aimove = ihtimal.elementAt(randomnumbers);
        print("");
        print("Your Move : $playermove");
        print("");
        print("AI Move : $aimove");
        print("");
      if(aimove == "scissors"){
        print("Draw this Round");
     }
     else if(aimove == "paper"){
        print("You Win this Round");
        playerwins++;
     }
     else if(aimove == "rock"){
        print("You Lose this Round");
        aiwins++;
     }
  }

}

void ScissorsPrince(){
int randomnumbers= Random().nextInt(10);
var aimove;
  if(playermove=="scissors"){
  var ihtimal = ["paper","paper","paper","paper","paper","paper","scissors","scissors","scissors","rock"];
  aimove = ihtimal.elementAt(randomnumbers);
        print("");
        print("Your Move : $playermove");
        print("");
        print("AI Move : $aimove");
        print("");
      if(aimove == "paper"){
        print("You Win this Round");
        playerwins++;
     }
     else if(aimove == "scissors"){
        print("Draw this Round");
     }
     else if(aimove == "rock"){
        print("You Lose this Round");
        aiwins++;
     }
  }

  if(playermove=="rock"){
  var ihtimal = ["paper","paper","paper","paper","paper","paper","scissors","scissors","rock","rock"];
  aimove = ihtimal.elementAt(randomnumbers);
        print("");
        print("Your Move : $playermove");
        print("");
        print("AI Move : $aimove");
        print("");
      if(aimove == "paper"){
        print("You Lose this Round");
        aiwins++;
     }
     else if(aimove == "scissors"){
        print("You Win this Round");
        playerwins++;
     }
     else if(aimove == "rock"){
        print("Draw this Round");
     }
  }

  if(playermove=="paper"){
  var ihtimal = ["rock","rock","rock","rock","scissors","scissors","scissors","paper","paper","paper"];
  aimove = ihtimal.elementAt(randomnumbers);
        print("");
        print("Your Move : $playermove");
        print("");
        print("AI Move : $aimove");
        print("");
      if(aimove == "paper"){
        print("Draw this Round");
     }
     else if(aimove == "rock"){
        print("You Win this Round");
        playerwins++;
     }
     else if(aimove == "scissors"){
        print("You Lose this Round");
        aiwins++;
     }
  }  
}