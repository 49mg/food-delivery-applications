import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insta_projects/screens/pizza_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // size tools
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [

                // the top space
                SizedBox(height: MediaQuery.of(context).size.height * 0.024),
                // Hello text and Notifications icon
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Text => hello nana
                      const Text(
                        "Hello Nana",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.0,
                          fontSize: 18,
                        ),
                      ),

                      // notifications icon
                      notificationsIcon(),
                    ],
                  ),
                ),

                // sized box
                const SizedBox(height: 5.0),

                // Text => welcome back!
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Text(
                    "Welcome Back!",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                // sized box
                const SizedBox(height: 22.0),

                // search bar & Filter Button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Search Bar
                      Container(
                        width: width * 0.7,
                        height: height * 0.054,
                        decoration: BoxDecoration(
                            color: const Color(0xffF5F4F4),
                            borderRadius: BorderRadius.circular(12.0)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14.0),
                          child: Row(
                            children: [

                              // search icon
                              Icon(Icons.search, color: Colors.black.withOpacity(0.4), size: 34),

                              // sized box
                              const SizedBox(width: 12.0),

                              // search text
                              Text(
                                "Search",
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.4),
                                    fontWeight: FontWeight.w400,
                                  fontSize: 18.0
                                ),
                              )
                            ],
                          ),
                        ),
                      ),

                      // Filter Button
                      Container(
                        width: width * 0.148,
                        height: height * 0.053,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: const Image(
                            image: AssetImage("assets/images/Filter.png")),
                      ),
                    ],
                  ),
                ),

                // sized box
                SizedBox(height: height * 0.017),

                // sections of food
                foodSections(),

                SizedBox(height: height * 0.022),

                // Foods card
                _buildFoodCard(
                  image: const Image(image: AssetImage("assets/images/salt.png")),
                  name: "Complete Fresh\nVegetables",
                  salary: "\$12",
                ),

                // Foods card & buttons take you to pizza screen
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PizzaScreen()));
                  },
                  child: _buildFoodCard(
                    image: const Image(image: AssetImage("assets/images/pizza.png")),
                    name: "Pizza Fresh\nVegetables",
                    salary: "\$15",
                  ),
                ),

                // Foods Card
                _buildFoodCard(
                  image: const Image(image: AssetImage("assets/images/sweet.png")),
                  name: "Layer cake\nVegetables",
                  salary: "\$15",
                ),

                Container(
                  width: double.maxFinite,
                  height: height * 0.15,
                  color: Colors.white,
                ),
              ],
            ),

            // Navigations button bar
            Positioned(
              bottom: 15,
              left: 15,
              child: Container(
                width: width * 0.929,
                height: height * 0.071,
                decoration: BoxDecoration(
                  color: const Color(0xff1E1E1E),
                  borderRadius: BorderRadius.circular(12.5),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset("assets/icons/Home.svg"),
                      SvgPicture.asset("assets/icons/Discount.svg"),
                      SvgPicture.asset("assets/icons/Wallet.svg"),
                      SvgPicture.asset("assets/icons/Profile.svg"),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Padding foodSections() => Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            // text => all sections
            Container(
              width: 72,
              height: 48,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15.0),
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
                  "All",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 18.0),
                ),
              ),
            ),

            // sized box
            const SizedBox(width: 9.0),

            // text => bakso sections
            Container(
              width: 139,
              height: 44,
              decoration: BoxDecoration(
                color: const Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(15.0),
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
                  "Bakso",
                  style: TextStyle(
                      color: Color(0xffD6CFCF),
                      fontWeight: FontWeight.w300,
                      fontSize: 18.0),
                ),
              ),
            ),

            // sized box
            const SizedBox(width: 9.0),

            // text => Ayam Goreng sections
            Container(
              width: 177,
              height: 45,
              decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(15.0),
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
                  "Ayam Goreng",
                  style: TextStyle(
                      color: Color(0xffD6CFCF),
                      fontWeight: FontWeight.w300,
                      fontSize: 18.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );

Padding _buildFoodCard({required Image image, required String name, required String salary}) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
      child: Container(
        padding: const EdgeInsets.only(top: 15.0, left: 10.5),
        width: 366,
        height: 190,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18.5),
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
        child: Stack(
          children: [
            // food images
            Positioned(top: 10, child: image),

            // rate numbers
            const Positioned(
              right: 45,
              top: 4,
              child: Text(
                "4.5",
                style: TextStyle(
                  color: Color(0xffD6CFCF),
                  fontWeight: FontWeight.w300,
                  fontSize: 15.5,
                ),
              ),
            ),

            // star icon
            const Positioned(
                right: 10,
                child: Icon(Icons.star, color: Color(0xffF5F917), size: 30.0)),

            // names of food
            Positioned(
              top: 25,
              left: 153,
              child: Center(
                child: Text(
                  textAlign: TextAlign.start,
                  name,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 21.0,
                  ),
                ),
              ),
            ),

            // clock icon
            const Positioned(
              top: 80,
              left: 150,
              child: Icon(
                Icons.watch_later_outlined,
                color: Color(0xffD6CFCF),
                size: 38,
              ),
            ),

            // cocking time
            const Positioned(
              top: 92,
              left: 195,
              child: Text(
                "14 - 20 Minutes",
                style: TextStyle(
                  color: Color(0xffD6CFCF),
                ),
              ),
            ),

            // salary
            Positioned(
              top: 128,
              left: 155,
              child: Text(
                salary,
                style:
                    const TextStyle(color: Color(0xff2BC006), fontSize: 19.0),
              ),
            ),

            // add button
            Positioned(
              right: 12,
              bottom: 12,
              child: Container(
                width: 38,
                height: 37,
                decoration: BoxDecoration(
                  boxShadow: const [BoxShadow(color: Colors.black)],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.8),
                ),
                child: const Icon(Icons.add, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );

Stack notificationsIcon()=> Stack(
  children: const [
    Icon(Icons.notifications_none,
        color: Colors.black, size: 42),
    Positioned(
      top: 7,
      right: 8,
      child: CircleAvatar(backgroundColor: Colors.red, radius: 5.4),
    ),
  ],
);