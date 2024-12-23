import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Booking extends StatelessWidget{
  String image;
  int time =5;
  Booking({required this.image});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            size: 32,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        backgroundColor: const Color.fromARGB(0, 248, 244, 244),
        elevation: 0,
        actions: const [
          Icon(
            Icons.more_vert_outlined,
            color: Color.fromARGB(255, 0, 0, 0),
            size: 28,
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(image),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Dr. Doctor Name" ,
                  style: TextStyle(fontSize: 25, color: const Color.fromARGB(255, 0, 0, 0)),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Surgeon",
                  style: TextStyle(fontSize: 16, color: const Color.fromARGB(255, 8, 8, 8)),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 7,
                                  )
                                ],
                            shape: BoxShape.circle, color: Colors.white),
                        child: Center(
                            child: Icon(
                          Icons.call,
                          color: Colors.red,
                          size: 20,
                        )),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 7,
                                  )
                                ],
                            shape: BoxShape.circle, color: Colors.white),
                        child: Center(
                            child: Icon(
                          Icons.videocam,
                          color: Colors.red,
                          size: 20,
                        )),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 5,
                                  )
                                ],
                            shape: BoxShape.circle, color: Colors.white),
                        child: Center(
                            child: Icon(
                          CupertinoIcons.chat_bubble_fill,
                          color: Colors.red,
                          size: 20,
                        )),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Booking Date",style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 60,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 7,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return InkWell(
                        child: Container(
                          margin: EdgeInsets.all(5),
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color: index ==1? Colors.redAccent:Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 5)
                            ]
                          ),
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("${index+8}", style: TextStyle(
                                  color: index ==1? const Color.fromARGB(255, 255, 255, 255):const Color.fromARGB(255, 0, 0, 0)
                                ),),
                                Text("May", style: TextStyle(
                                  color: index ==1? const Color.fromARGB(255, 255, 255, 255):const Color.fromARGB(255, 0, 0, 0)
                                ),),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                ),
                SizedBox(height: 30,),
                Text("Booking Time",style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 20,),
                SizedBox(
                  height: 60,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 7,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return InkWell(
                        child: Container(
                          margin: EdgeInsets.all(5),
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color: index ==2? Colors.redAccent:Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 5)
                            ]
                          ),
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("${time+ index}:00 PM", style: TextStyle(
                                  color: index ==2? const Color.fromARGB(255, 255, 255, 255):const Color.fromARGB(255, 0, 0, 0)
                                ),),
                                
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                ),
                SizedBox(height: 32,),
                
                SizedBox(
                  height: 10,
                ),
                // Wrap ListView.builder with Container to hold the elements
                
                
                
                SizedBox(height: 30,),
                Container(
                  height: 64,
                  width: 400,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF8F6F6),
                
                  ),
                  child: Container(
          
                    
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                              )
                            ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          
                          SizedBox(height: 5,),
                          InkWell(
                            onTap: () {
                              
                            },
                            child: Container(
                              width: 370,
                              height: 43,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10),
                                
                              ),
                              child: Center(child: Text("Book Appointment",style: TextStyle(fontSize: 18, color: Colors.white)),)
                            ),
                          )
                        ]
                      ),
                    ),
                  ),
                )
                
              ],
            ),
          )
        ],
      ),

    );
  }


}