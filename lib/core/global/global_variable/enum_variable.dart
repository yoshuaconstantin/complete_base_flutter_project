import 'package:flutter/material.dart';

enum SharedPreferenceKey {
  MAIN_BASE,
  SECONDARY_BASE,
  SESSION_ID,
  USER_ACTIVE,
  SESSION_EXPIRED_AT,
  USER_CODE,
  COMPANY_CODE,
  DARKMODE,
  EMAIL_OTP,
  OTP_REGISTER,
  OTP_FORGET_PASSWORD,
  OTP_VALIDATION,
  OTP_DURATION,
  REGISTER_KEY,
}

enum Flavor { prod, dev, stg, release }

enum Environment {
  dev('_dev'),
  stg('_stg'),
  prod('_prod'),
  release('--releaseName');

  const Environment(this.value);
  final String value;

  static Environment fromString(String value) {
    return Environment.values.firstWhere((e) => e.value == value);
  }
}

enum EnvironmentBaseUrl {
  dev('-:8080/api/dev/'),
  stg('-:8080/api/stg/'),
  prod('-:8080/api/prod/'),
  release('-:8080/api/release/');

  const EnvironmentBaseUrl(this.value);
  final String value;

  static EnvironmentBaseUrl fromString(String value) {
    return EnvironmentBaseUrl.values.firstWhere((e) => e.value == value);
  }
}
