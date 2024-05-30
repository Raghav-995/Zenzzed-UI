import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zenzzed/Home/View/chats/chat.dart';
import 'package:zenzzed/Home/View/chats/update_status.dart';
import 'package:zenzzed/themes/theme.dart';

class WorkStatus extends StatelessWidget {
  const WorkStatus({super.key});
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.background,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text('Computer repair',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                )),
      ),
      body: SingleChildScrollView(
          child: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                bottom: 10,
              ),
              height: 200,
              width: double.infinity,
              child: Image.asset(
                'assets/images/ComputerRepair.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const CircleAvatar(
                            radius: 30.0,
                            backgroundImage: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnoPN8K0ROp9fSFAthzNm1c77VKBe5T22jtg&s',
                            ),
                          ),
                          const SizedBox(
                            width: 12.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('James smith',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        fontWeight: FontWeight.bold,
                                      )),
                              const SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                '⭐ 4.0',
                                style: TextStyle(
                                  color: lColorScheme.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 20,
                            color: Theme.of(context)
                                .colorScheme
                                .onSecondaryContainer,
                          ),
                          const SizedBox(
                            width: 8.0,
                          ),
                          Text('3529 Alexander Drive, Dallas',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  )),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            '3 miles away from your location',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondaryContainer,
                                    ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/images/map.png',
                        height: 130,
                        width: 130,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )),
                  child: Text(
                    'Show on map',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: const Divider(),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 0,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Service description',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam pharetra, ligula at consectetur facilisis, risus risus luctus urna. Mauris magna leo, commodo sed pretium ac, rutrum eu lorem. Nulla facilisi. Aenean convallis, risus et bibendum euismod, velit neque lacinia turpis, at malesuada urna dui vitae neque.Vestibulum at consectetur arcu. Cras auctor tellus eget mi cursus,on dolor. Nulla',
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color:
                            Theme.of(context).colorScheme.onSecondaryContainer),
                    softWrap: true,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            const Divider(),
            const SizedBox(
              height: 6.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
              child: Column(
                children: [
                  Text(
                    'Please update your work progress here. Based on your input we\'ll tell to recipient.',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color:
                            Theme.of(context).colorScheme.onSecondaryContainer),
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (builder) => const UpdateStatus()));
                      },
                      child: Text(
                        'Update work status',
                        style: Theme.of(context).textTheme.bodySmall,
                      )),
                  const SizedBox(
                    height: 8.0,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    'You can chat directlty to the recipent from here',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color:
                            Theme.of(context).colorScheme.onSecondaryContainer),
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => const Chat()));
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.chat,
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                          const SizedBox(
                            width: 6.0,
                          ),
                          Text(
                            'Chat',
                            style: Theme.of(context).textTheme.bodySmall,
                          )
                        ],
                      )),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
