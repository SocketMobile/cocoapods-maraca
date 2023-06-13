#
# Be sure to run `pod lib lint Maraca.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MaracaPod'
  s.version          = '1.0.10'
  s.summary          = 'Maraca bridges a web application with the CaptureSDK cocoapods framework.'
  s.swift_version    = '5.0'
  s.description      = <<-DESC
Use Socket Mobile barcode scanners and RFID readers and writers with your web application by bridging iOS WKWebView with CaptureSDK
                       DESC

  s.homepage         = 'https://github.com/SocketMobile/cocoapods-maraca'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { "Socket" => "developers@socketmobile.com" }
  s.source           = { :git => "https://github.com/SocketMobile/cocoapods-maraca.git", :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'
  s.platform = :ios, "11.0"
  
  s.static_framework = true

  s.source_files = 'Classes/*.{h,m,swift}'
  
  s.pod_target_xcconfig = { 'ONLY_ACTIVE_ARCH' => 'YES' }
  s.user_target_xcconfig = { 'ONLY_ACTIVE_ARCH' => 'YES' }
  
  s.dependency 'CaptureSDK', '1.6.39'
end
