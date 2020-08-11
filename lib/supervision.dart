import 'package:civil_engineer/calculator.dart';
import 'package:civil_engineer/converter.dart';
import 'package:civil_engineer/estimate.dart';
import 'package:flutter/material.dart';
import 'components/bottom_bar.dart';
import 'components/gridview_cardbuilder.dart';

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
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: <Widget>[
          GridViewCardBuilder(
            image: Image.asset('images/design.jpg'),
            title: 'Design',
          ),
          GridViewCardBuilder(
            image: Image.asset('images/soiltest.jpg'),
            title: 'Soil Test',
          ),
          GridViewCardBuilder(
            image: Image.asset('images/layout.jpg'),
            title: 'Site Layout',
          ),
          GridViewCardBuilder(
            image: Image.asset('images/piling.jpg'),
            title: 'Piling ',
          ),
          GridViewCardBuilder(
            image: Image.asset('images/foundation.jpg'),
            title: 'Foundation',
          ),
          GridViewCardBuilder(
            image: Image.asset('images/formwork.jpg'),
            title: 'Formwork',
          ),
          GridViewCardBuilder(
            image: Image.asset('images/rodbinding.jpg'),
            title: 'Road Binding',
          ),
          GridViewCardBuilder(
            image: Image.asset('images/brickwall.jpg'),
            title: 'Brcik Wall',
          ),
        ],
      ),
    );
  }
}
