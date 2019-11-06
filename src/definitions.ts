declare module "@capacitor/core" {
  interface PluginRegistry {
    CapBiometrics: CapBiometricsPlugin;
  }
}

export interface CapBiometricsPlugin {
  isHardwareSupported(options: { value: string }): Promise<{value: string}>;
}
