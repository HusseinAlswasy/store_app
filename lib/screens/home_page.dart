import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/widget/custom_card.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  static String id = 'HomePage';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'New Trend',
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(
                FontAwesomeIcons.cartShopping,
                color: Colors.deepPurple,
              ),
              onPressed: () {
                print("Pressed");
              }),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 100),
        child: GridView.builder(
          physics: BouncingScrollPhysics(),
          clipBehavior: Clip.none,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 100,
          ),
          itemBuilder: (context, index) {
            return CustomCard();
          },
        ),
      ),
    );
  }
}
