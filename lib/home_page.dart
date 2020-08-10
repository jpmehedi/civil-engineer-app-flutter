import 'package:civil_engineer/calculator.dart';
import 'package:civil_engineer/components/drawer.dart';
import 'package:civil_engineer/converter.dart';
import 'package:civil_engineer/estimate.dart';
import 'package:civil_engineer/supervision.dart';
import 'package:flutter/material.dart';
import 'components/bottom_bar.dart';

class HomePage extends StatefulWidget {
  static String id = "HomePage";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Civil Engineer"),
      ),
      drawer: CustomDrawer(),
      bottomNavigationBar: BottomBar(
        tapCalculator: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Calculator()));
        },
        tapConverter: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Converter()));
        },
        tapSupervision: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Supervision()));
        },
        tapEstimate: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Estimate()));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF676E79),
        child: Icon(Icons.home),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Container(
        color: Colors.blueGrey,
        child: Column(
          children: <Widget>[],
        ),
      ),
    );
  }
}
