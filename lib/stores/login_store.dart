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

  @computed
  bool get isFormValid => email.length > 6 && senha.length > 6;

  @observable
  bool senhaVisible = false;

  @action
  void toggleSenhaVisibility() => senhaVisible = !senhaVisible;

  @observable
  bool loading = false;

  @action
  void login() {
    loading = true;

    loading = false;
  }

  @computed
  Function get loginPressed => (isFormValid && !loading) ? login : null;
}
