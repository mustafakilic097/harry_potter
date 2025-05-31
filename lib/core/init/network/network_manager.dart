import 'dart:io';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:harry_potter/core/constants/app/app_constants.dart';
import 'package:harry_potter/core/init/navigation/navigation_manager.dart';

class NetworkManager {
  static final NetworkManager _instance = NetworkManager._init();
  static NetworkManager get instance => _instance;
  late final Dio dio;

  NetworkManager._init() {
    dio = Dio(
      BaseOptions(
        baseUrl: AppConstants.BASE_API_URL,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 5),
        sendTimeout: const Duration(seconds: 5),
      ),
    );

    dio.interceptors.add(
      InterceptorsWrapper(
        onError: (DioException err, ErrorInterceptorHandler handler) {
          if (err.type == DioExceptionType.connectionTimeout ||
              err.type == DioExceptionType.sendTimeout ||
              err.type == DioExceptionType.receiveTimeout) {
            Get.toNamed(NavigationManager.getNetworkErrorRoute);
          } else if (err.type == DioExceptionType.unknown && err.error is SocketException) {
            Get.toNamed(NavigationManager.getNetworkErrorRoute);
          } else if (err.type == DioExceptionType.badResponse) {
            Get.toNamed(NavigationManager.getNetworkErrorRoute);
          } else if (err.type == DioExceptionType.connectionError) {
            Get.toNamed(NavigationManager.getNetworkErrorRoute);
          }
          return handler.next(err);
        },
      ),
    );
  }
}
