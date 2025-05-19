import Flutter
import UIKit

public class SecureJwtPlugin: NSObject, FlutterPlugin, SecureJwtHostApi {
    func generateKey(algorithm: String, keyId: String?, completion: @escaping (Result<String, any Error>) -> Void) {
        return completion(Result.success("generateKey"))
    }
    
    func sign(header: String, payload: String, keyId: String, completion: @escaping (Result<String, any Error>) -> Void) {
        return completion(Result.success("sign"))
    }
    
    func verify(jwt: String, completion: @escaping (Result<String, any Error>) -> Void) {
        return completion(Result.success("verify"))
    }
    
  public static func register(with registrar: FlutterPluginRegistrar) {
    let binaryMessenger = registrar.messenger()
      let instance = SecureJwtPlugin()
      SecureJwtHostApiSetup.setUp(binaryMessenger: binaryMessenger, api: instance)
  }
}
