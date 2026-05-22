enum MyAdStatus {
  unknown(''),
  active('active'),
  onModeration('on_moderation'),
  archived('archived');

  const MyAdStatus(this.value);

  final String value;

  static MyAdStatus fromValue(String value) {
    for (final status in values) {
      if (status.value == value) {
        return status;
      }
    }

    return unknown;
  }
}

enum AdApplicationStatus {
  unknown(''),
  pending('pending'),
  accepted('accepted'),
  rejected('rejected');

  const AdApplicationStatus(this.value);

  final String value;

  bool get isFinalized {
    return switch (this) {
      accepted || rejected => true,
      pending || unknown => false,
    };
  }

  static AdApplicationStatus fromValue(String value) {
    for (final status in values) {
      if (status.value == value) {
        return status;
      }
    }

    return unknown;
  }
}
