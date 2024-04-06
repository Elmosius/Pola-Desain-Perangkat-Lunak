class SecureBox<T> {
  final T _data;
  final String _password;

  SecureBox(this._data, this._password);

  T? getData(String password) => (password == _password)? _data : null;
}
