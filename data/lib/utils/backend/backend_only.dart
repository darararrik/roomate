/// Marks temporary data-layer code that emulates backend behavior in mocks.
///
/// Such implementations are acceptable while the project works without a real
/// API, but they should be moved to the backend or removed after integration.
class BackendOnly {
  const BackendOnly([this.reason = '']);

  final String reason;
}
