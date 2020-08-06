import 'package:flutter/material.dart';
import 'package:zoo5iney/common/custom_app_bar.dart';
import 'package:zoo5iney/common/menu_container.dart';
import 'package:zoo5iney/utils/strings.dart';
import 'package:zoo5iney/utils/text_styles.dart';

class ChooseMenuScreen extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB98959),
      body: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CustomAppBar(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
                child: Text(Strings.Menu, style: TextStyles.headingTextStyle,)
              ),
              MenuContainer(
                text: Strings.Direction,
                imagePath: "assets/weekly.jpg",
              ),
               MenuContainer(
                text: Strings.Animals,
                imagePath: "assets/monthly.jpg",
              ),
               MenuContainer(
                text: Strings.information,
                imagePath: "assets/3monthly.jpg",
              ),
               MenuContainer(
                text: Strings.settings,
                imagePath: "assets/6monthly.jpg",
              ),
            ],
          ),
        ],
      ),
    );
  }
}