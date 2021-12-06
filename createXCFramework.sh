#xcodebuild archive -project Realm.xcodeproj -scheme Realm -destination "generic/platform=iOS" -archivePath "Release-iphoneos" -derivedDataPath "build" SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES
#xcodebuild archive -project Realm.xcodeproj -scheme Realm -destination "generic/platform=iOS Simulator" -archivePath "Release-iphonesimulator" -derivedDataPath "build" SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES
xcodebuild -verbose -create-xcframework \
-framework Release-iphoneos.xcarchive/Products/Library/Frameworks/Realm.framework \
-framework Debug-iphonesimulator/Realm.framework \
-output Realm.xcframework 
