import 'command.dart';
import 'login_param.dart';
import 'user.dart';

class LoginRemote {
  final String username;
  final String password;
  final Command<User, LoginParam> command;

  LoginRemote(
      {required this.username, required this.password, required this.command});

  void loginButton() {
    User user =
        command.execute(LoginParam(username: username, password: password));
    print(user.username);
    print(user.name);
  }
}
