import 'package:civil_engineer/estimate.dart';
import 'package:civil_engineer/supervision.dart';
import 'package:flutter/material.dart';
import 'components/bottom_bar.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
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
        tapCalculator: () {},
        tapConverter: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Calculator()));
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
      body: Center(child: Text("Calculator State")),
    );
  }
}
