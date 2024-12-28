// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i28;
import 'package:flutter/material.dart' as _i29;
import 'package:wavexpay/src/auth_module/screen/FirstScreen.dart' as _i7;
import 'package:wavexpay/src/auth_module/screen/LoginScreen.dart' as _i10;
import 'package:wavexpay/src/auth_module/screen/OtpScreen.dart' as _i13;
import 'package:wavexpay/src/auth_module/screen/Tire2Screen.dart' as _i20;
import 'package:wavexpay/src/auth_module/screen/Tire3Screen.dart' as _i21;
import 'package:wavexpay/src/dashboard/screen/BillScreen.dart' as _i4;
import 'package:wavexpay/src/dashboard/screen/DashboardScreen.dart' as _i6;
import 'package:wavexpay/src/dashboard/screen/HomeScreen.dart' as _i9;
import 'package:wavexpay/src/dashboard/screen/ORScreen.dart' as _i12;
import 'package:wavexpay/src/dashboard/screen/TransectionScreen.dart' as _i23;
import 'package:wavexpay/src/payment_module/screen/AddDebitCardScreen.dart'
    as _i1;
import 'package:wavexpay/src/payment_module/screen/AutoPayScreen.dart' as _i2;
import 'package:wavexpay/src/payment_module/screen/BasicRentScreen.dart' as _i3;
import 'package:wavexpay/src/payment_module/screen/CheckBalScreen.dart' as _i5;
import 'package:wavexpay/src/payment_module/screen/GiftCardScreen.dart' as _i8;
import 'package:wavexpay/src/payment_module/screen/MobileRechargeScreen.dart'
    as _i11;
import 'package:wavexpay/src/payment_module/screen/PaymentScreen.dart' as _i14;
import 'package:wavexpay/src/payment_module/screen/PaytoContactScreen.dart'
    as _i15;
import 'package:wavexpay/src/payment_module/screen/PayYourCreditScreen.dart'
    as _i16;
import 'package:wavexpay/src/payment_module/screen/ProfileandPayOne.dart'
    as _i17;
import 'package:wavexpay/src/payment_module/screen/RentScreen.dart' as _i18;
import 'package:wavexpay/src/payment_module/screen/RewardScreen.dart' as _i19;
import 'package:wavexpay/src/payment_module/screen/ToAccountScreen.dart'
    as _i22;
import 'package:wavexpay/src/payment_module/screen/UpiInterScreen.dart' as _i24;
import 'package:wavexpay/src/payment_module/screen/UpiLiteScreen.dart' as _i25;
import 'package:wavexpay/src/payment_module/screen/UpiSettingScreen.dart'
    as _i26;
import 'package:wavexpay/src/payment_module/screen/WaveXpaymentScreen.dart'
    as _i27;

/// generated route for
/// [_i1.AddDebitcardScreen]
class AddDebitcardRoute extends _i28.PageRouteInfo<void> {
  const AddDebitcardRoute({List<_i28.PageRouteInfo>? children})
      : super(
          AddDebitcardRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddDebitcardRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i1.AddDebitcardScreen();
    },
  );
}

/// generated route for
/// [_i2.AutopayScreen]
class AutopayRoute extends _i28.PageRouteInfo<void> {
  const AutopayRoute({List<_i28.PageRouteInfo>? children})
      : super(
          AutopayRoute.name,
          initialChildren: children,
        );

  static const String name = 'AutopayRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i2.AutopayScreen();
    },
  );
}

/// generated route for
/// [_i3.BasicrentScreen]
class BasicrentRoute extends _i28.PageRouteInfo<void> {
  const BasicrentRoute({List<_i28.PageRouteInfo>? children})
      : super(
          BasicrentRoute.name,
          initialChildren: children,
        );

  static const String name = 'BasicrentRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i3.BasicrentScreen();
    },
  );
}

/// generated route for
/// [_i4.BillScreen]
class BillRoute extends _i28.PageRouteInfo<void> {
  const BillRoute({List<_i28.PageRouteInfo>? children})
      : super(
          BillRoute.name,
          initialChildren: children,
        );

  static const String name = 'BillRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i4.BillScreen();
    },
  );
}

/// generated route for
/// [_i5.CheckbalScreen]
class CheckbalRoute extends _i28.PageRouteInfo<void> {
  const CheckbalRoute({List<_i28.PageRouteInfo>? children})
      : super(
          CheckbalRoute.name,
          initialChildren: children,
        );

  static const String name = 'CheckbalRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i5.CheckbalScreen();
    },
  );
}

/// generated route for
/// [_i6.DashboardScreen]
class DashboardRoute extends _i28.PageRouteInfo<DashboardRouteArgs> {
  DashboardRoute({
    _i29.Key? key,
    List<_i28.PageRouteInfo>? children,
  }) : super(
          DashboardRoute.name,
          args: DashboardRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DashboardRouteArgs>(
          orElse: () => const DashboardRouteArgs());
      return _i6.DashboardScreen(key: args.key);
    },
  );
}

class DashboardRouteArgs {
  const DashboardRouteArgs({this.key});

  final _i29.Key? key;

  @override
  String toString() {
    return 'DashboardRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.FirstScreen]
class FirstRoute extends _i28.PageRouteInfo<void> {
  const FirstRoute({List<_i28.PageRouteInfo>? children})
      : super(
          FirstRoute.name,
          initialChildren: children,
        );

  static const String name = 'FirstRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i7.FirstScreen();
    },
  );
}

/// generated route for
/// [_i8.GiftcardScreen]
class GiftcardRoute extends _i28.PageRouteInfo<void> {
  const GiftcardRoute({List<_i28.PageRouteInfo>? children})
      : super(
          GiftcardRoute.name,
          initialChildren: children,
        );

  static const String name = 'GiftcardRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i8.GiftcardScreen();
    },
  );
}

/// generated route for
/// [_i9.HomeScreen]
class HomeRoute extends _i28.PageRouteInfo<void> {
  const HomeRoute({List<_i28.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i9.HomeScreen();
    },
  );
}

/// generated route for
/// [_i10.LoginScreen]
class LoginRoute extends _i28.PageRouteInfo<void> {
  const LoginRoute({List<_i28.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i10.LoginScreen();
    },
  );
}

/// generated route for
/// [_i11.MobileRechargeScreen]
class MobileRechargeRoute extends _i28.PageRouteInfo<void> {
  const MobileRechargeRoute({List<_i28.PageRouteInfo>? children})
      : super(
          MobileRechargeRoute.name,
          initialChildren: children,
        );

  static const String name = 'MobileRechargeRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i11.MobileRechargeScreen();
    },
  );
}

/// generated route for
/// [_i12.OrScreen]
class OrRoute extends _i28.PageRouteInfo<void> {
  const OrRoute({List<_i28.PageRouteInfo>? children})
      : super(
          OrRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i12.OrScreen();
    },
  );
}

/// generated route for
/// [_i13.OtpScreen]
class OtpRoute extends _i28.PageRouteInfo<void> {
  const OtpRoute({List<_i28.PageRouteInfo>? children})
      : super(
          OtpRoute.name,
          initialChildren: children,
        );

  static const String name = 'OtpRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i13.OtpScreen();
    },
  );
}

/// generated route for
/// [_i14.PaymentScreen]
class PaymentRoute extends _i28.PageRouteInfo<void> {
  const PaymentRoute({List<_i28.PageRouteInfo>? children})
      : super(
          PaymentRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i14.PaymentScreen();
    },
  );
}

/// generated route for
/// [_i15.PaytocontactScreen]
class PaytocontactRoute extends _i28.PageRouteInfo<void> {
  const PaytocontactRoute({List<_i28.PageRouteInfo>? children})
      : super(
          PaytocontactRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaytocontactRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i15.PaytocontactScreen();
    },
  );
}

/// generated route for
/// [_i16.PayyourcreditScreen]
class PayyourcreditRoute extends _i28.PageRouteInfo<void> {
  const PayyourcreditRoute({List<_i28.PageRouteInfo>? children})
      : super(
          PayyourcreditRoute.name,
          initialChildren: children,
        );

  static const String name = 'PayyourcreditRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i16.PayyourcreditScreen();
    },
  );
}

/// generated route for
/// [_i17.ProfileandpayoneScreen]
class ProfileandpayoneRoute extends _i28.PageRouteInfo<void> {
  const ProfileandpayoneRoute({List<_i28.PageRouteInfo>? children})
      : super(
          ProfileandpayoneRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileandpayoneRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i17.ProfileandpayoneScreen();
    },
  );
}

/// generated route for
/// [_i18.RentScreen]
class RentRoute extends _i28.PageRouteInfo<void> {
  const RentRoute({List<_i28.PageRouteInfo>? children})
      : super(
          RentRoute.name,
          initialChildren: children,
        );

  static const String name = 'RentRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i18.RentScreen();
    },
  );
}

/// generated route for
/// [_i19.RewardScreen]
class RewardRoute extends _i28.PageRouteInfo<void> {
  const RewardRoute({List<_i28.PageRouteInfo>? children})
      : super(
          RewardRoute.name,
          initialChildren: children,
        );

  static const String name = 'RewardRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i19.RewardScreen();
    },
  );
}

/// generated route for
/// [_i20.Tire2Screen]
class Tire2Route extends _i28.PageRouteInfo<void> {
  const Tire2Route({List<_i28.PageRouteInfo>? children})
      : super(
          Tire2Route.name,
          initialChildren: children,
        );

  static const String name = 'Tire2Route';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i20.Tire2Screen();
    },
  );
}

/// generated route for
/// [_i21.Tire3Screen]
class Tire3Route extends _i28.PageRouteInfo<void> {
  const Tire3Route({List<_i28.PageRouteInfo>? children})
      : super(
          Tire3Route.name,
          initialChildren: children,
        );

  static const String name = 'Tire3Route';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i21.Tire3Screen();
    },
  );
}

/// generated route for
/// [_i22.ToAccountScreen]
class ToAccountRoute extends _i28.PageRouteInfo<void> {
  const ToAccountRoute({List<_i28.PageRouteInfo>? children})
      : super(
          ToAccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'ToAccountRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i22.ToAccountScreen();
    },
  );
}

/// generated route for
/// [_i23.TransectionScreen]
class TransectionRoute extends _i28.PageRouteInfo<void> {
  const TransectionRoute({List<_i28.PageRouteInfo>? children})
      : super(
          TransectionRoute.name,
          initialChildren: children,
        );

  static const String name = 'TransectionRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i23.TransectionScreen();
    },
  );
}

/// generated route for
/// [_i24.UpiInterScreen]
class UpiInterRoute extends _i28.PageRouteInfo<void> {
  const UpiInterRoute({List<_i28.PageRouteInfo>? children})
      : super(
          UpiInterRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpiInterRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i24.UpiInterScreen();
    },
  );
}

/// generated route for
/// [_i25.UpiLiteScreen]
class UpiLiteRoute extends _i28.PageRouteInfo<void> {
  const UpiLiteRoute({List<_i28.PageRouteInfo>? children})
      : super(
          UpiLiteRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpiLiteRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i25.UpiLiteScreen();
    },
  );
}

/// generated route for
/// [_i26.UpisettingScreen]
class UpisettingRoute extends _i28.PageRouteInfo<void> {
  const UpisettingRoute({List<_i28.PageRouteInfo>? children})
      : super(
          UpisettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpisettingRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i26.UpisettingScreen();
    },
  );
}

/// generated route for
/// [_i27.WavexPaymentScreen]
class WavexPaymentRoute extends _i28.PageRouteInfo<void> {
  const WavexPaymentRoute({List<_i28.PageRouteInfo>? children})
      : super(
          WavexPaymentRoute.name,
          initialChildren: children,
        );

  static const String name = 'WavexPaymentRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i27.WavexPaymentScreen();
    },
  );
}
