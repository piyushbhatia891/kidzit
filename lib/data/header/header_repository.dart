import 'package:kidzit_app/models/header_model/header_model.dart';
import 'package:kidzit_app/models/mobile_login/mobile_login_model.dart';
import 'package:kidzit_app/models/otp/otp_login_model.dart';
import './header_provider.dart';

class HeaderRepository {
  HeaderProvider _headerProvider = HeaderProvider();
  Future<HeaderModel> getHomeData(String userId) =>
      _headerProvider.getHomeData(userId);
}
