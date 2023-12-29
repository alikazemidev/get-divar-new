import 'package:get_divar/backend/repository/base_repository.dart';
import 'package:get_divar/backend/response/province_response.dart';
import 'package:get_divar/backend/response/register_response.dart';

class AuthRepository extends BaseRepository {
  Future<RegisterResponse> register(
    String username,
    String mobile,
    String address,
    String password,
    String cityId,
    String repeatPassword,
  ) async {
    var res = await dio.post('/register', data: {
      'name': username,
      'mobile': mobile,
      'address': address,
      'cityId': cityId,
      'password': password,
      'password_confirmation': repeatPassword,
    });
    print(res.data);
    return RegisterResponse.fromJson(res.data);
  }

  Future<ProvinceResponse> getProvince() async {
    var res = await dio.get('/provinces');
    return ProvinceResponse.fromJson(res.data);
  }
}
