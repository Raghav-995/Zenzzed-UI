import 'package:flutter/material.dart';
import 'package:zenzzed/authentication/signin.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome(context);
  }

  _navigateToHome(BuildContext context) async {
    await Future.delayed(const Duration(milliseconds: 3000), () {});

    // ignore: use_build_context_synchronously
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const SignIn()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Stack(
        children: [
          Center(
            child: Text(
              'ZENZZED',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 8.0,
                  color: Theme.of(context).colorScheme.onPrimary,
                  shadows: [
                    Shadow(
                        offset: const Offset(5.0, 2.0),
                        blurRadius: 4.0,
                        color:
                            Theme.of(context).colorScheme.onSecondaryContainer),
                  ]),
            ),
          ),
          Positioned(
            bottom: 40,
            left: 0,
            right: 0,
            child: Text('@Zenzzed all rights reserved',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall),
          ),
        ],
      ),
    );
  }
}
