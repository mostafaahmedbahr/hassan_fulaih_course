import 'dart:math';

class Player
{
  static const x ="x";
  static const o = "o";
  static const empty = "";

  static List<int> playerX=[];
  static List<int> playerO = [];
}
class Game
{
  void playGame(int index, String activePlayer)
  {
    if(activePlayer=="x")
    {
      Player.playerX.add(index);
    }
    else
    {
      Player.playerO.add(index);
    }
  }

  checkWinner(){}

   Future<void> autoPlay(activePlayer) async
  {
    int index = 0;
    List<int> emptyCells = [];
    for(var i=0;i<9;i++)
    {
     if(!(Player.playerO.contains(i))||(Player.playerX.contains(i)))
     {
       emptyCells.add(i);
     }

     Random random = Random();
    var randomIndex =  random.nextInt(emptyCells.length);
    index = emptyCells[randomIndex];
    playGame(index, activePlayer);
    }
  }

}