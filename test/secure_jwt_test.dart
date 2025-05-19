import 'package:flutter_test/flutter_test.dart';
import 'package:secure_jwt/secure_jwt.dart';
import 'package:secure_jwt/secure_jwt_platform_interface.dart';
import 'package:secure_jwt/secure_jwt_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockSecureJwtPlatform
    with MockPlatformInterfaceMixin
    implements SecureJwtPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final SecureJwtPlatform initialPlatform = SecureJwtPlatform.instance;

  test('$MethodChannelSecureJwt is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSecureJwt>());
  });

  test('getPlatformVersion', () async {
    SecureJwt secureJwtPlugin = SecureJwt();
    MockSecureJwtPlatform fakePlatform = MockSecureJwtPlatform();
    SecureJwtPlatform.instance = fakePlatform;

    expect(await secureJwtPlugin.getPlatformVersion(), '42');
  });
}
