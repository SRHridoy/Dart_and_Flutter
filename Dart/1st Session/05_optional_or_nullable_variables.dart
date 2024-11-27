String? outStr;
void main() {
  //Optional Variables/Nullable variables:
  //String/int/bool/etc and null

  String someValue = '';
  int some = 0;

  //can be null: if we use ?
  int? some1 = null;
  //int some2 = null;//error

  //final someF = null;//Now it's dynamic as null and we don't get the dedicated properties and methods...
  //const someC = null;

  //But if we use dataType? then we can access the dedicated things...:
  String? str = null;
  print(str);
  //print(str.length);

  //We don't have explicitly set to null, it automatically initialized with null:
  String? str2;
  print(str2);
  str2 = 'Goooo';
  print(str2);
  str2 = null;
  print(str2);

  //print(str2.length);//will give compile-time error
  //But if we use:
  //print(str2!.length);//Give us run-time error...here we saying it's not null but it's really null...

  //So,we have to use ? , then if it is null print null or print the length:
  print(str2?.length);
  str2 = 'Great';
  //print(str2?.length);// throw an warining as it knows that value is assigned...
  //So, we can can now simply use this without ?:
  print(str2.length);

  //So,why ?, in the same function or block dart can identify but outside block it can't so then we use it:
  print(outStr);
  outStr = null;
  print(outStr);

  outStr = 'Hello inside!';
  // print(outStr.length); //Gives error as outStr is outside and dart can't interpret this ...
  print(outStr?.length);

  //but if null then we won't show null to our user then we have to use ?? to show alternative message:
  outStr = null;
  print(outStr?.length ?? 'There is no value');
  outStr = 'Contents';
  print(outStr?.length ?? 'There is no value');

  //print(outStr!.length ?? 'This is invalid!');// This shows warning as we say here this is not null and again said if null print this...So,contradictory thing...
}
