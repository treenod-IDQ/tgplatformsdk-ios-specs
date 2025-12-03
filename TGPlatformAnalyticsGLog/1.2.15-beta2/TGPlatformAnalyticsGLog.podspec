Pod::Spec.new do |s|
  s.name             = 'TGPlatformAnalyticsGLog'
  s.version          = '1.2.15-beta2'
  s.summary          = "#{s.name} framework"
  s.description      = "Treenod #{s.name} framework"
  s.homepage         = 'https://www.treenod.com/'
  s.license          = { :type => '', :file => '#{Dir.pwd}/../../LICENSE' }
  s.author           = 'Treenod'

  s.platform = :ios, "12.0"
  s.swift_versions = '5.0'

  # Remote
  s.source = { :http => "https://static.treenod.com/tgplatform/ios/#{s.name}/#{s.version}/#{s.name}.xcframework.zip" }
  
  s.vendored_frameworks = "#{s.name}.xcframework"

  # Local
  #s.source = { :git => "file://#{__dir__}/#{s.name}" }
  #s.source_files = "#{s.name}/#{s.name}/**/*.swift"  

  s.ios.deployment_target = '12.0'

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.dependency 'TGPlatformAnalyticsCore', "#{s.version}"
  s.dependency 'TGPlatformService', "#{s.version}"
end
