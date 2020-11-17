#
#  Be sure to run `pod spec lint TomCrypt.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "TomCrypt"
  spec.version      = "1.18.3"
  spec.authors      = "LibTom"
  spec.summary      = "A fairly comprehensive, modular and portable cryptographic toolkit."
  spec.homepage     = "https://www.libtom.net/"
  spec.license      = "The Unlicense"

  spec.source       = { :git => "https://github.com/libtom/libtomcrypt.git", :tag => "#{spec.version}" }

  spec.source_files  = "src/**/*.{h,c}"
  spec.public_header_files = "src/headers/*.h"
  spec.private_header_files = "src/headers/tomcrypt_private.h"

  spec.platforms = { :ios => "9.0", :osx => "10.9", :tvos => "9.0", :watchos => "2.0" }
  spec.module_name = 'TomCrypt'
  spec.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) LTM_DESC=1'
  }
  spec.static_framework = true

  spec.dependency 'TomMath', '~> 1.2.0'

  system('sed -i "" "s|#include <tommath.h>|#include <tommath/tommath.h>|" src/math/ltm_desc.c')

end
