part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const SPLASH = _Paths.SPLASH;
  static const DASHBOARD = _Paths.DASHBOARD; // Add Dashboard route
  static const HOME = _Paths.HOME;
  static const DASH_LINE = _Paths.DASH_LINE;
  static const MEDIA_FEED = _Paths.MEDIA_FEED;
  static const CUSTOM_INDICATOR = _Paths.CUSTOM_INDICATOR;

  //textfelds
  static const PLAYGROUND_DEMO = _Paths.PLAYGROUND_DEMO;
  static const PHONE_ENTRY_DEMO = _Paths.PHONE_ENTRY_DEMO;
  static const CODE_VERIFY_DEMO = _Paths.CODE_VERIFY_DEMO;
  static const VERIFIED_PHONE_DEMO = _Paths.VERIFIED_PHONE_DEMO;
  static const VERIFIED_TEXT_DEMO = _Paths.VERIFIED_TEXT_DEMO;
  static const PHONE_VERIFICATION = _Paths.PHONE_VERIFICATION;
}

abstract class _Paths {
  _Paths._();
  static const SPLASH = '/splash';
  static const DASHBOARD = '/dashboard'; // Add Dashboard path
  static const HOME = '/home';
  static const DASH_LINE = '/dash-line';
  static const MEDIA_FEED = '/media-feed';
  static const CUSTOM_INDICATOR = '/indicator';
  static const PHONE_VERIFICATION = '/phone-verification';

  //textfields
  static const PLAYGROUND_DEMO = '/playground-demo';
  static const PHONE_ENTRY_DEMO = '/phone-entry-demo';
  static const CODE_VERIFY_DEMO = '/code-verify-demo';
  static const VERIFIED_PHONE_DEMO = '/verified-phone-demo';
  static const VERIFIED_TEXT_DEMO = '/verified-text-demo';
}
