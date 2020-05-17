#
# Be sure to run `pod lib lint HSRange.podspec' to ensure this is a
# valid spec before submitting.


Pod::Spec.new do |s|
  s.name             = 'HSRange'
  s.version          = '5.2'
  s.summary          = 'Simple and Elegant Range(A,B) to Range(P,Q) mapper in less then five lines of code.'
  s.requires_arc = true

#   * Simple and Elegant Range(A,B) to Range(P,Q)
#   * Convert value from one range to another range
#   * Convert value from one color to another color withing given range
#   * Swift Range Converter by Hitendra Solanki
#   * HSRange
#   * HSRangeConverter
#   * HSColorRange
#   * HSColorRangeConverter
#   * Hitendra Solanki
#   * Hitendra iDev
#   * Swift, iOS, Convertor, Range convertor

  s.description      = <<-DESC
  Simple and Elegant Range(A,B) to Range(P,Q) mapper in less then five lines of code.
  E.g.  Suppose we have Range(10,90) and Range(20,80),
        Value 60 of Range(10,90) will be mapped to value 57.5 of Range(20,80).
                       DESC

  s.homepage         = 'https://github.com/hitendradeveloper/HSRange'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Hitendra Solanki' => 'hitendra.developer@gmail.com' }
  s.source           = { :git => 'https://github.com/hitendradeveloper/HSRange.git', :tag => s.version }
  s.social_media_url = 'https://twitter.com/hitendrahckr'

  s.ios.deployment_target = '8.0'

  s.source_files = 'HSRange/Classes/**/*'

  s.swift_versions = ['4.0','4.1','4.2','4.3','5.0', '5.1', '5.2']
  # s.swift_version = '5.0'

end
