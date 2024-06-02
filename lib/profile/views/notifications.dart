import 'package:flutter/material.dart';

List<Map<String, String>> referrralPersons = [
  {
    'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2F1rFKPOBLAMv5Z53N8j8XlKS7gH8Awb2Eg&s',
    'name': 'Robin papa',
    'date': '27 Jun at 9.27 PM',
    'description':
        'Robin papa has accepted your referral. You can check the work progress in your referrals page',
  },
  {
    'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSp8I5w1OeNdIHchffBBfOoPe1vGVDPVtJWbA&s',
    'name': 'Oscar Thomsen',
    'date': '27 Jun at 9.33 PM',
    'description':
        'Oscar Thomsen has accepted your referral. You can check the work progress in your referrals page',
  },
  {
    'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROm3NoBGFs8KjLSx0B43bVej9h7j8A_VbrOg&s',
    'name': 'Silvio Bompan',
    'date': '27 Jun at 10.27 PM',
    'description':
        'Silvio Bompan has accepted your referral. You can check the work progress in your referrals page',
  }
];

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 10.0,
          ),
          Text(
            'Notifications',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Theme.of(context).colorScheme.primary),
          ),
          const SizedBox(
            height: 6.0,
          ),
          for (int j = 0; j < 2; j++)
            for (int i = 0; i < 3; i++)
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey[100]),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 12.0,
                                  backgroundImage: NetworkImage(
                                      referrralPersons[i]['image']!),
                                ),
                                const SizedBox(
                                  width: 4.0,
                                ),
                                Text(
                                  referrralPersons[i]['name']!,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary),
                                ),
                              ],
                            ),
                            Text(
                              referrralPersons[i]['date']!,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondaryContainer),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          referrralPersons[i]['description']!,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                  color:
                                      Theme.of(context).colorScheme.secondary),
                        )
                      ],
                    ),
                  ),
                ),
              )
        ],
      ),
    );
  }
}
