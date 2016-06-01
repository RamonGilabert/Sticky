Pod::Spec.new do |s|
  s.name             = "Sticky"
  s.summary          = "A short description of Sticky."
  s.version          = "0.1.0"
  s.homepage         = "https://github.com/RamonGilabert/Sticky"
  s.license          = 'MIT'
  s.author           = { "Ramon Gilabert" => "ramon.gilabert.llop@gmail.com" }
  s.source           = {
    :git => "https://github.com/RamonGilabert/Sticky.git",
    :tag => s.version.to_s
  }
  s.social_media_url = 'https://twitter.com/RamonGilabert'

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
  s.tvos.deployment_target = '9.2'

  s.requires_arc = true
  s.ios.source_files = 'Sources/**/*'
end
