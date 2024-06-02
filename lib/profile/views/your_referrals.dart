import 'package:flutter/material.dart';

var referralsName = [
  {
    'personimage':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaWR_7SEPN1Bx2NTi4R2f2hsQqW1tdjMBCjQ&s',
    'name': 'James Smith',
    'worktype': 'Computer repair',
    'referby': 'Robin papa had referred by you on Jul 30',
    'referimage':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2F1rFKPOBLAMv5Z53N8j8XlKS7gH8Awb2Eg&s',
    'worktime': 'Work started at 9.30 AM'
  },
  {
    'personimage':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRutqpG-DjiqWPIGhsekuM-mVOPWs-ITFrUnw&s',
    'name': 'Oscar Jonhson',
    'worktype': 'Handyman',
    'referby': 'Donald Rock had referred by you on Aug 05',
    'referimage':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaNkwLyEyzTkzMxP-UkOMaOArlSmqK6O9GFw&s',
    'worktime': 'Work started at 11.00 AM'
  },
  {
    'personimage':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnoPN8K0ROp9fSFAthzNm1c77VKBe5T22jtg&s',
    'name': 'Silicon Alexander',
    'worktype': 'Home Cleaning',
    'referby': 'Slovia Azes had referred by you on Jun 25',
    'referimage':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRr0bSwA5qUB7ukMdtoDuzaE6JjyweyxbXiaA&s',
    'worktime': 'Work started at 9.00 AM'
  },
  {
    'personimage':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRutqpG-DjiqWPIGhsekuM-mVOPWs-ITFrUnw&s',
    'name': 'Oscar Jonhson',
    'worktype': 'Handyman',
    'referby': 'Donald Rock had referred by you on Aug 05',
    'referimage':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaNkwLyEyzTkzMxP-UkOMaOArlSmqK6O9GFw&s',
    'worktime': 'Work started at 11.00 AM'
  },
];

class YourReferrals extends StatelessWidget {
  const YourReferrals({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 14.0,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(''),
                  Text(
                    'Your Referrals',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                  ),
                  PopupMenuButton<String>(
                    icon: Icon(
                      Icons.menu,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    onSelected: (String result) {
                      // ignore: avoid_print
                      print(result); // handle the selected item here
                    },
                    itemBuilder: (BuildContext context) =>
                        <PopupMenuEntry<String>>[
                      const PopupMenuItem<String>(
                        value: 'Item 1',
                        child: Text('All'),
                      ),
                      const PopupMenuItem<String>(
                        value: 'Item 2',
                        child: Text('In progress'),
                      ),
                      const PopupMenuItem<String>(
                        value: 'Item 3',
                        child: Text('Completed'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            for (int j = 0; j < referralsName.length; j++)
              Padding(
                padding: const EdgeInsets.only(top: 6.0),
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey[50]),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 14.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                                backgroundImage: NetworkImage(
                                    referralsName[j]['personimage']!)),
                            const SizedBox(
                              width: 12.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  referralsName[j]['name']!,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary),
                                ),
                                const SizedBox(
                                  height: 2.0,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius:
                                          BorderRadius.circular(12.0)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Text(
                                      referralsName[j]['worktype']!,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              fontSize: 10.0,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 40.0),
                          child: Divider(),
                        ),
                        Stack(children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: SizedBox(
                                  height: 19.0,
                                  child: VerticalDivider(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  )),
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          Positioned(
                            top: 10.0,
                            child: Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 24.0),
                                  child: SizedBox(
                                      width: 12.0,
                                      child: Divider(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                      )),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40.0),
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 5.0,
                                ),
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    referralsName[j]['referimage']!,
                                  ),
                                  radius: 14.0,
                                ),
                                const SizedBox(width: 8.0),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      referralsName[j]['referby']!,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.bold,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary),
                                    ),
                                    const SizedBox(
                                      height: 2.0,
                                    ),
                                    Row(children: [
                                      Icon(
                                        Icons.arrow_outward_outlined,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        size: 16.0,
                                      ),
                                      Text(
                                        referralsName[j]['worktime']!,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(
                                                fontSize: 9.0,
                                                fontWeight: FontWeight.bold,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onSecondaryContainer),
                                      )
                                    ])
                                  ],
                                )
                              ],
                            ),
                          ),
                        ]),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: OutlinedButton(
                              style: ButtonStyle(
                                  foregroundColor: MaterialStatePropertyAll(
                                      Theme.of(context).colorScheme.primary),
                                  iconColor: MaterialStateProperty.all(
                                      Theme.of(context).colorScheme.primary)),
                              onPressed: () {},
                              child: Text(
                                'More info',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
