import '../constants/sizes.dart';

double heightCalculator(double size) {
  double height = size / kScreenHeight;
  return height * kHeight;
}

double widthCalculator(double size) {
  double width = size / kScreenWidth;
  return width * kWidth;
}
