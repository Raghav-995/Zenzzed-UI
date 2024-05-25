import 'package:flutter/material.dart';

class RequestReferralCard extends StatelessWidget {
  const RequestReferralCard(
      {super.key, required this.name, required this.number});
  final String name;
  final String number;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(
          10,
        ),
        color: Theme.of(context).colorScheme.primary,
      ),
      child: TextButton(
        onPressed: () {},
        child: Row(
          children: [
            Text(
              name,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const Spacer(),
            Text(
              number,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(
              width: 2.0,
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Theme.of(context).colorScheme.onPrimary,
              size: 14.0,
            ),
          ],
        ),
      ),
    );
  }
}
