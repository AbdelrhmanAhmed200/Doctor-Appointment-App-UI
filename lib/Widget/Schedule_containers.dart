import 'package:flutter/material.dart';

class ScheduleContainers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "About Doctor",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5) ,
            decoration: BoxDecoration(
              color:  Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                )
              ]
            ),
            child: SizedBox(
              width:  MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  ListTile(
                    title: Text("Dr. Doctor name",
                    
                    style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
                    subtitle: Text("Therapist"),
                    trailing: CircleAvatar(
                      radius: 25,
                      backgroundImage:AssetImage("images/doctor1.jpg"),
                    ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Divider(
                    thickness: 1,
                    height: 20,

                  ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      
                      
                      children: [
                        Icon(Icons.calendar_month,size: 25,color: const Color.fromARGB(255, 123, 122, 122),),
                        Text("10/05/2024"),
                        SizedBox(width: 15,),
                        Icon(Icons.access_time_filled,size: 25,color: const Color.fromARGB(255, 123, 122, 122),),
                        Text("09:00 PM"),
                        SizedBox(width: 20,),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle
                          )
                        ),
                        SizedBox(width: 5,),
                        Text("Confirmed")
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      
                      children: [
                        InkWell(
                          onTap: () {
                            
                          },
                          child: Container(
                            width: 120,
                            padding: EdgeInsetsDirectional.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                              color: Color(0xfff4f6fa),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text("Cancel", style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),),
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        InkWell(
                          onTap: () {
                            
                          },
                          child: Container(
                            width: 120,
                            padding: EdgeInsetsDirectional.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text("Reschedule", style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                              ),),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )

                ],
              ),
            ),
          ),
                  SizedBox(height: 20,)
        ],
      ),
    );
  }

}