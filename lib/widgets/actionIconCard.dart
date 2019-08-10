import 'package:flutter/material.dart';

Widget actionIconCard(
  context,
  width,
  height,
  cardDecorationColor,
  cardDecorationRadius,
  cardIconType,
  cardIconColor,
) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: cardDecorationColor,
      borderRadius: cardDecorationRadius,
    ),
    child: Icon(
      cardIconType,
      color: cardIconColor,
    ),
  );
}
