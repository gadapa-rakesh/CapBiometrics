import { WebPlugin } from '@capacitor/core';
import { CapBiometricsPlugin } from './definitions';

export class CapBiometricsWeb extends WebPlugin implements CapBiometricsPlugin {
  constructor() {
    super({
      name: 'CapBiometrics',
      platforms: ['web']
    });
  }

  async isHardwareSupported(options: { value: string }): Promise<{value: string}> {
    console.log('ECHO', options);
    return options;
  }
}

const CapBiometrics = new CapBiometricsWeb();

export { CapBiometrics };

import { registerWebPlugin } from '@capacitor/core';
registerWebPlugin(CapBiometrics);
