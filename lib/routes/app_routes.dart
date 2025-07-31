part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const SPLASH = _Paths.SPLASH;
  static const DASHBOARD = _Paths.DASHBOARD; // Add Dashboard route
  static const HOME = _Paths.HOME;
}

abstract class _Paths {
  _Paths._();
  static const SPLASH = '/splash';
  static const DASHBOARD = '/dashboard'; // Add Dashboard path
  static const HOME = '/home';
}
