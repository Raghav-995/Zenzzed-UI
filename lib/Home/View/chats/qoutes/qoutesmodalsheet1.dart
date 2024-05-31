import 'package:flutter/material.dart';
import 'package:zenzzed/Home/View/chats/qoutes/qoutesmodel2.dart';

class Qoutes1 extends StatelessWidget {
  const Qoutes1({super.key});
  @override
  Widget build(context) {
    return SizedBox(
      height: 210,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Final qoute',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
            const SizedBox(
              height: 6.0,
            ),
            Text(
              'Please enter your service cost. We will tell to the recipient',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Theme.of(context).colorScheme.onSecondaryContainer,
                  ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.primary,
                      width: 1.0,
                    ),
                  ),
                  hintText: '\$  0.00',
                  labelStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.outlineVariant),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(16.0))),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Center(
              child: ElevatedButton(
                child: Text(
                  'Quote',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                onPressed: () {
                  showModalBottomSheet(
                      backgroundColor: Theme.of(context).colorScheme.background,
                      shape: const OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16.0),
                              topRight: Radius.circular(16.0))),
                      context: context,
                      builder: (cxt) => const Qoutes2());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
