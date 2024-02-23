import 'package:flutter/material.dart';
import 'package:letos/core/app_export.dart';
import 'package:letos/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class BooksavedrowItemWidget extends StatelessWidget {
  BooksavedrowItemWidget({
    Key? key,
    this.onTapBookInfo,
  }) : super(
          key: key,
        );

  VoidCallback? onTapBookInfo;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2.v),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(
              left: 17.h,
              right: 10.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 1.v,
                    bottom: 6.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "20/Feb/2024 17:44:23",
                        style: CustomTextStyles.bodyLargeOnSecondaryContainer,
                      ),
                      Text(
                        "LTTH71328659",
                        style: CustomTextStyles.bodySmallRed700,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "60",
                        style: CustomTextStyles.bodyLargeRed700,
                      ),
                    ),
                    SizedBox(height: 1.v),
                    Text(
                      "Nuevo",
                      style: CustomTextStyles.bodyLargeOnSecondaryContainer,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 17.v),
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {
                onTapBookInfo!.call();
              },
              child: Padding(
                padding: EdgeInsets.only(
                  left: 14.h,
                  right: 44.h,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgBookimage,
                      height: 148.v,
                      width: 94.h,
                      radius: BorderRadius.circular(
                        10.h,
                      ),
                      margin: EdgeInsets.only(bottom: 1.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 19.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: Text(
                              "Catcher in the Rye",
                              style: CustomTextStyles
                                  .bodyLargeOnSecondaryContainer,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: Text(
                              "J.D. Salinger",
                              style: CustomTextStyles.bodySmall12,
                            ),
                          ),
                          SizedBox(height: 1.v),
                          Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: Text(
                              "P198.00",
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                          SizedBox(height: 1.v),
                          Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: Text(
                              "P198.00",
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                          SizedBox(height: 46.v),
                          _buildChangeStatusButton(context),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 18.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildPrintCodeButton(context),
              _buildDeleteButton(context),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildChangeStatusButton(BuildContext context) {
    return CustomElevatedButton(
      width: 169.h,
      text: "APARTADO",
      buttonStyle: CustomButtonStyles.fillOrange,
    );
  }

  /// Section Widget
  Widget _buildPrintCodeButton(BuildContext context) {
    return CustomElevatedButton(
      width: 169.h,
      text: "PrintCode",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 10.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgClose,
          height: 17.adaptSize,
          width: 17.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillGray,
    );
  }

  /// Section Widget
  Widget _buildDeleteButton(BuildContext context) {
    return CustomElevatedButton(
      width: 169.h,
      text: "Eliminar",
      margin: EdgeInsets.only(left: 1.h),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 10.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgClose,
          height: 17.adaptSize,
          width: 17.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillGrayBR10,
    );
  }
}
