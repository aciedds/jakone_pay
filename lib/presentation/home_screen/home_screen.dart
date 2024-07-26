import 'package:carousel_slider/carousel_slider.dart';
import 'package:drag_ball/drag_ball.dart';
import 'package:flutter/material.dart';
import 'package:jakone_pay/presentation/widgets/balance_card.dart';
import 'package:jakone_pay/presentation/widgets/circle_gradient_button.dart';
import 'package:jakone_pay/presentation/widgets/event_carousel_item.dart';
import 'package:jakone_pay/presentation/widgets/gradient_button.dart';
import 'package:jakone_pay/presentation/widgets/menu_item.dart';
import 'package:jakone_pay/presentation/widgets/place_carousel_item.dart';
import 'package:jakone_pay/presentation/widgets/section_divider.dart';

class HomeScreen extends StatelessWidget {
  final List<String> bannerList = [
    'assets/images/carousel_item.png',
  ];

  final List<String> titleList = [
    "Ancol Entrance Gate",
    "Musium Nasional",
    "Ancol Entrance Gate",
    "Ancol Entrance Gate",
  ];

  final List<String> imageList = [
    "assets/images/image_ancol.png",
    "assets/images/image_museum.png",
    "assets/images/image_ancol.png",
    "assets/images/image_ancol.png",
  ];

  final List<String> eventList = [
    'assets/images/carousel_item.png',
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Dragball(
      ball: Image.asset(
        "assets/images/ic_fab_help.png",
      ),
      initialPosition: const DragballPosition.defaultPosition(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffFF4747),
          title: Image.asset(
            "assets/images/ic_logo.png",
            height: kToolbarHeight,
          ),
          actions: [
            CircleGradientButton(
              size: 20,
              onPressed: () {},
              child: const Icon(
                Icons.notifications,
                color: Colors.white,
                size: 8,
              ),
            ),
            const SizedBox(width: 10),
            CircleGradientButton(
              onPressed: () {},
              size: 20,
              child: Image.asset(
                'assets/images/ic_action_one.png',
                color: Colors.white,
                height: 8,
                fit: BoxFit.fitHeight,
              ),
            ),
          ],
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(50),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xffFF4747),
                    Color(0xffFC9842),
                  ],
                ),
              ),
            ),
            ListView(
              children: [
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.person,
                          size: 35,
                          color: Color(0xffFF4747),
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Good Morning,",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Guest",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: BalanceCard(
                    currency: 'Rp',
                    balance: '0',
                    trailingWidget: GradientButton(
                      border: const BorderSide(
                        width: 2,
                        color: Colors.yellow,
                      ),
                      onTap: () {},
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
                        "Some Text",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MenuItem(
                        size: 80,
                        onTap: () {},
                        assetsImage: "assets/images/ic_menu_maps.png",
                        title: "Explore Jakarta",
                        outlineGradient: const LinearGradient(
                          colors: [
                            Colors.yellow,
                            Colors.deepOrange,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        radius: 10,
                        strokeWidth: 2,
                      ),
                      MenuItem(
                        size: 80,
                        onTap: () {},
                        assetsImage: "assets/images/ic_menu_wallet.png",
                        title: "Top Up JakCard",
                        outlineGradient: const LinearGradient(
                          colors: [
                            Colors.yellow,
                            Colors.deepOrange,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        radius: 10,
                        strokeWidth: 2,
                      ),
                      MenuItem(
                        size: 80,
                        onTap: () {},
                        assetsImage: "assets/images/ic_menu_cc.png",
                        title: "JakCard Balance",
                        outlineGradient: const LinearGradient(
                          colors: [
                            Colors.yellow,
                            Colors.deepOrange,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        radius: 10,
                        strokeWidth: 2,
                      ),
                      MenuItem(
                        size: 80,
                        onTap: () {},
                        assetsImage: "assets/images/ic_menu_event.png",
                        title: "Event",
                        outlineGradient: const LinearGradient(
                          colors: [
                            Colors.yellow,
                            Colors.deepOrange,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        radius: 10,
                        strokeWidth: 2,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                CarouselSlider(
                  options: CarouselOptions(
                    height: 100,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                  items: bannerList
                      .map((item) => Container(
                            child: Center(
                              child: Image.asset(item,
                                  fit: BoxFit.cover, width: 1000),
                            ),
                          ))
                      .toList(),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: SectionDivider(
                    imageIcon: "assets/images/ic_landmarks.png",
                    title: "Let's Go With Jakarta Tourist Pass",
                    desc: "a place not to be missed",
                    trailingWidget: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        foregroundColor: Colors.transparent,
                        splashFactory: NoSplash.splashFactory,
                        padding: EdgeInsets.zero,
                      ),
                      child: const Text(
                        "View All",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(width: 20),
                    Image.asset("assets/images/ic_section_place.png"),
                    const SizedBox(width: 20),
                    Expanded(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * .3,
                        // Ensure this matches the image height
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: titleList.length,
                          // Adjust the number of items as needed
                          itemBuilder: (context, index) {
                            return PlaceCarouselItem(
                              placeName: titleList[index],
                              imagePath: imageList[index],
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: SectionDivider(
                    imageIcon: "assets/images/ic_calendar.png",
                    title: "Event Jakarta",
                    desc: "don't miss the current event",
                    trailingWidget: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        foregroundColor: Colors.transparent,
                        splashFactory: NoSplash.splashFactory,
                        padding: EdgeInsets.zero,
                      ),
                      child: const Text(
                        "View All",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                CarouselSlider(
                  options: CarouselOptions(
                    height: 200,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                  items: eventList
                      .map((item) => Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: EventCarouselItem(imagePath: item),
                          ))
                      .toList(),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ]),
        ),
        bottomNavigationBar: const CustomBottomAppBar(),
        floatingActionButton: CircleGradientButton(
          size: 100,
          onPressed: () {},
          child: Image.asset("assets/images/ic_qris.png", fit: BoxFit.fill),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 6.0,
      child: Container(
        height: 60.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            Spacer(),
            IconButton(
              icon: const Icon(
                Icons.home,
                color: Colors.orange,
                size: 40,
              ),
              onPressed: () {
                // Handle home button press
              },
            ),
            Spacer(
              flex: 2,
            ),
            IconButton(
              icon: const Icon(
                Icons.person,
                color: Colors.orange,
                size: 40,
              ),
              onPressed: () {
                // Handle profile button press
              },
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
