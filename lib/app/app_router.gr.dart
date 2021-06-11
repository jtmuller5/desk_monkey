// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';

import '../ui/home/home_view.dart';
import '../ui/singleCommand/single_command_view.dart';

class Routes {
  static const String homeView = '/';
  static const String singleCommandView = '/single-command-view';
  static const all = <String>{
    homeView,
    singleCommandView,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.singleCommandView, page: SingleCommandView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomeView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => HomeView(),
        settings: data,
      );
    },
    SingleCommandView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => SingleCommandView(),
        settings: data,
      );
    },
  };
}
