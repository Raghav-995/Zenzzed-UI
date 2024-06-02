import 'package:flutter/material.dart';

class ServiceRequestsCard extends StatelessWidget {
  const ServiceRequestsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
          ),
        ],
        color: Colors.white,
      ),
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(
        10,
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/ComputerRepair.jpg',
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              ActionChip(
                side: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 7,
                  vertical: 0,
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                label: const Text("Computer repair"),
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
                backgroundColor: Colors.grey[350],
                onPressed: () {},
              ),
              const Spacer(),
              Text(
                '25, Jul',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
          Text(
            'I request you to please send my laptop for repairing as soon as possible so that ',
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              overflow: TextOverflow.ellipsis,
            ),
            maxLines: 2,
          ),
          Row(
            children: [
              ActionChip(
                side: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 7,
                  vertical: 0,
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                label: const Text(
                  "3 Responses",
                ),
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
                backgroundColor: Colors.grey[350],
                onPressed: () {},
              ),
              const Spacer(),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
                label: const Text(
                  'Edit',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.blueAccent,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
