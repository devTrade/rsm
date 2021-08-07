// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../ui/main/main_view.dart';
import '../ui/onboarding/onboarding_view.dart';

class Routes {
  static const String mainView = '/';
  static const String onBoardingView = '/on-boarding-view';
  static const all = <String>{
    mainView,
    onBoardingView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.mainView, page: MainView),
    RouteDef(Routes.onBoardingView, page: OnBoardingView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    MainView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const MainView(),
        settings: data,
      );
    },
    OnBoardingView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const OnBoardingView(),
        settings: data,
      );
    },
  };
}
