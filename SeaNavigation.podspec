Pod::Spec.new do |s|

s.name         = "SeaNavigation"
s.version      = "0.0.1"
s.summary      = "Easy for iOS Navigation !"
s.description  = "使用简单的自定义导航栏，能基本实现大部分常见导航栏需求。"
s.homepage     = "https://github.com/seabrea/SeaNavigation"
s.license      = { :type => "MIT", :file => "LICENSE" }
s.author       = { "seabrea" => "hgdigm@gmail.com" }
s.platform     = :ios, "9.0"
s.ios.deployment_target = "9.0"
s.source       = { :git => "https://github.com/seabrea/SeaNavigation.git", :tag => "#{s.version}" }
s.source_files  = "SeaNavigationDemo/SeaNavigationDemo/Navigation/**/*.{h,m}"
s.requires_arc = true

end
