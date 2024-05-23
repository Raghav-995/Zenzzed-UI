import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var userName = 'John Wiliams';
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.camera_alt_outlined,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
        title: Column(
          children: [
            Text(
              'Good Morning,',
              textAlign: TextAlign.start,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(fontSize: 12.0),
            ),
            Text(
              userName,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
              Positioned(
                  top: 12.0,
                  right: 10.0,
                  child: CircleAvatar(
                    radius: 4.0,
                    backgroundColor: Theme.of(context).colorScheme.error,
                  ))
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageSlideshow(
              autoPlayInterval: 3000,
              isLoop: true,
              children: [
                for (var i = 1; i < 5; i++)
                  Image.network(
                    'https://c7.alamy.com/comp/2BXD39W/illustration-of-a-woman-cleaning-the-house-using-a-vacuum-cleaner-happily-flat-style-cartoon-character-with-orange-and-green-colors-2BXD39W.jpg',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(12.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text('My service requests',
                          style: Theme.of(context).textTheme.bodyMedium),
                    ),
                    TextButton(
                        onPressed: () {
                          print('hello');
                        },
                        child: Row(
                          children: [
                            Text('04',
                                style: Theme.of(context).textTheme.bodyLarge),
                            Icon(
                              Icons.arrow_right,
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          ],
                        ))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(12.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text('My referal earnings',
                          style: Theme.of(context).textTheme.bodyMedium),
                    ),
                    TextButton(
                        onPressed: () {
                          print('hello');
                        },
                        child: Row(
                          children: [
                            Text('\$ 123',
                                style: Theme.of(context).textTheme.bodyLarge),
                            Icon(
                              Icons.arrow_right,
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          ],
                        ))
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
              child: Text(
                'Top searched services',
                textAlign: TextAlign.left,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Theme.of(context).colorScheme.primary),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
