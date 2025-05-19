import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'secure_jwt_platform_interface.dart';

/// An implementation of [SecureJwtPlatform] that uses method channels.
class MethodChannelSecureJwt extends SecureJwtPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('secure_jwt');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
