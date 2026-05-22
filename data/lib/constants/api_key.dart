class ApiKeyConstants {
  static const requiresAuth = 'requiresAuth';
}

class ApiUrlConstants {
  static const verifySms = '/auth/sms/verify';
  static const signInByPhone = '/auth/sms/request';
  static const refreshToken = '/auth/refresh';
  static const logout = '/auth/logout';
  static const adFormOptions = '/ads/tags';
  static const groupFormOptions = '/groups/tags';
  static const ads = '/ads';
  static String adsId(String id) => '/ads/$id';
  static String adsApply(String adId) => '${adsId(adId)}/apply';
  static const myAds = '/my/ads';
  static const myAdApplications = '/my/ad-applications';
  static String myAdApplication(String applicationId) =>
      '$myAdApplications/$applicationId';
  static String myAdApplicationReject(String applicationId) =>
      '${myAdApplication(applicationId)}/reject';
  static String myAdApplicationAccept(String applicationId) =>
      '${myAdApplication(applicationId)}/accept';

  static const filters = '/ads/filters';
  static const groups = '/groups';
  static const me = '/profile/me';
  static const preferenceTagsCatalog = '/profile/tags';
  static const cities = '/locations/cities';
  static const locationsSuggest = '/locations/suggest';

  static String group(String groupId) => '$groups/$groupId';
  static String groupConditions(String groupId) =>
      '$groups/$groupId/conditions';
  static String groupApply(String groupId) => '$groups/$groupId/apply';
  static String groupFavorite(String groupId) => '$groups/$groupId/favorite';
  static String groupParticipant(String participantId) =>
      '/group-participants/$participantId';
}
