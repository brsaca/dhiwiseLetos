import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeErrorContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 18.fSize,
      );
  static get bodyLargeOnErrorContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get bodyLargeOnPrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get bodyLargeOnSecondaryContainer =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
      );
  static get bodyLargeRed700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.red700,
      );
  static get bodyLargeSecondaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get bodyLargeSecondaryContainer18 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 18.fSize,
      );
  static get bodyMediumBluegray400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
        fontSize: 14.fSize,
      );
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 12.fSize,
      );
  static get bodySmallPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 12.fSize,
      );
  static get bodySmallRed700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.red700,
        fontSize: 12.fSize,
      );
  static get bodySmallSecondaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get bodySmallSecondaryContainer11 =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 11.fSize,
      );
  static get bodySmallff4f4f4f => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF4F4F4F),
        fontSize: 12.fSize,
      );
}

extension on TextStyle {
  TextStyle get actor {
    return copyWith(
      fontFamily: 'Actor',
    );
  }
}
