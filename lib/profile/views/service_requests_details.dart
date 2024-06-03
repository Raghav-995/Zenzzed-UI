import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zenzzed/profile/controllers/service_requests_controller.dart';
import 'package:zenzzed/profile/views/service_request_widget.dart';

class ServiceRequestsDetails extends StatelessWidget {
  ServiceRequestsDetails({super.key});
  final controller = Get.put(
    ServiceRequestsController(),
    permanent: true,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 20,
          ),
        ),
        title: Text(
          'Computer repair',
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/ComputerRepair.jpg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 5,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      ActionChip(
                        side: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 7,
                          vertical: 0,
                        ),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        label: const Text(
                          "3 Responces",
                        ),
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        backgroundColor: Colors.grey[350],
                        onPressed: () {},
                      ),
                      const Spacer(),
                      Text(
                        '25, Jul',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  Row(
                    children: [
                      Text(
                        'Service description',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas a ligula in diam suscipit semper et nec diam. Proin luctus, odio at cursus rhoncus, ligula justo bibendum arcu, quis pulvinar nisl nisi sed nisl. Nulla facilisi. In sit amet arcu vel sem volutpat aliquam. Nunc ut enim aliquam, sollicitudin diam eget, ullamcorper eros. Nam pharetra ex non ultrices interdum. Nam quis velit et nisl euismod malesuada non nec nunc. Aliquam gravida, lectus nec vehicula pharetra, erat mi accumsan risus, ac consectetur sem justo eu ligula. Maecenas lacinia quam vel dolor facilisis vehicula. Suspendisse eu tristique ex. Mauris quis ligula elementum.',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  Divider(
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  Row(
                    children: [
                      Text(
                        'Request Responses',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: controller.requests.length,
              itemBuilder: (context, index) {
                return ServiceRequestWidget(
                  index: index,
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
