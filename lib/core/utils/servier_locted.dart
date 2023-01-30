import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart';

import '../../featuers/home/data/repos/home_repository_impl.dart';
import 'api_services.dart';

var getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<Api>(Api(dio: Dio()));
  getIt.registerSingleton<RepoHomeImpl>(RepoHomeImpl(api: Api(dio: Dio())));
}
