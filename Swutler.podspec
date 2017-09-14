#
#  Be sure to run `pod spec lint Swutler.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
    
    s.name            = "Swutler"
    s.version         = "0.0.1"
    s.summary         = "A small library with handy Swift helpers."
    s.requires_arc    = true
    s.homepage        = "https://github.com/im3der/Swutler"
    s.license         = { :type => "Apache License, Version 2.0", :file => "LICENSE" }
    s.author          = "Steve Stomp"
    
    s.platform        = :ios
    s.ios.deployment_target = "10.0"
    # s.watchos.deployment_target = "2.0"
    # s.tvos.deployment_target = "9.0"
    s.source          = { :git => "https://github.com/im3der/Swutler.git", :tag => "#{s.version}" }
    s.framework       = "UIKit"
    
    s.source_files    = "Swutler", "Swutler/**/*.{swift}"
    s.exclude_files   = "Swutler/Exclude"
    
end
