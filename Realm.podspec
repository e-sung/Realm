Pod::Spec.new do |s|
  s.name                    = 'Realm'
  version                   = `sh build.sh get-version`
  s.version                 = version
  s.summary                 = 'Realm is a modern data framework & database for iOS, macOS, tvOS & watchOS.'
  s.description             = <<-DESC
                              The Realm Mobile Database, for Objective-C. (If you want to use Realm from Swift, see the “RealmSwift” pod.)

                              The Realm Mobile Database is a fast, easy-to-use replacement for Core Data & SQLite. Use it with the Realm Mobile Platform for realtime, automatic data sync. Works on iOS, macOS, tvOS & watchOS. Learn more and get help at https://realm.io.
                              DESC
  s.homepage                = "https://realm.io"
  s.source                  = { :http: => 'http://github.com/e-sung/Realm/releases/download/3.20.0.xcframework/Realm.xcframework.zip' }
  s.author                  = { 'Realm' => 'help@realm.io' }
  s.library                 = 'c++', 'z'
  s.license                 = { :type => 'Apache 2.0', :file => 'LICENSE' }

  s.frameworks              = 'Security'
  s.module_map              = 'Realm/Realm.modulemap'
  s.compiler_flags          = "-DREALM_HAVE_CONFIG -DREALM_COCOA_VERSION='@\"#{s.version}\"' -D__ASSERTMACROS__ -DREALM_ENABLE_SYNC"
  s.prepare_command         = 'sh build.sh cocoapods-setup'
  s.pod_target_xcconfig     = { 'APPLICATION_EXTENSION_API_ONLY' => 'YES',
                                'CLANG_CXX_LANGUAGE_STANDARD' => 'c++14',
                                'CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF' => 'NO',
                                'OTHER_CPLUSPLUSFLAGS' => '-isystem "${PODS_ROOT}/Realm/include/core" -fvisibility-inlines-hidden',
                                'USER_HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Realm/include" "${PODS_ROOT}/Realm/include/Realm"',
                              }

  s.ios.deployment_target   = '8.0'
  s.ios.vendored_frameworks    = 'Realm.xcframework'
end
