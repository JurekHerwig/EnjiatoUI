Pod::Spec.new do |spec|
  spec.platform = :ios
  spec.ios.deployment_target = '13.0'
  spec.name = "EnjiatoUI"
  spec.version = "1.0.0"
  spec.summary = "A short description of EnjiatoUI."
  spec.homepage = "http://enjiato.com"
  spec.license = { :type => "MIT", :file => "LICENSE" }
  spec.author = { "Jurek Herwig" => "jurek.herwig@gmail.com" }
  spec.source = { :git => "https://github.com/JurekHerwig/EnjiatoUI.git", :tag => "#{spec.version}" }
  spec.dependency 'lottie-ios'
  spec.dependency 'SwiftGen'
  spec.dependency 'SwiftMessages'
  spec.source_files = "EnjiatoUI/**/*.{swift}"
  spec.ios.resource_bundle = { 'EnjiatoUI' => 'EnjiatoUI/Resources/**/*.xcassets' }
  spec.swift_version = "5"
end
