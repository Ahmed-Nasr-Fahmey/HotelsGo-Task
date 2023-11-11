import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hotelsgo_task/constants.dart';

class CustomLoveIcon extends StatefulWidget {
  const CustomLoveIcon({
    super.key,
  });

  @override
  State<CustomLoveIcon> createState() => _CustomLoveIconState();
}

class _CustomLoveIconState extends State<CustomLoveIcon> {
  bool isLoved = false;
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
        child: CircleAvatar(
          radius: 24,
          backgroundColor: Constants.blackColor.withOpacity(0.3),
          child: Center(
            child: IconButton(
              onPressed: () {
                setState(() {
                  isLoved = !isLoved;
                });
              },
              icon: Icon(
                isLoved ? Icons.favorite : Icons.favorite_border,
                color: Constants.whiteColor,
                size: 28,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
