/// Base URL dan path endpoint API.
abstract final class ApiEndpoints {
  static const baseUrl = 'https://api.github.com/';

  static String searchRepositories(String sort, int page, int perPage) => 'search/repositories?q=flutter&sort=$sort&page=$page&per_page=$perPage';
}
