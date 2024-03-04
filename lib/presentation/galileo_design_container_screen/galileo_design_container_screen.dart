import 'package:teeb/presentation/galileo_design_page/galileo_design_page.dart';
import 'package:teeb/widgets/custom_bottom_bar.dart';
import 'models/galileo_design_container_model.dart';
import 'package:flutter/material.dart';
import 'package:teeb/core/app_export.dart';
import 'bloc/galileo_design_container_bloc.dart';

// ignore_for_file: must_be_immutable
class GalileoDesignContainerScreen extends StatelessWidget {
  GalileoDesignContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<GalileoDesignContainerBloc>(
        create: (context) => GalileoDesignContainerBloc(
            GalileoDesignContainerState(
                galileoDesignContainerModelObj: GalileoDesignContainerModel()))
          ..add(GalileoDesignContainerInitialEvent()),
        child: GalileoDesignContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GalileoDesignContainerBloc, GalileoDesignContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.galileoDesignPage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar: _buildBottomBar(context)));
    });
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.galileoDesignPage;
      case BottomBarEnum.Categories:
        return "/";
      case BottomBarEnum.Brands:
        return "/";
      case BottomBarEnum.Wishlist:
        return "/";
      case BottomBarEnum.Me:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.galileoDesignPage:
        return GalileoDesignPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
