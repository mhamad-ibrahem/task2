import 'routes_imports.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: AppRoute.homeRoute,
      page: () => HomePage(),
      transition: Transition.fade,
      binding: HomeBinding(),
      transitionDuration: const Duration(milliseconds: 700)),
];
