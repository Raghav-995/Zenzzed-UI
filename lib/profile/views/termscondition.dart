import 'package:flutter/material.dart';

class TermsConditions extends StatelessWidget {
  const TermsConditions({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40.0,
            ),
            Center(
              child: Text(
                'Terms & Conditions',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Theme.of(context).colorScheme.primary),
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            Text(
              '1) Introduction',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              'This following sets outs the terms and conditions on which you may use the content on business-standart.com website,business-standart.com mobile browser site,Business Standard instore Applications and other digital publishing services (www.smartinvestors.in, www.bshindi.com, www.zenzzed.com) owned by Business Standard Private Limited, all the services herein will be referred to as Business Standard Content Services.',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Theme.of(context).colorScheme.onSecondaryContainer,
                  ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              '2) Registration Access and Use',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              'We welcome users to register on our digital platfrms. We offer the below mentioned registration services which may be subject to change in the future. All changes will be appeared in the terms and conditions page and communicated to existing users by email. Registration services are offered for individual subscribers only. If multiple individuals propose to access the same account or for corporate accounts kindly contact or write to us at zenzzed@gmail.com. Subscription rates will vary for mutiple same time access. The nature and volume of Business Standard content services you consume to the type of platforms will vary according to the type of registration you choose, on the geography you reside or the offer you subscribe to \n a) Free Registration \n b) Premium Registrations \n c) Special offers \n d) Combo registration with partners',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Theme.of(context).colorScheme.onSecondaryContainer,
                  ),
            ),
          ],
        ),
      )),
    );
  }
}
