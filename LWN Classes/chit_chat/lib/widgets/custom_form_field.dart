import 'package:flutter/material.dart';

class CustomFormField extends StatefulWidget {
  final String hintText;
  final bool isPasswordField;
  final TextEditingController? controller;

  CustomFormField({
    Key? key,
    required this.hintText,
    this.isPasswordField = false,
    this.controller,
  }) : super(key: key);

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  bool isPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffeef0f8),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: widget.controller,
        cursorColor: Colors.grey,
        obscureText: widget.isPasswordField ? isPasswordVisible : false,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          hintText: widget.hintText,
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 12),
          border: InputBorder.none,
          suffixIcon: widget.isPasswordField
              ? InkWell(
            onTap: () {
              setState(() {
                isPasswordVisible = !isPasswordVisible;
              });
            },
            child: Icon(
              isPasswordVisible ? Icons.visibility_off : Icons.visibility,
              color: Colors.grey,
            ),
          )
              : null,
        ),
      ),
    );
  }
}
