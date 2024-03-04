import '../models/galileodesign_item_model.dart';
import 'package:flutter/material.dart';
import 'package:teeb/core/app_export.dart';

// ignore: must_be_immutable
class GalileodesignItemWidget extends StatelessWidget {
  GalileodesignItemWidget(
    this.galileodesignItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  GalileodesignItemModel galileodesignItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: galileodesignItemModelObj?.byredo,
          height: 173.adaptSize,
          width: 173.adaptSize,
          radius: BorderRadius.circular(
            12.h,
          ),
        ),
        SizedBox(height: 15.v),
        Text(
          galileodesignItemModelObj.byredo1!,
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 4.v),
        Text(
          galileodesignItemModelObj.roseOfNoManS!,
          style: theme.textTheme.bodyMedium,
        ),
      ],
    );
  }
}
