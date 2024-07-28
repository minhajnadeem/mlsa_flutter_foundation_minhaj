import 'package:flutter/material.dart';
import 'package:flutter_foundations_01/view/MyHomePage.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.yellow,
        title: Text("List View",style: GoogleFonts.poppins(
          color: Colors.black
        ),),
      ),
      body:
        ListView.builder(
          itemCount: 40,
            itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return MyHomePage();
                  }));
                },
                tileColor: Colors.grey.shade200,
                leading: CircleAvatar(
                  radius: 30,
                  child: Icon(Icons.person),
                ),
                trailing: Icon(Icons.arrow_forward_ios),
                title: Text("Person - ${index+1}",style: GoogleFonts.poppins(color: Colors.black),),
                subtitle: Text("Flutter Developer",style: GoogleFonts.poppins(),),
              ),
            );
            }
        )
    );
  }
}
