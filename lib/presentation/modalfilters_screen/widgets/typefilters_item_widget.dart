import 'package:flutter/material.dart';
import 'package:letos/core/app_export.dart';

// ignore: must_be_immutable
class TypefiltersItemWidget extends StatelessWidget {
  const TypefiltersItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 5.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Simple",
        style: TextStyle(
          color: theme.colorScheme.secondaryContainer,
          fontSize: 16.fSize,
          fontFamily: 'Actor',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: false,
      backgroundColor: theme.colorScheme.secondaryContainer,
      selectedColor: theme.colorScheme.primary,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: appTheme.blueGray400,
          width: 1.h,
        ),
        borderRadius: BorderRadius.circular(
          10.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
