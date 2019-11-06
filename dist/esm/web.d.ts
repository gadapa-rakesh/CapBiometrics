import { WebPlugin } from '@capacitor/core';
import { CapBiometricsPlugin } from './definitions';
export declare class CapBiometricsWeb extends WebPlugin implements CapBiometricsPlugin {
    constructor();
    isHardwareSupported(options: {
        value: string;
    }): Promise<{
        value: string;
    }>;
}
declare const CapBiometrics: CapBiometricsWeb;
export { CapBiometrics };
