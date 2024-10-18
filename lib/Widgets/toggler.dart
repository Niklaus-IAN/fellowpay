import 'package:flutter/material.dart';

import '../Styles/colours.dart';

notify({
  required String title, required bool status
}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: black),
        ),
        Switch(
          // This bool value toggles the switch.
          value: status,
          activeColor: white,
          inactiveTrackColor: black03,
          inactiveThumbColor: white,
          activeTrackColor: blue,
          thumbIcon: WidgetStateProperty.resolveWith<Icon?>(
                (Set<WidgetState> states) {
              double size = 24.0; // Default size
              if (states.contains(WidgetState.selected)) {
                size = 30.0; // Increase size for active thumb
              }
              return Icon(
                Icons.circle, // Default thumb icon
                size: size,
                color: white,
              );
            },
          ),
          onChanged: (bool value) {
            // toggleButton.toggle();
            // setState(() {
            //   val = !val;
            // });
            // value = !value;
            // val();
          },
        )
      ],
    ),
  );
}