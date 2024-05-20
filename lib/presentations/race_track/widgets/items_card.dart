import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_parallax_widget/core/assets/assets.gen.dart';
import 'package:flutter_parallax_widget/presentations/race_track/widgets/parallax_scroll_vertical.dart';

class LocationListItem extends StatelessWidget {
  LocationListItem({
    super.key,
    required this.image,
    required this.name,
    required this.country,
  });

  final AssetGenImage image;
  final String name;
  final String country;
  final GlobalKey _backgroundImageKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: AspectRatio(
        aspectRatio: 9 / 6,
        child: Container(
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                  color: Colors.white, offset: Offset(0, 3), blurRadius: 8)
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Stack(
              children: [
                _buildParallaxBackground(context),
                _buildGradient(),
                _buildTitleAndSubtitle(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildParallaxBackground(BuildContext context) {
    return Flow(
      delegate: ParallaxFlowDelegateVertical(
        scrollable: Scrollable.of(context),
        listItemContext: context,
        backgroundImageKey: _backgroundImageKey,
      ),
      children: [
        image.image(
          key: _backgroundImageKey,
          fit: BoxFit.cover,
        ),
      ],
    );
  }

  Widget _buildGradient() {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.6, 0.95],
          ),
        ),
      ),
    );
  }

  Widget _buildTitleAndSubtitle() {
    return Positioned(
      left: 20,
      bottom: 20,
      right: 20, // Added to constrain text within the card
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 3, // Limit the title to 2 lines
            overflow: TextOverflow.ellipsis, // Add ellipsis if text overflows
          ),
          Text(
            country,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 17,
            ),
            maxLines: 2, // Limit the country to 1 line
            overflow: TextOverflow.ellipsis, // Add ellipsis if text overflows
          ),
        ],
      ),
    );
  }
}

class Location {
  const Location({
    required this.name,
    required this.place,
    required this.image,
  });

  final String name;
  final String place;
  final AssetGenImage image;
}

var locations = [
  Location(
    name: 'Nürburgring',
    place:
        'The Nürburgring is a legendary and challenging racetrack in Germany.',
    image: Assets.images.nurburgringCrop, // Ensure this matches your assets
  ),
  Location(
    name: 'Spa Of Francorchamps',
    place:
        'Spa-Francorchamps is a historic and thrilling racetrack in Belgium.',
    image: Assets.images.circuitOfSpaFrancorchampsCrop,
  ),
  Location(
    name: 'Baku City Circuit',
    place:
        'The Baku City Circuit is a fast, challenging street track in Azerbaijan.',
    image: Assets.images.bakuCityCircuitCrop, // Ensure this matches your assets
  ),
  Location(
    name: 'Suzuka',
    place:
        'Suzuka Circuit is a unique and demanding figure-eight track in Japan.',
    image: Assets.images.suzukaCrop, // Ensure this matches your assets
  ),
  Location(
    name: 'Silverstone',
    place: 'Silverstone is a historic and fast Formula 1 circuit in the UK.',
    image: Assets.images.silverstoneCrop, // Ensure this matches your assets
  ),
  Location(
    name: 'Circuit de Monaco',
    place:
        'Circuit de Monaco is a glamorous and tight street circuit in Monaco.',
    image: Assets.images.circuitDeMonacoCrop, // Ensure this matches your assets
  ),
  // Ensure this matches your assets
];

class LocationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Locations'),
      ),
      body: ListView(
        children: locations.map((location) {
          return LocationListItem(
            image: location.image,
            name: location.name,
            country: location.place,
          );
        }).toList(),
      ),
    );
  }
}
