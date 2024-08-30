import 'package:flutter/material.dart';

class SearchChip extends StatelessWidget {
  final String label;

  SearchChip({
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: Color.fromARGB(192, 55, 54, 75),
      label: Text(label,
          style: TextStyle(color: Color.fromARGB(174, 255, 255, 255))),
      side: BorderSide.none,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
