import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loaders.dart';

class LoadingShimmer extends StatelessWidget {
  final double? itemExtent;
  final int? itemCount;
  final Gradient? gradient;
  final Color? color;

  const LoadingShimmer(
      {Key? key, this.gradient, this.itemExtent, this.itemCount, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return gradient != null
        ? LoaderWithGradient(
            itemExtent: itemExtent, itemCount: itemCount, gradient: gradient!)
        : Loader(
            itemExtent: itemExtent,
            itemCount: itemCount,
            color: color,
          );
  }
}
