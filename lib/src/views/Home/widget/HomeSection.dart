import 'package:flutter/material.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.blue,
      child: const Center(
        child: Text(
          'Home Section',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
