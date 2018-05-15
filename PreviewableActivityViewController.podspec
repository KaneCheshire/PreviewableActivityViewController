
Pod::Spec.new do |s|
  s.name             = 'PreviewableActivityViewController'
  s.version          = '1.0'
  s.summary          = 'A `UIActivityViewController` that provides the ability to show a preview of the image being shared.'
  s.description      = <<-DESC
A `UIActivityViewController` that provides the ability to show a preview of the image being shared. There are some configurations but by default you only need to instantiate it the same way as a regular `UIActivityViewController` so there's no extra code to write.
                       DESC

  s.homepage         = 'https://github.com/kanecheshire/PreviewableActivityViewController'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Kane Cheshire' => 'kane.cheshire@googlemail.com' }
  s.source           = { :git => 'https://github.com/kanecheshire/PreviewableActivityViewController.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/kanecheshire'
  s.ios.deployment_target = '9.0'
  s.source_files = 'PreviewableActivityViewController/Classes/**/*'

end
