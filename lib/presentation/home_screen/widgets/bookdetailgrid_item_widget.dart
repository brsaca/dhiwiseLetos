import 'package:flutter/material.dart';
import 'package:letos/core/app_export.dart';

// ignore: must_be_immutable
class BookdetailgridItemWidget extends StatelessWidget {
  const BookdetailgridItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 187.v,
          width: 108.h,
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgBookimage,
                height: 187.v,
                width: 108.h,
                radius: BorderRadius.circular(
                  10.h,
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 56.h,
                  padding: EdgeInsets.all(11.h),
                  decoration: AppDecoration.fillTeal.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderBL10,
                  ),
                  child: Text(
                    "NUEVO",
                    style: CustomTextStyles.bodySmallSecondaryContainer,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 4.v),
        Text(
          "Título",
          style: theme.textTheme.bodyMedium,
        ),
        SizedBox(height: 3.v),
        Text(
          "Autor",
          style: CustomTextStyles.bodySmall12,
        ),
        SizedBox(height: 6.v),
        Container(
          width: 45.h,
          padding: EdgeInsets.symmetric(
            horizontal: 13.h,
            vertical: 1.v,
          ),
          decoration: AppDecoration.fillPrimary.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder5,
          ),
          child: Text(
            "60",
            style: CustomTextStyles.bodySmallSecondaryContainer11,
          ),
        ),
      ],
    );
  }
}
