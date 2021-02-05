import 'package:kidzit_app/data/mobile_login/otp_provider.dart';
import 'package:kidzit_app/models/mobile_login/mobile_login_model.dart';
import 'package:kidzit_app/models/otp/otp_login_model.dart';

class MobileLoginRepository {
  MobileLoginProvider _otpProvider = MobileLoginProvider();
  Future<MobileLoginModel> loginWithMobile(String mobile) =>
      _otpProvider.loginWithMobile(mobile);
  Future<OtpLoginModel> loginWithOtp(String mobile, String otp) =>
      _otpProvider.loginWithOtp(mobile, otp);
}
