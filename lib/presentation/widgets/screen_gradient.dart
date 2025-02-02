import 'package:flutter/material.dart';
import 'package:poke_api/core/colors.dart';

BoxDecoration screenGradient() {
    return BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors:[AppColor.orange,AppColor.yellow],
          stops: [0,0.6]
        )
      );
  }