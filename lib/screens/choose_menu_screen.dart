import 'package:flutter/material.dart';
import 'package:zoo5iney/common/custom_app_bar.dart';
import 'package:zoo5iney/common/menu_container.dart';
import 'package:zoo5iney/utils/strings.dart';
import 'package:zoo5iney/utils/text_styles.dart';

import 'dashboard_screen.dart';

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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 24.0),
                    child: Text(
                      Strings.Menu,
                      style: TextStyles.headingTextStyle,
                    )),
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
            Positioned(
              bottom: 48,
              left: 16,
              child: Text(Strings.LAST_STEP_TO_ENJOY,
                  style: TextStyles.buttonTextStyle),
            ),
            Positioned(
              bottom: -30,
              right: -30,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => DashboardScreen(),
                    ),
                  );
                },
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFDAD4CC).withOpacity(0.8),
                  ),
                  child: Align(
                    alignment: Alignment(-0.4, -0.4),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}
