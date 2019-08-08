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

  spec.name         = "SDK"
  spec.version      = "1.0.0"
  spec.summary      = "测试 SDK"
    s.source       = { :git => 'https://github.com/sensorsdata/sa-sdk-ios.git', :tag => "v#{s.version}" } 
      s.author = { "yaoyue" => "chuqsh1991@foxmail.com" }
  s.platform = :ios, "8.0"



  spec.homepage     = "http://www.sensorsdata.cn"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"



  s.subspec 'core' do |c|
    c.source_files  =  "SDK/*.{h,m}"
    c.public_header_files = "SDK/BaseMode.h"
  end

end
