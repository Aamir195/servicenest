import 'package:flutter/material.dart';
import 'package:service_nest_app/common/color.dart';
import 'package:service_nest_app/common/common_function.dart';
import 'package:service_nest_app/common/textstyle.dart';
import 'package:service_nest_app/controller/home_controller/carousel_controller.dart';
import 'package:service_nest_app/controller/home_controller/customer_review_controller.dart';
import 'package:service_nest_app/model/home/customer_review_model.dart';
import 'package:service_nest_app/presentation/view/common_widgets/common_grid_view.dart';
import 'package:service_nest_app/presentation/view/home/widgets/carousel_widget.dart';
import 'package:service_nest_app/presentation/view/home/widgets/customer_review_carousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ImageCarouselController carouselController =
        ImageCarouselController();
    final CustomerReviewsCarouselController reviewsController =
        CustomerReviewsCarouselController();
    final List<List<String>> gridData = [
      ["Writing", "stripping_wires.png"],
      ["Safety Door", "door.png"],
      ["Drilling", "drill.png"],
    ];
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
        child: SizedBox(
          width: CommonFunction.getWidth(context),
          height: CommonFunction.getHeightWithoutBottomNavbar(context),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.start, // Adjust the alignment as needed
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hi Tony,",
                              style: AppTextstyle.ts36WM.copyWith(
                                color: AppColor.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "What service do you require today?",
                              style: AppTextstyle.ts20BB.copyWith(
                                color: AppColor.black,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400,
                              ),
                              maxLines: 1,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 0, left: 0),
                          width: 200,
                          height: 200,
                          child: Image.asset(
                            "assets/icons/home_icons/home_top_outer_curve.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 10,
                          child: Container(
                            margin: const EdgeInsets.only(top: 0, left: 0),
                            width: 200,
                            height: 200,
                            child: Image.asset(
                              "assets/icons/home_icons/home_top_inner_curve.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [ImageCarousel(controller: carouselController)],
                ),
                const SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 0),
                      child: Text(
                        "Customer Reviews",
                        style: AppTextstyle.ts18BB.copyWith(
                          color: AppColor.black,
                        ),
                        maxLines: 1,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomerReviewsCarousel(
                            controller: reviewsController,
                            reviews: customerReviews,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 0),
                      child: Text(
                        "Recommended Services",
                        style: AppTextstyle.ts18BB.copyWith(
                          color: AppColor.black,
                        ),
                        maxLines: 1,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        for (int i = 0; i < gridData.length; i++)
                          CustomGridView(
                            imageUrl:
                                'assets/icons/recommended_services_icons/${gridData[i][1]}',
                            title: gridData[i][0],
                          ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

final List<CustomerReview> customerReviews = [
  CustomerReview(
    image: 'assets/icons/home_icons/temp_two.png',
    title: 'Great Service',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    conclusion: 'Highly recommended!',
  ),
  CustomerReview(
    image: 'assets/icons/home_icons/temp_two.png',
    title: 'Great Service',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    conclusion: 'Highly recommended!',
  ),
  CustomerReview(
    image: 'assets/icons/home_icons/temp_two.png',
    title: 'Great Service',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    conclusion: 'Highly recommended!',
  ),
  // Add more reviews as needed
];
