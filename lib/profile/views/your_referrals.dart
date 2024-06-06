import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zenzzed/profile/controllers/referrals_controller.dart';

class YourReferrals extends StatelessWidget {
  const YourReferrals({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Your Referrals',
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
        ),
        actions: [
          PopupMenuButton<String>(
            icon: Icon(
              Icons.menu,
              color: Theme.of(context).colorScheme.primary,
            ),
            onSelected: (String result) {
              // ignore: avoid_print
              print(result); // handle the selected item here
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder(
              init: Get.put(ReferralsController()),
              builder: (controller) {
                return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.referralsName.length,
                  itemBuilder: (context, index) {
                    var referral = controller.referralsName[index];
                    return Padding(
                      padding: const EdgeInsets.only(top: 6.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[50],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 14.0,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        NetworkImage(referral['personimage']!),
                                  ),
                                  const SizedBox(
                                    width: 12.0,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        referral['name']!,
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
                                            referral['worktype']!,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .copyWith(
                                                  fontSize: 10.0,
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .primary,
                                                ),
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
                              Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 15.0),
                                      child: SizedBox(
                                        height: 19.0,
                                        child: VerticalDivider(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 5.0),
                                  Positioned(
                                    top: 10.0,
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 24.0),
                                        child: SizedBox(
                                          width: 12.0,
                                          child: Divider(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondary,
                                          ),
                                        ),
                                      ),
                                    ),
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
                                            referral['referimage']!,
                                          ),
                                          radius: 14.0,
                                        ),
                                        const SizedBox(width: 8.0),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              referral['referby']!,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall!
                                                  .copyWith(
                                                    fontSize: 10.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .primary,
                                                  ),
                                            ),
                                            const SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.arrow_outward_outlined,
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .primary,
                                                  size: 16.0,
                                                ),
                                                Text(
                                                  referral['worktime']!,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodySmall!
                                                      .copyWith(
                                                        fontSize: 9.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .onSecondaryContainer,
                                                      ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: OutlinedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                          10,
                                        ),
                                      ),
                                    ),
                                    foregroundColor: MaterialStatePropertyAll(
                                        Theme.of(context).colorScheme.primary),
                                    iconColor: MaterialStateProperty.all(
                                      Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'More info',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
