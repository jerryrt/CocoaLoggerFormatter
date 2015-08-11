#
# Be sure to run `pod lib lint CocoaLoggerFormatter.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "CocoaLoggerFormatter"
  s.version          = "0.1.0"
  s.summary          = "A logger formatter used with CocoaLumbarjack."
  s.description      = <<-DESC
                       A reusable logger formatter using with CocoaLumbarjack.

                       Most code(snippets) is copied from other projects/tutorials/mannuals,
                       the credit goes to the original auther.

                       Need CocoaLumbarjack version > 2.x

                       DESC
  s.homepage         = "https://github.com/jerryrt/CocoaLoggerFormatter"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Jerry Tian" => "jerryrt@gmail.com" }
  s.source           = { :git => "https://github.com/jerryrt/CocoaLoggerFormatter.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '5.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'CocoaLoggerFormatter' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'CocoaLumberjack', '~> 1.9'
end
