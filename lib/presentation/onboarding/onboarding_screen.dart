import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:jakone_pay/presentation/home_screen/home_screen.dart';
import 'package:jakone_pay/presentation/widgets/carousel.dart';
import 'package:jakone_pay/presentation/widgets/gradient_button.dart';
import 'package:jakone_pay/presentation/widgets/gradient_outline_button.dart';
import 'package:jakone_pay/presentation/widgets/image_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Row(
              children: [
                Container(
                  height: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 1),
                        ),
                      ]),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/images/ic_ina.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/images/ic_uk.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.credit_card, size: 20),
                      SizedBox(width: 5),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/images/ic_jakcard.png"),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            CarouselWidget(),
            SizedBox(height: 10),
            GradientOutlineButton(
              child: const Text('Continue as guest'),
              onTap: () => Get.offAll(HomeScreen()),
              strokeWidth: 2,
              radius: 10,
              outlineGradient: const LinearGradient(
                colors: [
                  Colors.yellow,
                  Colors.deepOrange,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            SizedBox(height: 20),
            GradientButton(
              border: const BorderSide(
                width: 2,
                color: Colors.yellow,
              ),
              onTap: () => Get.offAll(HomeScreen()),
              radius: 10,
              gradient: const LinearGradient(
                colors: [
                  Colors.yellow,
                  Colors.deepOrange,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              child: const Text(
                "Continue as guest",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: ImageButton(
        imageAssets: "assets/images/ic_fab_help.png",
        onPressed: () {},
      ),
    );
  }
}
