import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 100.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 40.0,
  backgroundColor: Colors.black,
  fontWeight: FontWeight.w700,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
  backgroundColor: Colors.black,
);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
);

const kTextFieldInput = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: Icon(
    Icons.location_city,
    size: 36,
  ),
  hintText: 'Enter city name',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
  ),
);
