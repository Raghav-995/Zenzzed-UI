import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zenzzed/Home/Controller/home_page_controller.dart';
import 'package:zenzzed/Home/View/service_description_page.dart';

class ServiceCardH extends StatefulWidget {
  const ServiceCardH({super.key, this.type});
  final Axis? type;

  @override
  State<ServiceCardH> createState() => _ServiceCardHState();
}

class _ServiceCardHState extends State<ServiceCardH> {
  @override
  Widget build(BuildContext context) {
    HomePageController controller = HomePageController();

    List<Map<String, String>> listData = controller.services;
    return GestureDetector(
      onTap: () {
        Get.to(() => const ServiceDescriptionPage());
      },
      child: ListView.builder(
          scrollDirection: widget.type!,
          itemCount: controller.services.length,
          itemBuilder: (context, index) {
            return Container(
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
                          listData[index]['image']!,
                          fit: BoxFit.fill,
                          loadingBuilder: (BuildContext context, Widget child,
                              ImageChunkEvent? loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Center(
                              child: CircularProgressIndicator(
                                value: loadingProgress.expectedTotalBytes !=
                                        null
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
                                  child: CircleAvatar(
                                      radius: 30.0,
                                      backgroundImage: NetworkImage(
                                          listData[index]['personimage']!)),
                                ),
                                const SizedBox(
                                  width: 4.0,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                            controller.services[index]['name']!,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                horizontal: 3,
                                                vertical: 0,
                                              ),
                                              shape:
                                                  const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(20),
                                                ),
                                              ),
                                              label: Text(
                                                listData[index]['ratings']!,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodySmall!
                                                    .copyWith(
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .primary,
                                                        fontWeight:
                                                            FontWeight.bold),
                                              ),
                                              backgroundColor: Colors.grey[200],
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
                                              shape:
                                                  const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(20),
                                                ),
                                              ),
                                              label: Text(
                                                listData[index]['worktype']!,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodySmall!
                                                    .copyWith(
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .primary,
                                                        fontWeight:
                                                            FontWeight.bold),
                                              ),
                                              backgroundColor: Colors.grey[200],
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
                                  listData[index]['location']!,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
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
                              listData[index]['description']!,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondaryContainer,
                                  ),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Divider(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSecondaryContainer,
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
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onSecondaryContainer,
                                      ),
                                ),
                                const Spacer(),
                                Text(
                                  '25, Jul',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
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
                        onPressed: () {
                          setState(() {
                            listData[index]['accept'] == 'No';
                            // ignore: avoid_print
                            print(listData);
                          });
                        },
                        icon: Icon(
                          listData[index]['accept'] == 'Yes'
                              ? Icons.check
                              : Icons.add,
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
