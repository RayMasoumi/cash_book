// * a method to choose color:
import 'dart:ui';

import '../constants/colors.dart';

Color getColor(int index) {
  Color color;
  switch (index % 5) {
    case 0:
      {
        color = kPastel1Color;
      }
      break;
    case 1:
      {
        color = kPastel5Color;
      }
      break;
    case 2:
      {
        color = kPastel4Color;
      }
      break;
    case 3:
      {
        color = kPastel3Color;
      }
      break;
    case 4:
      {
        color = kPastel2Color;
      }
      break;
    default:
      {
        color = kPastel1Color;
      }
      break;
  }
  return color;
}
