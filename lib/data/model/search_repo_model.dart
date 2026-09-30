// ignore_for_file: constant_identifier_names

import 'dart:convert';

class SearchRepoModel {
  final int? totalCount;
  final bool? incompleteResults;
  final List<Item>? items;

  SearchRepoModel({this.totalCount, this.incompleteResults, this.items});

  SearchRepoModel copyWith({int? totalCount, bool? incompleteResults, List<Item>? items}) => SearchRepoModel(
    totalCount: totalCount ?? this.totalCount,
    incompleteResults: incompleteResults ?? this.incompleteResults,
    items: items ?? this.items,
  );

  factory SearchRepoModel.fromJson(String str) => SearchRepoModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SearchRepoModel.fromMap(Map<String, dynamic> json) => SearchRepoModel(
    totalCount: json['total_count'],
    incompleteResults: json['incomplete_results'],
    items: json['items'] == null ? [] : List<Item>.from(json['items']?.map((x) => Item.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    'total_count': totalCount,
    'incomplete_results': incompleteResults,
    'items': items == null ? [] : List<dynamic>.from(items!.map((x) => x.toMap())),
  };
}

class Item {
  final int? id;
  final String? nodeId;
  final String? name;
  final String? fullName;
  final bool? private;
  final Owner? owner;
  final String? htmlUrl;
  final String? description;
  final bool? fork;
  final String? url;
  final String? forksUrl;
  final String? keysUrl;
  final String? collaboratorsUrl;
  final String? teamsUrl;
  final String? hooksUrl;
  final String? issueEventsUrl;
  final String? eventsUrl;
  final String? assigneesUrl;
  final String? branchesUrl;
  final String? tagsUrl;
  final String? blobsUrl;
  final String? gitTagsUrl;
  final String? gitRefsUrl;
  final String? treesUrl;
  final String? statusesUrl;
  final String? languagesUrl;
  final String? stargazersUrl;
  final String? contributorsUrl;
  final String? subscribersUrl;
  final String? subscriptionUrl;
  final String? commitsUrl;
  final String? gitCommitsUrl;
  final String? commentsUrl;
  final String? issueCommentUrl;
  final String? contentsUrl;
  final String? compareUrl;
  final String? mergesUrl;
  final String? archiveUrl;
  final String? downloadsUrl;
  final String? issuesUrl;
  final String? pullsUrl;
  final String? milestonesUrl;
  final String? notificationsUrl;
  final String? labelsUrl;
  final String? releasesUrl;
  final String? deploymentsUrl;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? pushedAt;
  final String? gitUrl;
  final String? sshUrl;
  final String? cloneUrl;
  final String? svnUrl;
  final String? homepage;
  final int? size;
  final int? stargazersCount;
  final int? watchersCount;
  final String? language;
  final bool? hasIssues;
  final bool? hasProjects;
  final bool? hasDownloads;
  final bool? hasWiki;
  final bool? hasPages;
  final bool? hasDiscussions;
  final int? forksCount;
  final dynamic mirrorUrl;
  final bool? archived;
  final bool? disabled;
  final int? openIssuesCount;
  final License? license;
  final bool? allowForking;
  final bool? isTemplate;
  final bool? webCommitSignoffRequired;
  final bool? hasPullRequests;
  final PullRequestCreationPolicy? pullRequestCreationPolicy;
  final List<String>? topics;
  final Visibility? visibility;
  final int? forks;
  final int? openIssues;
  final int? watchers;
  final DefaultBranch? defaultBranch;
  final dynamic score;

  Item({
    this.id,
    this.nodeId,
    this.name,
    this.fullName,
    this.private,
    this.owner,
    this.htmlUrl,
    this.description,
    this.fork,
    this.url,
    this.forksUrl,
    this.keysUrl,
    this.collaboratorsUrl,
    this.teamsUrl,
    this.hooksUrl,
    this.issueEventsUrl,
    this.eventsUrl,
    this.assigneesUrl,
    this.branchesUrl,
    this.tagsUrl,
    this.blobsUrl,
    this.gitTagsUrl,
    this.gitRefsUrl,
    this.treesUrl,
    this.statusesUrl,
    this.languagesUrl,
    this.stargazersUrl,
    this.contributorsUrl,
    this.subscribersUrl,
    this.subscriptionUrl,
    this.commitsUrl,
    this.gitCommitsUrl,
    this.commentsUrl,
    this.issueCommentUrl,
    this.contentsUrl,
    this.compareUrl,
    this.mergesUrl,
    this.archiveUrl,
    this.downloadsUrl,
    this.issuesUrl,
    this.pullsUrl,
    this.milestonesUrl,
    this.notificationsUrl,
    this.labelsUrl,
    this.releasesUrl,
    this.deploymentsUrl,
    this.createdAt,
    this.updatedAt,
    this.pushedAt,
    this.gitUrl,
    this.sshUrl,
    this.cloneUrl,
    this.svnUrl,
    this.homepage,
    this.size,
    this.stargazersCount,
    this.watchersCount,
    this.language,
    this.hasIssues,
    this.hasProjects,
    this.hasDownloads,
    this.hasWiki,
    this.hasPages,
    this.hasDiscussions,
    this.forksCount,
    this.mirrorUrl,
    this.archived,
    this.disabled,
    this.openIssuesCount,
    this.license,
    this.allowForking,
    this.isTemplate,
    this.webCommitSignoffRequired,
    this.hasPullRequests,
    this.pullRequestCreationPolicy,
    this.topics,
    this.visibility,
    this.forks,
    this.openIssues,
    this.watchers,
    this.defaultBranch,
    this.score,
  });

  Item copyWith({
    int? id,
    String? nodeId,
    String? name,
    String? fullName,
    bool? private,
    Owner? owner,
    String? htmlUrl,
    String? description,
    bool? fork,
    String? url,
    String? forksUrl,
    String? keysUrl,
    String? collaboratorsUrl,
    String? teamsUrl,
    String? hooksUrl,
    String? issueEventsUrl,
    String? eventsUrl,
    String? assigneesUrl,
    String? branchesUrl,
    String? tagsUrl,
    String? blobsUrl,
    String? gitTagsUrl,
    String? gitRefsUrl,
    String? treesUrl,
    String? statusesUrl,
    String? languagesUrl,
    String? stargazersUrl,
    String? contributorsUrl,
    String? subscribersUrl,
    String? subscriptionUrl,
    String? commitsUrl,
    String? gitCommitsUrl,
    String? commentsUrl,
    String? issueCommentUrl,
    String? contentsUrl,
    String? compareUrl,
    String? mergesUrl,
    String? archiveUrl,
    String? downloadsUrl,
    String? issuesUrl,
    String? pullsUrl,
    String? milestonesUrl,
    String? notificationsUrl,
    String? labelsUrl,
    String? releasesUrl,
    String? deploymentsUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? pushedAt,
    String? gitUrl,
    String? sshUrl,
    String? cloneUrl,
    String? svnUrl,
    String? homepage,
    int? size,
    int? stargazersCount,
    int? watchersCount,
    String? language,
    bool? hasIssues,
    bool? hasProjects,
    bool? hasDownloads,
    bool? hasWiki,
    bool? hasPages,
    bool? hasDiscussions,
    int? forksCount,
    dynamic mirrorUrl,
    bool? archived,
    bool? disabled,
    int? openIssuesCount,
    License? license,
    bool? allowForking,
    bool? isTemplate,
    bool? webCommitSignoffRequired,
    bool? hasPullRequests,
    PullRequestCreationPolicy? pullRequestCreationPolicy,
    List<String>? topics,
    Visibility? visibility,
    int? forks,
    int? openIssues,
    int? watchers,
    DefaultBranch? defaultBranch,
    dynamic score,
  }) => Item(
    id: id ?? this.id,
    nodeId: nodeId ?? this.nodeId,
    name: name ?? this.name,
    fullName: fullName ?? this.fullName,
    private: private ?? this.private,
    owner: owner ?? this.owner,
    htmlUrl: htmlUrl ?? this.htmlUrl,
    description: description ?? this.description,
    fork: fork ?? this.fork,
    url: url ?? this.url,
    forksUrl: forksUrl ?? this.forksUrl,
    keysUrl: keysUrl ?? this.keysUrl,
    collaboratorsUrl: collaboratorsUrl ?? this.collaboratorsUrl,
    teamsUrl: teamsUrl ?? this.teamsUrl,
    hooksUrl: hooksUrl ?? this.hooksUrl,
    issueEventsUrl: issueEventsUrl ?? this.issueEventsUrl,
    eventsUrl: eventsUrl ?? this.eventsUrl,
    assigneesUrl: assigneesUrl ?? this.assigneesUrl,
    branchesUrl: branchesUrl ?? this.branchesUrl,
    tagsUrl: tagsUrl ?? this.tagsUrl,
    blobsUrl: blobsUrl ?? this.blobsUrl,
    gitTagsUrl: gitTagsUrl ?? this.gitTagsUrl,
    gitRefsUrl: gitRefsUrl ?? this.gitRefsUrl,
    treesUrl: treesUrl ?? this.treesUrl,
    statusesUrl: statusesUrl ?? this.statusesUrl,
    languagesUrl: languagesUrl ?? this.languagesUrl,
    stargazersUrl: stargazersUrl ?? this.stargazersUrl,
    contributorsUrl: contributorsUrl ?? this.contributorsUrl,
    subscribersUrl: subscribersUrl ?? this.subscribersUrl,
    subscriptionUrl: subscriptionUrl ?? this.subscriptionUrl,
    commitsUrl: commitsUrl ?? this.commitsUrl,
    gitCommitsUrl: gitCommitsUrl ?? this.gitCommitsUrl,
    commentsUrl: commentsUrl ?? this.commentsUrl,
    issueCommentUrl: issueCommentUrl ?? this.issueCommentUrl,
    contentsUrl: contentsUrl ?? this.contentsUrl,
    compareUrl: compareUrl ?? this.compareUrl,
    mergesUrl: mergesUrl ?? this.mergesUrl,
    archiveUrl: archiveUrl ?? this.archiveUrl,
    downloadsUrl: downloadsUrl ?? this.downloadsUrl,
    issuesUrl: issuesUrl ?? this.issuesUrl,
    pullsUrl: pullsUrl ?? this.pullsUrl,
    milestonesUrl: milestonesUrl ?? this.milestonesUrl,
    notificationsUrl: notificationsUrl ?? this.notificationsUrl,
    labelsUrl: labelsUrl ?? this.labelsUrl,
    releasesUrl: releasesUrl ?? this.releasesUrl,
    deploymentsUrl: deploymentsUrl ?? this.deploymentsUrl,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    pushedAt: pushedAt ?? this.pushedAt,
    gitUrl: gitUrl ?? this.gitUrl,
    sshUrl: sshUrl ?? this.sshUrl,
    cloneUrl: cloneUrl ?? this.cloneUrl,
    svnUrl: svnUrl ?? this.svnUrl,
    homepage: homepage ?? this.homepage,
    size: size ?? this.size,
    stargazersCount: stargazersCount ?? this.stargazersCount,
    watchersCount: watchersCount ?? this.watchersCount,
    language: language ?? this.language,
    hasIssues: hasIssues ?? this.hasIssues,
    hasProjects: hasProjects ?? this.hasProjects,
    hasDownloads: hasDownloads ?? this.hasDownloads,
    hasWiki: hasWiki ?? this.hasWiki,
    hasPages: hasPages ?? this.hasPages,
    hasDiscussions: hasDiscussions ?? this.hasDiscussions,
    forksCount: forksCount ?? this.forksCount,
    mirrorUrl: mirrorUrl ?? this.mirrorUrl,
    archived: archived ?? this.archived,
    disabled: disabled ?? this.disabled,
    openIssuesCount: openIssuesCount ?? this.openIssuesCount,
    license: license ?? this.license,
    allowForking: allowForking ?? this.allowForking,
    isTemplate: isTemplate ?? this.isTemplate,
    webCommitSignoffRequired: webCommitSignoffRequired ?? this.webCommitSignoffRequired,
    hasPullRequests: hasPullRequests ?? this.hasPullRequests,
    pullRequestCreationPolicy: pullRequestCreationPolicy ?? this.pullRequestCreationPolicy,
    topics: topics ?? this.topics,
    visibility: visibility ?? this.visibility,
    forks: forks ?? this.forks,
    openIssues: openIssues ?? this.openIssues,
    watchers: watchers ?? this.watchers,
    defaultBranch: defaultBranch ?? this.defaultBranch,
    score: score ?? this.score,
  );

  factory Item.fromJson(String str) => Item.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Item.fromMap(Map<String, dynamic> json) => Item(
    id: json['id'],
    nodeId: json['node_id'],
    name: json['name'],
    fullName: json['full_name'],
    private: json['private'],
    owner: json['owner'] == null ? null : Owner.fromMap(json['owner']),
    htmlUrl: json['html_url'],
    description: json['description'],
    fork: json['fork'],
    url: json['url'],
    forksUrl: json['forks_url'],
    keysUrl: json['keys_url'],
    collaboratorsUrl: json['collaborators_url'],
    teamsUrl: json['teams_url'],
    hooksUrl: json['hooks_url'],
    issueEventsUrl: json['issue_events_url'],
    eventsUrl: json['events_url'],
    assigneesUrl: json['assignees_url'],
    branchesUrl: json['branches_url'],
    tagsUrl: json['tags_url'],
    blobsUrl: json['blobs_url'],
    gitTagsUrl: json['git_tags_url'],
    gitRefsUrl: json['git_refs_url'],
    treesUrl: json['trees_url'],
    statusesUrl: json['statuses_url'],
    languagesUrl: json['languages_url'],
    stargazersUrl: json['stargazers_url'],
    contributorsUrl: json['contributors_url'],
    subscribersUrl: json['subscribers_url'],
    subscriptionUrl: json['subscription_url'],
    commitsUrl: json['commits_url'],
    gitCommitsUrl: json['git_commits_url'],
    commentsUrl: json['comments_url'],
    issueCommentUrl: json['issue_comment_url'],
    contentsUrl: json['contents_url'],
    compareUrl: json['compare_url'],
    mergesUrl: json['merges_url'],
    archiveUrl: json['archive_url'],
    downloadsUrl: json['downloads_url'],
    issuesUrl: json['issues_url'],
    pullsUrl: json['pulls_url'],
    milestonesUrl: json['milestones_url'],
    notificationsUrl: json['notifications_url'],
    labelsUrl: json['labels_url'],
    releasesUrl: json['releases_url'],
    deploymentsUrl: json['deployments_url'],
    createdAt: json['created_at'] == null ? null : DateTime.parse(json['created_at']),
    updatedAt: json['updated_at'] == null ? null : DateTime.parse(json['updated_at']),
    pushedAt: json['pushed_at'] == null ? null : DateTime.parse(json['pushed_at']),
    gitUrl: json['git_url'],
    sshUrl: json['ssh_url'],
    cloneUrl: json['clone_url'],
    svnUrl: json['svn_url'],
    homepage: json['homepage'],
    size: json['size'],
    stargazersCount: json['stargazers_count'],
    watchersCount: json['watchers_count'],
    language: json['language'],
    hasIssues: json['has_issues'],
    hasProjects: json['has_projects'],
    hasDownloads: json['has_downloads'],
    hasWiki: json['has_wiki'],
    hasPages: json['has_pages'],
    hasDiscussions: json['has_discussions'],
    forksCount: json['forks_count'],
    mirrorUrl: json['mirror_url'],
    archived: json['archived'],
    disabled: json['disabled'],
    openIssuesCount: json['open_issues_count'],
    license: json['license'] == null ? null : License.fromMap(json['license']),
    allowForking: json['allow_forking'],
    isTemplate: json['is_template'],
    webCommitSignoffRequired: json['web_commit_signoff_required'],
    hasPullRequests: json['has_pull_requests'],
    pullRequestCreationPolicy: pullRequestCreationPolicyValues.map[json['pull_request_creation_policy']],
    topics: json['topics'] == null ? [] : List<String>.from(json['topics']!.map((x) => x)),
    visibility: visibilityValues.map[json['visibility']],
    forks: json['forks'],
    openIssues: json['open_issues'],
    watchers: json['watchers'],
    defaultBranch: defaultBranchValues.map[json['default_branch']],
    score: json['score'],
  );

  Map<String, dynamic> toMap() => {
    'id': id,
    'node_id': nodeId,
    'name': name,
    'full_name': fullName,
    'private': private,
    'owner': owner?.toMap(),
    'html_url': htmlUrl,
    'description': description,
    'fork': fork,
    'url': url,
    'forks_url': forksUrl,
    'keys_url': keysUrl,
    'collaborators_url': collaboratorsUrl,
    'teams_url': teamsUrl,
    'hooks_url': hooksUrl,
    'issue_events_url': issueEventsUrl,
    'events_url': eventsUrl,
    'assignees_url': assigneesUrl,
    'branches_url': branchesUrl,
    'tags_url': tagsUrl,
    'blobs_url': blobsUrl,
    'git_tags_url': gitTagsUrl,
    'git_refs_url': gitRefsUrl,
    'trees_url': treesUrl,
    'statuses_url': statusesUrl,
    'languages_url': languagesUrl,
    'stargazers_url': stargazersUrl,
    'contributors_url': contributorsUrl,
    'subscribers_url': subscribersUrl,
    'subscription_url': subscriptionUrl,
    'commits_url': commitsUrl,
    'git_commits_url': gitCommitsUrl,
    'comments_url': commentsUrl,
    'issue_comment_url': issueCommentUrl,
    'contents_url': contentsUrl,
    'compare_url': compareUrl,
    'merges_url': mergesUrl,
    'archive_url': archiveUrl,
    'downloads_url': downloadsUrl,
    'issues_url': issuesUrl,
    'pulls_url': pullsUrl,
    'milestones_url': milestonesUrl,
    'notifications_url': notificationsUrl,
    'labels_url': labelsUrl,
    'releases_url': releasesUrl,
    'deployments_url': deploymentsUrl,
    'created_at': createdAt?.toIso8601String(),
    'updated_at': updatedAt?.toIso8601String(),
    'pushed_at': pushedAt?.toIso8601String(),
    'git_url': gitUrl,
    'ssh_url': sshUrl,
    'clone_url': cloneUrl,
    'svn_url': svnUrl,
    'homepage': homepage,
    'size': size,
    'stargazers_count': stargazersCount,
    'watchers_count': watchersCount,
    'language': language,
    'has_issues': hasIssues,
    'has_projects': hasProjects,
    'has_downloads': hasDownloads,
    'has_wiki': hasWiki,
    'has_pages': hasPages,
    'has_discussions': hasDiscussions,
    'forks_count': forksCount,
    'mirror_url': mirrorUrl,
    'archived': archived,
    'disabled': disabled,
    'open_issues_count': openIssuesCount,
    'license': license?.toMap(),
    'allow_forking': allowForking,
    'is_template': isTemplate,
    'web_commit_signoff_required': webCommitSignoffRequired,
    'has_pull_requests': hasPullRequests,
    'pull_request_creation_policy': pullRequestCreationPolicyValues.reverse[pullRequestCreationPolicy],
    'topics': topics == null ? [] : List<dynamic>.from(topics!.map((x) => x)),
    'visibility': visibilityValues.reverse[visibility],
    'forks': forks,
    'open_issues': openIssues,
    'watchers': watchers,
    'default_branch': defaultBranchValues.reverse[defaultBranch],
    'score': score,
  };
}

enum DefaultBranch { MAIN, MASTER }

final defaultBranchValues = EnumValues({'main': DefaultBranch.MAIN, 'master': DefaultBranch.MASTER});

class License {
  final String? key;
  final String? name;
  final String? spdxId;
  final String? url;
  final String? nodeId;

  License({this.key, this.name, this.spdxId, this.url, this.nodeId});

  License copyWith({String? key, String? name, String? spdxId, String? url, String? nodeId}) =>
      License(key: key ?? this.key, name: name ?? this.name, spdxId: spdxId ?? this.spdxId, url: url ?? this.url, nodeId: nodeId ?? this.nodeId);

  factory License.fromJson(String str) => License.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory License.fromMap(Map<String, dynamic> json) =>
      License(key: json['key'], name: json['name'], spdxId: json['spdx_id'], url: json['url'], nodeId: json['node_id']);

  Map<String, dynamic> toMap() => {'key': key, 'name': name, 'spdx_id': spdxId, 'url': url, 'node_id': nodeId};
}

class Owner {
  final String? login;
  final int? id;
  final String? nodeId;
  final String? avatarUrl;
  final String? gravatarId;
  final String? url;
  final String? htmlUrl;
  final String? followersUrl;
  final String? followingUrl;
  final String? gistsUrl;
  final String? starredUrl;
  final String? subscriptionsUrl;
  final String? organizationsUrl;
  final String? reposUrl;
  final String? eventsUrl;
  final String? receivedEventsUrl;
  final Type? type;
  final Visibility? userViewType;
  final bool? siteAdmin;

  Owner({
    this.login,
    this.id,
    this.nodeId,
    this.avatarUrl,
    this.gravatarId,
    this.url,
    this.htmlUrl,
    this.followersUrl,
    this.followingUrl,
    this.gistsUrl,
    this.starredUrl,
    this.subscriptionsUrl,
    this.organizationsUrl,
    this.reposUrl,
    this.eventsUrl,
    this.receivedEventsUrl,
    this.type,
    this.userViewType,
    this.siteAdmin,
  });

  Owner copyWith({
    String? login,
    int? id,
    String? nodeId,
    String? avatarUrl,
    String? gravatarId,
    String? url,
    String? htmlUrl,
    String? followersUrl,
    String? followingUrl,
    String? gistsUrl,
    String? starredUrl,
    String? subscriptionsUrl,
    String? organizationsUrl,
    String? reposUrl,
    String? eventsUrl,
    String? receivedEventsUrl,
    Type? type,
    Visibility? userViewType,
    bool? siteAdmin,
  }) => Owner(
    login: login ?? this.login,
    id: id ?? this.id,
    nodeId: nodeId ?? this.nodeId,
    avatarUrl: avatarUrl ?? this.avatarUrl,
    gravatarId: gravatarId ?? this.gravatarId,
    url: url ?? this.url,
    htmlUrl: htmlUrl ?? this.htmlUrl,
    followersUrl: followersUrl ?? this.followersUrl,
    followingUrl: followingUrl ?? this.followingUrl,
    gistsUrl: gistsUrl ?? this.gistsUrl,
    starredUrl: starredUrl ?? this.starredUrl,
    subscriptionsUrl: subscriptionsUrl ?? this.subscriptionsUrl,
    organizationsUrl: organizationsUrl ?? this.organizationsUrl,
    reposUrl: reposUrl ?? this.reposUrl,
    eventsUrl: eventsUrl ?? this.eventsUrl,
    receivedEventsUrl: receivedEventsUrl ?? this.receivedEventsUrl,
    type: type ?? this.type,
    userViewType: userViewType ?? this.userViewType,
    siteAdmin: siteAdmin ?? this.siteAdmin,
  );

  factory Owner.fromJson(String str) => Owner.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Owner.fromMap(Map<String, dynamic> json) => Owner(
    login: json['login'],
    id: json['id'],
    nodeId: json['node_id'],
    avatarUrl: json['avatar_url'],
    gravatarId: json['gravatar_id'],
    url: json['url'],
    htmlUrl: json['html_url'],
    followersUrl: json['followers_url'],
    followingUrl: json['following_url'],
    gistsUrl: json['gists_url'],
    starredUrl: json['starred_url'],
    subscriptionsUrl: json['subscriptions_url'],
    organizationsUrl: json['organizations_url'],
    reposUrl: json['repos_url'],
    eventsUrl: json['events_url'],
    receivedEventsUrl: json['received_events_url'],
    type: typeValues.map[json['type']],
    userViewType: visibilityValues.map[json['user_view_type']],
    siteAdmin: json['site_admin'],
  );

  Map<String, dynamic> toMap() => {
    'login': login,
    'id': id,
    'node_id': nodeId,
    'avatar_url': avatarUrl,
    'gravatar_id': gravatarId,
    'url': url,
    'html_url': htmlUrl,
    'followers_url': followersUrl,
    'following_url': followingUrl,
    'gists_url': gistsUrl,
    'starred_url': starredUrl,
    'subscriptions_url': subscriptionsUrl,
    'organizations_url': organizationsUrl,
    'repos_url': reposUrl,
    'events_url': eventsUrl,
    'received_events_url': receivedEventsUrl,
    'type': typeValues.reverse[type],
    'user_view_type': visibilityValues.reverse[userViewType],
    'site_admin': siteAdmin,
  };
}

enum Type { ORGANIZATION, USER }

final typeValues = EnumValues({'Organization': Type.ORGANIZATION, 'User': Type.USER});

enum Visibility { PUBLIC }

final visibilityValues = EnumValues({'public': Visibility.PUBLIC});

enum PullRequestCreationPolicy { ALL }

final pullRequestCreationPolicyValues = EnumValues({'all': PullRequestCreationPolicy.ALL});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
