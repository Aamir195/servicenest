import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service_nest_app/common/color.dart';
import 'package:service_nest_app/common/textstyle.dart';
import 'package:service_nest_app/presentation/view/service/service_request/service_request.dart';

class CustomBottomSheetContent extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String serviceDescription;
  final String estimatedTime;
  final double price;

  const CustomBottomSheetContent({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.serviceDescription,
    required this.estimatedTime,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(20.0)),
      child: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, // Align items at the ends of the row
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment
                          .start, // Align items at the start of the inner row
                      children: <Widget>[
                        Image.asset(
                          imageUrl,
                          width: 40, // Adjust the size as needed
                          height: 40, // Adjust the size as needed
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          title,
                          style: AppTextstyle.ts36WM.copyWith(
                            color: AppColor.black,
                            fontSize: 32.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6.0, right: 10.0),
                    child: IconButton(
                      icon: Image.asset(
                        'assets/icons/services_icons/small_icons/close.png',
                      ), // Add cancel icon at top right
                      onPressed: () {
                        Navigator.of(context).pop(); // Close the bottom sheet
                      },
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 8.0, left: 20.0, right: 20.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 8.0),
                      Text(
                        'Service Description',
                        style: AppTextstyle.ts18BB.copyWith(
                            color: AppColor.black, fontStyle: FontStyle.normal),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(serviceDescription,
                          style: AppTextstyle.ts12BR.copyWith(
                              color: AppColor.black,
                              fontStyle: FontStyle.normal)),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            'Estimated Time:',
                            style: AppTextstyle.ts18BB.copyWith(
                                color: AppColor.black,
                                fontStyle: FontStyle.normal),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Text(
                            estimatedTime,
                            style: AppTextstyle.ts18BR
                                .copyWith(color: AppColor.black),
                          )
                        ],
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          Text(
                            'Price:',
                            style: AppTextstyle.ts18BB.copyWith(
                                color: AppColor.black,
                                fontStyle: FontStyle.normal),
                          ),
                          const SizedBox(
                            width: 135,
                          ),
                          Text(
                            '\u20B9$price',
                            style: AppTextstyle.ts18BR
                                .copyWith(color: AppColor.black),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.off(() => const ServiceRequest());
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFEE8700),
                        foregroundColor: Colors.white,
                        textStyle: AppTextstyle.ts26BB.copyWith(
                          color: AppColor.black,
                          fontSize: 24.0,
                        ),
                        side: const BorderSide(
                          color: Color(0xFFEE8700),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text("Book Service"),
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
