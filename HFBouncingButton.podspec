#
# Be sure to run `pod lib lint HFBouncingButton.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HFBouncingButton'
  s.version          = '0.1.1'
s.summary          = 'HFBouncingButton is simple helper to make bouncing button.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
HFBouncingButton is simple helper to make bouncing button.

* The view can be customized
* Bouncing direction can be vertical / horizontal
* Use block for easy tap action
                       DESC

  s.homepage         = 'https://github.com/thidayatullah/HFBouncingButton'
  # s.screenshots     = 'https://github.com/thidayatullah/HFBouncingButton/blob/master/demo.gif'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Teguh Hidayatullah' => 'thidayatullah90@gmail.com' }
  s.source           = { :git => 'https://github.com/thidayatullah/HFBouncingButton.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'HFBouncingButton/Classes/**/*'
  
  # s.resource_bundles = {
  #   'HFBouncingButton' => ['HFBouncingButton/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
