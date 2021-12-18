import 'package:flutter/material.dart';
import 'package:tugas_satuu/colors/my_colors.dart';

class TitlePageWidget extends StatelessWidget {
  const TitlePageWidget(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.onBackButtonTap})
      : super(key: key);
  final String title;
  final String subTitle;
  final Function onBackButtonTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 40.0),
          child: GestureDetector(
            onTap: () {
              onBackButtonTap();
            },
            child: const Icon(
              Icons.arrow_back,
            ),
          ),
        ),
        const SizedBox(
          height: 16.0,
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: MyColors.blueBlack100,
          ),
        ),
        const SizedBox(
          height: 4.0,
        ),
        Text(
          subTitle,
          style: const TextStyle(
            fontSize: 14,
            color: MyColors.blueBlack90,
          ),
        ),
      ],
    );
  }
}
