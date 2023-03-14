class Type{
  int intData = 10;
  double doubleData = 10.0;
  var varIntData = 20;
  var varStringData = "hello";
  String stringData = "hello";
  List listData = [];
  Map mapData = {"String" : "hello"};
}

void main(){
  var type = Type();
  
  print(type.intData);
  print(type.doubleData);
  print(type.varIntData);
  print(type.varStringData);
  print(type.stringData);
  print(type.listData);
  print(type.mapData);
  // 10
  // 10
  // 20
  // hello
  // hello
  // []
  // {String: hello}
}