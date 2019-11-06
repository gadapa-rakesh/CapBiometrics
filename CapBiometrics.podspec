
  Pod::Spec.new do |s|
    s.name = 'CapBiometrics'
    s.version = '0.0.1'
    s.summary = 'A plugin to query meta information from device'
    s.license = 'MIT'
    s.homepage = 'https://github.com/gadapa-rakesh/CapBiometrics.git'
    s.author = 'Rakesh'
    s.source = { :git => 'https://github.com/gadapa-rakesh/CapBiometrics.git', :tag => s.version.to_s }
    s.source_files = 'ios/Plugin/**/*.{swift,h,m,c,cc,mm,cpp}'
    s.ios.deployment_target  = '11.0'
    s.dependency 'Capacitor'
  end