import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tugas_satuu/widgets/custom_button.dart';
import 'package:tugas_satuu/widgets/input_text_widget.dart';
import 'package:tugas_satuu/widgets/title_page_widget.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitlePageWidget(
                  onBackButtonTap: () {},
                  title: "Create New Account",
                  subTitle:
                      "Join us and transfer from your phone just\none click!",
                ),
                const SizedBox(
                  height: 40.0,
                ),
                InputTextWidget(
                  controller: widget.nameController,
                  title: "Name",
                ),
                const SizedBox(
                  height: 16.0,
                ),
                InputTextWidget(
                  controller: widget.emailController,
                  title: "Email",
                  inputType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 16.0,
                ),
                InputTextWidget(
                  controller: widget.phoneController,
                  title: "Phone Number",
                  inputType: TextInputType.phone,
                ),
                const SizedBox(
                  height: 40.0,
                ),
                CustomButton(
                  onTap: () {
                    final SnackBar snackBar = SnackBar(
                      content: Text((widget.nameController.text.trim() == "" &&
                              widget.emailController.text.trim() == "" &&
                              widget.phoneController.text.trim() == "")
                          ? "No Data"
                          : "${widget.nameController.text} ${widget.emailController.text} ${widget.phoneController.text}"),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  text: "Continue",
                ),
                const SizedBox(
                  height: 28.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
