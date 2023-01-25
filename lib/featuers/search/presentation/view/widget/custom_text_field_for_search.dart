import 'package:flutter/material.dart';

class CustomTextFieldForSearch extends StatelessWidget {
  const CustomTextFieldForSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        decoration: InputDecoration(
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
