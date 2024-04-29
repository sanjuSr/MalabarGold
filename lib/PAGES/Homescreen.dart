import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:malabargold/PAGES/Drawerr.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 95, 31, 65),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 95, 31, 65),
        title: Image.asset(
          "assets/images/malabarw.png",
          height: 80,
          width: 180,
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(CupertinoIcons.bell,color: Colors.white,),
          ),
        ],

      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 95, 31, 65),
        child: Drawers(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                children: [
                     Row(
                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.location_on_outlined,color:Color.fromARGB(255, 95, 31, 65),size: 30,),
                        SizedBox(width: 8,),
                        GestureDetector(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 5,),
                              Text("JH2R+JQH,Nut Street,vatakara",style: TextStyle(
                                color: Color.fromARGB(255, 95, 31, 65),
                                fontSize: 11
                              ),),
                              Text("Kerala",style: TextStyle(
                                  color: Color.fromARGB(255, 95, 31, 65),
                                  fontSize: 11
                              ),),
                              Text("India",style: TextStyle(
                                  color: Color.fromARGB(255, 95, 31, 65),
                                  fontSize: 11
                              ),)
                            ],
                          ),
                        ),
                        SizedBox(width: 60,),
                        GestureDetector(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("22KT Gold Rate",style: TextStyle(
                                  color: Color.fromARGB(255, 95, 31, 65),
                                  fontSize: 10
                              ),),
                              Text("6,125,00/gm INR",style: TextStyle(
                                  color: Color.fromARGB(255, 95, 31, 65),
                                  fontSize: 11,
                                fontWeight: FontWeight.bold
                              ),)
                            ],
                          ),
                        ),
                        Icon(Icons.more_vert,color: Color.fromARGB(255, 95, 31, 65),size: 35,)
                      ],
                    ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      SizedBox(width: 15,),
                      Text("TRENDING",style: TextStyle(
                        color: Color.fromARGB(255, 95, 31, 65)
                      ),),
                      SizedBox(width: 5,),
                      Text("NOW",style: TextStyle(
                          fontWeight: FontWeight.bold,color: Color.fromARGB(255, 95, 31, 65)),)
                    ],
                  )
                ],
              ),
            ),
          Container(
            height: 300,
            child: ImageSlideshow(
              indicatorColor: Colors.transparent,
            indicatorBackgroundColor: Colors.transparent,
            autoPlayInterval: 3000,
            isLoop: true,
            children: [
              Stack(
                children:[ Image.asset(
                  'assets/images/01.jpeg',
                  fit: BoxFit.fill,
                ),
                  // Positioned(
                  //     child: Container(
                  //       height: 20,
                  //       width: 20,
                  //       color: Colors.white,
                  //     ))
               ]
              ),
              Image.asset(
                'assets/images/02.jpeg',
                fit: BoxFit.fill,
              ),
              Image.asset(
                'assets/images/03.jpeg',
                fit: BoxFit.fill,
              ),
              Image.asset(
                'assets/images/04.jpeg',
                fit: BoxFit.fill,
              ),
              Image.asset(
                'assets/images/05.jpeg',
                fit: BoxFit.fill,
              ),
            ],
                  ),
          ),
            SizedBox(height: 4,),
            GestureDetector(
              onTap:() {

              },
              child: Container(
                height: 220,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Image.asset("assets/images/06.jpeg",fit: BoxFit.fill,),
              ),
            ),
            SizedBox(height: 4,),
            GestureDetector(
              onTap:() {

              },
              child: Container(
                height: 220,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Image.asset("assets/images/07.jpeg",fit: BoxFit.fill,),
              ),
            ),
            SizedBox(height: 4,),
            GestureDetector(
              onTap:() {

              },
              child: Container(
                height: 220,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Image.asset("assets/images/08.jpeg",fit: BoxFit.fill,),
              ),
            ),
            SizedBox(height: 4,),
            GestureDetector(
              onTap:() {

              },
              child: Container(
                height: 220,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Image.asset("assets/images/09.jpeg",fit: BoxFit.fill,),
              ),
            ),
            SizedBox(height: 4,),
            GestureDetector(
              onTap:() {

              },
              child: Container(
                height: 220,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Image.asset("assets/images/010.jpeg",fit: BoxFit.fill,),
              ),
            ),
            SizedBox(height: 4,),
            GestureDetector(
              onTap:() {

              },
              child: Container(
                height: 220,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Image.asset("assets/images/011.jpeg",fit: BoxFit.fill,),
              ),
            )
          ],
        ),
      ),
    );
  }
}
