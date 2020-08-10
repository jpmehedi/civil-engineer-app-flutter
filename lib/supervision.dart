import 'package:civil_engineer/calculator.dart';
import 'package:civil_engineer/converter.dart';
import 'package:civil_engineer/estimate.dart';
import 'package:flutter/material.dart';
import 'components/bottom_bar.dart';

class Supervision extends StatefulWidget {
  @override
  _SupervisionState createState() => _SupervisionState();
}

class _SupervisionState extends State<Supervision> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Supervision"),
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
        tapSupervision: () {},
        tapEstimate: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Estimate()));
        },
      ),
      body: Center(child: Text("Supervision State")),
    );
  }
}
