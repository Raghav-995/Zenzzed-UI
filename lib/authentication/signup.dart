import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Theme.of(context).colorScheme.onPrimary,
            )),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                decoration:
                    BoxDecoration(color: Theme.of(context).colorScheme.primary),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Register With',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(
                        height: 2.0,
                      ),
                      Text(
                        'ZENZZED',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(fontSize: 30.0, letterSpacing: 2.0),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
