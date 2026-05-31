import 'package:flutter/material.dart';
import 'package:moi_protofolio/src/extensions/context_extension.dart';
import 'package:moi_protofolio/src/views/Home/widget/HomeSection.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final protofolioColors = context.portfolio;
    return Scaffold(
      backgroundColor: protofolioColors.background,
      body: const SingleChildScrollView(
        child: Column(
          children: [
            HomeSection(),
          ],
        ),
      ),
    );
  }
}
