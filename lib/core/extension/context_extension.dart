import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
}

extension MediaQueryExtension on BuildContext {
  double get getHeight => mediaQuery.size.height;
  double get getWidth => mediaQuery.size.width;

  double get lowHeightValue => getHeight * 0.01;
  double get mediumHeightValue => getHeight * 0.05;
  double get highHeightValue => getHeight * 0.1;

  double get lowWidthValue => getWidth * 0.01;
  double get mediumWidthValue => getWidth * 0.05;
  double get highWidthValue => getWidth * 0.1;
}

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colors => theme.colorScheme;
}

extension PaddingExtension on BuildContext {
  EdgeInsets get paddingHeightLow => EdgeInsets.all(lowHeightValue);
  EdgeInsets get paddingHeightMedium => EdgeInsets.all(mediumHeightValue);
  EdgeInsets get paddingHeightHigh => EdgeInsets.all(highHeightValue);

  EdgeInsets get paddingWidthLow => EdgeInsets.all(lowWidthValue);
  EdgeInsets get paddingWidthMedium => EdgeInsets.all(mediumWidthValue);
  EdgeInsets get paddingWidthHigh => EdgeInsets.all(highWidthValue);
}
