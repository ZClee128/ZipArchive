Pod::Spec.new do |s|
  s.name         = 'ZCZipArchive'
  s.version      = '2.6.0'
  s.summary      = 'Utility class for zipping and unzipping files on iOS, tvOS, visionOS, watchOS, and macOS.'
  s.description  = 'ZCZipArchive is a simple utility class for zipping and unzipping files on iOS, tvOS, visionOS, watchOS, and macOS. It supports AES and PKWARE encryption.'
  s.homepage     = 'https://github.com/ZClee128/ZipArchive'
  s.license      = { :type => 'MIT', :file => 'LICENSE.txt' }
  s.authors      = { 'lzc' => nil }
  s.source       = { :git => 'https://github.com/ZClee128/ZipArchive.git', :tag => "#{s.version}" }
  s.ios.deployment_target = '13.0'
#  s.osx.deployment_target = '10.15'
#  s.tvos.deployment_target = '15.3'
#  s.visionos.deployment_target = '1.0'
#  s.watchos.deployment_target = '8.4'
  s.source_files = 'SSZipArchive/*.{m,h}', 'SSZipArchive/include/*.{m,h}', 'SSZipArchive/minizip/*.{c,h}'
  s.resource_bundles = {'SSZipArchive' => ['SSZipArchive/Supporting Files/Privacyinfo.xcprivacy']}
  s.public_header_files = 'SSZipArchive/*.h'
  s.libraries = 'z', 'iconv'
  s.framework = 'Security'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES',
    'GCC_PREPROCESSOR_DEFINITIONS' => 'HAVE_INTTYPES_H HAVE_PKCRYPT HAVE_STDINT_H HAVE_WZAES HAVE_ZLIB ZLIB_COMPAT' }
end
