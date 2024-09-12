import 'package:flutter/material.dart';
import 'package:ui_e_commerce/widgets/CategoriesWidget.dart';
import 'package:ui_e_commerce/widgets/HomeAppBar.dart';
import 'package:ui_e_commerce/widgets/ItemsWidget.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const HomeAppBar(),
          Container(
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              )
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search here...",
                          ),
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.camera_alt,
                        size: 27,
                        color: Colors.deepPurple,
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  child: const Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue
                    ),
                  ),
                ),

                //Categories widget
                CategoriesWidget(),

                //Items
                Container(
                  alignment: Alignment.centerLeft,
                  margin: 
                  const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                  child: const Text(
                    'Best Selling',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple
                    ),
                    ),
                ),

                //Item Widget
                Itemswidget(),
              ],
            ),
          )
        ],
      ),
    );
  }
}