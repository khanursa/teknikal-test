import 'package:dio/dio.dart';

class ApiException implements Exception {
  const ApiException(this.message, {this.statusCode});

  factory ApiException.fromDioException(DioException e) {
    return switch (e.type) {
      DioExceptionType.connectionTimeout ||
      DioExceptionType.sendTimeout ||
      DioExceptionType.receiveTimeout => const ApiException('Koneksi timeout, silakan coba lagi.'),
      DioExceptionType.connectionError => const ApiException('Tidak ada koneksi internet.'),
      DioExceptionType.badResponse => ApiException(_messageForStatus(e.response?.statusCode), statusCode: e.response?.statusCode),
      DioExceptionType.cancel => const ApiException('Request dibatalkan.'),
      _ => const ApiException('Terjadi kesalahan, silakan coba lagi.'),
    };
  }

  final String message;
  final int? statusCode;

  static String _messageForStatus(int? statusCode) => switch (statusCode) {
    400 => 'Request tidak valid.',
    401 => 'Sesi berakhir, silakan login ulang.',
    403 => 'Akses ditolak.',
    404 => 'Data tidak ditemukan.',
    final code? when code >= 500 => 'Server sedang bermasalah ($code).',
    _ => 'Terjadi kesalahan ($statusCode).',
  };

  @override
  String toString() => message;
}

Future<T> guardApiCall<T>(Future<T> Function() request) async {
  try {
    return await request();
  } on DioException catch (e) {
    throw ApiException.fromDioException(e);
  }
}
