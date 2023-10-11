import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:service_nest_app/common/color.dart';
import 'package:service_nest_app/common/common_function.dart';
import 'package:service_nest_app/common/textstyle.dart';
import 'package:service_nest_app/controller/services_controller/bottom_sheet_controller.dart';
import 'package:service_nest_app/presentation/view/common_widgets/common_grid_view.dart';
import 'package:service_nest_app/util/common/custom_bottom_sheet.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final controller = Get.put(ImageController());

    final List<List<String>> ElectricGridData = [
      ["Wiring", "stripping_wires.png"],
      ["Electric Board", "stripping_wires.png"],
      ["Assest Repair", "stripping_wires.png"],
    ];
    final List<List<String>> CivilGridData = [
      ["Brick Work", "bricks.png"],
      ["Block Work", "blocks.png"],
      ["Flooring", "wood.png"],
      ["Kitchen platform", "bricks.png"],

      // Add more data as needed
    ];
    final List<List<String>> FinishingGridData = [
      ["New Painting", "paint_roller.png"],
      ["New Furniture", "furniture.png"],
      ["Re Paint", "painting.png"],
      ["Old Furniture Repair", "furniture.png"],

      // Add more data as needed
    ];
    final List<List<String>> WaterProofingGridData = [
      ["Toilet/Bath", "toilet.png"],
      ["Kitchen", "kitchen.png"],
      ["Balcony", "balcony.png"],
      ["Terrace", "balcony.png"],
      ["External wall WP", "balcony.png"],
      ["Leakages & Dampness Repairing", "balcony.png"],
      // Add more data as needed
    ];
    final List<List<String>> MechanicalGridData = [
      ["Grill", "grill.png"],
      ["Aluminium Window", "window.png"],
      ["Safety Door", "door.png"],
      ["Railing", "railing.png"],
      ["Kitchen Trolley", "cart.png"],
      ["New product making by MS/SS", "crucible.png"],
      // Add more data as needed
    ];

    return Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
        child: SizedBox(
          width: CommonFunction.getWidth(context),
          height: CommonFunction.getHeightWithoutBottomNavbar(context),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Service's",
                              style: AppTextstyle.ts48WM.copyWith(
                                color: AppColor.black,
                                fontSize: 38.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 15.0,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 20, top: 0),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/icons/services_icons/small_icons/flash.png',
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Electrical",
                                  style: AppTextstyle.ts18BB.copyWith(
                                    color: AppColor.black,
                                  ),
                                  maxLines: 1,
                                ),
                              ],
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 0),
                          child: Container(
                            width: screenWidth * 0.9,
                            child: Row(
                              children: [
                                Expanded(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        for (int i = 0;
                                            i < ElectricGridData.length;
                                            i++)
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8.0),
                                            child: Container(
                                              height: 130,
                                              width: 130,
                                              child: CustomGridView(
                                                imageUrl:
                                                    'assets/icons/recommended_services_icons/${ElectricGridData[i][1]}',
                                                title: ElectricGridData[i][0],
                                                onTap: () {
                                                  Get.bottomSheet(
                                                    CustomBottomSheetContent(
                                                      title: "Wiring" ,
                                                      imageUrl:
                                                          'assets/icons/recommended_services_icons/${ElectricGridData[i][1]}',
                                                      serviceDescription:
                                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                                      estimatedTime: '2 hrs',
                                                      price:
                                                          600, // Adjust the price accordingly
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 20, top: 0),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/icons/services_icons/small_icons/engineering.png',
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Civil Services",
                                  style: AppTextstyle.ts18BB.copyWith(
                                    color: AppColor.black,
                                  ),
                                  maxLines: 1,
                                ),
                              ],
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 0),
                          child: Container(
                            width: screenWidth * 0.9,
                            child: Row(
                              children: [
                                Expanded(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        for (int i = 0;
                                            i < CivilGridData.length;
                                            i++)
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8.0),
                                            child: Container(
                                              height: 130,
                                              width: 130,
                                              child: CustomGridView(
                                                imageUrl:
                                                    'assets/icons/civil_services_icons/${CivilGridData[i][1]}',
                                                title: CivilGridData[i][0],
                                                onTap: () {
                                                  Get.bottomSheet(
                                                    CustomBottomSheetContent(
                                                      title: "Block Work",
                                                      imageUrl:
                                                          'assets/icons/civil_services_icons/${CivilGridData[i][1]}',
                                                      serviceDescription:
                                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                                      estimatedTime: '2 hrs',
                                                      price:
                                                          600, // Adjust the price accordingly
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 20, top: 0),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/icons/services_icons/small_icons/tile.png',
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Finishing Work",
                                  style: AppTextstyle.ts18BB.copyWith(
                                    color: AppColor.black,
                                  ),
                                  maxLines: 1,
                                ),
                              ],
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 0),
                          child: Container(
                            width: screenWidth * 0.9,
                            child: Row(
                              children: [
                                Expanded(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        for (int i = 0;
                                            i < FinishingGridData.length;
                                            i++)
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8.0),
                                            child: Container(
                                              height: 130,
                                              width: 130,
                                              child: CustomGridView(
                                                imageUrl:
                                                    'assets/icons/finishing_services_icons/${FinishingGridData[i][1]}',
                                                title: FinishingGridData[i][0],
                                                onTap: () {
                                                  Get.bottomSheet(
                                                    CustomBottomSheetContent(
                                                      title: "Painting",
                                                      imageUrl:
                                                          'assets/icons/finishing_services_icons/${FinishingGridData[i][1]}',
                                                      serviceDescription:
                                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                                      estimatedTime: '2 hrs',
                                                      price:
                                                          600, // Adjust the price accordingly
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 20, top: 0),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/icons/services_icons/small_icons/waterproof_fabric.png',
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Waterproofing Service",
                                  style: AppTextstyle.ts18BB.copyWith(
                                    color: AppColor.black,
                                  ),
                                  maxLines: 1,
                                ),
                              ],
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 0),
                          child: Container(
                            width: screenWidth * 0.9,
                            child: Row(
                              children: [
                                Expanded(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        for (int i = 0;
                                            i < WaterProofingGridData.length;
                                            i++)
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8.0),
                                            child: Container(
                                              height: 130,
                                              width: 130,
                                              child: CustomGridView(
                                                imageUrl:
                                                    'assets/icons/waterproofing_services_icons/${WaterProofingGridData[i][1]}',
                                                title: WaterProofingGridData[i]
                                                    [0],
                                                onTap: () {
                                                  Get.bottomSheet(
                                                    CustomBottomSheetContent(
                                                      title: "Wiring",
                                                      imageUrl:
                                                          'assets/icons/waterproofing_services_icons/${WaterProofingGridData[i][1]}',
                                                      serviceDescription:
                                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                                      estimatedTime: '2 hrs',
                                                      price:
                                                          600, // Adjust the price accordingly
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 20, top: 0),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/icons/services_icons/small_icons/waterproof_fabric.png',
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Mechanical Service",
                                  style: AppTextstyle.ts18BB.copyWith(
                                    color: AppColor.black,
                                  ),
                                  maxLines: 1,
                                ),
                              ],
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 0),
                          child: Container(
                            width: screenWidth * 0.9,
                            child: Row(
                              children: [
                                Expanded(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        for (int i = 0;
                                            i < WaterProofingGridData.length;
                                            i++)
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8.0),
                                            child: Container(
                                              height: 130,
                                              width: 130,
                                              child: CustomGridView(
                                                imageUrl:
                                                    'assets/icons/mechanical_icons/${MechanicalGridData[i][1]}',
                                                title: MechanicalGridData[i][0],
                                                onTap: () {
                                                  Get.bottomSheet(
                                                    CustomBottomSheetContent(
                                                      title: "Wiring",
                                                      imageUrl:
                                                          'assets/icons/mechanical_icons/${MechanicalGridData[i][1]}',
                                                      serviceDescription:
                                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                                      estimatedTime: '2 hrs',
                                                      price:
                                                          600, // Adjust the price accordingly
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
