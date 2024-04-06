class PersegiPanjang {
  late double _panjang;
  late double _lebar;



  void setLebar(double i) {
    _lebar = i;
  }

  void setPanjang(double i) {
    _panjang = i;
  }

  double getPanjang() {
    return _panjang;
  }

  double getLebar() {
    return _lebar;
  }

  // cara 2
  // double get panjang=>_panjang;
  // set panjang(double value) => _panjang = value;

  // set lebar(double d) {
  //   _lebar = d;
  // }

  // set panjang(double d) {
  //   _panjang = d;
  // }

  double get luas => _panjang * _lebar;
}
