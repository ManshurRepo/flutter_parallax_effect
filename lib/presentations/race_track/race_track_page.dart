import 'package:flutter/material.dart';
import 'package:flutter_parallax_widget/core/assets/assets.gen.dart';

import 'widgets/items_card.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

class RaceTrackPage extends StatelessWidget {
  const RaceTrackPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: Assets.images.silverstoneCrop.provider(),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'CHOOSE CIRCUIT',
                style: TextStyle(
                  fontFamily: 'RacingSansOne',
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                        offset: Offset(3, 3),
                        blurRadius: 3,
                        color: Colors.blueGrey)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (final location in locations)
                      LocationListItem(
                        image: location.image,
                        name: location.name,
                        country: location.place,
                      ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 90),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {},
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
                        'Race',
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

// class LocationListItem extends StatelessWidget {
//   LocationListItem({
//     super.key,
//     required this.imageUrl,
//     required this.name,
//     required this.country,
//   });

//   final String imageUrl;
//   final String name;
//   final String country;
//   final GlobalKey _backgroundImageKey = GlobalKey();

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
//       child: AspectRatio(
//         aspectRatio: 16 / 9,
//         child: ClipRRect(
//           borderRadius: BorderRadius.circular(16),
//           child: Stack(
//             children: [
//               _buildParallaxBackground(context),
//               _buildGradient(),
//               _buildTitleAndSubtitle(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildParallaxBackground(BuildContext context) {
//     return Flow(
//       delegate: ParallaxFlowDelegate(
//         scrollable: Scrollable.of(context),
//         listItemContext: context,
//         backgroundImageKey: _backgroundImageKey,
//       ),
//       children: [
//         Image.network(
//           imageUrl,
//           key: _backgroundImageKey,
//           fit: BoxFit.cover,
//         ),
//       ],
//     );
//   }

//   Widget _buildGradient() {
//     return Positioned.fill(
//       child: DecoratedBox(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             stops: const [0.6, 0.95],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildTitleAndSubtitle() {
//     return Positioned(
//       left: 20,
//       bottom: 20,
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             name,
//             style: const TextStyle(
//               color: Colors.white,
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           Text(
//             country,
//             style: const TextStyle(
//               color: Colors.white,
//               fontSize: 14,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }



