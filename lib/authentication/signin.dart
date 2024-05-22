import 'package:flutter/material.dart';
import 'package:zenzzed/authentication/signup.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        alignment: AlignmentDirectional.center,
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
                        'SIGN IN TO',
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
              const SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 12.0),
                child: Text(
                  'We are happy to see you again. You can continue where you left off by signing in.',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color:
                          Theme.of(context).colorScheme.onSecondaryContainer),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                          width: 2.0,
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Theme.of(context).colorScheme.outlineVariant,
                      ),
                      labelText: 'Email address',
                      labelStyle: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(
                              color:
                                  Theme.of(context).colorScheme.outlineVariant),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(16.0))),
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Continue',
                    style: Theme.of(context).textTheme.bodyMedium,
                  )),
            ],
          ),
          Positioned(
              bottom: 20.0,
              right: double.minPositive,
              left: double.minPositive,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'if you don\'t have an account?',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 14.0,
                          color: Theme.of(context)
                              .colorScheme
                              .onSecondaryContainer),
                    ),
                    const SizedBox(
                      width: 1.0,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (c) => const SignUp()));
                      },
                      child: Text(
                        'Sign up',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
