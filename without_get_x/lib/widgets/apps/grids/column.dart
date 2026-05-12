import 'package:flutter/widgets.dart';

class BaseColumn extends StatelessWidget {
  final List<Widget>? children;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color? color;
  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;
  final double spacing;

  const BaseColumn({
    super.key,
    this.children,
    this.padding = const EdgeInsets.all(0),
    this.color,
    this.margin,
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
      child: Column(
        mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
        crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
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
