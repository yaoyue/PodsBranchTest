#
#  Be sure to run `pod spec lint SDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "YYSDK"
  spec.version      = "1.0.4"
  spec.summary      = "测试 YYSDK"
  spec.source       = { :git => 'https://github.com/yaoyue/PodsBranchTest.git',:tag => "v#{spec.version}" }
  spec.homepage     = "https://github.com/yaoyue/PodsBranchTest"
  spec.author       = { "yaoyue" => "chuqsh1991@foxmail.com" }
  spec.platform     = :ios, "8.0"
  spec.license      = { :type => "Apache License, Version 2.0" }
  spec.default_subspec = 'core'
  spec.frameworks   = 'UIKit', 'Foundation', 'SystemConfiguration', 'CoreTelephony', 'CoreGraphics', 'QuartzCore', 'CoreLocation'
  spec.libraries    = 'sqlite3', 'z'



  
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"



  spec.subspec 'core' do |c|
    c.source_files  =  "YYSDK/*.{h,m}"
    c.public_header_files = "YYSDK/BaseMode.h"
  end

    # 禁用 GPS 定位采集，相关代码不参与编译，不引入 CoreLocation framework
  spec.subspec 'DISABLE_TRACK_GPS' do |f|
    f.frameworks = 'UIKit', 'Foundation', 'SystemConfiguration', 'CoreTelephony'
    f.dependency 'YYSDK/core'
    f.pod_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'SENSORS_ANALYTICS_DISABLE_TRACK_GPS=1'}
  end


end
