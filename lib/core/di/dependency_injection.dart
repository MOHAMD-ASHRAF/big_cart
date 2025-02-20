// import 'package:dio/dio.dart';
// import 'package:doctor/core/networking/api_service.dart';
// import 'package:doctor/core/networking/doi_factory.dart';
// import 'package:doctor/feature/login/data/repo/login_repo.dart';
// import 'package:doctor/feature/login/logic/login_cubit.dart';
// import 'package:doctor/feature/sign_up/data/repo/sign_up_repo.dart';
// import 'package:get_it/get_it.dart';
//
// import '../../feature/sign_up/logic/sign_up_cubit.dart';
//
// final getIt = GetIt.instance;
//
// Future<void> setupGetIt() async {
//   // Dio & ApiService
//   Dio dio = DioFactory.getDio();
//   getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
//   //login
//   getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
//   getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
//
//   //signup
//
//   getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
//   getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
// }
