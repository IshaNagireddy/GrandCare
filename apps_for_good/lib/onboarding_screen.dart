import 'package:apps_for_good/intro_screens/intro_page_1.dart';
import 'package:apps_for_good/intro_screens/intro_page_2.dart';
import 'package:apps_for_good/intro_screens/intro_page_3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  //controller to keep track of page #
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //page view
          PageView(
            children: [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),

          //dot indicators
          Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              children: [
                //skip
                Text('skip'),
                //dot indicator
                SmoothPageIndicator(controller: _controller, count: 3),

                //next/done
              ],
            ),
          ),
        ],
      ),
    );
  }
}
