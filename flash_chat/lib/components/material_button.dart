import 'package:flutter/material.dart';
class materialButtons extends StatelessWidget {
  materialButtons(
      {Key? key,
      required this.colour,
      required this.label,
      required this.onPress})
      : super(key: key);
  Color colour;
  Function onPress;
  String label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: (() {
            onPress();
          }),
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            label,
          ),
        ),
      ),
    );
  }
}
