import 'package:flutter/material.dart';
import 'package:letos/core/app_export.dart';
import '../models/photoscollection_item_model.dart';

// ignore: must_be_immutable
class PhotoscollectionItemWidget extends StatelessWidget {
  PhotoscollectionItemWidget(
    this.photoscollectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PhotoscollectionItemModel photoscollectionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 95.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
          height: 157.v,
          width: 95.h,
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgBookimage,
                height: 148.v,
                width: 94.h,
                radius: BorderRadius.circular(
                  10.h,
                ),
                alignment: Alignment.bottomCenter,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgClose,
                height: 17.adaptSize,
                width: 17.adaptSize,
                alignment: Alignment.topRight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
