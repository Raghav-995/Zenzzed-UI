import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zenzzed/Home/View/service_description_page.dart';
import 'package:http/http.dart' as http;

class ServiceCard extends StatelessWidget {
  const ServiceCard({super.key});
  @override
  Widget build(BuildContext context) {
    String imageUrl =
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiU6pLt9y7YP9FaBuUhXNMMjKQkxdICQFejSW8XAIf0UNGmsi7Yv1KE1Skjw&s';

    return GestureDetector(
      onTap: () {
        Get.to(() => const ServiceDescriptionPage());
      },
      child: Container(
        margin: const EdgeInsets.only(
          top: 10,
          left: 16,
          right: 10,
          bottom: 25,
        ),
        height: 400,
        width: MediaQuery.of(context).size.width * 0.85,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: const BorderRadius.all(
            Radius.circular(
              12.0,
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 160,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        10,
                      ),
                      topRight: Radius.circular(
                        10,
                      ),
                    ),
                  ),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.fill,
                    loadingBuilder: (BuildContext context, Widget child,
                        ImageChunkEvent? loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes!
                              : null,
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                              right: 5,
                              bottom: 5,
                            ),
                            child: const CircleAvatar(
                              radius: 30.0,
                              backgroundImage: AssetImage(
                                'assets/images/profile.jpg',
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 4.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('James smith',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            fontWeight: FontWeight.bold,
                                          )),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Wrap(
                                    runSpacing: 0,
                                    spacing: 0,
                                    children: [
                                      ActionChip(
                                        side: const BorderSide(
                                          width: 0,
                                          style: BorderStyle.none,
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 3,
                                          vertical: 0,
                                        ),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(20),
                                          ),
                                        ),
                                        label: Text(
                                          "⭐ 4.0",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .primary,
                                                  fontWeight: FontWeight.bold),
                                        ),
                                        backgroundColor: Colors.grey[300],
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  Wrap(
                                    runSpacing: 0,
                                    spacing: 0,
                                    children: [
                                      ActionChip(
                                        side: const BorderSide(
                                          width: 0,
                                          style: BorderStyle.none,
                                        ),
                                        padding: const EdgeInsets.all(0),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(20),
                                          ),
                                        ),
                                        label: Text(
                                          "Computer repair",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .primary,
                                                  fontWeight: FontWeight.bold),
                                        ),
                                        backgroundColor: Colors.grey[300],
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_on_outlined,
                              size: 18.0,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSecondaryContainer),
                          const SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            '3529 Alexander Drive, Dallas',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondaryContainer,
                                    ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      Text(
                        'I request you to please send my laptop for repairing as soon as possible so that i can get back to work',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSecondaryContainer,
                            ),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Divider(
                        color:
                            Theme.of(context).colorScheme.onSecondaryContainer,
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.location,
                            size: 20,
                            color: Theme.of(context)
                                .colorScheme
                                .onSecondaryContainer,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            '3.mi',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondaryContainer,
                                    ),
                          ),
                          const Spacer(),
                          Text(
                            '25, Jul',
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
                )
              ],
            ),
            Positioned(
              top: 130,
              right: 15,
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    50,
                  ),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    color: Theme.of(context).colorScheme.onPrimary,
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
