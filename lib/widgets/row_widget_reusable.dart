import 'package:flutter/material.dart';

// ignore: camel_case_types
class Row_WidgetReusable extends StatelessWidget {
  final String text;
  const Row_WidgetReusable({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                text,
              ),
            ),
          ),
        )
      ],
    );
  }
}
