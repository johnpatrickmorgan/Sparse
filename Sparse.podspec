
Pod::Spec.new do |s|
  s.name             = 'Sparse'
  s.version          = '0.4.1'
  s.swift_version    = '5.1'
  s.summary          = 'Sparse is a simple parsing library written in Swift.'
  s.description      = <<-DESC
                        Sparse is a simple parsing library, written in Swift. It is based
                        on the parser-combinator approach as used by Haskell's Parsec.
                        Its focus is on natural language parser creation and descriptive
                        error messages.
                       DESC
  s.homepage         = 'https://github.com/johnpatrickmorgan/Sparse'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'johnpatrickmorgan' => 'johnpatrickmorganuk@gmail.com' }
  s.source           = { :git => 'https://github.com/johnpatrickmorgan/Sparse.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/jpmmusic'
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'
  s.source_files = 'Sources/Sparse/**/*'
end
