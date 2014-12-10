Pod::Spec.new do |s|
  s.name         = "AQSDictionarySerialization"
  s.version      = "0.1.2"
  s.summary      = "Dictionary Serializable Object Protocol."
  s.homepage     = "https://github.com/AquaSupport/AQSDictionarySerialization"
  s.license      = "MIT"
  s.author       = { "kaiinui" => "lied.der.optik@gmail.com" }
  s.source       = { :git => "https://github.com/AquaSupport/AQSDictionarySerialization.git", :tag => "v0.1.2" }
  s.source_files  = "AQSDictionarySerialization/Classes/**/*.{h,m}"
  s.requires_arc = true
  s.platform = "ios", '7.0'
end
