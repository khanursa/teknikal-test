import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:technical_test/core/network/api_exception.dart';
import 'package:technical_test/data/model/search_repo_model.dart';
import 'package:technical_test/data/services/api_services.dart';

abstract interface class Repository {
  Future<SearchRepoModel> searchRepo({required String sort, required int page});
}

class RepositoryImpl implements Repository {
  RepositoryImpl(this._service);

  final ApiServices _service;

  @override
  Future<SearchRepoModel> searchRepo({required String sort, required int page}) => guardApiCall(() => _service.getSerchRepo(sort: sort, page: page));
}

final repositoryProvider = Provider<Repository>((ref) => RepositoryImpl(ref.watch(apiServiceProvider)));
