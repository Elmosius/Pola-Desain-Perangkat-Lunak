abstract class Pizza{

  late String name;
  late String dough;
  late String sauce;
  List<String> toppings = [];


  void prepare(){
    print("preparing...  $name");
    print("Tossing dough..."); 
    print("Adding sauce..."); 
    print("Adding topping: "); 
    for(String topping in toppings){
      print("   $topping");
    } 
  }

  void bake(){
    print("baking for 25 minutes...");
  }

  void cut(){
    print("cutting the pizza into diagonal slices...");
  }

  void box(){
    print("place pizza in official PizzaStore box...");
  }

  String getName(){
    return name;
  }

}