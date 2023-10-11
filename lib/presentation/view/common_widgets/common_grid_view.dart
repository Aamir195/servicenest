import 'package:flutter/material.dart';
import 'package:service_nest_app/common/color.dart';
import 'package:service_nest_app/common/textstyle.dart';

class CustomGridView extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double cardSize; // Added cardSize property
  final double imageSize; // Added imageSize property
  final VoidCallback? onTap; // Added onTap callback

  CustomGridView({
    required this.imageUrl,
    required this.title,
    this.cardSize = 100.0, // Default card size is 100x100
    this.imageSize = 50.0, // Default image size is 50x50
    this.onTap, // Added onTap callback
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Call the onTap callback when the card is tapped
      child: Card(
        elevation: 5.0, // Adjust the elevation as needed
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(10.0), // Adjust the border radius as needed
        ),
        child: Container(
          width: cardSize, // Set the width and height of the Card
          height: cardSize,
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Center align the content vertically
            children: [
              Container(
                width:
                    imageSize, // Set the width and height of the image container
                height: imageSize,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imageUrl),
                    fit: BoxFit.cover,
                    alignment:
                        Alignment.center, // Align the image in the center
                  ),
                  borderRadius: BorderRadius.circular(
                      5.0), // Adjust the border radius as needed
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                title,
                style: AppTextstyle.ts12BB.copyWith(
                  color: AppColor.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
