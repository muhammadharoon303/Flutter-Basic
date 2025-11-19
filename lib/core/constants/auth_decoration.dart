import 'package:flutter/material.dart';

const authdecoration = InputDecoration(
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(6)),
          borderSide:BorderSide(
            width: 3,
            color: Colors.blue,
          )
        ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(6)),
        borderSide: BorderSide(color: Colors.transparent)
  ),
    fillColor: Color(0xffEFF3FF),
    filled: true,
  hintText: "username",

        );