import 'package:flutter/material.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int number = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: const Text(
          'Dice Roll',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.white38
          ),
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage('assets/images/inverted-dice-$number.png')),
              SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: (){
                    setState(() {
                      number = Random().nextInt(6)+1;
                    });
                  },
                  child: const Text('Roll it !')
              )
            ],
          ),
        ),
      )
    );
  }
}
