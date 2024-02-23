import 'package:flutter/material.dart';
import 'package:letos/core/app_export.dart';
import 'package:letos/widgets/custom_elevated_button.dart';
import '../models/bookrow_item_model.dart';

// ignore: must_be_immutable
class BookrowItemWidget extends StatelessWidget {
  BookrowItemWidget(
    this.bookrowItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BookrowItemModel bookrowItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgBookimage,
            height: 160.v,
            width: 106.h,
            radius: BorderRadius.circular(
              10.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    bookrowItemModelObj.bookTitle!,
                    style: CustomTextStyles.bodyLargeOnSecondaryContainer,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    bookrowItemModelObj.bookAuthor!,
                    style: CustomTextStyles.bodySmall12,
                  ),
                ),
                SizedBox(height: 1.v),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    bookrowItemModelObj.bookPublisher!,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    bookrowItemModelObj.bookDatePublished!,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    bookrowItemModelObj.bookISBN10!,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    bookrowItemModelObj.bookISBN13!,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    bookrowItemModelObj.bookFormat!,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    bookrowItemModelObj.bookLanguage!,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                SizedBox(height: 5.v),
                _buildValidateButton(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildValidateButton(BuildContext context) {
    return CustomElevatedButton(
      width: 169.h,
      text: "lbl_validar".tr,
    );
  }
}
