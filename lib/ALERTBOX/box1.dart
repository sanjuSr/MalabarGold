import 'package:flutter/material.dart';
import 'package:malabargold/HOME/home.dart';
import 'package:malabargold/WELCOME/welcome.dart';

class alertBox1 extends StatefulWidget {
  const alertBox1({super.key});

  @override
  State<alertBox1> createState() => _alertBox1State();
}

class _alertBox1State extends State<alertBox1> {
  @override
  Widget build(BuildContext context) {
    return   SizedBox(
          width: 320,
          height: 45,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF938A53),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {
              // Show alert dialog here
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0)
                    ),
                    title: Center(child: Text("GPS Required")),
                    content: Container(
                      height: 40,
                      child: Center(
                        child: Column(
                          children: [
                            Text("Your GPS is disabled"),
                            Text("Please enable GPS."),
                          ],
                        ),
                      ),
                    ),
                    actions: <Widget>[
                      SizedBox(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (context) => homee()));
                          },
                          child: Text("OK",style: TextStyle(color: Colors.white),),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF938A53),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )
                          ),
                        ),
                        width: 110,
                      ),
                      SizedBox(
                        child: ElevatedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0)
                                  ),
                                  title: Center(child: Text("Location Fetch Failed")),
                                  content: Container(
                                    height: 40,
                                    child: Center(
                                      child: Column(
                                        children: [
                                          Text("You have disabled GPS."),
                                          Text("Select a location manully."),
                                        ],
                                      ),
                                    ),
                                  ),
                                  actions: <Widget>[
                                    Center(
                                      child: SizedBox(
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.of(context).pushReplacement(
                                                MaterialPageRoute(builder: (context) => welcome()));
                                          },
                                          child: Text("OK",style: TextStyle(color: Colors.white),),
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor: Color(0xFF938A53),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(10)
                                              )
                                          ),
                                        ),
                                        width: 110,
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                            // Navigator.of(context).pop();
                          },
                          child: Text("CANCEL",style: TextStyle(color: Colors.white),),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF938A53),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )
                          ),
                        ),
                        width: 110,
                      ),
                    ],
                  );
                },
              );
            },
            child: Text("Auto-detect location", style: TextStyle(color: Colors.white)),),
        );

  }
}
