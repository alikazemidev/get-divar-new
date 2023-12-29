import 'package:dio/dio.dart';

class BaseRepository {
  var dio = Dio(
    BaseOptions(
        baseUrl: 'https://divar.hitaldev.ir/api',
        headers: {
          'Accept': 'application/json',
          "Content-Type": "application/json"
        },
        validateStatus: (status) => status == 200),
  );
}
