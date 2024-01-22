Pod::Spec.new do |s|
  s.name             = 'TGPlatformCore'
  s.version          = '0.0.1'
  s.summary          = 'TGPlatformCore framework'
  s.description      = 'Treenod TGPlatformCore framework'
  s.homepage         = 'https://www.treenod.com/'
  s.license          = { :type => '', :file => '#{Dir.pwd}/../../LICENSE' }
  s.author           = 'Treenod'

  s.platform = :ios, "12.0"
  s.swift_versions = '5.0'

  s.source = { :http => 'https://static.treenod.com/cocoapods/TGPlatformCore/0.0.1/TGPlatformCore.xcframework.zip' }

  s.vendored_frameworks = "TGPlatformCore.xcframework"
  
  s.ios.deployment_target = '12.0'

  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'arm64 x86_64' }
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  s.requires_arc = true
end
