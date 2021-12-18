import 'package:flutter/material.dart';
import 'package:tugas_satuu/colors/my_colors.dart';

class InputTextWidget extends StatelessWidget {
  const InputTextWidget({
    Key? key,
    required this.controller,
    required this.title,
    this.inputType = TextInputType.text,
  }) : super(key: key);
  final TextEditingController controller;
  final String title;
  final TextInputType inputType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            color: MyColors.blueBlack100,
          ),
        ),
        const SizedBox(
          height: 4.0,
        ),
        SizedBox(
          height: 36.0,
          child: TextField(
            controller: controller,
            keyboardType: inputType,
            cursorColor: MyColors.bluePrimary,
            style: const TextStyle(fontSize: 14.0),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              hintText: title,
              fillColor: MyColors.blueBlack10,
              filled: true,
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: MyColors.bluePrimary),
              ),
              border: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFE4E5E7),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
