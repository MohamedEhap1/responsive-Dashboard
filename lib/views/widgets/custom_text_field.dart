import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: const Color(0xff4EB7F2),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppStyles.styleRegular16(context).copyWith(
          color: const Color(0xffAAAAAA),
        ),
        filled: true,
        fillColor: const Color(0xffFAFAFA),
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide.none),
        enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide.none),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(
            color: Color(0xff4EB7F2),
          ),
        ),
      ),
    );
  }
}
