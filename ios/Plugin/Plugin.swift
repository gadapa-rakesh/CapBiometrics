import Foundation
import Capacitor
import LocalAuthentication

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitor.ionicframework.com/docs/plugins/ios
 */
@objc(CapBiometrics)
public class CapBiometrics: CAPPlugin {
    enum BiometricType: String {
        case none
        case touchID
        case faceID
    }
    
    @objc func isHardwareSupported(_ call: CAPPluginCall) {
        var error: NSError?
        let context = LAContext()

        let result = context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error)
        
        if result {
            call.success([
                "isHardwareSupported": true
            ])
        } else {
            switch error?.code {
            case LAError.biometryLockout.rawValue,
                 LAError.biometryNotEnrolled.rawValue:
                call.success([
                    "isHardwareSupported": true
                ])
            default:
                call.success([
                    "isHardwareSupported": false
                ])
            }
        }
    }
}
