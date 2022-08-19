platform :ios, '15.0'
use_frameworks!
install! 'cocoapods',
            :warn_for_unused_master_specs_repo => false

target 'Spaminataro202208' do
  pod 'SwiftLint'
  pod 'LicensePlist'
  pod 'FirebaseAuth'
  pod 'FirebaseFirestore',  '~> 9.0'
  pod 'FirebaseFirestoreSwift',  '~> 9.0'

  target 'Spaminataro202208Tests' do
    inherit! :search_paths
  end

  target 'Spaminataro202208UITests' do
  end
end
