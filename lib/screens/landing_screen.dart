import 'package:flutter/material.dart';
import 'package:zoo5iney/common/custom_app_bar.dart';
import 'package:zoo5iney/screens/dashboard_screen.dart';
import 'package:zoo5iney/utils/strings.dart';
import 'package:zoo5iney/utils/text_styles.dart';

class LandingScreen extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            "assets/elephant.jpg",
            height: height,
            fit: BoxFit.fitHeight,
          ),
          Column(
            children: <Widget>[
              CustomAppBar(),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 32.0,
                  left: 32.0,
                  right: 32.0,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: Strings.READY_TO_EXPLORE,
                        style: TextStyles.bigHeadingTextStyle,
                    ),
                      TextSpan(text: "\n"),
                      TextSpan(
                        text: Strings.READY_TO_EXPLORE_DESC,
                        style: TextStyles.bodyTextStyle,
                    ),
                      TextSpan(text: "\n"),
                      TextSpan(text: "\n"),
                      TextSpan(
                        text: Strings.START_ENJOYING,
                        style: TextStyles.buttonTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ],
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
                  alignment: Alignment(-0.4,-0.4),
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
      ),
    );
  }
}