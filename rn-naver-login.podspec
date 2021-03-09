require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name    = "rn-naver-login"
  s.version = package['version']
  s.summary = "Naver Login For React Native."
  
  s.authors   = { "Kaim Lee" => "hslee2000@gmail.com", "Suhan Moon" => "leader@creamcookie.cc" }
  s.homepage  = "https://github.com/altarizer/rn-naver-login#readme"
  s.license   = "MIT"

  s.platform      = :ios, "9.0"
  s.framework     = 'UIKit'
  s.requires_arc  = true

  s.source        = { :git => "https://github.com/altarizer/rn-naver-login.git" }
  s.source_files  = "ios/*.{h,m}"

  s.dependency "React"
  s.dependency "naveridlogin-sdk-ios"
end

  
