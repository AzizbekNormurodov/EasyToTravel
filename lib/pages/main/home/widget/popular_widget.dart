import 'package:easy_to_travel/core/theme/theme_colors.dart';
import 'package:easy_to_travel/core/theme/theme_text_styles.dart';
import 'package:flutter/material.dart';

class PopulerWidget extends StatelessWidget {
  const PopulerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16, right: 12),
            child: InkWell( onTap: (){

            },
              child: Container( width: 190, height: 258, color: ThemeColors.backgroundColor,
                child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/png/berlin_airport.png", width: 190, height: 180,
                      fit: BoxFit.fill,
                    ),
                    Row(
                      children: [
                        Image.asset("assets/png/flight_takeoff.png"),
                        const Text("Berlin Airport", style: TextStyle(color: Color(0xff84919A), fontSize: 13, fontWeight: FontWeight.w400,),),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 2),
                      child: Text("Riviera Restaurant", style: ThemeTextStyles.appTitle,),
                    ),
                    const Text("1h from \$80", style: TextStyle(color: Color(0xff48535B), fontSize: 13, fontWeight: FontWeight.w400,),),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, right: 12),
            child: Container( width: 190, height: 258, color: ThemeColors.backgroundColor,
              child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/png/singapour_airport.png", width: 190, height: 180,
                    fit: BoxFit.fill,
                  ),
                  Row(
                    children: [
                      Image.asset("assets/png/flight_takeoff.png"),
                      const Text("Singapore Airport", style: TextStyle(color: Color(0xff84919A), fontSize: 13, fontWeight: FontWeight.w400,),),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 2),
                    child: Text("Sultan Palace ", style: ThemeTextStyles.appTitle,),
                  ),
                  const Text("1h from \$75", style: TextStyle(color: Color(0xff48535B), fontSize: 13, fontWeight: FontWeight.w400,),),
                ],
              ),
            ),
          ),

        ],
      ),
    );
    // return ListView.builder(itemBuilder: (context, index){
    //  return  Padding(
    //    padding: const EdgeInsets.only(top: 16, right: 12),
    //    child: Container( width: 190, height: 258, color: ThemeColors.backgroundColor,
    //      child: Column( crossAxisAlignment: CrossAxisAlignment.start,
    //        children: [
    //          Image.asset(
    //            "assets/png/berlin_airport.png", width: 190, height: 180,
    //            fit: BoxFit.fill,
    //          ),
    //          Row(
    //            children: [
    //              Image.asset("assets/png/flight_takeoff.png"),
    //              Text("Berlin Airport", style: TextStyle(color: Color(0xff84919A), fontSize: 13, fontWeight: FontWeight.w400,),),
    //            ],
    //          ),
    //          Padding(
    //            padding: const EdgeInsets.only(top: 5, bottom: 2),
    //            child: Text("Riviera Restaurant", style: ThemeTextStyles.appTitle,),
    //          ),
    //          Text("1h from \$80", style: TextStyle(color: Color(0xff48535B), fontSize: 13, fontWeight: FontWeight.w400,),),
    //        ],
    //      ),
    //    ),
    //  );
    // }, itemCount: 3,
    // );

  }
}
