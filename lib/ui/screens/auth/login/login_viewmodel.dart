import 'package:first/core/view_model/view_model.dart';

class LoginViewModel extends BaseViewModel{
  bool isLoading =false;
  void setLoading (bool value){
    isLoading = value;
    notifyListeners();
  }
}