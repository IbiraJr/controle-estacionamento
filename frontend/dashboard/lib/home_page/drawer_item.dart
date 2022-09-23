import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  DrawerItem(
      {required this.name,
      required this.icon,
      required this.route,
      this.isSelected = false,
      Key? key})
      : super(key: key);
  final String name;
  final IconData icon;
  final String route;
  bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Icon(
                icon,
                color: isSelected ? Colors.white : Colors.grey,
              ),
            ),
            Text(
              name,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.grey,
                fontSize: 15,
              ),
            )
          ],
        ),
      ),
    );
  }
}
