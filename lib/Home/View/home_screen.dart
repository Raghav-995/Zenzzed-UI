import 'package:flutter/material.dart';
import 'package:zenzzed/home/View/home_page.dart';
import 'package:zenzzed/Service%20Request/View/service_request_tab.dart';
import 'package:zenzzed/profile/views/profile_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var currInd = 0;
  final _widgetOptions = [
    const HomePage(),
    ServiceRequestTab(),
    const ProfileTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[currInd],

      bottomNavigationBar: NavigationBar(
        height: 60.0,
        backgroundColor: Colors.grey.shade300,
        indicatorColor: Theme.of(context).colorScheme.primary,
        onDestinationSelected: (int index) {
          setState(() {
            currInd = index;
          });
        },
        selectedIndex: currInd,
        destinations: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: NavigationDestination(
              icon: Icon(
                Icons.grid_view_rounded,
                color: currInd == 0
                    ? Theme.of(context).colorScheme.onPrimary
                    : Theme.of(context).colorScheme.primary,
              ),
              label: '',
            ),
          ),
          NavigationDestination(
            icon: Icon(
              Icons.add,
              color: currInd == 1
                  ? Theme.of(context).colorScheme.onPrimary
                  : Theme.of(context).colorScheme.primary,
            ),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.person_2_outlined,
              color: currInd == 2
                  ? Theme.of(context).colorScheme.onPrimary
                  : Theme.of(context).colorScheme.primary,
            ),
            label: '',
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: 0,
      //   backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.3),
      //   onTap: (ind) {
      //     setState(() {
      //       currInd = ind;
      //     });
      //   },
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: currInd == 0
      //           ? const Icon(
      //               Icons.grid_view_rounded,
      //               color: Colors.white,
      //             )
      //           : Icon(
      //               Icons.grid_view_rounded,
      //               color: Theme.of(context).colorScheme.primary,
      //             ),
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: currInd == 1
      //           ? const Icon(
      //               Icons.add,
      //               color: Colors.white,
      //             )
      //           : Icon(
      //               Icons.add,
      //               color: Theme.of(context).colorScheme.primary,
      //             ),
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: currInd == 2
      //           ? const Icon(
      //               Icons.person_2_outlined,
      //               color: Colors.white,
      //             )
      //           : Icon(
      //               Icons.person_2_outlined,
      //               color: Theme.of(context).colorScheme.primary,
      //             ),
      //       label: '',
      //     ),
      //   ],
      // ),
    );
  }
}
