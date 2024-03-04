import 'package:flutter/material.dart';
import '../presentation/galileo_design_container_screen/galileo_design_container_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String galileoDesignContainerScreen =
      '/galileo_design_container_screen';

  static const String galileoDesignPage = '/galileo_design_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        galileoDesignContainerScreen: GalileoDesignContainerScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: GalileoDesignContainerScreen.builder
      };
}
