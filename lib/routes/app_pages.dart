import 'package:get/get.dart';
import 'package:secondchapter_pro/features/bottom_nav/dashboard_binding.dart';
import 'package:secondchapter_pro/features/bottom_nav/dashboard_view.dart';
import 'package:secondchapter_pro/features/dash_line/dash_line_binding.dart';
import 'package:secondchapter_pro/features/dash_line/dash_line_view.dart';
import 'package:secondchapter_pro/features/indicator/indicator_binding.dart';
import 'package:secondchapter_pro/features/indicator/indicator_view.dart';
import 'package:secondchapter_pro/features/media_feed/media_feed_binding.dart';
import 'package:secondchapter_pro/features/media_feed/media_feed_view.dart';
import 'package:secondchapter_pro/features/phone_number_verification/phone_verification_binding.dart';
import 'package:secondchapter_pro/features/phone_number_verification/phone_verification_view.dart';
import 'package:secondchapter_pro/features/splash/splash_binding.dart';
import 'package:secondchapter_pro/features/splash/splash_view.dart';
import 'package:secondchapter_pro/features/textfields/code_verify/code_verify_demo_binding.dart';
import 'package:secondchapter_pro/features/textfields/code_verify/code_verify_demo_view.dart';
import 'package:secondchapter_pro/features/textfields/phone_number_text_field/phone_entry_demo_binding.dart';
import 'package:secondchapter_pro/features/textfields/phone_number_text_field/phone_entry_demo_view.dart';
import 'package:secondchapter_pro/features/textfields/text_field/textfield_binding.dart';
import 'package:secondchapter_pro/features/textfields/text_field/textfield_view.dart';
import 'package:secondchapter_pro/features/textfields/verified_phone/verified_phone_demo_binding.dart';
import 'package:secondchapter_pro/features/textfields/verified_phone/verified_phone_demo_view.dart';
import 'package:secondchapter_pro/features/textfields/verified_text/verified_text_binding.dart';
import 'package:secondchapter_pro/features/textfields/verified_text/verified_text_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.DASHBOARD;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    // Add the new Dashboard page as the main page
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.DASH_LINE,
      page: () => const DashLineView(),
      binding: DashLineBinding(),
    ),

    GetPage(
      name: _Paths.MEDIA_FEED,
      page: () => const MediaFeedView(),
      binding: MediaFeedBinding(),
    ),
    GetPage(
      name: _Paths.CUSTOM_INDICATOR,
      page: () => const IndicatorDemoView(),
      binding: IndicatorDemoBinding(),
    ),
    GetPage(
      name: _Paths.PLAYGROUND_DEMO,
      page: () => const PlaygroundDemoView(),
      binding: PlaygroundDemoBinding(),
    ),
    GetPage(
      name: _Paths.PHONE_ENTRY_DEMO,
      page: () => const PhoneEntryDemoView(),
      binding: PhoneEntryDemoBinding(),
    ),
    
    GetPage(
      name: _Paths.CODE_VERIFY_DEMO,
      page: () => const CodeVerifyDemoView(),
      binding: CodeVerifyDemoBinding(),
    ),
    GetPage(
      name: _Paths.VERIFIED_PHONE_DEMO,
      page: () => const VerifiedPhoneDemoView(),
      binding: VerifiedPhoneDemoBinding(),
    ),
    GetPage(
      name: _Paths.VERIFIED_TEXT_DEMO,
      page: () => const VerifiedTextDemoView(),
      binding: VerifiedTextDemoBinding(),
    ),
    GetPage(
      name: _Paths.PHONE_VERIFICATION,
      page: () => const PhoneVerificationView(),
      binding: PhoneVerificationBinding(),
    ),

  ];
}
