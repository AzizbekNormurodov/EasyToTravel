import 'package:easy_to_travel/core/theme/theme_colors.dart';
import 'package:easy_to_travel/core/theme/theme_text_styles.dart';
import 'package:easy_to_travel/pages/main/home/widget/open_halls_widget.dart';
import 'package:easy_to_travel/pages/main/home/widget/popular_widget.dart';
import 'package:flutter/material.dart';

import 'widget/sliver_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Text(
                    "Location",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 11,
                      color: Color(0xff5B6871),
                    ),
                  ),
                  Icon(
                    Icons.chevron_right_outlined,
                    color: Color(0xff5B6871),
                    size: 18,
                  ),
                ],
              ),
              const Text(
                "Germany, Berlin, BER",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: TabBar(  isScrollable: true, labelColor: ThemeColors.primary,
              tabs: <Widget>[
                Tab( child: Row(
                  children: const [
                    Icon(Icons.restaurant_rounded),
                    Text("Restaurants"),
                  ],
                ),
                ),
                Tab(child: Row(children: const [

                  Icon(Icons.directions_subway),
                  Text( "Transport"),
                ],
                  ),

                ),
                Tab(
                  child: Row(
                    children: const [
                      Icon(Icons.local_cafe),
                      Text("Business lounges"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      hintStyle: TextStyle(color: Color(0xff9AA6AC)),
                      hintText: 'Search airport...',
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
               SilverWidget(),
              SliverToBoxAdapter(
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("Find Restaurants"))),
              SliverToBoxAdapter(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        "Popular restaurants",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    PopulerWidget(),
                  ],
                ),
              ),
              const SliverToBoxAdapter(
                child: Text(
                  "New open halls",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              OpenHallsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
