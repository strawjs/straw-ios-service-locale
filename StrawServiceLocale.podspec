Pod::Spec.new do |s|

  s.name         = "StrawServiceLocale"

  s.version      = "0.1.0"

  s.summary      = "Locale service for Straw iOS"

  s.description  = <<-DESC
                   Locale service for Straw iOS.

                   You can retrieve locale related information using this plugin.
                   DESC

  s.homepage     = "https://github.com/strawjs/straw-ios-service-locale"

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author       = { "Yoshiya Hinosawa" => "stibium121@gmail.com" }

  s.social_media_url   = "https://twitter.com/kt3k"

  s.platform     = :ios, "5.0"

  s.source       = { :git => "https://github.com/strawjs/straw-ios-service-locale.git", :tag => "v0.1.0" }

  s.source_files  = "StrawServiceLocale/**/*.{h,m}"

  s.public_header_files = "StrawServiceLocale/**/*.h"

  s.dependency "Straw", "~> 0.5.0"

  s.requires_arc = true

end
