import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.onPrimary,
          leadingWidth: 100.0,
          leading: const CircleAvatar(
            radius: 12.0,
            backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnoPN8K0ROp9fSFAthzNm1c77VKBe5T22jtg&s'),
          ),
          title: Column(
            children: [
              Text(
                'James Smith',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 2.0,
              ),
              Text(
                'Computer Repair',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context).colorScheme.onSecondaryContainer,
                    ),
              ),
            ],
          ),
          actions: [
            TextButton(
                onPressed: () {},
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1.0,
                            color: Theme.of(context).colorScheme.primary),
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Work Status',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ))),
          ]),
    );
  }
}
