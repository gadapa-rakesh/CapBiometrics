package com.cap.biometrics.plugin;

import android.Manifest;
import android.support.v4.hardware.fingerprint.FingerprintManagerCompat;

import com.getcapacitor.JSObject;
import com.getcapacitor.NativePlugin;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;

@NativePlugin(
        permissions = {
                Manifest.permission.USE_BIOMETRIC
        }
)
public class CapBiometrics extends Plugin {

    @PluginMethod()
    public void isHardwareSupported(PluginCall call) {
        pluginRequestAllPermissions();
        FingerprintManagerCompat fmc = FingerprintManagerCompat.from(getContext());
        JSObject result = new JSObject();
        result.put("isHardwareSupported", fmc.isHardwareDetected());
        call.success(result);
    }
}
