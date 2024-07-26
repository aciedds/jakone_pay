import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:jakone_pay/presentation/widgets/balance_card.dart';
import 'package:jakone_pay/presentation/widgets/circle_gradient_button.dart';
import 'package:jakone_pay/presentation/widgets/event_carousel_item.dart';
import 'package:jakone_pay/presentation/widgets/gradient_button.dart';
import 'package:jakone_pay/presentation/widgets/gradient_outline_button.dart';
import 'package:jakone_pay/presentation/widgets/image_button.dart';
import 'package:jakone_pay/presentation/widgets/menu_item.dart';
import 'package:jakone_pay/presentation/widgets/place_carousel_item.dart';
import 'package:jakone_pay/presentation/widgets/section_divider.dart';
import 'package:jakone_pay/splash_screen.dart';

void main() {
  WidgetsBinding binding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: binding);
  Future.delayed(const Duration(seconds: 3)).then(
    (value) => FlutterNativeSplash.remove(),
  );
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "JakOne Pay",
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // const Text(
              //   'You have pushed the button this many times:',
              // ),
              // Text(
              //   '$_counter',
              //   style: Theme.of(context).textTheme.headlineMedium,
              // ),

              GradientOutlineButton(
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
                onTap: () {},
                child: const Text(
                  'Some Text',
                  style: TextStyle(color: Colors.deepOrange),
                ),
              ),

              GradientButton(
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
              CircleGradientButton(
                onPressed: () {},
                child: const Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 30,
                  fill: 1.0,
                ),
              ),
              MenuItem(
                size: 100,
                onTap: () {},
                assetsImage: "assets/images/ic_fab_help.png",
                title: "Some Text",
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
              BalanceCard(
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
              SectionDivider(
                imageIcon: "assets/images/ic_fab_help.png",
                title: "Section title",
                desc: "Section desc",
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
              PlaceCarouselItem(
                placeName: "Some Text",
                imagePath: "assets/images/ic_fab_help.png",
              ),
              const EventCarouselItem(
                imagePath: "assets/images/ic_fab_help.png",
              )
            ],
          ),
        ),
      ),
      floatingActionButton: ImageButton(
        imageAssets: "assets/images/ic_fab_help.png",
        onPressed: () {},
      ),
    );
  }
}
