import 'package:civil_engineer/calculator.dart';
import 'package:civil_engineer/components/drawer.dart';
import 'package:civil_engineer/converter.dart';
import 'package:civil_engineer/estimate.dart';
import 'package:civil_engineer/supervision.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'components/bottom_bar.dart';
import 'components/gridview_cardbuilder.dart';

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
        title: Text(
          "Civil Engineer",
        ),
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
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: <Widget>[
          GridViewCardBuilder(
            image: Image.asset('images/exavation.jpg'),
            title: 'Exavation',
          ),
          GridViewCardBuilder(
            image: Image.asset('images/brickwall.jpg'),
            title: 'Brick Work',
          ),
          GridViewCardBuilder(
            image: Image.asset('images/rccwork.jpg'),
            title: 'R.C.C Work',
          ),
          GridViewCardBuilder(
            image: Image.asset('images/plasterwork.jpg'),
            title: 'Plaster Work',
          ),
          GridViewCardBuilder(
            image: Image.asset('images/rainforcement.jpg'),
            title: 'Rainforcement',
          ),
          GridViewCardBuilder(
            image: Image.asset('images/paintwork.jpg'),
            title: 'Paint Work',
          ),
          GridViewCardBuilder(
            image: Image.asset('images/tailswork.jpg'),
            title: 'Tiles Work',
          ),
          GridViewCardBuilder(
            image: Image.asset('images/paintwork.jpg'),
            title: 'Exavation',
          ),
        ],
      ),
    );
  }
}
