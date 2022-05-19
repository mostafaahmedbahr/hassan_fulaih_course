import 'package:flutter/material.dart';
import 'package:hassan_fulaih_course/section12/game_logic.dart';

class TicTacGame extends StatefulWidget {
  const TicTacGame({Key? key}) : super(key: key);

  @override
  State<TicTacGame> createState() => _TicTacGameState();
}

class _TicTacGameState extends State<TicTacGame> {
    String activePlayer = "x";
  int turn = 0;
  bool gameOver = false;
  bool isSwitched = false;
  String result = "x is winner";
  Game game = Game();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: SafeArea(
        child: Column(
          children: [
            SwitchListTile.adaptive(
              title: Text("Turn on/off two players ",
              style: TextStyle(
                color: Colors.white,
              ),),
                value: isSwitched,
                onChanged: (newValue){
                  setState(() {
                    isSwitched=newValue;
                  });
                },
            ),
            Text("it\'s ${activePlayer} turn ",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
            Expanded(child: GridView.count(
                crossAxisCount: 3,
              padding: EdgeInsets.all(20),
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 1,
              children:List.generate(9, (index) =>GestureDetector(
                  onTap:gameOver? null: ()=>onTap(index),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.teal,
                    ),
                    child: Center(child: Text(
                      Player.playerX.contains(index)?"x":
                      Player.playerO.contains(index)?"o":"",
                    style: TextStyle(
                      fontSize: 85,
                      color:Player.playerX.contains(index)?
                      Colors.white:Colors.pink,
                    ),),
                    ),
                  ),
                ),
              ),),
            ),
            Text("$result",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: Container(
                height: 60,
                width: double.infinity,
                child: ElevatedButton.icon(
                    onPressed: (){
                      setState(() {
                        Player.playerX=[];
                        Player.playerO=[];
                          activePlayer = "x";
                          turn = 0;
                          gameOver = false;
                           result = "";
                      });
                    },
                    icon: Icon(Icons.repeat),
                    label: Text("Repeat the game",
                    style: TextStyle(
                      fontSize: 25,
                    ),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  onTap(int index) async {
   if((Player.playerX.isEmpty||
       !Player.playerX.contains(index))&&
       (Player.playerO.isEmpty||
           !Player.playerO.contains(index)))
   {
     game.playGame(  index ,  activePlayer);
     updateState();
      if(!isSwitched&&!gameOver)
      {
        await game.autoPlay(activePlayer);
        updateState();
      }
   }
  }

  void updateState()
  {
  setState(() {
  activePlayer=(activePlayer=="x")? "o":"x";
  });
  }
}
