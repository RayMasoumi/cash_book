import 'package:flutter/material.dart';

class DefaultPadding extends StatelessWidget {
  const DefaultPadding({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 87.0),
      child: child,
    );
  }
}
