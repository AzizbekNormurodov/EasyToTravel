import 'package:easy_to_travel/core/theme/theme_text_styles.dart';
import 'package:flutter/material.dart';


class GuestsWidget extends StatefulWidget {
  const GuestsWidget({Key? key}) : super(key: key);

  @override
  State<GuestsWidget> createState() => _GuestsWidgetState();
}

class _GuestsWidgetState extends State<GuestsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 414,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),),),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Guests",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            AdultsWidget(),
            ChildrenWidget(),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: ElevatedButton(onPressed: (){}, child: Text("Подтвердить")),
            )
          ],
        ),
      ),
    );
  }
}


class AdultsWidget extends StatefulWidget {
  const AdultsWidget({Key? key}) : super(key: key);

  @override
  State<AdultsWidget> createState() => _AdultsWidgetState();
}

class _AdultsWidgetState extends State<AdultsWidget> {
  int number1 = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Adults", style: ThemeTextStyles.order2,),
        Padding(
          padding: const EdgeInsets.only(
              left: 170, right: 14),
          child: ElevatedButton(
            onPressed: () {
              if (number1 == 0) {
                return;
              }
              number1--;
              setState(() {});
            },
            child: Text(
              "-",
              style: TextStyle(color: Colors.black),
            ),
            style: ButtonStyle(
                minimumSize: MaterialStatePropertyAll(
                    Size(44, 44)),
                backgroundColor:
                MaterialStatePropertyAll(
                    Color(0xffF6F8FB))),
          ),
        ),
        Text("${number1}"),
        Padding(
          padding: const EdgeInsets.only(left: 14),
          child: ElevatedButton(
            onPressed: () {
              number1++;
              setState(() {});
            },
            child: Text(
              "+",
              style: TextStyle(color: Colors.black),
            ),
            style: ButtonStyle(
                minimumSize: MaterialStatePropertyAll(
                    Size(44, 44)),
                backgroundColor:
                MaterialStatePropertyAll(
                    Color(0xffF6F8FB))),
          ),
        ),
      ],
    );
  }
}
class ChildrenWidget extends StatefulWidget {
  const ChildrenWidget({Key? key}) : super(key: key);

  @override
  State<ChildrenWidget> createState() => _ChildrenWidgetState();
}

class _ChildrenWidgetState extends State<ChildrenWidget> {
  int number2 = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Children", style: ThemeTextStyles.order2,),
        Padding(
          padding: const EdgeInsets.only(
              left: 158, right: 14),
          child: ElevatedButton(
            onPressed: () {
              if (number2 == 0) {
                return;
              }
              number2--;

              setState(() {});
            },
            child: Text(
              "-",
              style: TextStyle(color: Colors.black),
            ),
            style: ButtonStyle(
                minimumSize: MaterialStatePropertyAll(
                    Size(44, 44)),
                backgroundColor:
                MaterialStatePropertyAll(
                    Color(0xffF6F8FB))),
          ),
        ),
        Text("${number2}"),
        Padding(
          padding: const EdgeInsets.only(left: 14),
          child: ElevatedButton(
            onPressed: () {
              number2++;
              setState(() {});
            },
            child: Text(
              "+",
              style: TextStyle(color: Colors.black),
            ),
            style: ButtonStyle(
                minimumSize: MaterialStatePropertyAll(
                    Size(44, 44)),
                backgroundColor:
                MaterialStatePropertyAll(
                    Color(0xffF6F8FB))),
          ),
        ),
      ],
    );
  }
}

