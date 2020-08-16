import 'package:flutter/cupertino.dart';
import 'package:coronavirus_rest_api_flutter_course/app/services/api_keys.dart';

class API {
  final String apiKey;
  static final String host = 'ncov2019-admin.firebaseapp.com';

  API({@required this.apiKey});

  factory API.sandbox() => API(apiKey: APIKeys.ncovSandboxKey);

  /// URI Syntax [http|https]://[host]:[port]/[path]?[queryParameters]
  Uri tokenUrl() => Uri(
        scheme: 'https',
        host: host,
        path: "token",
      );
}
