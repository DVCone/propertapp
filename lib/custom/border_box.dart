import 'package:flutter/material.dart';
import 'package:propertapp/utils/constants.dart';

class BorderBox extends StatelessWidget {
  final Widget? child;
  final EdgeInsets? padding;
  final double? widht, height;

  const BorderBox({
    Key? key,
    required this.child,
    this.padding,
    this.widht,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widht,
      height: height,
      decoration: BoxDecoration(
          color: colorWhite,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: colorGrey.withAlpha(40), width: 2)),
      padding: padding ?? const EdgeInsets.all(8.0),
      child: Center(
        child: child,
      ),
    );
  }
}
