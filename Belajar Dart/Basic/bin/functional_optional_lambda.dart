String say(String from, String message, {required String to, required String appName}) {
  // ignore: unnecessary_null_comparison
  return "$from say $message${(to !=  null)?  " to $to" : ''}${(appName != null)?  " via $appName": ''}";
}

void main(List<String> args) {
  print(say('Elmo', 'Hi', to: 'Kaka', appName: 'appName'));
}
