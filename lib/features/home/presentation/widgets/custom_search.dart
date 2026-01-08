import 'package:flutter/material.dart';

class CustomSearch extends StatefulWidget {
  const CustomSearch({
    super.key,
    required this.labelText,

    required this.textInputAction,
  });

  final String labelText;

  final TextInputAction? textInputAction;
  @override
  State<CustomSearch> createState() => _CustomSearchState();
}

class _CustomSearchState extends State<CustomSearch> {
  bool? isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0.5,
      borderRadius: BorderRadius.circular(8),
      shadowColor: Colors.grey.withValues(alpha: 26), // 26/255 ≈ 10%
      child: TextFormField(

        textInputAction: widget.textInputAction,

        decoration: InputDecoration(
          prefixIcon: Icon(Icons.location_on_sharp),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.white, width: 1),
          ),
          filled: true,
          fillColor: Colors.white,
          focusColor: Colors.white,
          hintText: widget.labelText,
          hintStyle: const TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
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
