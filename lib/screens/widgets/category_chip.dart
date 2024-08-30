import 'package:flutter/material.dart';

class CategoryChip extends StatelessWidget {
  final String label;
  final int index;
  final int currentIndex;
  final ValueChanged<int> onSelected;

  CategoryChip({
    required this.label,
    required this.index,
    required this.currentIndex,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: GestureDetector(
        onTap: () {
          onSelected(
            index,
          ); // Call the callback function when the chip is tapped
        },
        child: Container(
          alignment: Alignment.center,
          width: 100,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: currentIndex == index
                ? Colors.red
                : const Color.fromARGB(92, 97, 93, 93),
          ),
          child: Text(
            label,
            style: const TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}
