import 'package:dashboard/home_page/drawer_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<DrawerItem> drawerList = [
    DrawerItem(
        name: 'Dashboard', icon: Icons.dashboard, isSelected: true, route: ''),
    DrawerItem(name: 'Clientes', icon: Icons.people, route: ''),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dashboard'),
          centerTitle: true,
        ),
        body: Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: 240,
              color: Colors.black,
              
              child: ListView.builder(
                itemCount: drawerList.length,
                itemBuilder: (context, index) => drawerList[index],
              ),
            )
          ],
        ));
  }
}
