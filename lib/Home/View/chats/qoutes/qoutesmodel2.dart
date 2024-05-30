import 'package:flutter/material.dart';
import 'package:zenzzed/Home/View/chats/workstatus.dart';

class Qoutes2 extends StatelessWidget {
  const Qoutes2({super.key});
  @override
  Widget build(context) {
    return SizedBox(
      height: 210.0,
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
              'Robin pap gave his final qoutes for your services',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Theme.of(context).colorScheme.onSecondaryContainer,
                  ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnoPN8K0ROp9fSFAthzNm1c77VKBe5T22jtg&s',
                  ),
                  radius: 16.0, // Set the desired radius
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Robbin Papa',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                    Row(
                      children: [
                        Text(
                          '⭐ 4.0',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                  fontSize: 12.0,
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Text(
                          'Computer Repair',
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontSize: 12.0,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondaryContainer,
                                  ),
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Fixed cost',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 12.0,
                          color: Theme.of(context)
                              .colorScheme
                              .onSecondaryContainer,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 3.0,
                    ),
                    Text(
                      '20.8',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 12.0,
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => const WorkStatus()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
