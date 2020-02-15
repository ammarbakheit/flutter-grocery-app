import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import '../utils/colors.dart';


class IntroScreen extends StatelessWidget {

  List<PageViewModel> getPages() {
    return [
        PageViewModel(
          image: Image.asset('assets/intro3.png'),
          titleWidget: Container(
            child: Text("Grocery App",
            style: TextStyle(
              color: blueColor,
              fontSize: 28,
              fontWeight: FontWeight.bold
            ),),
          ),
          bodyWidget: Container(
            child: Text("your No #1 grocery App",
            style: TextStyle(
              fontSize: 22,
              color: greenColor
            ),),
          ) 
        ),
        PageViewModel(
          image: Image.asset('assets/intro2.png'),
           titleWidget: Container(
            child: Text("Order your favourite Food with us ",
            style: TextStyle(
              color: blueColor,
              fontSize: 28,
              fontWeight: FontWeight.bold
            ),),
          ),
          bodyWidget: Container(
            child: Text("Quality & Fast delivery",
            style: TextStyle(
              fontSize: 22,
              color: greenColor
            ),),
          ) 
        ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IntroductionScreen(
          curve: Curves.easeInSine,
          globalBackgroundColor: Colors.white,
          pages: getPages(),
          done: GestureDetector(
            child: Container(
              width: 100,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                 color: blueColor,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Center(
                child: Text("DONE",
                style: TextStyle(
                  letterSpacing: 1.2,
                  color: whiteColor,
                  fontWeight: FontWeight.bold
                ),),
              ),
            ),
          ),
          showNextButton: true,
          showSkipButton: true,
          
          skip: GestureDetector(
            child: Container(
              width: 100,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                 color: blueColor,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Center(
                child: Text("SKIP",
                style: TextStyle(
                  letterSpacing: 1.2,
                  color: whiteColor,
                  fontWeight: FontWeight.bold
                ),),
              ),
            ),
          ),
          dotsDecorator: DotsDecorator(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3)
            ),
            color: grayColor,
            activeColor: blueColor
          ),
          onDone: () { 
                Navigator.of(context).popAndPushNamed("/");
           },
        ),
    );
  }
}