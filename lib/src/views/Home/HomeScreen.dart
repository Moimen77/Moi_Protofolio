import 'package:flutter/material.dart';
import 'package:moi_protofolio/src/views/Home/widget/HomeSection.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff08071a),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeSection(),
          ],
        ),
      ),
    );
  }
}
