# Uncomment the next line to define a global platform for your project
platform :ios, '15.0'

target 'MovieDB' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for MovieDB
  pod 'SnapKit'
  pod 'Alamofire'

  post_install do |installer|
    installer.pods_project.build_configurations.each do |config|
      config.build_settings['VALID_ARCHS'] = 'arm64, arm64e, x86_64'
    end
  end
end
