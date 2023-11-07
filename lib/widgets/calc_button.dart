import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  const CalcButton(
      {super.key,
      required this.text,
      this.shadowcolor = Colors.purple,
      this.borderRadius,
      this.textcolor = Colors.cyanAccent,
      this.buttoncolor = Colors.black,
      required this.onTap,
      this.height=120, this.width=89});

  final String text;
  final Color? shadowcolor;
  final Color? textcolor;
  final Color? buttoncolor;
  final void Function() onTap;
  final double? height;
  final double? width;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height!,
        width: width!,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: buttoncolor,
          boxShadow: [
            BoxShadow(color: shadowcolor!, offset: Offset(0, 2), blurRadius: 10)
          ],
          borderRadius:
              borderRadius == null ? BorderRadius.circular(8.0) : borderRadius!,
        ),
        child: FittedBox(child: Text(text!, style: TextStyle(color: textcolor, fontSize: 30))),
      ),
    );
  }
}
