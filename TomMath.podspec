#
#  Be sure to run `pod spec lint TomCrypt.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "TomMath"
  spec.version      = "1.2.1"
  spec.authors      = "LibTom"
  spec.summary      = "A free open source portable number theoretic multiple-precision integer library."
  spec.homepage     = "https://www.libtom.net/"
  spec.license      = "The Unlicense"

  spec.source       = { :git => "https://github.com/libtom/libtommath.git", :tag => "#{spec.version}", :submodules => true }

  spec.source_files  = "tommath/*.{h,c}"
  spec.public_header_files = "tommath.h"
  spec.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'GCC_OPTIMIZATION_LEVEL' => 's',
    'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited)'
  }
  spec.platforms = { :ios => "9.0", :osx => "10.9", :tvos => "9.0", :watchos => "2.0" }
  spec.module_name = 'TomMath'
  spec.static_framework = true

end

