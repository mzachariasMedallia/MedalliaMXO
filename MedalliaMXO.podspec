#  
#  Copyright © 2023 Medallia. Use subject to licensing terms.
#
#
# Be sure to run `pod lib lint medallia-mxo-ios-sdk.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name                = "MedalliaMXO"
  s.version             = "1.0.0"
  s.summary             = "The MedalliaMXO for iOS."
  s.authors             = { "Medallia" => "cocoapods-mxo@medallia.com" }
  s.homepage            = "https://github.com/mzachariasMedallia/MedalliaMXO"
  s.description         = "The MedalliaMXO for iOS using cocoapods."
  s.license             = { :type => "Commercial", :text => "Copyright © 2023 Medallia. Use subject to licensing terms." }
  s.source              = { :git => "https://github.com/mzachariasMedallia/MedalliaMXO.git", :tag => "1.0.0" }
  s.platform            = :ios, "12.0"
  s.preserve_paths      = 'MedalliaMXO.xcframework'
  s.vendored_frameworks = 'MedalliaMXO.xcframework'
  s.dependency 'BridgeSDK'
end
