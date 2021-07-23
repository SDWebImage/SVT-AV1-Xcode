#
# Be sure to run `pod lib lint TestLibrary.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'svt-av1'
  s.version          = '0.8.7'
  s.summary          = 'Scalable Video Technology for AV1 (SVT-AV1 Encoder and Decoder)'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
The Scalable Video Technology for AV1 (SVT-AV1 Encoder and Decoder) is an AV1-compliant encoder/decoder library core.
                       DESC

  s.homepage         = 'https://gitlab.com/AOMediaCodec/SVT-AV1'
  s.license          = { :type => 'BSD' }
  s.author           = { 'Alliance for Open Media' => 'https://aomedia.org' }
  s.source           = { :git => 'https://github.com/SDWebImage/SVT-AV1-Xcode.git', :tag => s.version.to_s, :submodules => true }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'

  s.source_files = "SVT-AV1/Source/API/**/*.{h,c,cc,cpp}", "SVT-AV1/Source/Lib/**/*.{h,c,cc,cpp}", "SVT-AV1/third_party/fastfeat/**/*.{h,c,cc,cpp}", "generate/**/*.{h,c,cc,cpp}"
  s.public_header_files = "SVT-AV1/Source/API/*.h"
  s.exclude_files = "SVT-AV1/Source/Lib/Common/ASM_AVX2", "SVT-AV1/Source/Lib/Common/ASM_AVX512", "SVT-AV1/Source/Lib/Common/ASM_SSE2", "SVT-AV1/Source/Lib/Common/ASM_SSE4_1", "SVT-AV1/Source/Lib/Common/ASM_SSSE3", "SVT-AV1/Source/Lib/Encoder/ASM_AVX2", "SVT-AV1/Source/Lib/Encoder/ASM_AVX512", "SVT-AV1/Source/Lib/Encoder/ASM_SSE2", "SVT-AV1/Source/Lib/Encoder/ASM_SSE4_1", "SVT-AV1/Source/Lib/Encoder/ASM_SSSE3"

  s.pod_target_xcconfig = {
    'HEADER_SEARCH_PATHS' => '$(inherited) ${PODS_ROOT}/svt-av1/SVT-AV1/third_party/fastfeat ${PODS_TARGET_SRCROOT}/SVT-AV1/third_party/fastfeat ${PODS_ROOT}/svt-av1/generate ${PODS_TARGET_SRCROOT}/generate',
    'WARNING_CFLAGS' => '$(inherited) -Wno-documentation -Wno-conditional-uninitialized -Wno-strict-prototypes -Wno-comma'
  }
  s.preserve_paths = 'SVT-AV1/Source', 'SVT-AV1/API', 'SVT-AV1/third_party', 'generate'
end
