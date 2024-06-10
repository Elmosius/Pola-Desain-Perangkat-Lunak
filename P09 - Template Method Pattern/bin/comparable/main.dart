import 'brio.dart';
import 'car.dart';
import 'fortuner.dart';

void main(List<String> args) {
  Car brio = Brio();
  Car fortuner = Fortuner();

  brio.isGreaterThan(fortuner);
}
