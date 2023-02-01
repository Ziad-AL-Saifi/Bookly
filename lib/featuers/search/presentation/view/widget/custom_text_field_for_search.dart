// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomTextFieldForSearch extends StatelessWidget {
  const CustomTextFieldForSearch({
    Key? key,
    required this.onChange,
  }) : super(key: key);
  final Function(String) onChange;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        onChanged: onChange,
        decoration: const InputDecoration(
          hintText: 'Search Books',
          label: Text(
            'Search',
            style: TextStyle(color: Colors.white),
          ),
          suffixIcon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
