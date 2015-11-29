Pod::Spec.new do |spec|
  spec.name         = 'KitLibrary'
  spec.version      = "0.1.1"
  spec.license      = { :type => 'MIT' }
  spec.homepage     = "https://github.com/zjutwhw/KitLibrary"
  spec.authors      = { "zjutwhw" => "zjutwhw@gmail.com" }
  spec.summary      = 'KitLibrary，是自己的一些测试Kit'
  spec.source       = { :git => 'https://github.com/zjutwhw/KitLibrary.git',:tag => spec.version.to_s }
  spec.ios.deployment_target = '7.0'
  spec.source_files = 'Header/*.h'
  spec.public_header_files = 'Header/*.h'
  spec.requires_arc = true

  spec.subspec 'CommonUI' do |ss|
    ss.source_files   = 'CommonUI/**/*.{h,m}'
  end
  
end



