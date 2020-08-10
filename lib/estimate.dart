import 'package:civil_engineer/calculator.dart';
import 'package:civil_engineer/converter.dart';
import 'package:civil_engineer/supervision.dart';
import 'package:flutter/material.dart';
import 'components/bottom_bar.dart';

class Estimate extends StatefulWidget {
  @override
  _EstimateState createState() => _EstimateState();
}

class _EstimateState extends State<Estimate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Estimate"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: Color(0xFFF17532),
        child: Icon(Icons.fastfood),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(
        tapCalculator: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Converter()));
        },
        tapConverter: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Calculator()));
        },
        tapSupervision: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Supervision()));
        },
        tapEstimate: () {},
      ),
      body: Center(child: Text("Estimate State")),
    );
  }
}
