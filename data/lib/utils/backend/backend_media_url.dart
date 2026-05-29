String resolveBackendMediaUrl(
  String url, {
  required String baseUrl,
}) {
  final normalizedUrl = url.trim();
  if (normalizedUrl.isEmpty) {
    return '';
  }

  if (normalizedUrl.startsWith('http://') ||
      normalizedUrl.startsWith('https://')) {
    return normalizedUrl;
  }

  if (baseUrl.isEmpty) {
    return normalizedUrl;
  }

  if (normalizedUrl.startsWith('/')) {
    return '$baseUrl$normalizedUrl';
  }

  return '$baseUrl/$normalizedUrl';
}

List<String> resolveBackendMediaUrls(
  List<String> urls, {
  required String baseUrl,
}) {
  return urls
      .map((url) => resolveBackendMediaUrl(url, baseUrl: baseUrl))
      .toList();
}
