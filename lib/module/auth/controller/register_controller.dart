import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_divar/backend/repository/auth_repository.dart';
import 'package:get_divar/backend/response/province_response.dart';

class RegisterController extends GetxController {
  var authRepository = AuthRepository();
  var userName = TextEditingController();
  var mobile = TextEditingController();
  var address = TextEditingController();
  var password = TextEditingController();
  var reapetPassword = TextEditingController();
  var proviceId = TextEditingController();
  var cityId = TextEditingController();
  ProvinceResponse? provinceResponse;
  String? selectProvince;
  String? selectCity;
  Future<void> register() async {
    var res = await authRepository.register(
      userName.text,
      mobile.text,
      address.text,
      password.text,
      reapetPassword.text,
      selectCity.toString(),
    );
    print(res.user!.name ?? 'null bod');
  }

  Future<void> getProvince() async {
    provinceResponse = await authRepository.getProvince();
    update();
  }

  void onSelectedCity(String citySelected) {
    cityId.text = citySelected.toString();
    selectCity = citySelected.toString();
    update();
  }

  void onSelectedProvince(String provinceSelected) {
    selectProvince = provinceSelected;
    update();
  }

  @override
  void onInit() {
    getProvince();
    super.onInit();
  }
}
