import 'package:flutter/material.dart';

class BasketBallScreen extends StatefulWidget {
   BasketBallScreen({Key? key}) : super(key: key);
  @override
  State<BasketBallScreen> createState() => _BasketBallScreenState();
}

class _BasketBallScreenState extends State<BasketBallScreen> {
  int TeamA=0;
  int TeamB=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          "Pouins Counter",style: TextStyle(
          color: Colors.white,

        ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text("Team A",style: TextStyle(fontSize: 32),),
                      Text("$TeamA",style: TextStyle(fontSize: 120),),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            TeamA=TeamA+1;
                          });
                        },
                        child: Container(
                          child: Center(child: Text("Add 1 point",style: TextStyle(fontSize: 18))),
                          height: 40,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                              color: Colors.orange),
                        ),
                      ),
                      SizedBox(height: 10,),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            TeamA=TeamA+2;
                          });
                        },
                        child: Container(
                          child: Center(child: Text("Add 2 point",style: TextStyle(fontSize: 18))),
                          height: 40,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                              color: Colors.orange),
                        ),
                      ),
                      SizedBox(height: 10,),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            TeamA=TeamA+3;
                          });
                        },
                        child: Container(
                          child: Center(child: Text("Add 3 point",style: TextStyle(fontSize: 18))),
                          height: 40,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                              color: Colors.orange),
                        ),
                      ),
                      SizedBox(height: 10,),
                    ],
                  ),
                  Column(
                    children: [
                      VerticalDivider(
                        indent: 10,
                        color: Colors.red,
                        thickness: 2,
                        width: 20,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Team B",style: TextStyle(fontSize: 32),),
                      Text("$TeamB",style: TextStyle(fontSize: 120),),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            TeamB=TeamB+1;
                          });
                        },
                        child: Container(
                          child: Center(child: Text("Add 1 point",style: TextStyle(fontSize: 18))),
                          height: 40,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.orange),
                        ),
                      ),
                      SizedBox(height: 10,),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            TeamB=TeamB+2;
                          });
                        },
                        child: Container(
                          child: Center(child: Text("Add 2 point",style: TextStyle(fontSize: 18))),
                          height: 40,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.orange),
                        ),
                      ),
                      SizedBox(height: 10,),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            TeamB=TeamB+3;
                          });
                        },
                        child: Container(
                          child: Center(child: Text("Add 3 point",style: TextStyle(fontSize: 18))),
                          height: 40,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.orange),
                        ),
                      ),
                      SizedBox(height: 10,),
                    ],
                  ),
                ],
              ),
            ),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    TeamA=0;
                    TeamB=0;
                  });
                }, child: Text("Reset",style: TextStyle(fontSize: 18),),
              style: ElevatedButton.styleFrom(
                primary: Colors.orange
              ),
            )
          ],
        ),
      ),
    );
  }
}
