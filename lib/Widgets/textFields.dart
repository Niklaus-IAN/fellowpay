import 'package:flutter/material.dart';

import '../Styles/colours.dart';

InputDecoration kTextFieldDecoration = InputDecoration(
  // hintText: 'A value',
  // hintStyle: kHintDisplayTextStyle,
  contentPadding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderSide: BorderSide(color: black),
    borderRadius: const BorderRadius.all(
      Radius.circular(10.0),
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: blue),
    borderRadius: const BorderRadius.all(
      Radius.circular(10.0),
    ),
  ),
  disabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: black),
    borderRadius: const BorderRadius.all(
      Radius.circular(10.0),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: blue,
      width: 1.0,
    ),
    borderRadius: const BorderRadius.all(
      Radius.circular(10.0),
    ),
  ),
  filled: true,
  fillColor: white,
  // focusColor: white
  // prefixIconColor: primaryColor,
  // iconColor: primaryColor,
);