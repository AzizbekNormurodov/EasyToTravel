import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../../../core/theme/theme_text_styles.dart';
import 'guest_widget.dart';
import 'date_wiget.dart';

class SilverWidget extends StatefulWidget {
  SilverWidget({Key? key}) : super(key: key);

  @override
  State<SilverWidget> createState() => _SilverWidgetState();
}

class _SilverWidgetState extends State<SilverWidget> {

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                showModalBottomSheet(
                    backgroundColor: Colors.white,
                    context: context,
                    builder: (_) {
                      return DateWidget(
                          text: "Date", mode: CupertinoDatePickerMode.date);
                    });
              },
              child: ContainerWidget(
                icon: Icons.calendar_today,
                text: "04.04.23",
              ),
            ),
            // SizedBox(width: 8),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                    backgroundColor: Colors.white,
                    context: context,
                    builder: (_) {
                      return DateWidget(
                          text: "Время заезда в Lounge",
                          mode: CupertinoDatePickerMode.time);
                    });
              },
              child: ContainerWidget(
                icon: Icons.schedule,
                text: "16:30",
              ),
            ),
            // SizedBox(width: 8),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                    backgroundColor: Colors.white,
                    context: context,
                    builder: (_) {
                      return GuestsWidget();
                    });
              },
              child: ContainerWidget(
                icon: Icons.person,
                text: "1",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  ContainerWidget({Key? key, required this.icon, required this.text})
      : super(key: key);
  IconData icon;
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 109,
      height: 48,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 6),
            child: Icon(icon),
          ),
          Text(
            text,
            style: ThemeTextStyles.widgettext,
          ),
        ],
      ),
    );
  }
}
