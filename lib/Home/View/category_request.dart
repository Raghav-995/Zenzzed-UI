import 'package:flutter/material.dart';

class CategoryRequest extends StatefulWidget {
  const CategoryRequest({super.key});

  @override
  State<CategoryRequest> createState() => _CategoryRequestState();
}

class _CategoryRequestState extends State<CategoryRequest> {
  @override
  Widget build(context) {
    var referers = [
      'Abraham',
      'Andrew Brown',
      'Doran Nghuen',
      'Madeline Shorts',
      'Lindsay Tucker',
      'Willard Bowman'
    ];
    String? _selectedValue;
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
        ),
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 12.0,
            ),
            Text(
              'Refer to',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
              controller: TextEditingController(),
              autocorrect: false,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(
                  10,
                ),
                prefixIcon: Icon(
                  Icons.search,
                  size: 30,
                  color: Theme.of(context).colorScheme.onSecondaryContainer,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    15,
                  ),
                ),
                filled: true,
                hintStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context).colorScheme.onSecondaryContainer,
                    ),
                hintText: 'Computer repair',
                fillColor: Colors.grey[250],
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: referers.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Radio(
                            activeColor: Theme.of(context).colorScheme.primary,
                            value: referers[index],
                            groupValue: _selectedValue,
                            onChanged: (value) {
                              setState(() {
                                _selectedValue = value;
                              });
                            }),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              referers[index],
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Text(
                              'Computer repair',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondaryContainer,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
