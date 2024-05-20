import 'command.dart';
import 'authentication.dart';
import 'login_param.dart';
import 'user.dart';
import 'user_repository.dart';

class LoginCommand implements Command<User, LoginParam> {
  @override
  User execute(LoginParam p) {
    bool isSuccess = Authentication().login(p.username, p.password);
    if (isSuccess) {
      User user = UserRepository().getUser(p.username);
      return user;
    }
    return User(username: '', name: '');
  }
}
