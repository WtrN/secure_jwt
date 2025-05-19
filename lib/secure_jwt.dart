
import 'secure_jwt_platform_interface.dart';

class SecureJwt {
  Future<String?> getPlatformVersion() {
    return SecureJwtPlatform.instance.getPlatformVersion();
  }
}
