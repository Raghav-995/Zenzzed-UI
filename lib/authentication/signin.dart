import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zenzzed/home/View/home_page.dart';
import 'package:zenzzed/home/View/home_screen.dart';
import 'package:zenzzed/authentication/signup.dart';
// import 'package:zenzzed/widgets/homepage.dart';
//import 'package:zenzzed/widgets/homepage.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration:
                  BoxDecoration(color: Theme.of(context).colorScheme.primary),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 35.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 50.0,
                    ),
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
                          .copyWith(fontSize: 40.0, letterSpacing: 2.0),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30.0),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 50.0, horizontal: 16.0),
              child: Text(
                'We are happy to see you again. You can continue where you left off by signing in.',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Theme.of(context).colorScheme.onSecondaryContainer),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0),
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                        width: 1.0,
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Theme.of(context).colorScheme.onSecondaryContainer,
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
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(16.0))),
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.offAll(() => const HomeScreen());
                },
                child: Text(
                  'Continue',
                  style: Theme.of(context).textTheme.bodyMedium,
                )),
            const SizedBox(
              height: 120,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'if you don\'t have an account?',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color:
                            Theme.of(context).colorScheme.onSecondaryContainer),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (c) => const SignUp()));
                    },
                    child: Text(
                      'Sign up',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
