import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  const BigText(this.data, {Key? key, this.color})
      : assert(
          data != null,
          'A non-null String must be provided to a Text widget.',
        ),
        super(key: key);

  final String? data;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      data!,
      style: TextStyle(
        fontSize: 21,
        color: color ?? Colors.black,
        fontWeight: FontWeight.w600,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
