import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zenzzed/profile/controllers/service_requests_controller.dart';

class ServiceRequestWidget extends StatelessWidget {
  const ServiceRequestWidget({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ServiceRequestsController>(
        init: Get.put(ServiceRequestsController()),
        builder: (controller) {
          return Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            margin: const EdgeInsets.symmetric(
              vertical: 1,
              horizontal: 0,
            ),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(
                    0.1,
                  ),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        'assets/images/profile.jpg',
                        height: 50,
                        width: 50,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          controller.requests[index].name,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '⭐${controller.requests[index].rating}',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Computer repair',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey.withOpacity(0.2),
                ),
                !controller.requests[index].accepted
                    ? Text(
                        '${controller.requests[index].name} has shown interest on your service request.',
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    : const Text(
                        'You can chat directly with your service recipient.',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                const SizedBox(
                  height: 10,
                ),
                controller.requests[index].accepted == false
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Estimated Cost',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                '\$${controller.requests[index].estCost}',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          OutlinedButton.icon(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                ),
                              ),
                            ),
                            icon: const Icon(
                              Icons.close,
                            ),
                            onPressed: () {},
                            label: const Text('Ignore'),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          OutlinedButton.icon(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                ),
                              ),
                            ),
                            icon: const Icon(
                              Icons.check,
                            ),
                            onPressed: () {
                              controller.changeAcceptance(index);
                            },
                            label: const Text('Accept'),
                          ),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: 130,
                            child: TextButton.icon(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                      10,
                                    ),
                                  ),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                  Theme.of(context).colorScheme.primary,
                                ),
                                iconColor: MaterialStateProperty.all(
                                  Colors.white,
                                ),
                              ),
                              icon: const Icon(
                                Icons.chat_bubble_outline_rounded,
                              ),
                              onPressed: () {},
                              label: const Text(
                                'Chat',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
              ],
            ),
          );
        });
  }
}
