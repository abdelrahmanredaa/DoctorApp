import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/screens/doctor_list.dart';

void main() {
  runApp(
    MaterialApp(
      home: DoctorList(),
      theme: ThemeData(
          primaryColor: Color(0xff07da5f)
      ),
    ),
  );
}
