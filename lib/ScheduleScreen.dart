import 'package:flutter/material.dart';
import 'package:flutter_application_7/Widget/UpComming_schudele.dart';

class Schedulescreen extends StatefulWidget {
  const Schedulescreen({super.key});

  @override
  State<StatefulWidget> createState() => _SchedulescreenState();
}

class _SchedulescreenState extends State<Schedulescreen> {
  int _buttonIndex = 0; // Ensure consistent naming.

  final List<Widget> _scheduleWidgets = [
    UpcommingSchudele(),
    Center(child: Text("Complete Schedule")), // Replace with actual widget.
    Center(child: Text("Canceled Schedule")), // Replace with actual widget.
    Center(child: Text("Other")), // Replace with actual widget.
  ];

  @override
  Widget build(BuildContext context) {  
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Schedule",
                style: const TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: const Color(0xfff4f6fa),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildTabButton("Upcoming", 0),
                  SizedBox(width: 15,),
                  _buildTabButton("Complete", 1),
                  SizedBox(width: 15,),
                  _buildTabButton("Canceled", 2),
                ],
              ),
            ),
            const SizedBox(height: 30),
            _scheduleWidgets[_buttonIndex], // Use the correct variable here.
          ],
        ),
      ),
    );
  }

  Widget _buildTabButton(String title, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          _buttonIndex = index; // Update the correct variable.
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
        decoration: BoxDecoration(
          color: _buttonIndex == index ? Colors.redAccent : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: _buttonIndex == index ? Colors.white : Colors.black38,
          ),
        ),
      ),
    );
  }
}
