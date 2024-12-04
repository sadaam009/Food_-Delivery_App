import 'package:flutter/material.dart';
import 'package:food_order/homepage4.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:food_order/intro_page.dart';
import 'package:food_order/homepage2.dart';
import 'package:food_order/hompage3.dart';
import 'package:food_order/homepage4.dart';
import 'package:food_order/singin.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Screen> {
  PageController _controller = PageController();
  //Variable kaan shaqadiisu waa inuu noofuro last next page

  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // page Veiw
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 3);
            });
          },
          children: [IntroPage(), Homepage2(), Hompage3(), Homepage4()],
        ),
        Container(
          alignment: Alignment(0, 0.73),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //Next
              GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(3);
                  },
                  child: Text("Skip")),

              // Dote indicator
              SmoothPageIndicator(
                //Next Or Done

                controller: _controller,
                count: 4,
                effect: const ExpandingDotsEffect(
                  dotColor: Color.fromARGB(255, 224, 219, 219),
                  activeDotColor: Colors.green,
                  dotHeight: 10,
                  dotWidth: 10,
                  spacing: 10,
                ),
              ),
              onLastPage
                  ? GestureDetector(
                      onTap: () {
                        _controller.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Singin();
                          },
                        ));
                      },
                      child: Text("Done"))
                  : GestureDetector(
                      onTap: () {
                        _controller.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                      child: Text("Next")),
            ],
          ),
        ),
      ],
    );
  }
}
