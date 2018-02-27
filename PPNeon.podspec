Pod::Spec.new do |s|
  s.name         = 'PPNeon'
  s.summary      = 'High performance layout framework for iOS/OSX.'
  s.version      = '0.0.2'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { 'silencedev' => 'silence007pp@163.com' }
  s.social_media_url = 'https://silencedev.github.io'
  s.homepage     = 'https://github.com/silencedev/PPNeon'

  s.ios.deployment_target = '6.0'

  s.source       = { :git => 'https://github.com/silencedev/PPNeon.git', :tag => s.version.to_s }
  
  s.requires_arc = true
  s.source_files = 'PPNeon/**/*.{h,m}'
  s.public_header_files = 'PPNeon/**/*.{h}'
  
  s.frameworks = 'UIKit'

end
