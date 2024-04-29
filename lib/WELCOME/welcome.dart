import 'package:flutter/material.dart';
import 'package:malabargold/ALERTBOX/box1.dart';
import 'package:malabargold/ALERTBOX/box2.dart';


class welcome extends StatefulWidget {
  const welcome({super.key});

  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 220,),
              Center(child: Text("WELCOME",style: TextStyle(
                color: Color.fromARGB(255, 124, 8, 72),
                fontSize: 20,
                fontFamily: 'welcome'
              ),)),
              SizedBox(height: 10,),
              Image.asset("assets/images/mallubar.png",height: 150,width: 200,),
              SizedBox(height: 10,),
              Text("Set your location to start using our services.",style: TextStyle(
                color: Colors.grey,
                fontSize: 16
              ),),
              SizedBox(height: 20,),
              alertBox1(),
              SizedBox(height: 15,),
              Center(child: Text("Or",style: TextStyle(
                  color: Color.fromARGB(255, 124, 8, 72),
                  fontSize: 20
              ),)),
              SizedBox(height: 15,),
              SizedBox(
                width: 320,
                height: 45,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF938A53),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                    onPressed: (){
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => button2()));
                    },
                    child: Text("Select location manually",
                      style: TextStyle(color: Colors.white),)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
