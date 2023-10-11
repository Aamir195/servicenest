import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:service_nest_app/controller/home_controller/carousel_controller.dart';

class ImageCarousel extends StatelessWidget {
  final ImageCarouselController controller;
  ImageCarousel({super.key, required this.controller});

  final List<String> imageUrls = [
    'assets/icons/home_icons/temp.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: imageUrls.length,
          itemBuilder: (context, index, realIndex) {
            return GestureDetector(
              onTap: () {
                // Handle tap on the image, for example, show a full-screen image.
              },
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      imageUrls[index],
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 250,
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 45,
                    child: IconButton(
                      onPressed: () {
                        controller
                            .previousPage(); // Use the controller to go to the previous page
                      },
                      icon: Image.asset(
                        'assets/icons/home_icons/left_arrow.png',
                        width: 48, // Adjust the width as needed
                        height: 48, // Adjust the height as needed
                      ),
                      iconSize: 50, // Adjust the icon size as needed
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 45,
                    child: IconButton(
                      onPressed: () {
                        controller
                            .nextPage(); // Use the controller to go to the next page
                      },
                      icon: Image.asset(
                        'assets/icons/home_icons/right_arrow.png',
                        width: 48, // Adjust the width as needed
                        height: 48, // Adjust the height as needed
                      ),
                      iconSize: 48, // Adjust the icon size as needed
                    ),
                  ),
                ],
              ),
            );
          },
          options: CarouselOptions(
            height: 150, // Set the height of the carousel
            autoPlay: false, // Enable auto-play
            enlargeCenterPage: true, // Center the current item
            aspectRatio: 16 / 9, // Set the aspect ratio of the carousel items
            enableInfiniteScroll: true, // Enable infinite scrolling
            initialPage: 0, // Set the initial page (first item)
            viewportFraction: 0.8, // Set the fraction of the viewport to show
            enlargeStrategy: CenterPageEnlargeStrategy.scale,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayInterval: const Duration(seconds: 3),
          ),
          carouselController:
              controller.carouselController, // Set the controller
        ),
      ],
    );
  }
}
