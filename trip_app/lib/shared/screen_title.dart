import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  final String text;

  const ScreenTitle({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      builder: (BuildContext context, Object _value, Widget? child) {
        return Opacity(
          opacity: (_value as double),
          child: Padding(
            padding: EdgeInsets.only(top: 20 * _value),
            child: child,
          ),
        );
      },
      duration: const Duration(
        milliseconds: 500,
      ),
      tween: Tween<double>(
        begin: 0,
        end: 1.0,
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 36,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
