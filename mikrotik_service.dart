class MikroTikService {
  Future<void> connect({
    required String host,
    required String username,
    required String password,
    int port = 8728,
  }) async {
    // Placeholder for MikroTik API integration.
  }

  Future<List<Map<String, dynamic>>> getHotspotUsers() async {
    return [];
  }

  Future<void> addHotspotUser({
    required String username,
    required String password,
    required String profile,
  }) async {
    // Placeholder
  }
}
