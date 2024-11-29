import 'package:auto_route/auto_route.dart';
import 'package:wavexpay/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: FirstRoute.page,
        ),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: OtpRoute.page),
        AutoRoute(
          page: Tire2screen.page,
        ),
        AutoRoute(
          page: Tire3screen.page,
        ),
        AutoRoute(page: DashboardRoute.page, children: [
          AutoRoute(page: Homescreen.page),
          AutoRoute(page: Orscreen.page),
          AutoRoute(page: Transectionscreen.page)
        ]),
        AutoRoute(
          page: Billscreen.page,
        ),
        AutoRoute(
          page: Profileandpayone.page,
        ),
        AutoRoute(
          page: Paytocontactscreen.page,
        ),
        AutoRoute(page: Paymentscreen.page, initial: true)
      ];
}
