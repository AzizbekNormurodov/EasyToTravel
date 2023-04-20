import 'package:easy_to_travel/core/theme/theme_colors.dart';
import 'package:easy_to_travel/core/theme/theme_text_styles.dart';
import 'package:easy_to_travel/pages/main/home/restaurant/widget/sliver_widget.dart';
import 'package:flutter/material.dart';

class RivieraRestaurantPage extends StatelessWidget {
  const RivieraRestaurantPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Image.asset(
              "assets/png/berlin_airport.png",
              width: 483,
              height: 220,
              fit: BoxFit.cover,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  )),
              width: double.infinity,
              height: 382,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 16, bottom: 4),
                      child: Text(
                        "Riviera Restaurant",
                        style: ThemeTextStyles.restaurant,
                      ),
                    ),
                    const Text(
                      "Inspired by the Australian scenery and lifestyle, our \nRiviera Restaurant is located at Berlin International \nAirport",
                      style: ThemeTextStyles.restaurant_text,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 24, bottom: 12),
                      child: Text(
                        "Restaurant features",
                        style: ThemeTextStyles.appTitle,
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Container(
                              color: ThemeColors.grey,
                              width: 77,
                              height: 36,
                              child: Row(
                                children: const [
                                  Icon(Icons.wifi, color: ThemeColors.primary),
                                  Text(
                                    "Wi-Fi",
                                    style: ThemeTextStyles.features,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Container(
                              color: ThemeColors.grey,
                              width: 130,
                              height: 36,
                              child: Row(
                                children: const [
                                  Icon(Icons.restaurant,
                                      color: ThemeColors.primary),
                                  Text(
                                    "Food & Drink",
                                    style: ThemeTextStyles.features,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Container(
                              color: ThemeColors.grey,
                              width: 152,
                              height: 36,
                              child: Row(
                                children: const [
                                  Icon(Icons.shower,
                                      color: ThemeColors.primary),
                                  Text(
                                    "Shower facilities",
                                    style: ThemeTextStyles.features,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24, bottom: 12),
                      child: Image.asset(
                        "assets/png/map.png",
                        width: double.infinity,
                        height: 104,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.location_on,
                          color: Color(0xff48535B),
                        ),
                        Text(
                          "Berlin International Airport (T1)",
                          style: TextStyle(
                            color: Color(0xff48535B),
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 12,
                bottom: 12,
              ),
              child: Container(
                width: double.infinity,
                height: 288,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Description",
                        style: ThemeTextStyles.status,
                      ),
                      Text(
                        "Inspired by the Australian scenery and lifestyle, \nour Riviera Restaurant is located at Berlin \nInternational Airport, Terminal 1, opposite Gates \n25-26, with a comfortable seating area overlooking the runway and informal dining areas."
                        "\n\nOur all-inclusive entrance offers a wide range of \nservices including the fully manicured Aero Bar, \nbarista making coffee, and a large selection of bar \nsnacks made to order, or guests can choose from \nfreshly prepared local and international dishes.",
                        style: ThemeTextStyles.features,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: 375,
              height: 328,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Book a visit",
                      style: ThemeTextStyles.status,
                    ),
                    SilverWidget(),
                    Text("Duration of stay"),
                    Container(
                      width: double.infinity,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Color(0xffF5F5F5),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12, right: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Usage - 1 hour"),
                            Icon(Icons.keyboard_arrow_down),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12, bottom: 12),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Color.fromRGBO(0, 130, 255, 0.1),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Book from \$80",
                          style: TextStyle(color: ThemeColors.primary),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(0, 130, 255, 0.1),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/png/img.png",
                              height: 23,
                              width: 23,
                              color: ThemeColors.primary),
                          Text(
                            "Do you want to buy fast track",
                            style: TextStyle(color: ThemeColors.primary),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
