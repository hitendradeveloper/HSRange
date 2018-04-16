#
# Be sure to run `pod lib lint HSRange.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HSRange'
  s.version          = '0.1.0'
  s.summary          = 'Simple and Elegant Range(A,B) to Range(P,Q) mapper in less then five lines of code.'
  
# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  Simple and Elegant Range(A,B) to Range(P,Q) mapper in less then five lines of code.
  E.g.  Suppose we have Range(10,90) and Range(20,80),
        Value 60 of Range(10,90) will be mapped to value 57.5 of Range(20,80).
                       DESC

  s.homepage         = 'https://github.com/hitendradeveloper/HSRange'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Hitendra Solanki' => 'hitendra.developer@gmail.com' }
  s.source           = { :git => 'https://github.com/hitendradeveloper/HSRange.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/hitendrahckr'

  s.ios.deployment_target = '8.0'

  s.source_files = 'HSRange/Classes/**/*'
  
  # s.resource_bundles = {
  #   'HSRange' => ['HSRange/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
