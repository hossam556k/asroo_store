import 'package:asroo_store/core/bloc/bloc_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // SharedPreferences كـ Singleton
  final prefs = await SharedPreferences.getInstance();
  getIt.registerSingleton<SharedPreferences>(prefs);

  // AppCubit كـ Singleton
  getIt.registerSingleton<AppCubit>(AppCubit(getIt<SharedPreferences>()));
}