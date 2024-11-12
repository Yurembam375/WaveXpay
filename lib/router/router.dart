import 'package:auto_route/auto_route.dart';
import 'package:wavexpay/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: FirstRoute.page, initial: true),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: OtpRoute.page),
      ];
}
