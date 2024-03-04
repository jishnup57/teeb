import 'package:teeb/widgets/app_bar/custom_app_bar.dart';
import 'package:teeb/widgets/app_bar/appbar_title.dart';
import 'package:teeb/widgets/app_bar/appbar_trailing_image.dart';
import 'package:teeb/widgets/custom_search_view.dart';
import 'package:teeb/widgets/custom_drop_down.dart';
import 'models/galileo_design_model.dart';
import 'widgets/galileodesign_item_widget.dart';
import 'models/galileodesign_item_model.dart';
import 'package:flutter/material.dart';
import 'package:teeb/core/app_export.dart';
import 'bloc/galileo_design_bloc.dart';

// ignore_for_file: must_be_immutable
class GalileoDesignPage extends StatelessWidget {
  const GalileoDesignPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<GalileoDesignBloc>(
      create: (context) => GalileoDesignBloc(GalileoDesignState(
        galileoDesignModelObj: GalileoDesignModel(),
      ))
        ..add(GalileoDesignInitialEvent()),
      child: GalileoDesignPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 12.v),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: BlocSelector<GalileoDesignBloc, GalileoDesignState,
                      TextEditingController?>(
                    selector: (state) => state.searchController,
                    builder: (context, searchController) {
                      return CustomSearchView(
                        controller: searchController,
                        hintText: "msg_search_for_a_fragrance".tr,
                      );
                    },
                  ),
                ),
                SizedBox(height: 24.v),
                _buildDepthFrameTwo(context),
                SizedBox(height: 28.v),
                _buildGalileoDesign(context),
                SizedBox(height: 107.v),
                Container(
                  height: 20.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: appTheme.whiteA700,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_fragrance".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgDepth3Frame2,
          margin: EdgeInsets.fromLTRB(16.h, 16.v, 16.h, 8.v),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildDepthFrameTwo(BuildContext context) {
    return SizedBox(
      height: 32.v,
      width: 378.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: IntrinsicWidth(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 32.v,
                      width: 81.h,
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 32.v,
                              width: 81.h,
                              decoration: BoxDecoration(
                                color: appTheme.gray100,
                                borderRadius: BorderRadius.circular(
                                  12.h,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(right: 8.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "lbl_new".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgDepth3Frame1,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                    margin: EdgeInsets.only(left: 8.h),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.v),
                      child: Text(
                        "lbl_men_s".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgDepth3Frame1,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      margin: EdgeInsets.only(
                        left: 8.h,
                        top: 6.v,
                        bottom: 6.v,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.only(
                left: 93.h,
                right: 153.h,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 8.h,
                vertical: 5.v,
              ),
              decoration: AppDecoration.fillGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "lbl_bestsellers".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgDepth3Frame1,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(left: 8.h),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 28.h),
            child: BlocSelector<GalileoDesignBloc, GalileoDesignState,
                GalileoDesignModel?>(
              selector: (state) => state.galileoDesignModelObj,
              builder: (context, galileoDesignModelObj) {
                return CustomDropDown(
                  width: 113.h,
                  icon: Container(
                    margin: EdgeInsets.fromLTRB(8.h, 6.v, 7.h, 6.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgDepth3Frame1,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                  ),
                  hintText: "lbl_women_s".tr,
                  alignment: Alignment.centerRight,
                  items: galileoDesignModelObj?.dropdownItemList ?? [],
                  onChanged: (value) {
                    context
                        .read<GalileoDesignBloc>()
                        .add(ChangeDropDownEvent(value: value));
                  },
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 32.v,
              width: 16.h,
              decoration: BoxDecoration(
                color: appTheme.gray100,
                borderRadius: BorderRadius.circular(
                  8.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGalileoDesign(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: BlocSelector<GalileoDesignBloc, GalileoDesignState,
          GalileoDesignModel?>(
        selector: (state) => state.galileoDesignModelObj,
        builder: (context, galileoDesignModelObj) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 226.v,
              crossAxisCount: 2,
              mainAxisSpacing: 12.h,
              crossAxisSpacing: 12.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: galileoDesignModelObj?.galileodesignItemList.length ?? 0,
            itemBuilder: (context, index) {
              GalileodesignItemModel model =
                  galileoDesignModelObj?.galileodesignItemList[index] ??
                      GalileodesignItemModel();
              return GalileodesignItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
