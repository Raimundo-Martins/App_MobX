import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {
  _LoginStore() {
    autorun((_) {});
  }

  @observable
  String email = '';

  @action
  void setEmail(String valor) => email = valor;

  @observable
  String senha = '';

  @action
  void setSenha(String valor) => senha = valor;
}
