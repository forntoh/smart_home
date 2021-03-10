import 'package:flutter/material.dart';

class NumberButton extends StatelessWidget {
  const NumberButton({
    Key key,
    this.number,
    this.onTap,
    this.isSelected = false,
  }) : super(key: key);

  final int number;
  final bool isSelected;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap(number);
      },
      child: SizedBox(
        width: 32,
        height: 32,
        child: Container(
          child: Center(child: Text("$number")),
          decoration: BoxDecoration(
            color: isSelected ? Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.white38, width: 1),
          ),
        ),
      ),
    );
  }
}