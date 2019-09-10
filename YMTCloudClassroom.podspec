#
# Be sure to run `pod lib lint YMTCloudClassroom.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YMTCloudClassroom'
  s.version          = '0.1.8.17'
  s.summary          = 'CloudClassroom 2.0 SDK'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "溢米辅导 云教师 2.0 SDK"

  s.homepage         = 'https://github.com/SendomLog/YMTCloudClassroom'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhangqian' => 'qian.zhang@yimifudao.com' }
  s.source           = { :git => 'https://github.com/SendomLog/YMTCloudClassroom.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  
  s.resources = 'YMTCloudClassroom/Assets/**/*'
  s.vendored_frameworks = "YMTCloudClassroom/Framework/YMTCloudClassroom.framework"
  s.public_header_files = 'YMTCloudClassroom/Framework/YMTCloudClassroom.framework/**/*.h'

  # s.resource_bundles = {
  #   'YMTCloudClassroom' => ['YMTCloudClassroom/Assets/*.png']
  # }

  s.library = 'c++'
  s.frameworks = 'WebKit'

  s.dependency 'YMFlow'
  s.dependency 'AFNetworking'
  s.dependency 'MJExtension'
  s.dependency 'Masonry'
  s.dependency 'AgoraRtcEngine_iOS','2.3.1'
  s.dependency 'TXLiteAVSDK_TRTC', '6.3.7088'
  
  s.user_target_xcconfig = { 
    'ARCHS[sdk=iphonesimulator*]' => '$(ARCHS_STANDARD_64_BIT)',
    'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/YMTCloudClassroom/YMTCloudClassroom/YMTCloudClassroom.framework/Headers/'
  }
  
  s.pod_target_xcconfig = {
      "HEADER_SEARCH_PATHS" => "${PODS_ROOT}",
  }

end
