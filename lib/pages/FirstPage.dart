import 'package:flutter/material.dart';
import 'package:pase_transition_sample/pages/SecondPage.dart';
import 'package:pase_transition_sample/widget/CustomPage.dart';
import 'package:pase_transition_sample/widget/button_widget.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Route Transition"),
        centerTitle: true,
      ),
      body: Center(
          child: ButtonWidget(
              text: 'Custom Navigation',
              onClicked: () {
                Navigator.of(context).push(CustomPageRoute(
                    child: SecondPage(), direction: AxisDirection.down));
                // Navigator.of(context).pushNamed('/second');
              })),
    );
  }
}
