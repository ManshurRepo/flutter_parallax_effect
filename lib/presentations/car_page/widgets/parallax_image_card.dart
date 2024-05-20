// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_parallax_widget/core/assets/assets.gen.dart';
import 'package:flutter_parallax_widget/presentations/car_page/widgets/parallax_flow_delegate.dart';

class ParallaxImageCard extends StatelessWidget {
  ParallaxImageCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  final GlobalKey _imageKey = GlobalKey();
  final AssetGenImage image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(color: Colors.blueGrey, offset: Offset(0, 3), blurRadius: 8)
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          children: [
            Flow(
              delegate: ParallaxFlowDelegate(
                scrollable: Scrollable.of(context),
                listItemContext: context,
                backgroundImageKey: _imageKey,
              ),
              children: [
                Image.asset(
                  image.path,
                  key: _imageKey,
                  height: double.infinity,
                  fit: BoxFit.cover,
                )
              ],
            ),
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    description,
                    style: const TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
