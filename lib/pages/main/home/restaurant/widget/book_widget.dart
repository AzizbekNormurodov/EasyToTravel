import 'package:easy_to_travel/core/theme/theme_colors.dart';
import 'package:easy_to_travel/pages/main/home/restaurant/widget/sliver_widget.dart';
import 'package:flutter/material.dart';

import '../../../../../core/theme/theme_text_styles.dart';

class BookWidget extends StatelessWidget {
  const BookWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
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
    );
  }
}
