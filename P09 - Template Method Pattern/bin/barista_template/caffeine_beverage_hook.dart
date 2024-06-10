abstract class CaffeineBeverageWithHook {
  void prepareRecipe() {
    boilWater();
    brew();
    pourInCup();
    if (customerWantsCondiments()) {
      addCondiments();
    }
  }

  void brew();
  void addCondiments();

  void boilWater() {
    print("Boiling water");
  }

  void pourInCup() {
    print("Pouring into cup");
  }

  bool customerWantsCondiments() {
    return true;
  }
}
