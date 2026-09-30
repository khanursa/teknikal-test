import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:technical_test/data/model/search_repo_model.dart';
import 'package:technical_test/ui/home/home_view_model.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  ScrollController scrollController = ScrollController();

  initState() {
    super.initState();
    scrollController.addListener(() {
      if (scrollController.position.pixels == (scrollController.position.maxScrollExtent - 100)) {
        ref.read(homeViewModelProvider.notifier).loadMore();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(homeViewModelProvider);

    return state.when(
      data: (repo) => Scaffold(
        body: RefreshIndicator(
          onRefresh: () async {
            ref.read(homeViewModelProvider.notifier).refresh();
          },
          child: ListView.builder(
            controller: scrollController,
            itemBuilder: (_, index) {
              if (index == (repo.items?.length ?? 10) && !ref.read(homeViewModelProvider.notifier).moreData) {
                return const Center(
                  child: Padding(padding: EdgeInsets.all(16.0), child: Text('No more data')),
                );
              } else if (index == (repo.items?.length ?? 10) && ref.read(homeViewModelProvider.notifier).moreData) {
                return const Center(
                  child: Padding(padding: EdgeInsets.all(8.0), child: CircularProgressIndicator()),
                );
              }

              return itemWidget(repo.items?[index] ?? Item());
            },
            itemCount: (repo.items?.length ?? 10) + (ref.read(homeViewModelProvider.notifier).moreData ? 1 : 0),
          ),
        ),
      ),
      error: (state, trace) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error, size: 100, color: Colors.red),
            const SizedBox(height: 16),
            Text(state.toString(), style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                ref.read(homeViewModelProvider.notifier).refresh();
              },
              child: const Text('Retry'),
            ),
          ],
        );
      },
      loading: () => const Center(child: SizedBox(height: 10, width: 10, child: CircularProgressIndicator())),
    );
  }

  Widget itemWidget(Item item) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2))],
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                item.name ?? '',
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const Spacer(),
              CircleAvatar(backgroundImage: NetworkImage(item.owner?.avatarUrl ?? ''), radius: 20),
            ],
          ),
          const SizedBox(height: 8),
          Text(item.fullName ?? '', style: const TextStyle(fontSize: 16), overflow: TextOverflow.ellipsis, maxLines: 2),
          const SizedBox(height: 8),
          Text(
            '⭐ ${item.stargazersCount ?? 0} | 🍴 ${item.forksCount ?? 0} | 🐛 ${item.openIssues ?? 0}',
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          ),
          const SizedBox(height: 8),
          Text(
            item.description ?? '',
            style: const TextStyle(fontSize: 14),
            textAlign: TextAlign.justify,
            maxLines: 10,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
