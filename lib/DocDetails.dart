import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_7/Booking.dart';

class Docdetails extends StatelessWidget {
  String image;
  List doctor;

  Docdetails({required this.image, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            size: 32,
            color: Color.fromARGB(255, 247, 243, 243),
          ),
        ),
        backgroundColor: const Color.fromARGB(0, 248, 244, 244),
        elevation: 0,
        actions: const [
          Icon(
            Icons.more_vert_outlined,
            color: Color.fromARGB(255, 243, 241, 241),
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
                  radius: 40,
                  backgroundImage: AssetImage(image),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Dr. Doctor Name",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Surgeon",
                  style: TextStyle(fontSize: 16, color: Colors.white),
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
          Container(
            width: 550,
            height: 485,
            decoration: BoxDecoration(color: const Color(0xFFF8F6F6)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "About Doctor",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Reviews",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.star,
                        color: const Color.fromARGB(255, 240, 191, 45),
                      ),
                      Text(
                        "4.9 ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(
                        "(124)",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.red),
                      ),
                      Spacer(),
                      Text(
                        "See All",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.red),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Wrap ListView.builder with Container to hold the elements
                  Container(
                    height: 136,
                    child: ListView.builder(
                      itemCount: doctor.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 270,
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(255, 39, 39, 39).withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 2
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 30,
                                        backgroundImage: AssetImage(
                                            doctor[index])),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Dr. Doctor Name",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "1 Day ago",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    Text("4.9")
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                    "Many thanks to Dr.Dear, He is a Great and Professional doctor")
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
      
                  SizedBox(height: 5,),
                  Text("Location",style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 232, 206, 237),
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: Center(child: Icon(Icons.location_on,color: Colors.red,size: 30,)),
                        
                        ),
                        
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("New York , Medical Center",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                          Text("Address line of the medical center"),
                        ],
                      ),
                    ]
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 93,
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
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Consultation Fee"),
                                Text("\$100", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.red),),
                        
                              ]
                            ),
                            SizedBox(height: 5,),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                                Booking(image: image)),);
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
            ),
          )
        ],
      ),
    );
  }
}
