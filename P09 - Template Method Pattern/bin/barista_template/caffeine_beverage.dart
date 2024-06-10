abstract class CaffeineBeverage {
  void prepareRecipe() {
    boilWater();
    brew();
    pourInCup();
    addCondiments();
  }

  void brew();
  void addCondiments();

  void boilWater() {
    print("Boiling water");
  }

  void pourInCup() {
    print("Pouring into cuo");
  }
}
