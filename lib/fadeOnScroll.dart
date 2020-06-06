import 'package:flutter/material.dart';

class FadeOnScroll extends StatelessWidget {
  final Widget child;
  final double fadeAt;
  FadeOnScroll({@required this.child, @required this.fadeAt});
  
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        top = constraints.biggest.height;
        return FlexibleSpaceBar(
          centerTitle: true,
          title: AnimatedOpacity(
            duration: Duration(milliseconds: 300),
            opacity: (fadeAt >= top) ? 0.0 : 1,
            child: child,
          ),
        );
      },
    );
  }
}
