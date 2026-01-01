import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.labelText,
    required this.isPassword,
    required this.textInputAction,
  });

  final String labelText;
  final bool? isPassword;
  final   TextInputAction? textInputAction;
  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool? isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0.5,
      borderRadius: BorderRadius.circular(8),
      shadowColor: Colors.grey.withValues(alpha: 26), // 26/255 ≈ 10%
      child: TextFormField(
        textInputAction:widget. textInputAction,

        obscureText: widget.isPassword == true ? !isVisible! : false,
        decoration: InputDecoration(
          suffixIcon: widget.isPassword == true
              ? GestureDetector(
                  onTap: () => setState(() {
                    isVisible = !isVisible!;
                  }),
                  child: Icon(Icons.visibility_outlined),
                )
              : null,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.white, width: 1),
          ),
          filled: true,
          fillColor: Colors.white,
          focusColor: Colors.white,
          hintText: widget.labelText,
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 12),
          labelStyle: const TextStyle(color: Colors.black, fontSize: 12),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            gapPadding: 10,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.white, width: 2),
          ),
        ),
      ),
    );
  }
}
