import 'package:flutter/material.dart';

import '../../utilities/ui_helpers.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;
  final double? minWidth;
  final double? minHeight;
  final double? maxWidth;
  final double? maxHeight;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final BorderRadiusGeometry? borderRadius;
  final BoxBorder? border;
  final GestureTapCallback? onTap;

  const CustomCard({
    Key? key,
    required this.child,
    this.width,
    this.height,
    this.minWidth,
    this.minHeight,
    this.maxWidth,
    this.maxHeight,
    this.color,
    this.padding,
    this.borderRadius,
    this.border,
    this.onTap,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: margin,
        width: width,
        padding: padding,
        constraints: BoxConstraints(
          minHeight: minHeight ?? 0,
          minWidth: minWidth ?? 0,
          maxWidth: maxWidth ?? double.infinity,
          maxHeight: maxHeight ?? double.infinity,
        ),
        height: height,
        decoration: BoxDecoration(
            border: border,
            color: color ?? Theme.of(context).cardColor,
            borderRadius: borderRadius ?? k8pxBorderRadius),
        child: child,
      ),
    );
  }
}
