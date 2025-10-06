Pod::Spec.new do |spec|
  spec.name = "ParakeySDK"
  spec.version = "1.1.2"
  spec.summary = "The Parakey SDK allows your application to unlock Parakey Devices"
  spec.homepage = "https://www.parakey.co"
  spec.license = { :type => 'PROPRIETARY', :file => 'LICENSE.md' }
  spec.author = { "Parakey AB" => "support@parakey.co" }
  spec.swift_version = ['5.0', '6.0']
  spec.platform = :ios, "15.0"
  spec.source = { :git => "https://github.com/parakey-ab/parakey-ios.git", :tag => "#{spec.version}" }
  spec.vendored_frameworks = "frameworks/ParakeySDK.xcframework"
end
