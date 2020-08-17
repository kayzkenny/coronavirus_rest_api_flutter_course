import 'package:flutter/cupertino.dart';
import 'package:coronavirus_rest_api_flutter_course/app/services/api_keys.dart';

enum Endpoint {
  cases,
  casesSuspected,
  casesConfirmed,
  deaths,
  recovered,
}

class API {
  API({@required this.apiKey});
  final String apiKey;
  static final String host = 'ncov2019-admin.firebaseapp.com';

  factory API.sandbox() => API(apiKey: APIKeys.ncovSandboxKey);

  // URI Syntax [http|https]://[host]:[port]/[path]?[queryParameters]
  Uri tokenUrl() => Uri(
        scheme: 'https',
        host: host,
        path: "token",
      );

  Uri endpointUri(Endpoint endpoint) => Uri(
        scheme: 'https',
        host: host,
        path: _paths[endpoint],
      );

  static Map<Endpoint, String> _paths = {
    Endpoint.cases: 'cases',
    Endpoint.casesSuspected: 'casesSuspected',
    Endpoint.casesConfirmed: 'casesConfirmed',
    Endpoint.deaths: 'deaths',
    Endpoint.recovered: 'recovered',
  };
}
