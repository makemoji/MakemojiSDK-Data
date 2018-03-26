#
# Be sure to run `pod lib lint MakemojiSDK-Data.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MakemojiSDK-Data'
  s.version          = '0.1.0'
  s.summary          = 'SDK to connect to the Makemoji Data framework'
  s.description      = <<-DESC

                       DESC

  s.homepage         = 'https://github.com/Makemoji/MakemojiSDK-Data'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Makemoji' => 'steve.frederick.lp@gmail.com' }
  s.source           = { :git => 'https://github.com/Makemoji/MakemojiSDK-Data.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = 'MakemojiSDK-Data/Classes/**/*'

end
