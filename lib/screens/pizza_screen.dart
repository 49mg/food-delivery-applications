import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PizzaScreen extends StatelessWidget {
  const PizzaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // size tools
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [

          // the top space
          SizedBox(height: MediaQuery.of(context).size.height * 0.08),

          // icon and detail text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // back arrow icon
                Container(
                  width: 40,
                  height: 42,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: const [
                      BoxShadow(
                        spreadRadius: 0.1,
                        color: Color(0xffD6CFCF),
                        blurRadius: 1.0,
                        offset: Offset(0, 2),
                      ),
                      BoxShadow(
                        spreadRadius: 0.1,
                        color: Color(0xffD6CFCF),
                        blurRadius: 1.0,
                        offset: Offset(2, 0),
                      ),
                    ],
                  ),
                  child: GestureDetector(
                    onTap: (){Navigator.pop(context);},
                    child: Center(
                      child: SvgPicture.asset("assets/icons/back.svg",
                          color: Colors.black),
                    ),
                  ),
                ),

                // detail text
                const Text(
                  "Detail",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 24),
                ),

                // heart icon
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: const [
                      BoxShadow(
                        spreadRadius: 0.1,
                        color: Color(0xffD6CFCF),
                        blurRadius: 1.0,
                        offset: Offset(0, 2),
                      ),
                      BoxShadow(
                        spreadRadius: 0.1,
                        color: Color(0xffD6CFCF),
                        blurRadius: 1.0,
                        offset: Offset(2, 0),
                      ),
                    ],
                  ),
                  child: Center(
                    child: SvgPicture.asset("assets/icons/Heart.svg",
                        color: Colors.black),
                  ),
                ),
              ],
            ),
          ),

          // sized box
          SizedBox(height: height * 0.036),

          // name of pizza
          const Text(
            textAlign: TextAlign.center,
            "Pizza Fresh\nVegetables",
            style: TextStyle(
              color: Colors.black,
              fontSize: 29,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0,
            ),
          ),

          // sized box
          SizedBox(height: height * 0.020),

          // clock icons and time
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              // clock icon
              Icon(
                Icons.watch_later_outlined,
                color: Color(0xffD6CFCF),
                size: 38,
              ),

              // cocking time
              Text(
                "14 - 20 Minutes",
                style: TextStyle(
                  color: Color(0xffD6CFCF),
                ),
              ),
            ],
          ),

          // sized box
          SizedBox(height: height * 0.013),

          // pizza image
          Container(
            width: 334,
            height: 306,
            decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage("assets/images/pizza2.jpg"),
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high)),
          ),

          // sized box
          SizedBox(height: height * 0.015),

          // Text => choice the size
          const Text(
            "Chose the size",
            style: TextStyle(
                color: Colors.black,
                letterSpacing: 1.0,
                fontWeight: FontWeight.w400,
                fontSize: 20.5),
          ),

          // sized box
          SizedBox(height: height * 0.022),

          // small and medium button
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // small button
              Container(
                width: 114,
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(12.5),
                ),
                child: const Center(
                  child: Text(
                    "Small",
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1.0,
                      fontSize: 19.8,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),

              // sized box
              const SizedBox(width: 22.0),

              // Medium button
              Container(
                width: 114,
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.5),
                  boxShadow: const [
                    BoxShadow(
                      spreadRadius: 0.1,
                      color: Color(0xffD6CFCF),
                      blurRadius: 1.0,
                      offset: Offset(0, 2),
                    ),
                    BoxShadow(
                      spreadRadius: 0.1,
                      color: Color(0xffD6CFCF),
                      blurRadius: 1.0,
                      offset: Offset(2, 0),
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    "Medium",
                    style: TextStyle(
                      color: Color(0xffD6CFCF),
                      letterSpacing: 1.0,
                      fontSize: 19.8,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
            ],
          ),

          // Sized box
          SizedBox(height: height * 0.028),

          // count of pizza
          Container(
            width: 131,
            height: 48,
            decoration: BoxDecoration(
              color: const Color(0xffF5F4F4),
              borderRadius: BorderRadius.circular(12.5),
            ),
            child: const Center(
              child: Text(
                "-     01    +",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.8,
                ),
              ),
            ),
          ),

          // sized box
          SizedBox(height: height * 0.028),

          // price and add cart button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              // price text and number
              Padding(
                padding: const EdgeInsets.only(left: 55.0),
                child: Column(
                  children: const [
                    Text(
                      "Price",
                      style: TextStyle(
                          color: Color(0xffD6CFCF), letterSpacing: 1.0),
                    ),
                    Text(
                      "\$15",
                      style: TextStyle(
                        color: Color(0xff2BC006),
                        fontSize: 25.5,
                      ),
                    ),
                  ],
                ),
              ),

              // add cart button
              Padding(
                padding: const EdgeInsets.only(right: 43.0),
                child: Container(
                  width: 132,
                  height: 58,
                  decoration: BoxDecoration(
                    color: const Color(0xffF3790E),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: const Center(
                    child: Text(
                      "Add Cart",
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1.0,
                        fontSize: 19.5,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
