class AuthServices {
  Future<bool> login(String email, String password) async {
    return email == "admin" && password == "1234";
  }

  Future signInWithEmailAndPassword(String text, String text2) async {}
}
