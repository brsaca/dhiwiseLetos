import 'package:flutter/material.dart';
import 'package:letos/core/app_export.dart';
import '../models/typefilters_item_model.dart';

// ignore: must_be_immutable
class TypefiltersItemWidget extends StatelessWidget {
  TypefiltersItemWidget(
    this.typefiltersItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  TypefiltersItemModel typefiltersItemModelObj;

  Function(bool)? onSelectedChipView;

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
        typefiltersItemModelObj.simpleButton!,
        style: TextStyle(
          color: (typefiltersItemModelObj.isSelected ?? false)
              ? theme.colorScheme.secondaryContainer
              : theme.colorScheme.onPrimary.withOpacity(1),
          fontSize: 16.fSize,
          fontFamily: 'Actor',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: (typefiltersItemModelObj.isSelected ?? false),
      backgroundColor: theme.colorScheme.secondaryContainer,
      selectedColor: theme.colorScheme.primary,
      shape: (typefiltersItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: theme.colorScheme.primary,
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                10.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.blueGray400,
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                10.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}
