import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_foundations_01/view/SecondScreen.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            counter++;
            print(counter);
          });
        },
      ),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Flutter Demo Home Page",style:GoogleFonts.poppins(
          color: Colors.white
        )),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You have pushed the button this many times:",style: GoogleFonts.poppins(
              color: Colors.black
            ),),
            Text("$counter",style: GoogleFonts.poppins(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25
            ),),
            ElevatedButton(onPressed: (){
              setState(() {
                counter--;
                print(counter);
              });
            }, child: Text("Decrement",style: GoogleFonts.poppins(

            ),))
          ],
        ),
      )
    );
  }
}
