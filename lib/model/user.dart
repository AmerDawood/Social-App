class Users {
  late int? id;
  late String name;
  late String email;
  // late String password;


  Users();
  Users.fromMap({required Map<String,dynamic>rowMap}){
    id=rowMap['id'];
    name=rowMap['name'];
    email=rowMap['email'];
  }

  Map<String,dynamic> toMap(){
    Map<String,dynamic> map= <String,dynamic> {};
    map['id'] = id;
    map['name']=name;
    map['email']=email;
    // map['password']=password;
    return map;
  }

}