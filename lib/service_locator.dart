import 'package:get_it/get_it.dart';
import 'package:my_flower/core/utils/app_router.dart';

final sl = GetIt.instance;


Future<void> startup() async {

  /// Router
  sl.registerSingleton<AppRouter>(AppRouter());

}