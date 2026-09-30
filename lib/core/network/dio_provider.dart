import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:technical_test/core/network/api_endpoints.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: ApiEndpoints.baseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 15),
      headers: {'Accept': 'application/json'},
    ),
  );

  if (kDebugMode) {
    dio.interceptors.add(LogInterceptor(requestBody: false, responseBody: true, logPrint: (log) => debugPrint(log.toString())));
  }

  ref.onDispose(dio.close);
  return dio;
});
