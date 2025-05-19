import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'secure_jwt_method_channel.dart';

abstract class SecureJwtPlatform extends PlatformInterface {
  /// Constructs a SecureJwtPlatform.
  SecureJwtPlatform() : super(token: _token);

  static final Object _token = Object();

  static SecureJwtPlatform _instance = MethodChannelSecureJwt();

  /// The default instance of [SecureJwtPlatform] to use.
  ///
  /// Defaults to [MethodChannelSecureJwt].
  static SecureJwtPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SecureJwtPlatform] when
  /// they register themselves.
  static set instance(SecureJwtPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
