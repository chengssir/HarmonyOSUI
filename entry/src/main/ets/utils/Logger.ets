

import hilog from '@ohos.hilog';

let domain: number = 0xFF00;
let prefix: string = 'HarmonyOSUI';
let format: string = `%{public}s, %{public}s`;

export class Logger {

  static info(...args: string[]) {
    hilog.info(domain, prefix, format, args);
  }
}