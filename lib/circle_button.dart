library circle_button;

import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {

  final VoidCallback onTap;
  final Widget child;
  final double width;
  final double height;
  final Color borderColor;
  final double borderWidth;
  final BorderStyle borderStyle;
  final String tooltip;
  final Color backgroundColor;


  const CircleButton({Key key, @required this.onTap, this.child, this.width, this.height, this.borderColor, this.borderWidth, this.borderStyle, this.tooltip, this.backgroundColor,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip ?? '',
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: width ?? 40,
          height: height ?? 40,
          decoration: BoxDecoration(
            color: backgroundColor ?? Colors.transparent,
            shape: BoxShape.circle,
            border: Border.all(
              color: borderColor ?? Theme.of(context).primaryColor,
              style: borderStyle ?? BorderStyle.solid,
              width: borderWidth ?? 1,
            ),
          ),
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
