import 'package:get_storage/get_storage.dart';

class StorageUtils{
  static final _storage = GetStorage();
  static final _registrationKey = 'registrationKey';

  static bool isFirstTimeRegister(){
    return _storage.read(_registrationKey)??true;
  }

  static void setRegistrationData(bool value){
    _storage.write(_registrationKey, value);
  }

}