import 'package:flutter/material.dart';
import 'package:insta_projects/screens/home_screen.dart';

void main() => runApp(
      const MaterialApp(
        title: "Delivery food",
        debugShowCheckedModeBanner: false,
        home: StartPage(),
      ),
    );

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          color: const Color(0xff2B2B2B),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45.0),
            child: Stack(
              children: [
                circleBehindPicture(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Delivery man picture
                    Image.asset("assets/images/delivery_man.png"),

                    // text => Get Delicious
                    const Text(
                      "Get Delicious",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.1,
                          fontSize: 22),
                    ),

                    // sized box
                    const SizedBox(height: 8.0),

                    // text => Food Right Now
                    const Text(
                      "Food Right Now",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.1,
                          fontSize: 22),
                    ),

                    // sized box
                    const SizedBox(height: 8.0),

                    // text => Get your delicious food and fast Delivery in one apps
                    const Text(
                      "Get your delicious food and",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    // sized box
                    const SizedBox(height: 7.0),

                    // text => fast Delivery in one apps
                    const Text(
                      "fast Delivery in one apps",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    // sized box
                    const SizedBox(height: 20.0),

                    // next page button
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 54,
                        decoration: BoxDecoration(
                          color: const Color(0xffF3790E),
                          borderRadius: BorderRadius.circular(12.5),
                        ),
                        child: const Center(
                          child: Text(
                            "Get Started",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 19.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


// this is the circle behind the delivery man picture
Positioned circleBehindPicture() => Positioned(
      top: 190,
      left: 28,
      child: Container(
        width: 272,
        height: 272,
        decoration: const BoxDecoration(
          color: Color(0xff343132),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(9999),
            topRight: Radius.circular(9999),
            bottomLeft: Radius.circular(9999),
            bottomRight: Radius.circular(9999),
          ),
        ),
      ),
    );
