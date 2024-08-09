
import 'package:GrandCare/intro_screens/intro_page_1.dart';
import 'package:GrandCare/intro_screens/intro_page_2.dart';
import 'package:GrandCare/intro_screens/intro_page_3.dart';
import 'package:GrandCare/login_choice.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  //controller to keep track of page #
  final PageController _controller = PageController();

  //keep track of last page status
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //page view
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //skip
                GestureDetector(
                  onTap: () {
                    _controller.animateToPage(2,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                  child: Text(
                    'Skip',
                    style: GoogleFonts.poppins(
                        color: Color.fromARGB(255, 229, 243, 255),
                        fontSize: 20),
                        
                  ),
                ),

                //dot indicator
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: ExpandingDotsEffect(
                    dotColor: Colors.white,
                    activeDotColor: const Color.fromARGB(255, 255, 255, 255),
                  ),
                ),

                //next/done
                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (_, __, ___) => LoginChoice(),
                              transitionDuration: Duration(milliseconds: 500),
                              transitionsBuilder: (_, a, __, c) =>
                                  FadeTransition(opacity: a, child: c),
                            ),
                          );
                        },
                        child: Text(
                          'Done',
                          style: GoogleFonts.poppins(
                            color: Color.fromARGB(255, 229, 243, 255),
                            fontSize: 20,
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: Text(
                          'Next',
                          style: GoogleFonts.poppins(
                            color: Color.fromARGB(255, 229, 243, 255),
                            fontSize: 20,
                          ),
                        ),
                      )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
