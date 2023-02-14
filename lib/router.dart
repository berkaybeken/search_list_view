import 'package:auto_route/auto_route.dart';
import 'package:etiya_case/view/app_view/detail_page.dart';
import 'package:etiya_case/view/app_view/home_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomePage,
      initial: true,
    ),
    AutoRoute(page: DetailPage),
  ],
)
class $AppRouter {}
