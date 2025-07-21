import 'package:flutter/material.dart';

class BlueContainer extends StatelessWidget {
  const BlueContainer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: ((screenHeight * (2 / 3)) +
            MediaQuery.of(context).viewInsets.bottom),
        decoration: const BoxDecoration(
          color: Color(0xff1181A6),
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: child,
        ),
      ),
    );
  }
}
