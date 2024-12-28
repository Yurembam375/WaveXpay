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
          page: Tire2Route.page,
        ),
        AutoRoute(
          page: Tire3Route.page,
        ),
        AutoRoute(page: DashboardRoute.page, initial: true, children: [
          AutoRoute(page: HomeRoute.page),
          AutoRoute(page: OrRoute.page),
          AutoRoute(page: TransectionRoute.page)
        ]),
        AutoRoute(
          page: BillRoute.page,
        ),
        AutoRoute(
          page: ProfileandpayoneRoute.page,
        ),
        AutoRoute(
          page: PaytocontactRoute.page,
        ),
        AutoRoute(
          page: PaymentRoute.page,
        ),
        AutoRoute(
          page: WavexPaymentRoute.page,
        ),
        AutoRoute(
          page: ToAccountRoute.page,
        ),
        AutoRoute(
          page: CheckbalRoute.page,
        ),
        AutoRoute(
          page: UpisettingRoute.page,
        ),
        AutoRoute(
          page: GiftcardRoute.page,
        ),
        AutoRoute(page: AutopayRoute.page),
        AutoRoute(
          page: UpiLiteRoute.page,
        ),
        AutoRoute(
          page: UpiInterRoute.page,
        ),
        AutoRoute(page: RewardRoute.page),
        AutoRoute(page: PayyourcreditRoute.page),
        AutoRoute(
          page: MobileRechargeRoute.page,
        ),
        AutoRoute(
          page: AddDebitcardRoute.page,
        ),
        AutoRoute(
          page: BasicrentRoute.page,
        ),
        AutoRoute(
          page: RentRoute.page,
        )
      ];
}
