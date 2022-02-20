

//any var that you want to be feasible throughout dart, put it outside the main function!
//thus the var's scope is accessible to all functions
void main(List<String> arguments) {
  //entry point
  var country = "Ruotsi";
  print("Maa on " + country);

  String name;
  name = "Atte";
  String name2 = "Atte2";
  String shout = "mulukku";
  print("Hello World!");
  print("$name is not $name2, do you get it ${shout.toUpperCase()}");
  //sometimes you need to make some vars as constant so that they CANNOT be changed down the line
  //You may use either const or final to do this. cont keyword is used when we want the var to be constant
  //at compile time. final is used if we want the var to be always constant, whether at compile
  //time or any other time

  //const pi = 3.14;
  //pi = 44;  //this cant now be done
  //final pi = 3.14;
  //pi = 44;  //this cant now be done

  num loopy = 3;
  double loopy2 = 2.2;
  print(loopy);
  for (var i = 0; i < 3; i++) {
    print(i);
  }

//if you dont specify the function type then it's considered as void i.e.  they return nothing!
  void dostuff() {
    print("function dostuff initiated");
  }
  //you can only return string type

  var name3 = showname();
  print(name3);
  //or
  print(showname());
  //or
  print(
      "${showname()} -- running third time with concant."); //need to put the function inside ${} since its an expression

  print("Numbah from the function: ${shownumbah()}");
  print("Age atm is ${showageatm}");

  //to pass a param
  print(greeting(name2));
  print(greeting("homo"));

  var homo = greeting(
      "homppeli"); //or you can put the whole function with the specific param inside a var to call it whenever
  print(homo);

  String greeting_concise(String g, String a, double b) =>
      "Concised one line called $g and $a $b";
  print(greeting_concise("-Shortened function looking like this", "EEE", 21.0));
  //we can pass as many params as we want ofc

  //we can also make some of the params as optional by putting them into [brackets]:

  print(pers_info("Atte", "Lund"));
  print(pers_info("Atte", "Lund", 25));

  //scopes
}

String showname() {
  return "String returned only"; //nothing returned when calling this function unless you print it like above
}

int shownumbah() {
  return 25;
}

int showageatm() =>
    32; // => means the same as return expression inside function
//Loops test

String greeting(String g) {
  return "Hiya ${g}";
}

//had to make the optional param int nullable to prevent the error, done via '?'
String pers_info(String name, String home, [int? age]) {
  var infos = "${name} lives in ${home}";
  if (age == Null) {
    print("$infos but no age told...");
  } else {
    var infos = "${name} lives in ${home} and is ${age} old!";
    print("$infos");
