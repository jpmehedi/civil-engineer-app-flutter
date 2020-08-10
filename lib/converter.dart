import 'package:civil_engineer/estimate.dart';
import 'package:civil_engineer/supervision.dart';
import 'package:flutter/material.dart';
import 'components/bottom_bar.dart';

class Converter extends StatefulWidget {
  @override
  _ConverterState createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Converter"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
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
        tapConverter: () {},
        tapSupervision: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Supervision()));
        },
        tapEstimate: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Estimate()));
        },
      ),
      body: Center(child: Text("Converter State")),
    );
  }
}
