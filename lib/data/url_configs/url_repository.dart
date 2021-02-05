import 'package:kidzit_app/data/url_configs/url_provider.dart';
import 'package:kidzit_app/models/url_config/url_config.dart';

class UrlConfigRepository {
  UrlConfigProvider _urlConfigProvider = UrlConfigProvider();
  Future<UrlConfig> getConfigs() => _urlConfigProvider.getConfigUrls();
}
