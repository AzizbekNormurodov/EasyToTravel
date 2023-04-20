import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class OpenHallsWidget extends StatelessWidget {
  OpenHallsWidget({Key? key}) : super(key: key);
  List<String> imagesHall = [
    "https://static.dezeen.com/uploads/2022/09/sydney-opera-house-concert-hall-renewal-arm-architecture-daniel-boud_dezeen_2364_col_19-scaled.jpg",
    "https://balticguide.ee/wp-content/uploads/2022/05/38-Restoran-5-1024x766.jpg",
    "https://images.unsplash.com/photo-1523059623039-a9ed027e7fad?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLWxpa2VkfDIwfHx8ZW58MHx8fHw%3D&w=1000&q=80",
    "https://images.unsplash.com/photo-1540448051910-09cfadd5df61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c3lkbmV5JTIwb3BlcmElMjBob3VzZXxlbnwwfHwwfHw%3D&w=1000&q=80"
  ];
  List<String> text = ["Berlin", "Singapore", "Dubai", "Istanbul"];

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.only(right: 12, top: 16, bottom: 12),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
          childCount: imagesHall.length,
          (context, index) => Stack(
            children: [

              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    imageUrl: imagesHall[index],
                  ),
                ),
              ),
              Positioned( left: 12, bottom: 16,
                  child: Text(text[index], style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600,),),),
            ],
          ),
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisExtent: 192,
          mainAxisSpacing: 12,
        ),
      ),
    );
  }
}
