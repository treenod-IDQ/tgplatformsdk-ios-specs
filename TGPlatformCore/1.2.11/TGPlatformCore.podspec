Pod::Spec.new do |s|
  s.name             = 'TGPlatformCore'
  s.version          = '1.2.11'
  s.summary          = "#{s.name} framework"
  s.description      = "Treenod #{s.name} framework"
  s.homepage         = 'https://www.treenod.com/'
  s.license          = { :type => '', :file => '#{Dir.pwd}/../../LICENSE' }
  s.author           = 'Treenod'

  s.platform = :ios, "12.0"
  s.swift_versions = '5.0'

  s.source = { :http => "https://static.treenod.com/tgplatform/ios/#{s.name}/#{s.version}/#{s.name}.xcframework.zip" }

  s.vendored_frameworks = "#{s.name}.xcframework"
  
  s.ios.deployment_target = '12.0'

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.dependency 'Alamofire', '5.6.4'
end
