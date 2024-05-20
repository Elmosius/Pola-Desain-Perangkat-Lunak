import 'login_command.dart';
import 'login_remote.dart';

main() {
  LoginRemote loginRemote =
      LoginRemote(username: 'Joko123', password: '', command: LoginCommand());
  loginRemote.loginButton();
}
