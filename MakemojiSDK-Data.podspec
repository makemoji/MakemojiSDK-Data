Pod::Spec.new do |s|
  s.name             = 'MakemojiSDK-Data'
  s.version          = '1.0.0'
  s.summary          = 'SDK to connect to the Makemoji Data framework'
  s.description      = <<-DESC
	SDK to connect to the Makemoji Data framework
                       DESC

  s.homepage         = 'https://github.com/Makemoji/MakemojiSDK-Data'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Makemoji' => 'steve.frederick.lp@gmail.com' }
  s.source           = { :git => 'https://github.com/Makemoji/MakemojiSDK-Data.git', :tag => s.version.to_s }
  s.frameworks = 'Foundation', 'SystemConfiguration', 'AdSupport'
  s.ios.deployment_target = '8.0'
  s.source_files = 'MakemojiSDK-Data/Classes/**/*'

end
