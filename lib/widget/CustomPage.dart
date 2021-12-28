import 'package:flutter/material.dart';

class CustomPageRoute extends PageRouteBuilder {
  final Widget child;
  final AxisDirection direction;

  CustomPageRoute(
      {required this.child,
      this.direction = AxisDirection.right,
      RouteSettings? settings})
      : super(
            transitionDuration: Duration(seconds: 1),
            reverseTransitionDuration: Duration(seconds: 1),
            pageBuilder: (context, animation, secondaryAnimation) => child,
            settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) =>
      //ScaleTransition
      SlideTransition(
          position: Tween<Offset>(
                  // begin: Offset(-1, 0),
                  begin: getBeginOffset(),
                  end: Offset.zero)
              .animate(animation),
          // scale: animation,
          child: child);

  Offset getBeginOffset() {
    switch (direction) {
      case AxisDirection.up:
        return Offset(0, 1);
      case AxisDirection.down:
        return Offset(0, -1);
      case AxisDirection.right:
        return Offset(-1, 0);
      case AxisDirection.left:
        return Offset(1, 0);
    }
  }
}
