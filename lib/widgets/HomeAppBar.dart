import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            size: 30,
            color: Color.fromARGB(235, 27, 84, 133),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'IDN Shop',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(248, 83, 11, 208)
              ),
              ),
           ),
          const Spacer(),
          badges.Badge(
            badgeStyle: const badges.BadgeStyle(
              badgeColor: Colors.red,
              padding: EdgeInsets.all(7),
            ),
            badgeContent: const Text(
              '3',
              style: TextStyle(color: Colors.white),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "CartPage");
              },
              child: const Icon(
                Icons.shopping_bag_outlined,
                size: 32,
                color: Colors.purple,
              ),
            ),
          )
        ],
      ),
    );
  }
}