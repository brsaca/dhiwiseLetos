import 'package:flutter/material.dart';
import 'package:letos/core/app_export.dart';
import '../models/bookdetailgrid_item_model.dart';

// ignore: must_be_immutable
class BookdetailgridItemWidget extends StatelessWidget {
  BookdetailgridItemWidget(
    this.bookdetailgridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BookdetailgridItemModel bookdetailgridItemModelObj;

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
                imagePath: bookdetailgridItemModelObj?.bookImage,
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
                    bookdetailgridItemModelObj.bookStatus!,
                    style: CustomTextStyles.bodySmallSecondaryContainer,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 4.v),
        Text(
          bookdetailgridItemModelObj.bookTitle!,
          style: theme.textTheme.bodyMedium,
        ),
        SizedBox(height: 3.v),
        Text(
          bookdetailgridItemModelObj.bookAuthor!,
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
            bookdetailgridItemModelObj.bookPrice!,
            style: CustomTextStyles.bodySmallSecondaryContainer11,
          ),
        ),
      ],
    );
  }
}
