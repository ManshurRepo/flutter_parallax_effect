import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_parallax_widget/core/assets/assets.gen.dart';
import 'package:flutter_parallax_widget/presentations/car_page/widgets/parallax_image_card.dart';
import 'package:flutter_parallax_widget/presentations/race_track/race_track_page.dart';

class CarPage extends StatefulWidget {
  const CarPage({super.key});

  @override
  State<CarPage> createState() => _CarPage();
}

class _CarPage extends State<CarPage> {
  late List<AssetGenImage> images;
  late List<String> titles;
  late List<String> descriptions;

  @override
  void initState() {
    images = [
      Assets.images.astonMartinDB12,
      Assets.images.lamborghiniRevuelto,
      Assets.images.mclaren720s,
      Assets.images.mercedesBenzAmgGtr,
      Assets.images.porscheGt3Rs,
      Assets.images.ferrariSf90,
      Assets.images.audiR8,
      Assets.images.bmwM5,
      Assets.images.chevroleteCorvette,
      Assets.images.maseratiMc20,
      Assets.images.nissanGtr35
    ];

    titles = [
      'ASTON MARTIN DB12',
      'LAMBORGHINI REVUELTO',
      'MCLAREN 720S',
      'MERCEDES BENZ AMG GTR',
      'PORSCHE GT3RS',
      'FERRARI SF90 STRADALE',
      'AUDI R8',
      'BMW M5',
      'CHEVROLETTE CORVETTE',
      'MASERATI MC20',
      'NISSAN GTR R35'
    ];

    descriptions = [
      'The Aston Martin DB12 combines luxury and performance with a 671 hp V8, 0-60 mph in 3.5 seconds, sleek design, and high-tech interior.',
      'The Lamborghini Revuelto combines extreme performance and luxury with a V12 hybrid engine, 0-60 mph in 2.5 seconds, cutting-edge design, and advanced technology.',
      'The McLaren 720S delivers stunning performance with a 710 hp V8, 0-60 mph in 2.8 seconds, lightweight design, and advanced aerodynamics.',
      'The Mercedes-Benz AMG GTR boasts a 577 hp V8, 0-60 mph in 3.5 seconds, aggressive design, advanced aerodynamics, and track-focused performance.',
      'The Porsche 911 GT3 RS offers a 520 hp naturally aspirated engine, 0-60 mph in 3.0 seconds, lightweight construction, advanced aerodynamics, and track-ready performance.',
      'The Ferrari SF90 Stradale features a 986 hp hybrid powertrain, 0-60 mph in 2.5 seconds, sleek design, advanced aerodynamics, and cutting-edge technology.',
      'Luxury sports car with a V10 engine producing 602 hp, 0-60 mph in 3.2 seconds, futuristic design, and advanced technology.',
      'High-performance sedan boasting a potent V8 engine, 0-60 mph in 3.1 seconds, precise handling, luxurious interior, and cutting-edge technology.',
      'Iconic American sports car featuring a powerful V8 engine, 0-60 mph in under 3 seconds, sleek design, advanced aerodynamics, and track-ready performance.',
      'Italian supercar with a twin-turbo V6 engine, 0-60 mph in under 3 seconds, striking design, aerodynamic prowess, and cutting-edge technology.',
      'Legendary Japanese sports car renowned for its twin-turbo V6 engine, 0-60 mph in under 3 seconds, iconic design, advanced all-wheel-drive system, and thrilling performance.',
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.2),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image:
                Assets.images.circuit.provider(), // Use the provider() method
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text(
                'CHOOSE YOUR \nFAVOURITE CAR',
                style: TextStyle(
                  fontFamily: 'RacingSansOne',
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                        offset: Offset(3, 3),
                        blurRadius: 5,
                        color: Colors.blueGrey)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              child: CarouselSlider.builder(
                  options: CarouselOptions(
                    enableInfiniteScroll: true,
                    enlargeCenterPage: true,
                    aspectRatio: 16 / 9,
                    enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                    enlargeFactor: 0.55,
                    viewportFraction: 0.7,
                  ),
                  itemCount: images.length,
                  itemBuilder: (context, index, realIndex) => ParallaxImageCard(
                        image: images[index],
                        title: titles[index],
                        description: descriptions[index],
                      )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 90),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RaceTrackPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10), // Padding inside the button

                    minimumSize:
                        const Size(10, 50), // Width and height of the button
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(12), // Rounded corners
                    ),
                    elevation: 5, // Elevation
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Choose Circuit',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'RacingSansOne',
                            color: Colors.black),
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.arrow_forward_ios, color: Colors.black)
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
