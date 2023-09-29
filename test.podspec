Pod::Spec.new do |spec|
  spec.name         = "test"
  spec.version      = "2.5.0"
  spec.summary      = ""

  spec.homepage     = ""
  spec.screenshots  = ""


  spec.license      = { :type => 'MIT', :file => './LICENSE' }

  spec.author       = ""

  spec.platform     = :ios
  spec.ios.deployment_target = '11.0'
  spec.swift_version = '5.0'
  
  spec.source       = { :git => "", :tag => "#{spec.version}" }

  spec.source_files  = ""
end
