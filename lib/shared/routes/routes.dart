import 'package:get/get.dart';
import 'package:kidzit_app/screens/baby_kicks/index.dart';
import 'package:kidzit_app/screens/glass/index.dart';
import 'package:kidzit_app/screens/home_web/index.dart';
import 'package:kidzit_app/screens/index.dart';
import 'package:kidzit_app/screens/login/index.dart';
import 'package:kidzit_app/screens/login_otp/index.dart';
import 'package:kidzit_app/screens/splash/splash.dart';
import 'package:kidzit_app/screens/tools/index.dart';
import 'package:kidzit_app/screens/weight/edit_weight.dart';
import 'package:kidzit_app/screens/weight/index.dart';
import 'package:kidzit_app/screens/weight/list.dart';
import 'package:kidzit_app/screens/widgets.dart';
import 'package:kidzit_app/screens/yoga/index.dart';
import 'package:kidzit_app/shared/routes.dart';

class Pages {
  static final pages = [
    GetPage(name: Routes.INTRODUCTION, page: () => IntroPage()),
    GetPage(name: Routes.SPLASH, page: () => SplashScreen()),
    GetPage(name: Routes.LOGIN, page: () => LoginPage()),
    GetPage(name: Routes.LOGIN_OTP, page: () => LoginOtpPage()),
    GetPage(name: Routes.HOME, page: () => WidgetsPage()),
    GetPage(name: Routes.TOOLS, page: () => ToolsPage()),
    GetPage(name: Routes.YOGA, page: () => YogaPage()),
    GetPage(name: Routes.WEIGHT_DETAILS, page: () => WeightPage()),
    GetPage(name: Routes.WEIGHT_LIST, page: () => WeightListPage()),
    GetPage(name: Routes.WEIGHT_ADD, page: () => EditWeightPage()),
    GetPage(name: Routes.KICK_DETAILS, page: () => BabyKicksPage()),
    GetPage(name: Routes.GLASS_DETAILS, page: () => GlassPage()),
    GetPage(name: Routes.HOME_WEB, page: () => HomeWebPage()),
  ];
}
