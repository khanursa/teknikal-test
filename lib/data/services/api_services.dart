import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:technical_test/core/network/api_endpoints.dart';
import 'package:technical_test/core/network/dio_provider.dart';
import 'package:technical_test/data/model/search_repo_model.dart';

class ApiServices {
  ApiServices(this._dio);

  final Dio _dio;

  Future<SearchRepoModel> getSerchRepo({required String sort, required int page}) async {
    return await _dio.get(ApiEndpoints.searchRepositories(sort, page, 10)).then((response) {
      return SearchRepoModel.fromMap(response.data);
    });
  }
}

final apiServiceProvider = Provider<ApiServices>((ref) => ApiServices(ref.watch(dioProvider)));
