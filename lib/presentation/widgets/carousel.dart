import 'package:flutter/material.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({super.key});

  @override
  _CarouselWidgetState createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  final PageController _pageController = PageController();
  final List<String> _imagePaths = [
    'assets/images/monas.png',
    'assets/images/monas.png',
    'assets/images/monas.png',
  ];

  final List<String> _imageDescriptions = [
    'Monumen Nasional',
    'Monumen Nasional',
    'Monumen Nasional',
  ];

  final List<String> _imageTitles = [
    'Monumen Nasional',
    'Monumen Nasional',
    'Monumen Nasional',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.57,
          child: PageView.builder(
            controller: _pageController,
            itemCount: _imagePaths.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.asset(
                            _imagePaths[index],
                            fit: BoxFit.fill,
                          ),
                          Positioned(
                            bottom: 20,
                            left: 100,
                            right: 100,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 5.0,
                                horizontal: 10.0,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.orange.withOpacity(0.8),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Text(
                                _imageTitles[index],
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      _imageDescriptions[index],
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(_imagePaths.length, (index) {
            return AnimatedBuilder(
              animation: _pageController,
              builder: (context, child) {
                double selected = index == _pageController.page ? 1.0 : 0.5;
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  width: 10.0,
                  height: 10.0,
                  decoration: BoxDecoration(
                    color: Colors.orange.withOpacity(selected),
                    shape: BoxShape.circle,
                  ),
                );
              },
            );
          }),
        ),
      ],
    );
  }
}
