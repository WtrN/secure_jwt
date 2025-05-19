import 'package:pigeon/pigeon.dart';

// #docregion config
@ConfigurePigeon(PigeonOptions(
  dartOut: 'lib/src/messages.g.dart',
  dartOptions: DartOptions(),
  kotlinOut:
      'android/src/main/kotlin/com/example/secure_jwt/Messages.g.kt',
  kotlinOptions: KotlinOptions(),
  swiftOut: 'ios/Classes/Messages.g.swift',
  swiftOptions: SwiftOptions(),
  dartPackageName: 'secure_jwt',
))

@HostApi()
abstract class SecureJwtHostApi {
  @async
  String generateKey(String algorithm, String? keyId);

  @async
  String sign(String header, String payload, String keyId);

  @async
  String verify(String jwt);
}