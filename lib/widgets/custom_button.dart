import 'package:flutter/material.dart';
import 'package:tugas_satuu/colors/my_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.onTap, required this.text})
      : super(key: key);
  final Function onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 40.0,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(6.0)),
          boxShadow: [],
          color: MyColors.bluePrimary,
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              color: MyColors.blueBlack10,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
