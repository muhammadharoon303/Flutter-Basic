import 'package:first/core/view_model/view_model.dart';
import 'package:flutter/cupertino.dart';

class LoginViewModel extends BaseViewModel {
  final globalLoginKey = GlobalKey<FormState>();
  final globalSignUpKey = GlobalKey<FormState>();

  bool isLoading = false;
  void setLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }
}
