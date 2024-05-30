import 'package:flutter/material.dart';

class UpdateStatus extends StatefulWidget {
  const UpdateStatus({super.key});

  @override
  State<UpdateStatus> createState() => _UpdateStatusState();
}

class _UpdateStatusState extends State<UpdateStatus> {
  String? _selectedColor;
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        title: Row(
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnoPN8K0ROp9fSFAthzNm1c77VKBe5T22jtg&s',
              ),
              radius: 20.0, // Set the desired radius
            ),
            const SizedBox(
              width: 8.0,
            ),
            Column(
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
                        color:
                            Theme.of(context).colorScheme.onSecondaryContainer,
                      ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Radio(
                  activeColor: Theme.of(context).colorScheme.primary,
                  value: 'Service requested accepted',
                  groupValue: _selectedColor, // This is the selected value
                  onChanged: (value) {
                    setState(() {
                      _selectedColor = value as String;
                    });
                  },
                ),
                const SizedBox(width: 20.0),
                Column(
                  children: [
                    Text(
                      'Service request accepted',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.primary),
                    ),
                    const SizedBox(
                      height: 3.0,
                    ),
                    Text(
                      'Service request accepted',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Theme.of(context)
                              .colorScheme
                              .onSecondaryContainer),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
