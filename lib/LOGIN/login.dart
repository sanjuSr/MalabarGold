import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:  Color.fromARGB(255, 95, 31, 65),
      body: Column(
        children: [
          SizedBox(height: 70,),
          Center(
            child: Container(
              height: 70,
              width: 280,
              child: Center(
                child: Image.asset("assets/images/malabarw.png",),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: Text("HELLO",style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 150,),
          SizedBox(
            width: 300,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Email Address",
                hintStyle: TextStyle(color:Colors.grey)
              ),
            ),
          ),
          SizedBox(height: 10,),
          SizedBox(
            width: 300,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Password",
                hintStyle: TextStyle(color:Colors.grey)
              ),
            ),
          ),
          SizedBox(height: 20,),
          SizedBox(
            width: 300,
            height: 40,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF938A53),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                )
              ),
              onPressed: (){},
             child: Text("LOGIN",style: TextStyle(color: Colors.white),)),
          ),
          SizedBox(height: 100,),
           Row(
              children: [
                SizedBox(width: 70,),
                 Text("Forget password ?",style: TextStyle(
                  color: Colors.pink[200],
                ),),
                SizedBox(width: 5,),
                Text("Get help signing in.",style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),)
              ],
            ),
        ],
      )
    );
  }
}
