class microphone {
  //instance vars here, if you dont give them a value remember to ALWAYS add '?' after the var type
  String? name;
  String? colour;
  int? model;

  
  //lets add a few methods too:
  void volumeOn(){ //void methods dont return anything
    print("Volume is ON!")
  }
  void volumeOff(){
    print("Volume is OFF!")

  bool isON() => true;
  int model_nro() => model;

  }
    //constructors can be used to build objects inside of them. with classes you use them as recipes to build the objects later
  microphone(String name, String colour, int model){
    this.name=name;
    this.colour=colour;
    this.model=model;
  }
}

main(List<String> arguments) {
  var mic = new microphone(); // creating the object of type microphone
  mic.name = "Aten mikki";
  mic.colour = "punkku";
  mic.model = 96;

  print(mic.name);

  print(mic.volumeOn());
  print(mic.volumeOff());
  print(mic.isON());
  print(mic.model_nro());
  )
}
