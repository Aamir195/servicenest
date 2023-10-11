import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:service_nest_app/controller/home_controller/customer_review_controller.dart';
import 'package:service_nest_app/model/home/customer_review_model.dart';

class CustomerReviewsCarousel extends StatelessWidget {
  final CustomerReviewsCarouselController controller;
  final List<CustomerReview> reviews;

  CustomerReviewsCarousel({required this.controller, required this.reviews});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: reviews.length,
      itemBuilder: (context, index, realIndex) {
        final review = reviews[index];
        return Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: const BorderSide(
              color: Colors.grey, // Border color
              width: 1, // Border width
            ),
          ),
          child: Container(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 100,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(review.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        review.title,
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        review.description,
                        style: const TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        review.conclusion,
                        style: const TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
      options: CarouselOptions(
        height: 150,
        autoPlay: true,
        enlargeCenterPage: true,
        aspectRatio: 16 / 9,
        enableInfiniteScroll: true,
        initialPage: 0,
        viewportFraction: 0.8,
        enlargeStrategy: CenterPageEnlargeStrategy.scale,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayInterval: const Duration(seconds: 3),
      ),
      carouselController: controller.carouselController,
    );
  }
}
