import 'package:flutter/material.dart';

class MySplashWidget extends StatelessWidget {
  const MySplashWidget({super.key});
  @override
  Widget build(BuildContext context) {
    // Design your splash screen content here using any widgets
    return const Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Column(
          children: [
            Text('Zenzzed'),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text('coprights'),
            )
          ],
        ),
      ),
      // Bottom Text
    );
  }
}
