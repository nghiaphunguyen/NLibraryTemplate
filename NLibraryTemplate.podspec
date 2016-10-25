Pod::Spec.new do |s|
  s.name         = "NLibraryTemplate"
  s.version      = "0.0.0"
  s.summary      = "NLibraryTemplate"
  s.homepage     = "http://knacker.com"
  s.license      = "MIT"
  s.author       = "Nghia Nguyen"
  s.platform     = :ios, "9.0"
  s.ios.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/nghiaphunguyen/NLibraryTemplate.git", :tag => s.version}
  s.source_files  = "Classes", "NLibraryTemplate/Source/**/*.{swift}"
  s.requires_arc = true
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }
end
