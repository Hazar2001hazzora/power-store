import 'package:power_store1/localrepo.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setUp() {
  locator.registerLazySingleton<LocalRepo>(() => LocalRepo());
}
