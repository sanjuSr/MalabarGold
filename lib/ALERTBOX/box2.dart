import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:malabargold/HOME/home.dart';
import 'package:malabargold/WELCOME/welcome.dart';

class button2 extends StatefulWidget {
  const button2({Key? key}) : super(key: key);

  @override
  State<button2> createState() => _button2State();
}

class _button2State extends State<button2> {
  TextEditingController location=TextEditingController();
  final formkey=GlobalKey<FormState>();

  @override

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      color: Colors.white,
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
                          SizedBox(height: 20,),
                          SizedBox(height: 80,),
                          Center(child: Text("Or",style: TextStyle(
                              color: Color.fromARGB(255, 124, 8, 72),
                              fontSize: 20
                          ),)),
                          SizedBox(height: 10,),
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
            
                                },
                                child: Text("Select location manually",
                                  style: TextStyle(color: Colors.white),)),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                            boxShadow: [BoxShadow(
                              color: Colors.pink.withOpacity(0.5),
                              spreadRadius: 500,
                              blurRadius: 15,
                            )]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 25,),
                            Padding(
                              padding: const EdgeInsets.only(left: 330),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(builder: (context) => welcome()),
                                  );
                                },
                                icon: Icon(Icons.close),
                              ),
                            ),
                            SizedBox(height: 260,),
                            Center(
                              child: Container(
                                height: 190,
                                width: 350,
                                color: Colors.white,
                                child: Column(
                                  children: [
                                    SizedBox(height: 20,),
                                    Text(
                                      "Enter Your Location",
                                      style: TextStyle(color: Colors.black,fontSize: 16),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 35,right: 35),
                                      child: TextFormField(
                                        controller: location,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please enter your location';
                                          }
                                          return null;
                                        },
                                        decoration: InputDecoration(
                                            hintText: "Enter Your Location"
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20,),
                                    SizedBox(
                                      width: 250,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(0xFF938A53),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10),
                                            )
                                        ),
                                        onPressed: () {
                                          if(formkey.currentState!.validate()){
                                            String userLocation = location.text; // accessing text property on TextEditingController
                                            print("Location: $userLocation");
                                            Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(builder: (context) => homee()),
                                            );
                                          }
                                        },
                                        child: Text(
                                          "SET LOCATION",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
