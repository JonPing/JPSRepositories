Pod::Spec.new do |s|
  s.name         = "JPSProtocolManager"
  s.version      = "0.0.1"
  s.summary      = "A short description of JPSProtocolManager."
  s.description  = <<-DESC
                   DESC
  s.homepage     = "https://github.com/JonPing/JPSProtocolManager"
 s.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  s.author             = { "JonPing" => "794146132@qq.com" }
s.platform     = :ios, "11.0"
  s.source       = { :git => "https://github.com/JonPing/JPSRepositories.git", :tag => "0.0.1" }
  s.source_files  = "JPSProtocolManager", "JPSProtocolManager/**/*.{h,m}"
end
