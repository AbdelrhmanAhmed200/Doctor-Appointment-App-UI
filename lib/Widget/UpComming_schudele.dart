import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_7/Widget/Schedule_containers.dart';

class UpcommingSchudele extends StatelessWidget {
  const UpcommingSchudele({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ScheduleContainers(),
          ScheduleContainers(),
          ScheduleContainers(),
          ScheduleContainers(),
        ],
      ),
    );
  }
}
