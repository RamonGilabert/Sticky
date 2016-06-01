Pod::Spec.new do |s|
  s.name             = "Sticky"
  s.summary          = "A lot of the cats I grew up with in the South Bronx found themselves in sticky situations."
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

  s.requires_arc = true
  s.ios.source_files = 'Sources/**/*'
end
