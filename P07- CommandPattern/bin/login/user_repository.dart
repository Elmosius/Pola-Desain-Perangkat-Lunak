import 'user.dart';

class UserRepository {
  User getUser(String username) => User(username: username, name: 'Joko');
}
