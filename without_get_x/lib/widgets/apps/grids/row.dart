import 'package:flutter/widgets.dart';

class BaseRow extends StatelessWidget {
  final List<Widget>? children;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color? color;
  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;
  final double spacing;

  const BaseRow({
    super.key,
    this.children,
    this.padding = const EdgeInsets.all(0),
    this.margin,
    this.color,
    this.mainAxisAlignment,
    this.crossAxisAlignment,
    this.spacing = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      color: color,
      child: Row(
        mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
        crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        spacing: spacing,
        children: renderChildren(context),
      ),
    );
  }

  List<Widget> renderChildren(BuildContext context) {
    List<Widget> spacedChildren = [];

    if (children != null && children!.isNotEmpty) {
      for (var i = 0; i < children!.length; i++) {
        spacedChildren.add(children![i]);
      }
    }

    return spacedChildren;
  }
}
