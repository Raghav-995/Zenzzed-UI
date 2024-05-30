import 'package:flutter/material.dart';
import 'package:zenzzed/themes/theme.dart';

class RequestReferralCard extends StatelessWidget {
  const RequestReferralCard(
      {super.key, required this.name, required this.number});
  final String name;
  final String number;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      margin: const EdgeInsets.all(5),
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
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            const Spacer(),
            Text(
              number,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
