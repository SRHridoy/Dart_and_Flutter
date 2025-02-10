import 'package:get_it/get_it.dart';
import 'package:odo_using_bloc/db/objectbox_db.dart';

final locator = GetIt.instance;

void setupLocator(){
  locator.registerSingleton(ObjectboxDb());
}