
Pod::Spec.new do |s|
  s.name             = 'PreviewableActivityViewController'
  s.version          = '1.0'
  s.summary          = 'A `UIActivityViewController` that provides the ability to show a preview of the image being shared.'
  s.description      = <<-DESC
A `UIActivityViewController` that provides the ability to show a preview of the image being shared.
                       DESC

  s.homepage         = 'https://github.com/Kane Cheshire/PreviewableActivityViewController'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Kane Cheshire' => 'kane.cheshire@googlemail.com' }
  s.source           = { :git => 'https://github.com/KaneCheshire/PreviewableActivityViewController.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/kanecheshire'
  s.ios.deployment_target = '9.0'
  s.source_files = 'PreviewableActivityViewController/Classes/**/*'

end
