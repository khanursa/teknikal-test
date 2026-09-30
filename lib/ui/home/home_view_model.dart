import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:technical_test/data/model/search_repo_model.dart';
import 'package:technical_test/data/repositories/search_repository.dart';

class HomeViewModel extends AsyncNotifier<SearchRepoModel> {
  int page = 1;
  bool moreData = true;
  bool isLoading = false;

  @override
  Future<SearchRepoModel> build() => ref.watch(repositoryProvider).searchRepo(sort: 'stars', page: page);

  Future<void> loadMore() async {
    if (isLoading || !moreData) return;
    isLoading = true;
    page++;
    final newdata = await ref.watch(repositoryProvider).searchRepo(sort: 'stars', page: page);
    if (newdata.items?.isEmpty ?? true) {
      moreData = false;
    } else {
      state = AsyncData(
        SearchRepoModel(
          totalCount: state.value?.totalCount,
          incompleteResults: state.value?.incompleteResults,
          items: [...?state.value?.items, ...?newdata.items],
        ),
      );
    }
    isLoading = false;
  }

  Future<void> refresh() async {
    page = 1;
    moreData = true;
    state = await AsyncValue.guard(() => ref.watch(repositoryProvider).searchRepo(sort: 'stars', page: page));
  }
}

final homeViewModelProvider = AsyncNotifierProvider<HomeViewModel, SearchRepoModel>(HomeViewModel.new);
