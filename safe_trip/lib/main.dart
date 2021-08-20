import 'package:flutter/material.dart';

import 'SafeTrip.dart';


void main() => runApp(
  MaterialApp(
    title: "App Safe Trip",
    home: SafeTrip(),
    debugShowCheckedModeBanner: false,
    // Retirar o DEBUG da AppBar
  )
);