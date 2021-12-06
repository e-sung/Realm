Pod::Spec.new do |s|
  s.name                    = 'Realm'
  version                   = `sh build.sh get-version`
  s.version                 = version
  s.summary                 = 'Realm is a modern data framework & database for iOS, macOS, tvOS & watchOS.'
  s.homepage                = "https://realm.io"
  s.source                  = { :http => 'http://github.com/e-sung/Realm/releases/download/3.20.0.xcframework/Realm.xcframework.zip' }
  s.author                  = { 'Realm' => 'help@realm.io' }
  s.license                 = { :type => 'Apache 2.0', :file => 'LICENSE' }

  s.frameworks              = 'Security'
  s.platform                = :ios
  s.ios.deployment_target   = '8.0'
  s.ios.vendored_frameworks    = 'Realm.xcframework'
end
